Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjbench?download=true
begin_hunk_0_@decomp:bb.a
  %i.hk = sext i32 %i.gv to i64
  %i.hl = sext i32 %.0499 to i64
  %i.hm = mul nsw i64 %i.hk, %i.hl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0547, i8 127, i64 %i.hm, i1 false)
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bn
  %i.hn = icmp samesign ult i32 %i.hi, 13
  %i.ho = mul nsw i32 %i.gv, %.0499               ; 7 uses
  %i.hp = icmp sgt i32 %i.ho, 0                   ; 2 uses
  br i1 %i.hn, label %.preheader787, label %.preheader788

.preheader788:                                    ; preds = %bb.bp
  br i1 %i.hp, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader788
  %wide.trip.count = zext nneg i32 %i.ho to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ho, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check970 = icmp ult i32 %i.ho, 16
  br i1 %min.iters.check970, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.hr, align 2, !tbaa !24
  store <8 x i16> splat (i16 32767), ptr %i.hs, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec971 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index972 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next973, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index972
  store <4 x i16> splat (i16 32767), ptr %i.hu, align 2, !tbaa !24
  %index.next973 = add nuw i64 %index972, 4       ; 2 uses
  %i.hv = icmp eq i64 %index.next973, %n.vec971
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n974 = icmp eq i64 %n.vec971, %wide.trip.count
  br i1 %cmp.n974, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec971, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader787:                                    ; preds = %bb.bp
  br i1 %i.hp, label %iter.check986, label %.loopexit

iter.check986:                                    ; preds = %.preheader787
  %wide.trip.count905 = zext nneg i32 %i.ho to i64 ; 6 uses
  %min.iters.check975 = icmp ult i32 %i.ho, 4
  br i1 %min.iters.check975, label %.lr.ph818.preheader, label %vector.main.loop.iter.check976

vector.main.loop.iter.check976:                   ; preds = %iter.check986
  %min.iters.check977 = icmp ult i32 %i.ho, 16
  br i1 %min.iters.check977, label %vec.epilog.ph990, label %vector.ph978

vector.ph978:                                     ; preds = %vector.main.loop.iter.check976
  %i.hw = and i64 %wide.trip.count905, 12
  %n.vec979 = and i64 %wide.trip.count905, 2147483632 ; 4 uses
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body980 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index981 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <8 x i16> splat (i16 2047), ptr %i.hx, align 2, !tbaa !24
  store <8 x i16> splat (i16 2047), ptr %i.hy, align 2, !tbaa !24
  %index.next982 = add nuw i64 %index981, 16      ; 2 uses
  %i.hz = icmp eq i64 %index.next982, %n.vec979
  br i1 %i.hz, label %middle.block983, label %vector.body980, !llvm.loop !73

middle.block983:                                  ; preds = %vector.body980
  %cmp.n984 = icmp eq i64 %n.vec979, %wide.trip.count905
  br i1 %cmp.n984, label %.loopexit, label %vec.epilog.iter.check988

vec.epilog.iter.check988:                         ; preds = %middle.block983
  %min.epilog.iters.check989 = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check989, label %.lr.ph818.preheader, label %vec.epilog.ph990, !prof !27

vec.epilog.ph990:                                 ; preds = %vector.main.loop.iter.check976, %vec.epilog.iter.check988
  %vec.epilog.resume.val985 = phi i64 [ %n.vec979, %vec.epilog.iter.check988 ], [ 0, %vector.main.loop.iter.check976 ]
  %n.vec991 = and i64 %wide.trip.count905, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body992

vec.epilog.vector.body992:                        ; preds = %vec.epilog.vector.body992, %vec.epilog.ph990
  %index993 = phi i64 [ %vec.epilog.resume.val985, %vec.epilog.ph990 ], [ %index.next994, %vec.epilog.vector.body992 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index993
  store <4 x i16> splat (i16 2047), ptr %i.ia, align 2, !tbaa !24
  %index.next994 = add nuw i64 %index993, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next994, %n.vec991
  br i1 %i.ib, label %vec.epilog.middle.block995, label %vec.epilog.vector.body992, !llvm.loop !74

vec.epilog.middle.block995:                       ; preds = %vec.epilog.vector.body992
  %cmp.n996 = icmp eq i64 %n.vec991, %wide.trip.count905
  br i1 %cmp.n996, label %.loopexit, label %.lr.ph818.preheader

.lr.ph818.preheader:                              ; preds = %iter.check986, %vec.epilog.iter.check988, %vec.epilog.middle.block995
  %indvars.iv902.ph = phi i64 [ 0, %iter.check986 ], [ %n.vec979, %vec.epilog.iter.check988 ], [ %n.vec991, %vec.epilog.middle.block995 ]
  br label %.lr.ph818

.lr.ph818:                                        ; preds = %.lr.ph818.preheader, %.lr.ph818
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %.lr.ph818 ], [ %indvars.iv902.ph, %.lr.ph818.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %indvars.iv902
  store i16 2047, ptr %i.ic, align 2, !tbaa !24
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1 ; 2 uses
  %exitcond906.not = icmp eq i64 %indvars.iv.next903, %wide.trip.count905
  br i1 %exitcond906.not, label %.loopexit, label %.lr.ph818, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %indvars.iv
  store i16 32767, ptr %i.id, align 2, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph818, %middle.block, %vec.epilog.middle.block, %middle.block983, %vec.epilog.middle.block995, %.preheader788, %.preheader787, %bb.bo
  %.b598 = load i1, ptr @doYUV, align 4
  br i1 %.b598, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %.loopexit
  %.b592 = load i1, ptr @doTile, align 4          ; 2 uses
  %i.ie = select i1 %.b592, i32 %8, i32 %.0500
  %i.if = select i1 %.b592, i32 %9, i32 %.0499
  %i.ig = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.ih = tail call i64 @tj3YUVBufSize(i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef %i.if, i32 noundef %5) #22 ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ij = tail call ptr @tj3GetErrorStr(ptr noundef null) #22
  %i.ik = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef 259, ptr noundef %i.ij) ; 0 uses
  br label %.thread722

bb.bs:                                            ; preds = %bb.bq
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ih) #26 ; 3 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.in = tail call ptr @__errno_location() #25
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9
  %i.ip = tail call ptr @strerror(i32 noundef %i.io) #22
  %i.iq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 261, ptr noundef nonnull @.str.319, ptr noundef %i.ip) ; 0 uses
  br label %.thread722

bb.bu:                                            ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.il, i8 127, i64 %i.ih, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.loopexit
  %.1495 = phi ptr [ %i.il, %bb.bu ], [ null, %.loopexit ] ; 20 uses
  %i.ir = icmp sgt i32 %4, 0
  %i.is = mul nsw i32 %i.g, %8
  %i.it = sext i32 %i.gv to i64
  %i.iu = sext i32 %9 to i64
  %i.iv = mul nsw i64 %i.it, %i.iu
  br i1 %i.ir, label %.split.us849, label %.split.outer

.split.us849:                                     ; preds = %bb.bv
  %i.iw = icmp sgt i32 %3, 0
  br i1 %i.iw, label %.preheader.lr.ph.us.us.outer, label %.preheader.lr.ph.us.outer

.preheader.lr.ph.us.us.outer:                     ; preds = %.split.us849, %.preheader.lr.ph.us.us.outer.backedge
  %.0539.us.us.ph = phi i32 [ %.0539.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ -1, %.split.us849 ] ; 2 uses
  %.0510.us.us.ph = phi double [ %.0510.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %.0501.us.us.ph = phi double [ %.0501.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %i.ix = icmp sgt i32 %.0539.us.us.ph, -1        ; 2 uses
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.outer, %10
  %.0510.us.us = phi double [ %i.my, %10 ], [ %.0510.us.us.ph, %.preheader.lr.ph.us.us.outer ]
  %.0501.us.us = phi double [ %.6507.ph.us.us.us, %10 ], [ %.0501.us.us.ph, %.preheader.lr.ph.us.us.outer ]
  %i.iy = tail call double @getTime() #22
  br label %.preheader.us.us.us

10:                                               ; preds = %._crit_edge829.split.us.us.us
  %11 = load double, ptr @warmup, align 8, !tbaa !15
  %12 = fcmp ult double %i.my, %11
  br i1 %12, label %.preheader.lr.ph.us.us, label %.preheader.lr.ph.us.us.outer.backedge

13:                                               ; preds = %._crit_edge829.split.us.us.us
  %14 = add nuw nsw i32 %.0539.us.us.ph, 1        ; 2 uses
  %15 = load double, ptr @benchTime, align 8, !tbaa !15
  %16 = fcmp ult double %i.my, %15
  br i1 %16, label %.preheader.lr.ph.us.us.outer.backedge, label %.split856.us

.preheader.lr.ph.us.us.outer.backedge:            ; preds = %10, %13
  %.0539.us.us.ph.be = phi i32 [ %14, %13 ], [ 0, %10 ]
  %.0510.us.us.ph.be = phi double [ %i.my, %13 ], [ 0.000000e+00, %10 ]
  %.0501.us.us.ph.be = phi double [ %.6507.ph.us.us.us, %13 ], [ 0.000000e+00, %10 ]
  br label %.preheader.lr.ph.us.us.outer

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader.lr.ph.us.us
  %.0828.us.us.us = phi i64 [ 0, %.preheader.lr.ph.us.us ], [ %indvars.iv.next908, %._crit_edge.us.us.us ]
  %.0498827.us.us.us = phi ptr [ %.0547, %.preheader.lr.ph.us.us ], [ %i.mu, %._crit_edge.us.us.us ] ; 2 uses
  %.1502826.us.us.us = phi double [ %.0501.us.us, %.preheader.lr.ph.us.us ], [ %.6507.ph.us.us.us, %._crit_edge.us.us.us ]
  %.0542825.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.mr, %._crit_edge.us.us.us ] ; 2 uses
  %i.iz = sub nsw i32 %4, %.0542825.us.us.us
  %i.ja = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.iz)
  br label %bb.bw

bb.bw:                                            ; preds = %.thread735.us.us.us, %.preheader.us.us.us
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %.thread735.us.us.us ], [ %.0828.us.us.us, %.preheader.us.us.us ] ; 7 uses
  %.0497821.us.us.us = phi ptr [ %i.mp, %.thread735.us.us.us ], [ %.0498827.us.us.us, %.preheader.us.us.us ] ; 5 uses
  %.2503820.us.us.us = phi double [ %.6507.ph.us.us.us, %.thread735.us.us.us ], [ %.1502826.us.us.us, %.preheader.us.us.us ] ; 11 uses
  %.0543819.us.us.us = phi i32 [ %i.ml, %.thread735.us.us.us ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.b591.us.us.us = load i1, ptr @doTile, align 4 ; 2 uses
  %i.jb = sub nsw i32 %3, %.0543819.us.us.us
  %i.jc = tail call i32 @llvm.smin.i32(i32 %8, i32 %i.jb)
  %i.jd = select i1 %.b591.us.us.us, i32 %i.jc, i32 %.0500
  %i.je = select i1 %.b591.us.us.us, i32 %i.ja, i32 %.0499
  %.b597.us.us.us = load i1, ptr @doYUV, align 4
  br i1 %.b597.us.us.us, label %bb.co, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jf = load i32, ptr @precision, align 4, !tbaa !9 ; 2 uses
  %i.jg = icmp slt i32 %i.jf, 9
  br i1 %i.jg, label %bb.cj, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jh = icmp samesign ult i32 %i.jf, 13
  %i.ji = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv907
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !13 ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv907
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !29 ; 2 uses
  %i.jm = load i32, ptr @pf, align 4, !tbaa !9    ; 2 uses
  br i1 %i.jh, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jn = tail call i32 @tj3Decompress16(ptr noundef nonnull %i.v, ptr noundef %i.jj, i64 noundef %i.jl, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.jm) #22
  %i.jo = icmp eq i32 %i.jn, -1
  br i1 %i.jo, label %bb.ca, label %.thread735.us.us.us

bb.ca:                                            ; preds = %bb.bz
  %i.jp = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.jq = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.jr = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.js = icmp eq i32 %i.jr, 0
  %i.jt = icmp eq i32 %i.jp, 0                    ; 2 uses
  %or.cond73.us.us.us = select i1 %i.js, i1 %i.jt, i1 false
  br i1 %or.cond73.us.us.us, label %bb.cb, label %.split.us

bb.cb:                                            ; preds = %bb.ca
  %i.ju = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jq, i64 noundef 200) #23
  %.not641.us.us.us = icmp eq i32 %i.ju, 0
  br i1 %.not641.us.us.us, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.b602.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.jv = load i32, ptr @tjErrorLine, align 4
  %i.jw = icmp eq i32 %i.jv, 302
  %or.cond75.not.us.us.us = select i1 %.b602.us.us.us, i1 %i.jw, i1 false
  br i1 %or.cond75.not.us.us.us, label %.thread735.us.us.us, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jx = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jq, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 302, ptr @tjErrorLine, align 4, !tbaa !9
  %i.jy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 302, ptr noundef nonnull %i.jq) ; 0 uses
  br label %.thread735.us.us.us

bb.ce:                                            ; preds = %bb.by
  %i.jz = tail call i32 @tj3Decompress12(ptr noundef nonnull %i.v, ptr noundef %i.jj, i64 noundef %i.jl, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.jm) #22
  %i.ka = icmp eq i32 %i.jz, -1
  br i1 %i.ka, label %bb.cf, label %.thread735.us.us.us

bb.cf:                                            ; preds = %bb.ce
  %i.kb = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.kc = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.kd = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.ke = icmp eq i32 %i.kd, 0
  %i.kf = icmp eq i32 %i.kb, 0                    ; 2 uses
  %or.cond69.us.us.us = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %or.cond69.us.us.us, label %bb.cg, label %.split833.us

bb.cg:                                            ; preds = %bb.cf
  %i.kg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kc, i64 noundef 200) #23
  %.not643.us.us.us = icmp eq i32 %i.kg, 0
  br i1 %.not643.us.us.us, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.b603.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.kh = load i32, ptr @tjErrorLine, align 4
  %i.ki = icmp eq i32 %i.kh, 298
  %or.cond71.not.us.us.us = select i1 %.b603.us.us.us, i1 %i.ki, i1 false
  br i1 %or.cond71.not.us.us.us, label %.thread735.us.us.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kj = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kc, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 298, ptr @tjErrorLine, align 4, !tbaa !9
  %i.kk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 298, ptr noundef nonnull %i.kc) ; 0 uses
  br label %.thread735.us.us.us

bb.cj:                                            ; preds = %bb.bx
  %i.kl = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv907
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !13
  %i.kn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv907
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !29
  %i.kp = load i32, ptr @pf, align 4, !tbaa !9
  %i.kq = tail call i32 @tj3Decompress8(ptr noundef nonnull %i.v, ptr noundef %i.km, i64 noundef %i.ko, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.kp) #22
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %bb.ck, label %.thread735.us.us.us

bb.ck:                                            ; preds = %bb.cj
  %i.ks = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.kt = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ku = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.kv = icmp eq i32 %i.ku, 0
  %i.kw = icmp eq i32 %i.ks, 0                    ; 2 uses
  %or.cond65.us.us.us = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond65.us.us.us, label %bb.cl, label %.split837.us

bb.cl:                                            ; preds = %bb.ck
  %i.kx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kt, i64 noundef 200) #23
  %.not645.us.us.us = icmp eq i32 %i.kx, 0
  br i1 %.not645.us.us.us, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.b604.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.ky = load i32, ptr @tjErrorLine, align 4
  %i.kz = icmp eq i32 %i.ky, 294
  %or.cond67.not.us.us.us = select i1 %.b604.us.us.us, i1 %i.kz, i1 false
  br i1 %or.cond67.not.us.us.us, label %.thread735.us.us.us, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.la = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kt, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 294, ptr @tjErrorLine, align 4, !tbaa !9
  %i.lb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 294, ptr noundef nonnull %i.kt) ; 0 uses
  br label %.thread735.us.us.us

bb.co:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv907
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !13
  %i.le = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv907
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !29
  %i.lg = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.lh = tail call i32 @tj3DecompressToYUV8(ptr noundef nonnull %i.v, ptr noundef %i.ld, i64 noundef %i.lf, ptr noundef %.1495, i32 noundef %i.lg) #22
  %i.li = icmp eq i32 %i.lh, -1
  br i1 %i.li, label %bb.cp, label %.thread727.us.us.us

bb.cp:                                            ; preds = %bb.co
  %i.lj = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.lk = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ll = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = icmp eq i32 %i.lj, 0                    ; 2 uses
  %or.cond57.us.us.us = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond57.us.us.us, label %bb.cq, label %.split841.us

bb.cq:                                            ; preds = %bb.cp
  %i.lo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lk, i64 noundef 200) #23
  %.not647.us.us.us = icmp eq i32 %i.lo, 0
  br i1 %.not647.us.us.us, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.b606.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.lp = load i32, ptr @tjErrorLine, align 4
  %i.lq = icmp eq i32 %i.lp, 284
  %or.cond59.not.us.us.us = select i1 %.b606.us.us.us, i1 %i.lq, i1 false
  br i1 %or.cond59.not.us.us.us, label %.thread727.us.us.us, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.lr = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lk, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 284, ptr @tjErrorLine, align 4, !tbaa !9
  %i.ls = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 284, ptr noundef nonnull %i.lk) ; 0 uses
  br label %.thread727.us.us.us

.thread727.us.us.us:                              ; preds = %bb.cs, %bb.cr, %bb.co
  %i.lt = tail call double @getTime() #22
  %i.lu = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.lv = load i32, ptr @pf, align 4, !tbaa !9
  %i.lw = tail call i32 @tj3DecodeYUV8(ptr noundef nonnull %i.v, ptr noundef %.1495, i32 noundef %i.lu, ptr noundef %.0497821.us.us.us, i32 noundef %i.jd, i32 noundef %i.gv, i32 noundef %i.je, i32 noundef %i.lv) #22
  %i.lx = icmp eq i32 %i.lw, -1
  br i1 %i.lx, label %bb.ct, label %.thread731.us.us.us

bb.ct:                                            ; preds = %.thread727.us.us.us
  %i.ly = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.lz = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ma = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.mb = icmp eq i32 %i.ma, 0
  %i.mc = icmp eq i32 %i.ly, 0                    ; 2 uses
  %or.cond61.us.us.us = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %or.cond61.us.us.us, label %bb.cu, label %.split845.us

bb.cu:                                            ; preds = %bb.ct
  %i.md = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #23
  %.not649.us.us.us = icmp eq i32 %i.md, 0
  br i1 %.not649.us.us.us, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.b605.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.me = load i32, ptr @tjErrorLine, align 4
  %i.mf = icmp eq i32 %i.me, 288
  %or.cond63.not.us.us.us = select i1 %.b605.us.us.us, i1 %i.mf, i1 false
  br i1 %or.cond63.not.us.us.us, label %.thread731.us.us.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.mg = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 288, ptr @tjErrorLine, align 4, !tbaa !9
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 288, ptr noundef nonnull %i.lz) ; 0 uses
  br label %.thread731.us.us.us

.thread731.us.us.us:                              ; preds = %bb.cw, %bb.cv, %.thread727.us.us.us
  br i1 %i.ix, label %bb.cx, label %.thread735.us.us.us

bb.cx:                                            ; preds = %.thread731.us.us.us
  %i.mi = tail call double @getTime() #22
  %i.mj = fsub double %i.mi, %i.lt
  %i.mk = fadd double %.2503820.us.us.us, %i.mj
  br label %.thread735.us.us.us

.thread735.us.us.us:                              ; preds = %bb.cx, %.thread731.us.us.us, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ch, %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %.6507.ph.us.us.us = phi double [ %.2503820.us.us.us, %bb.bz ], [ %.2503820.us.us.us, %bb.ci ], [ %.2503820.us.us.us, %bb.ce ], [ %.2503820.us.us.us, %bb.cn ], [ %.2503820.us.us.us, %bb.cj ], [ %i.mk, %bb.cx ], [ %.2503820.us.us.us, %.thread731.us.us.us ], [ %.2503820.us.us.us, %bb.cm ], [ %.2503820.us.us.us, %bb.ch ], [ %.2503820.us.us.us, %bb.cc ], [ %.2503820.us.us.us, %bb.cd ] ; 5 uses
  %i.ml = add nsw i32 %.0543819.us.us.us, %8      ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, 1 ; 2 uses
  %i.mm = load i32, ptr @sampleSize, align 4, !tbaa !9 ; 2 uses
  %i.mn = mul nsw i32 %i.is, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %.0497821.us.us.us, i64 %i.mo
  %i.mq = icmp slt i32 %i.ml, %3
  br i1 %i.mq, label %bb.bw, label %._crit_edge.us.us.us, !llvm.loop !77

._crit_edge.us.us.us:                             ; preds = %.thread735.us.us.us
  %i.mr = add nsw i32 %.0542825.us.us.us, %9      ; 2 uses
  %i.ms = zext nneg i32 %i.mm to i64
  %i.mt = mul i64 %i.iv, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %.0498827.us.us.us, i64 %i.mt
  %i.mv = icmp slt i32 %i.mr, %4
  br i1 %i.mv, label %.preheader.us.us.us, label %._crit_edge829.split.us.us.us, !llvm.loop !78

._crit_edge829.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.mw = tail call double @getTime() #22
  %i.mx = fsub double %i.mw, %i.iy
  %i.my = fadd double %.0510.us.us, %i.mx         ; 5 uses
  br i1 %i.ix, label %13, label %10

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.outer, %bb.cy
  %.0510.us = phi double [ %i.nc, %bb.cy ], [ %.0510.us.ph, %.preheader.lr.ph.us.outer ]
  %i.mz = tail call double @getTime() #22
  %i.na = tail call double @getTime() #22
  %i.nb = fsub double %i.na, %i.mz
  %i.nc = fadd double %.0510.us, %i.nb            ; 5 uses
  br i1 %i.nf, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.preheader.lr.ph.us
  %i.nd = load double, ptr @warmup, align 8, !tbaa !15
  %i.ne = fcmp ult double %i.nc, %i.nd
  br i1 %i.ne, label %.preheader.lr.ph.us, label %.preheader.lr.ph.us.outer.backedge

.preheader.lr.ph.us.outer:                        ; preds = %.split.us849, %.preheader.lr.ph.us.outer.backedge
  %.0539.us.ph = phi i32 [ %.0539.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ -1, %.split.us849 ] ; 2 uses
  %.0510.us.ph = phi double [ %.0510.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %i.nf = icmp sgt i32 %.0539.us.ph, -1
  br label %.preheader.lr.ph.us

bb.cz:                                            ; preds = %.preheader.lr.ph.us
  %i.ng = add nuw nsw i32 %.0539.us.ph, 1         ; 2 uses
  %i.nh = load double, ptr @benchTime, align 8, !tbaa !15
  %i.ni = fcmp ult double %i.nc, %i.nh
  br i1 %i.ni, label %.preheader.lr.ph.us.outer.backedge, label %.split856.us

.preheader.lr.ph.us.outer.backedge:               ; preds = %bb.cy, %bb.cz
  %.0539.us.ph.be = phi i32 [ %i.ng, %bb.cz ], [ 0, %bb.cy ]
  %.0510.us.ph.be = phi double [ %i.nc, %bb.cz ], [ 0.000000e+00, %bb.cy ]
  br label %.preheader.lr.ph.us.outer

.split:                                           ; preds = %.split.outer, %bb.db
  %.0510 = phi double [ %i.nm, %bb.db ], [ %.0510.ph, %.split.outer ]
  %i.nj = tail call double @getTime() #22
  %i.nk = tail call double @getTime() #22
  %i.nl = fsub double %i.nk, %i.nj
  %i.nm = fadd double %.0510, %i.nl               ; 5 uses
  br i1 %i.oa, label %bb.da, label %bb.db

.split841.us:                                     ; preds = %bb.cp
  %i.nn = select i1 %i.ln, ptr @.str.116, ptr @.str.117
  %i.no = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nn, i32 noundef 284, ptr noundef %i.lk) ; 0 uses
  br label %.thread722

.split845.us:                                     ; preds = %bb.ct
  %i.np = select i1 %i.mc, ptr @.str.116, ptr @.str.117
  %i.nq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.np, i32 noundef 288, ptr noundef %i.lz) ; 0 uses
  br label %.thread722

.split837.us:                                     ; preds = %bb.ck
  %i.nr = select i1 %i.kw, ptr @.str.116, ptr @.str.117
  %i.ns = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nr, i32 noundef 294, ptr noundef %i.kt) ; 0 uses
  br label %.thread722

.split833.us:                                     ; preds = %bb.cf
  %i.nt = select i1 %i.kf, ptr @.str.116, ptr @.str.117
  %i.nu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nt, i32 noundef 298, ptr noundef %i.kc) ; 0 uses
  br label %.thread722

.split.us:                                        ; preds = %bb.ca
  %i.nv = select i1 %i.jt, ptr @.str.116, ptr @.str.117
  %i.nw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nv, i32 noundef 302, ptr noundef %i.jq) ; 0 uses
  br label %.thread722

bb.da:                                            ; preds = %.split
  %i.nx = add nuw nsw i32 %.0539.ph, 1            ; 2 uses
  %i.ny = load double, ptr @benchTime, align 8, !tbaa !15
  %i.nz = fcmp ult double %i.nm, %i.ny
  br i1 %i.nz, label %.split.outer.backedge, label %.split856.us

.split.outer.backedge:                            ; preds = %bb.db, %bb.da
  %.0539.ph.be = phi i32 [ %i.nx, %bb.da ], [ 0, %bb.db ]
  %.0510.ph.be = phi double [ %i.nm, %bb.da ], [ 0.000000e+00, %bb.db ]
  br label %.split.outer

.split.outer:                                     ; preds = %bb.bv, %.split.outer.backedge
  %.0539.ph = phi i32 [ %.0539.ph.be, %.split.outer.backedge ], [ -1, %bb.bv ] ; 2 uses
  %.0510.ph = phi double [ %.0510.ph.be, %.split.outer.backedge ], [ 0.000000e+00, %bb.bv ]
  %i.oa = icmp sgt i32 %.0539.ph, -1
  br label %.split

bb.db:                                            ; preds = %.split
  %i.ob = load double, ptr @warmup, align 8, !tbaa !15
  %i.oc = fcmp ult double %i.nm, %i.ob
  br i1 %i.oc, label %.split, label %.split.outer.backedge

.split856.us:                                     ; preds = %bb.da, %bb.cz, %13
  %.us-phi = phi i32 [ %i.ng, %bb.cz ], [ %14, %13 ], [ %i.nx, %bb.da ] ; 2 uses
  %.us-phi857 = phi double [ %i.nc, %bb.cz ], [ %i.my, %13 ], [ %i.nm, %bb.da ] ; 2 uses
  %.us-phi858 = phi double [ 0.000000e+00, %bb.cz ], [ %.6507.ph.us.us.us, %13 ], [ 0.000000e+00, %bb.da ] ; 4 uses
  %.b596 = load i1, ptr @doYUV, align 4           ; 2 uses
  %i.od = fsub double %.us-phi857, %.us-phi858
  %.3513 = select i1 %.b596, double %i.od, double %.us-phi857 ; 3 uses
  %i.oe = load i32, ptr @quiet, align 4, !tbaa !9
  %.not651 = icmp eq i32 %i.oe, 0
  br i1 %.not651, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %.split856.us
  %i.of = mul nsw i32 %4, %3
  %i.og = sitofp i32 %i.of to double
  %i.oh = fdiv nnan double %i.og, 1.000000e+06
  %i.oi = uitofp nneg i32 %.us-phi to double
  %i.oj = fmul double %i.oh, %i.oi                ; 2 uses
  %i.ok = fdiv double %i.oj, %.3513
  %i.ol = call fastcc ptr @sigfig(double noundef %i.ok, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %i.om = load i32, ptr @quiet, align 4, !tbaa !9
  %i.on = icmp eq i32 %i.om, 2
  %i.oo = select i1 %i.on, ptr @str.132, ptr @.str.281
  %i.op = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.a, ptr noundef nonnull %i.oo) ; 0 uses
  %.b595 = load i1, ptr @doYUV, align 4
  br i1 %.b595, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.oq = fdiv double %i.oj, %.us-phi858
  %i.or = call fastcc ptr @sigfig(double noundef %i.oq, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  br label %bb.di

bb.de:                                            ; preds = %bb.dc
  %i.os = load i32, ptr @quiet, align 4, !tbaa !9
  %.not652 = icmp eq i32 %i.os, 2
  br i1 %.not652, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.di

bb.dg:                                            ; preds = %.split856.us
  %i.ot = select i1 %.b596, ptr @.str.323, ptr @.str.324
  %i.ou = mul nsw i32 %4, %3
  %i.ov = sitofp i32 %i.ou to double
  %i.ow = uitofp nneg i32 %.us-phi to double      ; 3 uses
  %i.ox = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ov, i64 1
  %i.oz = insertelement <2 x double> <double poison, double 1.000000e+06>, double %.3513, i64 0
  %i.pa = fdiv <2 x double> %i.oy, %i.oz          ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 0
  %i.pc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, ptr noundef nonnull %i.ot, double noundef %i.pb) ; 0 uses
  %i.pd = extractelement <2 x double> %i.pa, i64 1
  %i.pe = fmul double %i.pd, %i.ow                ; 2 uses
  %i.pf = fdiv double %i.pe, %.3513
  %i.pg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.pf) ; 0 uses
  %.b593 = load i1, ptr @doYUV, align 4
  br i1 %.b593, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ph = fdiv double %i.ow, %.us-phi858
  %i.pi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, double noundef %i.ph) ; 0 uses
  %i.pj = fdiv double %i.pe, %.us-phi858
  %i.pk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.pj) ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.dd, %bb.df, %bb.de
  %.b588 = load i1, ptr @doWrite, align 4
  br i1 %.b588, label %.thread722, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pl = load i32, ptr @sf, align 8, !tbaa !21   ; 2 uses
  %i.pm = icmp ne i32 %i.pl, 1
  %i.pn = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4 ; 2 uses
  %i.po = icmp ne i32 %i.pn, 1
  %or.cond77 = select i1 %i.pm, i1 true, i1 %i.po
  br i1 %or.cond77, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.pp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.326, i32 noundef %i.pl, i32 noundef %i.pn) #22 ; 0 uses
  br label %bb.do

bb.dl:                                            ; preds = %bb.dj
  %.not653 = icmp eq i32 %8, %3
  %.not654 = icmp eq i32 %9, %4
  %or.cond675 = and i1 %.not653, %.not654
  br i1 %or.cond675, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.327, i32 noundef %8, i32 noundef %9) #22 ; 0 uses
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str.328, i64 5, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dk
  %.b = load i1, ptr @decompOnly, align 4
  br i1 %.b, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.pr = load ptr, ptr @ext, align 8, !tbaa !13
  %i.ps = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.329, ptr noundef %7, ptr noundef nonnull %i.b, ptr noundef %i.pr) #22 ; 0 uses
  br label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %i.pt = load i32, ptr @lossless, align 4, !tbaa !9
  %.not655 = icmp eq i32 %i.pt, 0
  br i1 %.not655, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.pu = sext i32 %5 to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr @subName, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !13
  br label %bb.ds
end_hunk_0
