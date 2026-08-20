inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__psd_load:bb.a
  store ptr @.str.86, ptr %i.as, align 8, !tbaa !26
  br label %bb.bg

bb.q:                                             ; preds = %bb.o
  %i.at = tail call i32 @stbi__get32be(ptr noundef nonnull %0)
  tail call void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.at)
  %i.au = tail call i32 @stbi__get32be(ptr noundef nonnull %0)
  tail call void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.au)
  %i.av = tail call i32 @stbi__get32be(ptr noundef nonnull %0)
  tail call void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.av)
  %i.aw = tail call i32 @stbi__get16be(ptr noundef nonnull %0) ; 2 uses
  %i.ax = icmp samesign ugt i32 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.47, ptr %i.ay, align 8, !tbaa !26
  br label %bb.bg

bb.s:                                             ; preds = %bb.q
  %i.az = tail call i32 @stbi__mad3sizes_valid(i32 noundef 4, i32 noundef %i.ak, i32 noundef %i.ag, i32 noundef 0)
  %.not208 = icmp eq i32 %i.az, 0
  br i1 %.not208, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.ba, align 8, !tbaa !26
  br label %bb.bg

bb.u:                                             ; preds = %bb.s
  %i.bb = icmp eq i32 %i.aw, 0                    ; 2 uses
  %i.bc = icmp eq i32 %i.ap, 16                   ; 3 uses
  %or.cond5 = and i1 %i.bc, %i.bb
  %i.bd = icmp eq i32 %6, 16                      ; 2 uses
  %or.cond7 = and i1 %i.bd, %or.cond5
  br i1 %or.cond7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = tail call ptr @stbi__malloc_mad3(i32 noundef 8, i32 noundef %i.ak, i32 noundef %i.ag, i32 noundef 0)
  store i32 16, ptr %5, align 4, !tbaa !28
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bf = shl i32 %i.ag, 2
  %i.bg = mul i32 %i.bf, %i.ak
  %i.bh = sext i32 %i.bg to i64
  %i.bi = tail call noalias noundef ptr @malloc(i64 noundef %i.bh) #38
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0195 = phi ptr [ %i.be, %bb.v ], [ %i.bi, %bb.w ] ; 24 uses
  %.not209 = icmp eq ptr %.0195, null
  br i1 %.not209, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bj, align 8, !tbaa !26
  br label %bb.bg

bb.z:                                             ; preds = %bb.x
  %i.bk = mul nsw i32 %i.ak, %i.ag
  %.fr260 = freeze i32 %i.bk                      ; 33 uses
  br i1 %i.bb, label %.preheader232, label %bb.aa

.preheader232:                                    ; preds = %bb.z
  %or.cond9 = and i1 %i.bd, %i.bc
  %i.bl = icmp sgt i32 %.fr260, 0                 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 3 uses
  %i.bv = zext nneg i32 %i.aa to i64
  %i.bw = add i32 %.fr260, -1                     ; 2 uses
  %xtraiter353 = and i32 %.fr260, 7               ; 3 uses
  %i.bx = icmp ult i32 %i.bw, 7
  %unroll_iter357 = and i32 %.fr260, 2147483640
  %lcmp.mod355.not = icmp eq i32 %xtraiter353, 0
  %lcmp.mod356 = icmp ne i32 %xtraiter353, 0
  %xtraiter359 = and i32 %.fr260, 7               ; 3 uses
  %i.by = icmp ult i32 %i.bw, 7
  %unroll_iter363 = and i32 %.fr260, 2147483640
  %lcmp.mod361.not = icmp eq i32 %xtraiter359, 0
  %lcmp.mod362 = icmp ne i32 %xtraiter359, 0
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.bz = shl nuw nsw i32 %i.aa, 1
  %i.ca = mul i32 %i.bz, %i.ag
  tail call void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.ca)
  %i.cb = icmp sgt i32 %.fr260, 0
  %.not217.us.not = icmp eq i32 %i.aa, 0          ; 2 uses
  br i1 %i.cb, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.aa
  br i1 %.not217.us.not, label %.loopexit, label %bb.af

.split.us.preheader:                              ; preds = %bb.aa
  br i1 %.not217.us.not, label %.preheader234.us.preheader, label %bb.ab

.preheader234.us.preheader:                       ; preds = %.split.us.preheader
  %i.cc = add nsw i32 %.fr260, -1
  %xtraiter = and i32 %.fr260, 7                  ; 3 uses
  %i.cd = icmp ult i32 %i.cc, 7
  br i1 %i.cd, label %.preheader234.us.epil.preheader, label %.preheader234.us.preheader.new

.preheader234.us.preheader.new:                   ; preds = %.preheader234.us.preheader
  %unroll_iter = and i32 %.fr260, 2147483640
  br label %.preheader234.us

.preheader234.us:                                 ; preds = %.preheader234.us, %.preheader234.us.preheader.new
  %.0193237.us = phi ptr [ %.0195, %.preheader234.us.preheader.new ], [ %i.cl, %.preheader234.us ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader234.us.preheader.new ], [ %niter.next.7, %.preheader234.us ]
  store i8 0, ptr %.0193237.us, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 4
  store i8 0, ptr %i.ce, align 1, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 8
  store i8 0, ptr %i.cf, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 12
  store i8 0, ptr %i.cg, align 1, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 16
  store i8 0, ptr %i.ch, align 1, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 20
  store i8 0, ptr %i.ci, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 24
  store i8 0, ptr %i.cj, align 1, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 28
  store i8 0, ptr %i.ck, align 1, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 32 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..loopexit235_crit_edge.us.thread.unr-lcssa, label %.preheader234.us, !llvm.loop !81

..loopexit235_crit_edge.us.thread.unr-lcssa:      ; preds = %.preheader234.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit235_crit_edge.us.thread, label %.preheader234.us.epil.preheader

.preheader234.us.epil.preheader:                  ; preds = %..loopexit235_crit_edge.us.thread.unr-lcssa, %.preheader234.us.preheader
  %.0193237.us.epil.init = phi ptr [ %.0195, %.preheader234.us.preheader ], [ %i.cl, %..loopexit235_crit_edge.us.thread.unr-lcssa ]
  %lcmp.mod325 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod325)
  br label %.preheader234.us.epil

.preheader234.us.epil:                            ; preds = %.preheader234.us.epil, %.preheader234.us.epil.preheader
  %.0193237.us.epil = phi ptr [ %i.cm, %.preheader234.us.epil ], [ %.0193237.us.epil.init, %.preheader234.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader234.us.epil ], [ 0, %.preheader234.us.epil.preheader ]
  store i8 0, ptr %.0193237.us.epil, align 1, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0193237.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit235_crit_edge.us.thread, label %.preheader234.us.epil, !llvm.loop !82

..loopexit235_crit_edge.us.thread:                ; preds = %.preheader234.us.epil, %..loopexit235_crit_edge.us.thread.unr-lcssa
  %i.cn = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  br label %.preheader234.us.1.preheader

bb.ab:                                            ; preds = %.split.us.preheader
  %i.co = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %.0195, i32 noundef %.fr260)
  %.not218.us = icmp eq i32 %i.co, 0
  br i1 %.not218.us, label %.critedge, label %..loopexit235_crit_edge.us

..loopexit235_crit_edge.us:                       ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %.0195, i64 1 ; 2 uses
  %.not217.us.1.not = icmp eq i32 %i.aa, 1
  br i1 %.not217.us.1.not, label %.preheader234.us.1.preheader, label %bb.ac

.preheader234.us.1.preheader:                     ; preds = %..loopexit235_crit_edge.us.thread, %..loopexit235_crit_edge.us
  %.0193237.us.1.ph = phi ptr [ %i.cp, %..loopexit235_crit_edge.us ], [ %i.cn, %..loopexit235_crit_edge.us.thread ] ; 2 uses
  %i.cq = add nsw i32 %.fr260, -1
  %xtraiter335 = and i32 %.fr260, 7               ; 3 uses
  %i.cr = icmp ult i32 %i.cq, 7
  br i1 %i.cr, label %.preheader234.us.1.epil.preheader, label %.preheader234.us.1.preheader.new

.preheader234.us.1.preheader.new:                 ; preds = %.preheader234.us.1.preheader
  %unroll_iter339 = and i32 %.fr260, 2147483640
  br label %.preheader234.us.1

.preheader234.us.1:                               ; preds = %.preheader234.us.1, %.preheader234.us.1.preheader.new
  %.0193237.us.1 = phi ptr [ %.0193237.us.1.ph, %.preheader234.us.1.preheader.new ], [ %i.cz, %.preheader234.us.1 ] ; 9 uses
  %niter340 = phi i32 [ 0, %.preheader234.us.1.preheader.new ], [ %niter340.next.7, %.preheader234.us.1 ]
  store i8 0, ptr %.0193237.us.1, align 1, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 4
  store i8 0, ptr %i.cs, align 1, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 8
  store i8 0, ptr %i.ct, align 1, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 12
  store i8 0, ptr %i.cu, align 1, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 16
  store i8 0, ptr %i.cv, align 1, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 20
  store i8 0, ptr %i.cw, align 1, !tbaa !24
  %i.cx = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 24
  store i8 0, ptr %i.cx, align 1, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 28
  store i8 0, ptr %i.cy, align 1, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 32 ; 2 uses
  %niter340.next.7 = add i32 %niter340, 8         ; 2 uses
  %niter340.ncmp.7 = icmp eq i32 %niter340.next.7, %unroll_iter339
  br i1 %niter340.ncmp.7, label %..loopexit235_crit_edge.us.1.thread.unr-lcssa, label %.preheader234.us.1, !llvm.loop !81

..loopexit235_crit_edge.us.1.thread.unr-lcssa:    ; preds = %.preheader234.us.1
  %lcmp.mod337.not = icmp eq i32 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %..loopexit235_crit_edge.us.1.thread, label %.preheader234.us.1.epil.preheader

.preheader234.us.1.epil.preheader:                ; preds = %..loopexit235_crit_edge.us.1.thread.unr-lcssa, %.preheader234.us.1.preheader
  %.0193237.us.1.epil.init = phi ptr [ %.0193237.us.1.ph, %.preheader234.us.1.preheader ], [ %i.cz, %..loopexit235_crit_edge.us.1.thread.unr-lcssa ]
  %lcmp.mod338 = icmp ne i32 %xtraiter335, 0
  tail call void @llvm.assume(i1 %lcmp.mod338)
  br label %.preheader234.us.1.epil

.preheader234.us.1.epil:                          ; preds = %.preheader234.us.1.epil, %.preheader234.us.1.epil.preheader
  %.0193237.us.1.epil = phi ptr [ %i.da, %.preheader234.us.1.epil ], [ %.0193237.us.1.epil.init, %.preheader234.us.1.epil.preheader ] ; 2 uses
  %epil.iter336 = phi i32 [ %epil.iter336.next, %.preheader234.us.1.epil ], [ 0, %.preheader234.us.1.epil.preheader ]
  store i8 0, ptr %.0193237.us.1.epil, align 1, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %.0193237.us.1.epil, i64 4
  %epil.iter336.next = add i32 %epil.iter336, 1   ; 2 uses
  %epil.iter336.cmp.not = icmp eq i32 %epil.iter336.next, %xtraiter335
  br i1 %epil.iter336.cmp.not, label %..loopexit235_crit_edge.us.1.thread, label %.preheader234.us.1.epil, !llvm.loop !83

..loopexit235_crit_edge.us.1.thread:              ; preds = %.preheader234.us.1.epil, %..loopexit235_crit_edge.us.1.thread.unr-lcssa
  %i.db = getelementptr inbounds nuw i8, ptr %.0195, i64 2
  br label %.preheader234.us.2.preheader

bb.ac:                                            ; preds = %..loopexit235_crit_edge.us
  %i.dc = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.cp, i32 noundef %.fr260)
  %.not218.us.1 = icmp eq i32 %i.dc, 0
  br i1 %.not218.us.1, label %.critedge, label %..loopexit235_crit_edge.us.1

..loopexit235_crit_edge.us.1:                     ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %.0195, i64 2 ; 2 uses
  %.not217.us.2 = icmp samesign ugt i32 %i.aa, 2
  br i1 %.not217.us.2, label %bb.ad, label %.preheader234.us.2.preheader

.preheader234.us.2.preheader:                     ; preds = %..loopexit235_crit_edge.us.1.thread, %..loopexit235_crit_edge.us.1
  %.0193237.us.2.ph = phi ptr [ %i.dd, %..loopexit235_crit_edge.us.1 ], [ %i.db, %..loopexit235_crit_edge.us.1.thread ] ; 2 uses
  %i.de = add nsw i32 %.fr260, -1
  %xtraiter341 = and i32 %.fr260, 7               ; 3 uses
  %i.df = icmp ult i32 %i.de, 7
  br i1 %i.df, label %.preheader234.us.2.epil.preheader, label %.preheader234.us.2.preheader.new

.preheader234.us.2.preheader.new:                 ; preds = %.preheader234.us.2.preheader
  %unroll_iter345 = and i32 %.fr260, 2147483640
  br label %.preheader234.us.2

.preheader234.us.2:                               ; preds = %.preheader234.us.2, %.preheader234.us.2.preheader.new
  %.0193237.us.2 = phi ptr [ %.0193237.us.2.ph, %.preheader234.us.2.preheader.new ], [ %i.dn, %.preheader234.us.2 ] ; 9 uses
  %niter346 = phi i32 [ 0, %.preheader234.us.2.preheader.new ], [ %niter346.next.7, %.preheader234.us.2 ]
  store i8 0, ptr %.0193237.us.2, align 1, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 4
  store i8 0, ptr %i.dg, align 1, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 8
  store i8 0, ptr %i.dh, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 12
  store i8 0, ptr %i.di, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 16
  store i8 0, ptr %i.dj, align 1, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 20
  store i8 0, ptr %i.dk, align 1, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 24
  store i8 0, ptr %i.dl, align 1, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 28
  store i8 0, ptr %i.dm, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 32 ; 2 uses
  %niter346.next.7 = add i32 %niter346, 8         ; 2 uses
  %niter346.ncmp.7 = icmp eq i32 %niter346.next.7, %unroll_iter345
  br i1 %niter346.ncmp.7, label %..loopexit235_crit_edge.us.2.thread.unr-lcssa, label %.preheader234.us.2, !llvm.loop !81

..loopexit235_crit_edge.us.2.thread.unr-lcssa:    ; preds = %.preheader234.us.2
  %lcmp.mod343.not = icmp eq i32 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %..loopexit235_crit_edge.us.2.thread, label %.preheader234.us.2.epil.preheader

.preheader234.us.2.epil.preheader:                ; preds = %..loopexit235_crit_edge.us.2.thread.unr-lcssa, %.preheader234.us.2.preheader
  %.0193237.us.2.epil.init = phi ptr [ %.0193237.us.2.ph, %.preheader234.us.2.preheader ], [ %i.dn, %..loopexit235_crit_edge.us.2.thread.unr-lcssa ]
  %lcmp.mod344 = icmp ne i32 %xtraiter341, 0
  tail call void @llvm.assume(i1 %lcmp.mod344)
  br label %.preheader234.us.2.epil

.preheader234.us.2.epil:                          ; preds = %.preheader234.us.2.epil, %.preheader234.us.2.epil.preheader
  %.0193237.us.2.epil = phi ptr [ %i.do, %.preheader234.us.2.epil ], [ %.0193237.us.2.epil.init, %.preheader234.us.2.epil.preheader ] ; 2 uses
  %epil.iter342 = phi i32 [ %epil.iter342.next, %.preheader234.us.2.epil ], [ 0, %.preheader234.us.2.epil.preheader ]
  store i8 0, ptr %.0193237.us.2.epil, align 1, !tbaa !24
  %i.do = getelementptr inbounds nuw i8, ptr %.0193237.us.2.epil, i64 4
  %epil.iter342.next = add i32 %epil.iter342, 1   ; 2 uses
  %epil.iter342.cmp.not = icmp eq i32 %epil.iter342.next, %xtraiter341
  br i1 %epil.iter342.cmp.not, label %..loopexit235_crit_edge.us.2.thread, label %.preheader234.us.2.epil, !llvm.loop !84

..loopexit235_crit_edge.us.2.thread:              ; preds = %.preheader234.us.2.epil, %..loopexit235_crit_edge.us.2.thread.unr-lcssa
  %i.dp = getelementptr inbounds nuw i8, ptr %.0195, i64 3
  br label %.preheader234.us.3.preheader

bb.ad:                                            ; preds = %..loopexit235_crit_edge.us.1
  %i.dq = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.dd, i32 noundef %.fr260)
  %.not218.us.2 = icmp eq i32 %i.dq, 0
  br i1 %.not218.us.2, label %.critedge, label %..loopexit235_crit_edge.us.2

..loopexit235_crit_edge.us.2:                     ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %.0195, i64 3 ; 2 uses
  %.not217.us.3.not = icmp eq i32 %i.aa, 3
  br i1 %.not217.us.3.not, label %.preheader234.us.3.preheader, label %bb.ae

.preheader234.us.3.preheader:                     ; preds = %..loopexit235_crit_edge.us.2.thread, %..loopexit235_crit_edge.us.2
  %.0193237.us.3.ph = phi ptr [ %i.dr, %..loopexit235_crit_edge.us.2 ], [ %i.dp, %..loopexit235_crit_edge.us.2.thread ] ; 2 uses
  %i.ds = add nsw i32 %.fr260, -1
  %xtraiter347 = and i32 %.fr260, 7               ; 3 uses
  %i.dt = icmp ult i32 %i.ds, 7
  br i1 %i.dt, label %.preheader234.us.3.epil.preheader, label %.preheader234.us.3.preheader.new

.preheader234.us.3.preheader.new:                 ; preds = %.preheader234.us.3.preheader
  %unroll_iter351 = and i32 %.fr260, 2147483640
  br label %.preheader234.us.3

.preheader234.us.3:                               ; preds = %.preheader234.us.3, %.preheader234.us.3.preheader.new
  %.0193237.us.3 = phi ptr [ %.0193237.us.3.ph, %.preheader234.us.3.preheader.new ], [ %i.eb, %.preheader234.us.3 ] ; 9 uses
  %niter352 = phi i32 [ 0, %.preheader234.us.3.preheader.new ], [ %niter352.next.7, %.preheader234.us.3 ]
  store i8 -1, ptr %.0193237.us.3, align 1, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 4
  store i8 -1, ptr %i.du, align 1, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 8
  store i8 -1, ptr %i.dv, align 1, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 12
  store i8 -1, ptr %i.dw, align 1, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 16
  store i8 -1, ptr %i.dx, align 1, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 20
  store i8 -1, ptr %i.dy, align 1, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 24
  store i8 -1, ptr %i.dz, align 1, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 28
  store i8 -1, ptr %i.ea, align 1, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 32 ; 2 uses
  %niter352.next.7 = add i32 %niter352, 8         ; 2 uses
  %niter352.ncmp.7 = icmp eq i32 %niter352.next.7, %unroll_iter351
  br i1 %niter352.ncmp.7, label %.loopexit.loopexit324.unr-lcssa, label %.preheader234.us.3, !llvm.loop !81

bb.ae:                                            ; preds = %..loopexit235_crit_edge.us.2
  %i.ec = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.dr, i32 noundef %.fr260)
  %.not218.us.3 = icmp eq i32 %i.ec, 0
  br i1 %.not218.us.3, label %.critedge, label %.loopexit233.thread306

bb.af:                                            ; preds = %.split.preheader
  %i.ed = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %.0195, i32 noundef %.fr260)
  %.not218 = icmp eq i32 %i.ed, 0
  br i1 %.not218, label %.critedge, label %.preheader234

.critedge:                                        ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  tail call void @free(ptr noundef nonnull %.0195) #37
  %i.ee = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.87, ptr %i.ee, align 8, !tbaa !26
  br label %bb.bg

.preheader234:                                    ; preds = %bb.af
  %.not217.1.not = icmp eq i32 %i.aa, 1
  br i1 %.not217.1.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.preheader234
  %i.ef = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  %i.eg = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.ef, i32 noundef %.fr260)
  %.not218.1 = icmp eq i32 %i.eg, 0
  br i1 %.not218.1, label %.critedge, label %.preheader234.1

.preheader234.1:                                  ; preds = %bb.ag
  %.not217.2 = icmp samesign ugt i32 %i.aa, 2
  br i1 %.not217.2, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.preheader234.1
  %i.eh = getelementptr inbounds nuw i8, ptr %.0195, i64 2
  %i.ei = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.eh, i32 noundef %.fr260)
  %.not218.2 = icmp eq i32 %i.ei, 0
  br i1 %.not218.2, label %.critedge, label %.preheader234.2

.preheader234.2:                                  ; preds = %bb.ah
  %.not217.3.not = icmp eq i32 %i.aa, 3
  br i1 %.not217.3.not, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.preheader234.2
  %i.ej = getelementptr inbounds nuw i8, ptr %.0195, i64 3
  %i.ek = tail call i32 @stbi__psd_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.ej, i32 noundef %.fr260)
  %.not218.3 = icmp eq i32 %i.ek, 0
  br i1 %.not218.3, label %.critedge, label %.loopexit233.thread306

bb.aj:                                            ; preds = %.preheader232, %.loopexit225
  %indvars.iv = phi i64 [ 0, %.preheader232 ], [ %indvars.iv.next, %.loopexit225 ] ; 7 uses
  %.not211 = icmp samesign ult i64 %indvars.iv, %i.bv
  br i1 %.not211, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp eq i64 %indvars.iv, 3              ; 2 uses
  br i1 %or.cond9, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.em = sext i1 %i.el to i16                    ; 9 uses
  br i1 %i.bl, label %.lr.ph245.preheader, label %.loopexit225

.lr.ph245.preheader:                              ; preds = %bb.al
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.0195, i64 %indvars.iv ; 2 uses
  br i1 %i.by, label %.lr.ph245.epil.preheader, label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %.0192243 = phi ptr [ %i.ev, %.lr.ph245 ], [ %i.en, %.lr.ph245.preheader ] ; 9 uses
  %niter364 = phi i32 [ %niter364.next.7, %.lr.ph245 ], [ 0, %.lr.ph245.preheader ]
  store i16 %i.em, ptr %.0192243, align 2, !tbaa !85
  %i.eo = getelementptr inbounds nuw i8, ptr %.0192243, i64 8
  store i16 %i.em, ptr %i.eo, align 2, !tbaa !85
  %i.ep = getelementptr inbounds nuw i8, ptr %.0192243, i64 16
  store i16 %i.em, ptr %i.ep, align 2, !tbaa !85
  %i.eq = getelementptr inbounds nuw i8, ptr %.0192243, i64 24
  store i16 %i.em, ptr %i.eq, align 2, !tbaa !85
  %i.er = getelementptr inbounds nuw i8, ptr %.0192243, i64 32
  store i16 %i.em, ptr %i.er, align 2, !tbaa !85
  %i.es = getelementptr inbounds nuw i8, ptr %.0192243, i64 40
  store i16 %i.em, ptr %i.es, align 2, !tbaa !85
  %i.et = getelementptr inbounds nuw i8, ptr %.0192243, i64 48
  store i16 %i.em, ptr %i.et, align 2, !tbaa !85
  %i.eu = getelementptr inbounds nuw i8, ptr %.0192243, i64 56
  store i16 %i.em, ptr %i.eu, align 2, !tbaa !85
  %i.ev = getelementptr inbounds nuw i8, ptr %.0192243, i64 64 ; 2 uses
  %niter364.next.7 = add nuw nsw i32 %niter364, 8 ; 2 uses
  %niter364.ncmp.7 = icmp eq i32 %niter364.next.7, %unroll_iter363
  br i1 %niter364.ncmp.7, label %.loopexit225.loopexit322.unr-lcssa, label %.lr.ph245, !llvm.loop !87

bb.am:                                            ; preds = %bb.ak
  %i.ew = sext i1 %i.el to i8                     ; 9 uses
  br i1 %i.bl, label %.lr.ph.preheader, label %.loopexit225

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %.0195, i64 %indvars.iv ; 2 uses
  br i1 %i.bx, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0191241 = phi ptr [ %i.ff, %.lr.ph ], [ %i.ex, %.lr.ph.preheader ] ; 9 uses
  %niter358 = phi i32 [ %niter358.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  store i8 %i.ew, ptr %.0191241, align 1, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %.0191241, i64 4
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !24
  %i.ez = getelementptr inbounds nuw i8, ptr %.0191241, i64 8
  store i8 %i.ew, ptr %i.ez, align 1, !tbaa !24
  %i.fa = getelementptr inbounds nuw i8, ptr %.0191241, i64 12
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !24
  %i.fb = getelementptr inbounds nuw i8, ptr %.0191241, i64 16
  store i8 %i.ew, ptr %i.fb, align 1, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %.0191241, i64 20
  store i8 %i.ew, ptr %i.fc, align 1, !tbaa !24
  %i.fd = getelementptr inbounds nuw i8, ptr %.0191241, i64 24
  store i8 %i.ew, ptr %i.fd, align 1, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %.0191241, i64 28
  store i8 %i.ew, ptr %i.fe, align 1, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %.0191241, i64 32 ; 2 uses
  %niter358.next.7 = add nuw nsw i32 %niter358, 8 ; 2 uses
  %niter358.ncmp.7 = icmp eq i32 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %.loopexit225.loopexit323.unr-lcssa, label %.lr.ph, !llvm.loop !88

bb.an:                                            ; preds = %bb.aj
  %i.fg = load i32, ptr %5, align 4, !tbaa !28
  %i.fh = icmp eq i32 %i.fg, 16
  br i1 %i.fh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br i1 %i.bl, label %.lr.ph254.preheader, label %.loopexit225

.lr.ph254.preheader:                              ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.0195, i64 %indvars.iv
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %.3253 = phi i32 [ %i.fl, %.lr.ph254 ], [ 0, %.lr.ph254.preheader ]
  %.0190252 = phi ptr [ %i.fm, %.lr.ph254 ], [ %i.fi, %.lr.ph254.preheader ] ; 2 uses
  %i.fj = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.fk = trunc nuw i32 %i.fj to i16
  store i16 %i.fk, ptr %.0190252, align 2, !tbaa !85
  %i.fl = add nuw nsw i32 %.3253, 1               ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0190252, i64 8
  %exitcond276.not = icmp eq i32 %i.fl, %.fr260
  br i1 %exitcond276.not, label %.loopexit225, label %.lr.ph254, !llvm.loop !89

bb.ap:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %.0195, i64 %indvars.iv ; 2 uses
  br i1 %i.bc, label %.preheader226, label %.preheader228

.preheader228:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph248.preheader, label %.loopexit225

.lr.ph248.preheader:                              ; preds = %.preheader228
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !16
  %.pre288 = load ptr, ptr %i.bn, align 8, !tbaa !18
  br label %.lr.ph248

.preheader226:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph251, label %.loopexit225

.lr.ph251:                                        ; preds = %.preheader226, %.lr.ph251
  %.4250 = phi i32 [ %i.fr, %.lr.ph251 ], [ 0, %.preheader226 ]
  %.0188249 = phi ptr [ %i.fs, %.lr.ph251 ], [ %i.fn, %.preheader226 ] ; 2 uses
  %i.fo = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.fp = lshr i32 %i.fo, 8
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %.0188249, align 1, !tbaa !24
  %i.fr = add nuw nsw i32 %.4250, 1               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0188249, i64 4
  %exitcond275.not = icmp eq i32 %i.fr, %.fr260
  br i1 %exitcond275.not, label %.loopexit225, label %.lr.ph251, !llvm.loop !90

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %stbi__get8.exit
  %i.ft = phi ptr [ %i.gp, %stbi__get8.exit ], [ %.pre288, %.lr.ph248.preheader ] ; 3 uses
  %i.fu = phi ptr [ %i.gq, %stbi__get8.exit ], [ %.pre, %.lr.ph248.preheader ] ; 4 uses
  %.5247 = phi i32 [ %i.gr, %stbi__get8.exit ], [ 0, %.lr.ph248.preheader ]
  %.1189246 = phi ptr [ %i.gs, %stbi__get8.exit ], [ %i.fn, %.lr.ph248.preheader ] ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.ft
  br i1 %i.fv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph248
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fw, ptr %i.bm, align 8, !tbaa !16
  %i.fx = load i8, ptr %i.fu, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.ar:                                            ; preds = %.lr.ph248
  %i.fy = load i32, ptr %i.bo, align 8, !tbaa !13
  %.not.i221 = icmp eq i32 %i.fy, 0
  br i1 %.not.i221, label %stbi__get8.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.ga = load ptr, ptr %i.bp, align 8, !tbaa !21
  %i.gb = load i32, ptr %i.br, align 4, !tbaa !22
  %i.gc = tail call i32 %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.bq, i32 noundef %i.gb) #37, !inline_history !54 ; 2 uses
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.ge = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = trunc i64 %i.gh to i32
end_hunk_0
begin_hunk_1_@stbi__hdr_load:bb.a
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %.not149 = icmp eq i32 %i.dm, %i.bm
  br i1 %.not149, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.bu) #37
  call void @free(ptr noundef %.0123219) #37
  %i.dn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.109, ptr %i.dn, align 8, !tbaa !26
  br label %._crit_edge222.thread

bb.ab:                                            ; preds = %bb.z
  %i.do = icmp eq ptr %.0123219, null
  br i1 %i.do, label %stbi__malloc_mad2.exit, label %.preheader181.preheader

stbi__malloc_mad2.exit:                           ; preds = %bb.ab
  %i.dp = call noalias noundef ptr @malloc(i64 noundef %i.bz) #38 ; 2 uses
  %.not150 = icmp eq ptr %i.dp, null
  br i1 %.not150, label %stbi__malloc_mad2.exit.thread, label %.preheader181.preheader

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__malloc_mad2.exit
  call void @free(ptr noundef %i.bu) #37
  %i.dq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.dq, align 8, !tbaa !26
  br label %._crit_edge222.thread

.preheader181.preheader:                          ; preds = %bb.ab, %stbi__malloc_mad2.exit
  %.1124 = phi ptr [ %i.dp, %stbi__malloc_mad2.exit ], [ %.0123219, %bb.ab ] ; 7 uses
  br label %.preheader181

.lr.ph217:                                        ; preds = %..critedge_crit_edge
  %i.dr = mul nuw nsw i64 %indvars.iv268, %i.cm
  br label %bb.av

.preheader181:                                    ; preds = %.preheader181.preheader, %..critedge_crit_edge
  %indvars.iv260 = phi i64 [ 0, %.preheader181.preheader ], [ %indvars.iv.next261, %..critedge_crit_edge ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %.1124, i64 %indvars.iv260
  %invariant.gep322 = getelementptr i8, ptr %.1124, i64 %indvars.iv260 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader181, %.loopexit
  %i.ds = phi i32 [ %i.bm, %.preheader181 ], [ %i.hc, %.loopexit ] ; 2 uses
  %.2121213 = phi i32 [ 0, %.preheader181 ], [ %.5, %.loopexit ] ; 3 uses
  %i.dt = load ptr, ptr %i.ca, align 8, !tbaa !16 ; 3 uses
  %i.du = load ptr, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %i.dv = icmp ult ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.dw, ptr %i.ca, align 8, !tbaa !16
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dy = load i32, ptr %i.cc, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.ea = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.eb = load i32, ptr %i.cg, align 4, !tbaa !22
  %i.ec = call i32 %i.dz(ptr noundef %i.ea, ptr noundef nonnull %i.cf, i32 noundef %i.eb) #37, !inline_history !54 ; 2 uses
  %i.ed = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.ee = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = load i32, ptr %i.ci, align 8, !tbaa !14
  %i.ek = add nsw i32 %i.ej, %i.ei
  store i32 %i.ek, ptr %i.ci, align 8, !tbaa !14
  %i.el = icmp eq i32 %i.ec, 0
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cc, align 8, !tbaa !13
  store i8 0, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.em = sext i32 %i.ec to i64
  %i.en = getelementptr inbounds i8, ptr %i.cf, i64 %i.em
  %.pre.i = load i8, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.ah, %bb.ag
  %i.eo = phi i8 [ 0, %bb.ag ], [ %.pre.i, %bb.ah ]
  %.sink.i.i = phi ptr [ %i.cj, %bb.ag ], [ %i.en, %bb.ah ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cb, align 8, !tbaa !18
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.ad, %stbi__refill_buffer.exit.i
  %i.ep = phi ptr [ %i.du, %bb.ad ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  %i.eq = phi ptr [ %i.dw, %bb.ad ], [ %i.cj, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i153 = phi i8 [ %i.dx, %bb.ad ], [ %i.eo, %stbi__refill_buffer.exit.i ] ; 4 uses
  %i.er = zext i8 %.0.i153 to i32                 ; 2 uses
  %i.es = icmp ugt i8 %.0.i153, -128
  br i1 %i.es, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %stbi__get8.exit
  %i.et = icmp ult ptr %i.eq, %i.ep
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.eu, ptr %i.ca, align 8, !tbaa !16
  %i.ev = load i8, ptr %i.eq, align 1, !tbaa !24
  br label %stbi__get8.exit159

bb.ak:                                            ; preds = %bb.ai
  %i.ew = load i32, ptr %i.cc, align 8, !tbaa !13
  %.not.i154 = icmp eq i32 %i.ew, 0
  br i1 %.not.i154, label %stbi__get8.exit159, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.ey = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.ez = load i32, ptr %i.cg, align 4, !tbaa !22
  %i.fa = call i32 %i.ex(ptr noundef %i.ey, ptr noundef nonnull %i.cf, i32 noundef %i.ez) #37, !inline_history !54 ; 2 uses
  %i.fb = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.fc = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load i32, ptr %i.ci, align 8, !tbaa !14
  %i.fi = add nsw i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.ci, align 8, !tbaa !14
  %i.fj = icmp eq i32 %i.fa, 0
  br i1 %i.fj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cc, align 8, !tbaa !13
  store i8 0, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i156

bb.an:                                            ; preds = %bb.al
  %i.fk = sext i32 %i.fa to i64
  %i.fl = getelementptr inbounds i8, ptr %i.cf, i64 %i.fk
  %.pre.i155 = load i8, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i156

stbi__refill_buffer.exit.i156:                    ; preds = %bb.an, %bb.am
  %i.fm = phi i8 [ 0, %bb.am ], [ %.pre.i155, %bb.an ]
  %.sink.i.i157 = phi ptr [ %i.cj, %bb.am ], [ %i.fl, %bb.an ]
  store ptr %.sink.i.i157, ptr %i.cb, align 8, !tbaa !18
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !16
  br label %stbi__get8.exit159

stbi__get8.exit159:                               ; preds = %bb.aj, %bb.ak, %stbi__refill_buffer.exit.i156
  %.0.i158 = phi i8 [ %i.ev, %bb.aj ], [ %i.fm, %stbi__refill_buffer.exit.i156 ], [ 0, %bb.ak ] ; 5 uses
  %i.fn = and i8 %.0.i153, 127                    ; 3 uses
  %i.fo = zext nneg i8 %i.fn to i32               ; 3 uses
  %i.fp = icmp samesign ult i32 %i.ds, %i.fo
  br i1 %i.fp, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %stbi__get8.exit159
  %.not226 = icmp eq i8 %i.fn, 0
  br i1 %.not226, label %.loopexit, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %.preheader
  %i.fq = sext i32 %.2121213 to i64               ; 2 uses
  %xtraiter = and i32 %i.fo, 3                    ; 3 uses
  %i.fr = icmp samesign ult i8 %i.fn, 4
  br i1 %i.fr, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter = and i32 %i.fo, 124
  br label %.lr.ph211

bb.ao:                                            ; preds = %stbi__get8.exit159
  call void @free(ptr noundef %i.bu) #37
  call void @free(ptr noundef nonnull %.1124) #37
  %i.fs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.87, ptr %i.fs, align 8, !tbaa !26
  br label %._crit_edge222.thread

.lr.ph211:                                        ; preds = %.lr.ph211, %.lr.ph211.preheader.new
  %indvars.iv256 = phi i64 [ %i.fq, %.lr.ph211.preheader.new ], [ %indvars.iv.next257.3, %.lr.ph211 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph211.preheader.new ], [ %niter.next.3, %.lr.ph211 ]
  %i.ft = shl nsw i64 %indvars.iv256, 2
  %gep323 = getelementptr i8, ptr %invariant.gep322, i64 %i.ft
  store i8 %.0.i158, ptr %gep323, align 1, !tbaa !24
  %indvars.iv.next257 = shl i64 %indvars.iv256, 2
  %i.fu = getelementptr i8, ptr %invariant.gep322, i64 %indvars.iv.next257
  %gep323.1 = getelementptr i8, ptr %i.fu, i64 4
  store i8 %.0.i158, ptr %gep323.1, align 1, !tbaa !24
  %indvars.iv.next257.1 = shl i64 %indvars.iv256, 2
  %i.fv = getelementptr i8, ptr %invariant.gep322, i64 %indvars.iv.next257.1
  %gep323.2 = getelementptr i8, ptr %i.fv, i64 8
  store i8 %.0.i158, ptr %gep323.2, align 1, !tbaa !24
  %indvars.iv.next257.3 = add nsw i64 %indvars.iv256, 4 ; 3 uses
  %indvars.iv.next257.2 = shl i64 %indvars.iv256, 2
  %i.fw = getelementptr i8, ptr %invariant.gep322, i64 %indvars.iv.next257.2
  %gep323.3 = getelementptr i8, ptr %i.fw, i64 12
  store i8 %.0.i158, ptr %gep323.3, align 1, !tbaa !24
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph211, !llvm.loop !116

bb.ap:                                            ; preds = %stbi__get8.exit
  %i.fx = icmp eq i8 %.0.i153, 0
  %i.fy = icmp samesign ult i32 %i.ds, %i.er
  %or.cond152 = or i1 %i.fx, %i.fy
  br i1 %or.cond152, label %.thread, label %.preheader179.preheader

.preheader179.preheader:                          ; preds = %bb.ap
  %i.fz = sext i32 %.2121213 to i64
  br label %.preheader179

.thread:                                          ; preds = %bb.ae, %bb.ap
  call void @free(ptr noundef %i.bu) #37
  call void @free(ptr noundef nonnull %.1124) #37
  %i.ga = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.87, ptr %i.ga, align 8, !tbaa !26
  br label %._crit_edge222.thread

.preheader179:                                    ; preds = %.preheader179.preheader, %stbi__get8.exit165
  %indvars.iv = phi i64 [ %i.fz, %.preheader179.preheader ], [ %indvars.iv.next, %stbi__get8.exit165 ] ; 2 uses
  %.1208 = phi i32 [ 0, %.preheader179.preheader ], [ %i.gy, %stbi__get8.exit165 ]
  %i.gb = load ptr, ptr %i.ca, align 8, !tbaa !16 ; 3 uses
  %i.gc = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.gd = icmp ult ptr %i.gb, %i.gc
  br i1 %i.gd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.preheader179
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.ge, ptr %i.ca, align 8, !tbaa !16
  %i.gf = load i8, ptr %i.gb, align 1, !tbaa !24
  br label %stbi__get8.exit165

bb.ar:                                            ; preds = %.preheader179
  %i.gg = load i32, ptr %i.cc, align 8, !tbaa !13
  %.not.i160 = icmp eq i32 %i.gg, 0
  br i1 %.not.i160, label %stbi__get8.exit165, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.gi = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.gj = load i32, ptr %i.cg, align 4, !tbaa !22
  %i.gk = call i32 %i.gh(ptr noundef %i.gi, ptr noundef nonnull %i.cf, i32 noundef %i.gj) #37, !inline_history !54 ; 2 uses
  %i.gl = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.gm = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load i32, ptr %i.ci, align 8, !tbaa !14
  %i.gs = add nsw i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %i.ci, align 8, !tbaa !14
  %i.gt = icmp eq i32 %i.gk, 0
  br i1 %i.gt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.cc, align 8, !tbaa !13
  store i8 0, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i162

bb.au:                                            ; preds = %bb.as
  %i.gu = sext i32 %i.gk to i64
  %i.gv = getelementptr inbounds i8, ptr %i.cf, i64 %i.gu
  %.pre.i161 = load i8, ptr %i.cf, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i162

stbi__refill_buffer.exit.i162:                    ; preds = %bb.au, %bb.at
  %i.gw = phi i8 [ 0, %bb.at ], [ %.pre.i161, %bb.au ]
  %.sink.i.i163 = phi ptr [ %i.cj, %bb.at ], [ %i.gv, %bb.au ]
  store ptr %.sink.i.i163, ptr %i.cb, align 8, !tbaa !18
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !16
  br label %stbi__get8.exit165

stbi__get8.exit165:                               ; preds = %bb.aq, %bb.ar, %stbi__refill_buffer.exit.i162
  %.0.i164 = phi i8 [ %i.gf, %bb.aq ], [ %i.gw, %stbi__refill_buffer.exit.i162 ], [ 0, %bb.ar ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gx = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gx
  store i8 %.0.i164, ptr %gep, align 1, !tbaa !24
  %i.gy = add nuw nsw i32 %.1208, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %i.er
  br i1 %exitcond.not, label %.loopexit.loopexit227, label %.preheader179, !llvm.loop !117

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph211
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph211.preheader
  %indvars.iv256.epil.init = phi i64 [ %i.fq, %.lr.ph211.preheader ], [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph211.epil

.lr.ph211.epil:                                   ; preds = %.lr.ph211.epil, %.lr.ph211.epil.preheader
  %indvars.iv256.epil = phi i64 [ %indvars.iv256.epil.init, %.lr.ph211.epil.preheader ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph211.epil.preheader ], [ %epil.iter.next, %.lr.ph211.epil ]
  %indvars.iv.next257.epil = add nsw i64 %indvars.iv256.epil, 1 ; 2 uses
  %i.gz = shl nsw i64 %indvars.iv256.epil, 2
  %gep323.epil = getelementptr i8, ptr %invariant.gep322, i64 %i.gz
  store i8 %.0.i158, ptr %gep323.epil, align 1, !tbaa !24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph211.epil, !llvm.loop !118

.loopexit.loopexit:                               ; preds = %.lr.ph211.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next257.lcssa = phi i64 [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ]
  %i.ha = trunc nsw i64 %indvars.iv.next257.lcssa to i32
  br label %.loopexit

.loopexit.loopexit227:                            ; preds = %stbi__get8.exit165
  %i.hb = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit227, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %i.ha, %.loopexit.loopexit ], [ %.2121213, %.preheader ], [ %i.hb, %.loopexit.loopexit227 ] ; 2 uses
  %i.hc = sub nsw i32 %i.bm, %.5                  ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %..critedge_crit_edge, label %bb.ac, !llvm.loop !119

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, 4
  br i1 %exitcond263.not, label %.lr.ph217, label %.preheader181, !llvm.loop !120

bb.av:                                            ; preds = %.lr.ph217, %stbi__hdr_convert.exit
  %indvars.iv264 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next265, %stbi__hdr_convert.exit ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv264, %i.dr
  %i.hf = mul nsw i64 %i.he, %i.cl
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hf ; 11 uses
  %i.hh = shl nuw nsw i64 %indvars.iv264, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hh ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24  ; 2 uses
  %.not.i166 = icmp eq i8 %i.hk, 0
  br i1 %.not.i166, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -136
  %i.hn = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.hm) #37
  %i.ho = fptrunc double %i.hn to float           ; 4 uses
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !24  ; 2 uses
  br i1 %i.ck, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = zext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !24
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hu, %i.hx
  %i.hz = uitofp nneg i32 %i.hy to float
  %i.ia = fmul float %i.ho, %i.hz
  %i.ib = fdiv float %i.ia, 3.000000e+00
  store float %i.ib, ptr %i.hg, align 4, !tbaa !121
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ic = uitofp i8 %i.hp to float
  %i.id = fmul float %i.ho, %i.ic
  store float %i.id, ptr %i.hg, align 4, !tbaa !121
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !24
  %i.ig = uitofp i8 %i.if to float
  %i.ih = fmul float %i.ho, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float %i.ih, ptr %i.ii, align 4, !tbaa !121
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !24
  %i.il = uitofp i8 %i.ik to float
  %i.im = fmul float %i.ho, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !121
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  switch i32 %4, label %stbi__hdr_convert.exit [
    i32 2, label %bb.ba
    i32 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.io, align 4, !tbaa !121
  br label %stbi__hdr_convert.exit

bb.bb:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !121
  br label %stbi__hdr_convert.exit

bb.bc:                                            ; preds = %bb.av
  switch i32 %spec.store.select, label %stbi__hdr_convert.exit [
    i32 4, label %bb.bd
    i32 3, label %bb.be
    i32 2, label %bb.bf
end_hunk_1
begin_hunk_2_@stbi__tga_load:bb.a
  %i.gu = lshr i8 %.0.i237, 3
  br label %bb.al

bb.ai:                                            ; preds = %stbi__get8.exit250
  switch i8 %.0.i243, label %stbi__tga_get_comp.exit [
    i8 8, label %bb.al
    i8 16, label %bb.aj
    i8 15, label %bb.ag
    i8 24, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gv = add nsw i32 %i.ct, -8
  %.0178 = select i1 %i.gq, i32 %i.gv, i32 %i.ct
  %i.gw = icmp eq i32 %.0178, 3
  br i1 %i.gw, label %bb.al, label %bb.ag

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.gx = lshr i8 %.0.i243, 3
  br label %bb.al

stbi__tga_get_comp.exit:                          ; preds = %bb.ai, %bb.af
  %i.gy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.gy, align 8, !tbaa !26
  br label %bb.cp

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %bb.ak, %bb.ai, %bb.aj
  %i.gz = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ true, %bb.ag ], [ false, %bb.af ] ; 2 uses
  %.not209 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %.0193.ph.shrunk = phi i8 [ %i.gx, %bb.ak ], [ %i.gu, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ag ], [ 1, %bb.af ] ; 6 uses
  %.0193.ph = zext nneg i8 %.0193.ph.shrunk to i32 ; 11 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !27
  store i32 %i.ee, ptr %2, align 4, !tbaa !27
  %.not204 = icmp eq ptr %3, null
  br i1 %.not204, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0193.ph, ptr %3, align 4, !tbaa !27
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = icmp eq i32 %i.ee, 0                    ; 2 uses
  br i1 %i.ha, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.an
  %i.hb = udiv i32 2147483647, %i.ee
  %.not24.i = icmp samesign ugt i32 %i.ed, %i.hb
  br i1 %.not24.i, label %bb.ao, label %stbi__mul2sizes_valid.exit.thread16.i.thread

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %bb.an
  %i.hc = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hd = udiv i32 2147483647, %.0193.ph
  %.not.i256 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i256, label %bb.ao, label %stbi__malloc_mad3.exit

stbi__mul2sizes_valid.exit.thread16.i.thread:     ; preds = %stbi__mul2sizes_valid.exit.i
  %i.he = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hf = udiv i32 2147483647, %.0193.ph
  %.not.i256452 = icmp samesign ugt i32 %i.he, %i.hf
  br i1 %.not.i256452, label %bb.ao, label %stbi__mul2sizes_valid.exit.i.i

bb.ao:                                            ; preds = %stbi__mul2sizes_valid.exit.thread16.i.thread, %stbi__mul2sizes_valid.exit.thread16.i, %stbi__mul2sizes_valid.exit.i
  %i.hg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.hg, align 8, !tbaa !26
  br label %bb.cp

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit.thread16.i.thread
  %i.hh = udiv i32 2147483647, %i.ee
  %.not24.i.i = icmp samesign ugt i32 %i.ed, %i.hh
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit.thread16.i
  %i.hi = phi i32 [ %i.he, %stbi__mul2sizes_valid.exit.i.i ], [ %i.hc, %stbi__mul2sizes_valid.exit.thread16.i ] ; 7 uses
  %i.hj = mul nuw nsw i32 %i.hi, %.0193.ph
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = tail call noalias noundef ptr @malloc(i64 noundef %i.hk) #38 ; 26 uses
  %.not206 = icmp eq ptr %i.hl, null
  br i1 %.not206, label %stbi__malloc_mad3.exit.thread, label %bb.ap

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__malloc_mad3.exit
  %i.hm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.hm, align 8, !tbaa !26
  br label %bb.cp

bb.ap:                                            ; preds = %stbi__malloc_mad3.exit
  %i.hn = icmp eq i8 %.0.i, 0
  br i1 %i.hn, label %stbi__skip.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !8
  %.not.i258 = icmp eq ptr %i.hp, null
  br i1 %.not.i258, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hq = ptrtoint ptr %i.gp to i64
  %i.hr = ptrtoint ptr %.pre.i259 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  %i.hu = icmp sgt i32 %i.ak, %i.ht
  br i1 %i.hu, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !58
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !21
  %i.hz = sub nsw i32 %i.ak, %i.ht
  tail call void %i.hw(ptr noundef %i.hy, i32 noundef %i.hz) #37, !inline_history !59
  br label %stbi__skip.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.ia = zext i8 %.0.i to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre.i259, i64 %i.ia
  store ptr %i.ib, ptr %i.b, align 8, !tbaa !16
  br label %stbi__skip.exit

stbi__skip.exit:                                  ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gt, %i.gq
  %or.cond3 = or i1 %or.cond, %i.gz
  br i1 %or.cond3, label %bb.ba, label %.preheader324

.preheader324:                                    ; preds = %stbi__skip.exit
  br i1 %i.ha, label %.loopexit325, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader324
  %.not207.not = icmp eq i8 %i.gs, 0              ; 2 uses
  %i.ic = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.if = zext nneg i32 %i.ic to i64              ; 14 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %wide.trip.count361 = zext nneg i32 %i.ee to i64 ; 4 uses
  br i1 %.not207.not, label %..thread_crit_edge.i262.us.us.preheader, label %..thread_crit_edge.i262.us.preheader

..thread_crit_edge.i262.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count361, 1
  %i.ii = icmp eq i32 %i.ee, 1
  br i1 %i.ii, label %..thread_crit_edge.i262.us.epil.preheader, label %..thread_crit_edge.i262.us.preheader.new

..thread_crit_edge.i262.us.preheader.new:         ; preds = %..thread_crit_edge.i262.us.preheader
  %unroll_iter = and i64 %wide.trip.count361, 65534
  br label %..thread_crit_edge.i262.us

..thread_crit_edge.i262.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter487 = and i64 %wide.trip.count361, 1
  %i.ij = icmp eq i32 %i.ee, 1
  br i1 %i.ij, label %..thread_crit_edge.i262.us.us.epil.preheader, label %..thread_crit_edge.i262.us.us.preheader.new

..thread_crit_edge.i262.us.us.preheader.new:      ; preds = %..thread_crit_edge.i262.us.us.preheader
  %unroll_iter492 = and i64 %wide.trip.count361, 65534
  br label %..thread_crit_edge.i262.us.us

..thread_crit_edge.i262.us.us:                    ; preds = %stbi__getn.exit.us.us.1, %..thread_crit_edge.i262.us.us.preheader.new
  %indvars.iv358 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %indvars.iv.next359.1, %stbi__getn.exit.us.us.1 ] ; 3 uses
  %i.ik = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader.new ], [ %i.ja, %stbi__getn.exit.us.us.1 ] ; 3 uses
  %niter493 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %niter493.next.1, %stbi__getn.exit.us.us.1 ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.if ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.il, %.pre35.i.us
  br i1 %.not32.i.us.us, label %stbi__getn.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i262.us.us
  %i.im = trunc i64 %indvars.iv358 to i32
  %i.in = xor i32 %i.im, -1
  %i.io = add i32 %i.ee, %i.in
  %i.ip = mul i32 %i.ic, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.hl, i64 %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr align 1 %i.ik, i64 %i.if, i1 false)
  store ptr %i.il, ptr %i.b, align 8, !tbaa !16
  br label %stbi__getn.exit.us.us

stbi__getn.exit.us.us:                            ; preds = %..thread_crit_edge.i262.us.us, %bb.at
  %i.is = phi ptr [ %i.il, %bb.at ], [ %i.ik, %..thread_crit_edge.i262.us.us ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.if ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.it, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %stbi__getn.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %stbi__getn.exit.us.us
  %i.iu = trunc i64 %indvars.iv358 to i32
  %i.iv = xor i32 %i.iu, -2
  %i.iw = add i32 %i.ee, %i.iv
  %i.ix = mul i32 %i.ic, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.hl, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.is, i64 %i.if, i1 false)
  store ptr %i.it, ptr %i.b, align 8, !tbaa !16
  br label %stbi__getn.exit.us.us.1

stbi__getn.exit.us.us.1:                          ; preds = %bb.au, %stbi__getn.exit.us.us
  %i.ja = phi ptr [ %i.it, %bb.au ], [ %i.is, %stbi__getn.exit.us.us ] ; 2 uses
  %indvars.iv.next359.1 = add nuw nsw i64 %indvars.iv358, 2 ; 2 uses
  %niter493.next.1 = add i64 %niter493, 2         ; 2 uses
  %niter493.ncmp.1 = icmp eq i64 %niter493.next.1, %unroll_iter492
  br i1 %niter493.ncmp.1, label %.loopexit325.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !129

..thread_crit_edge.i262.us:                       ; preds = %stbi__getn.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %stbi__getn.exit.us.1 ] ; 3 uses
  %i.jb = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jo, %stbi__getn.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %stbi__getn.exit.us.1 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.if ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.jc, %.pre35.i.us
  br i1 %.not32.i.us, label %stbi__getn.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  %i.je = mul i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !16
  br label %stbi__getn.exit.us

stbi__getn.exit.us:                               ; preds = %bb.av, %..thread_crit_edge.i262.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i262.us ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.if ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.ji, %.pre35.i.us
  br i1 %.not32.i.us.1, label %stbi__getn.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %stbi__getn.exit.us
  %i.jj = trunc i64 %indvars.iv to i32
  %i.jk = or disjoint i32 %i.jj, 1
  %i.jl = mul i32 %i.ic, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.hl, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr align 1 %i.jh, i64 %i.if, i1 false)
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !16
  br label %stbi__getn.exit.us.1

stbi__getn.exit.us.1:                             ; preds = %bb.aw, %stbi__getn.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %stbi__getn.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit325.loopexit484.unr-lcssa, label %..thread_crit_edge.i262.us, !llvm.loop !129

.lr.ph.split:                                     ; preds = %.lr.ph, %stbi__getn.exit
  %.0187326 = phi i32 [ %i.km, %stbi__getn.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.jp = xor i32 %.0187326, -1
  %i.jq = add nsw i32 %i.ee, %i.jp
  %i.jr = select i1 %.not207.not, i32 %i.jq, i32 %.0187326
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt ; 3 uses
  %i.jv = load ptr, ptr %i.id, align 8, !tbaa !8  ; 2 uses
  %.not.i260 = icmp eq ptr %i.jv, null
  br i1 %.not.i260, label %..thread_crit_edge.i262, label %bb.ax

..thread_crit_edge.i262:                          ; preds = %.lr.ph.split
  %.pre.i264 = load ptr, ptr %i.b, align 8, !tbaa !16
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %.thread.i261

bb.ax:                                            ; preds = %.lr.ph.split
  %i.jw = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !16  ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  %i.kc = icmp sgt i32 %i.ic, %i.kb
  br i1 %i.kc, label %bb.ay, label %.thread.i261

bb.ay:                                            ; preds = %bb.ax
  %sext.i = shl i64 %i.ka, 32
  %i.kd = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jx, i64 %i.kd, i1 false)
  %i.ke = load ptr, ptr %i.ie, align 8, !tbaa !21
  %i.kf = getelementptr inbounds i8, ptr %i.ju, i64 %i.kd
  %i.kg = sub nsw i32 %i.ic, %i.kb
  %i.kh = tail call i32 %i.jv(ptr noundef %i.ke, ptr noundef nonnull %i.kf, i32 noundef %i.kg) #37, !inline_history !110 ; 0 uses
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %stbi__getn.exit.sink.split

.thread.i261:                                     ; preds = %bb.ax, %..thread_crit_edge.i262
  %i.kj = phi ptr [ %.pre35.i, %..thread_crit_edge.i262 ], [ %i.jw, %bb.ax ]
  %i.kk = phi ptr [ %.pre.i264, %..thread_crit_edge.i262 ], [ %i.jx, %bb.ax ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kl, %i.kj
  br i1 %.not32.i, label %stbi__getn.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i261
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.kk, i64 %i.if, i1 false)
  br label %stbi__getn.exit.sink.split

stbi__getn.exit.sink.split:                       ; preds = %bb.az, %bb.ay
  %.sink = phi ptr [ %i.ki, %bb.ay ], [ %i.kl, %bb.az ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !16
  br label %stbi__getn.exit

stbi__getn.exit:                                  ; preds = %stbi__getn.exit.sink.split, %.thread.i261
  %i.km = add nuw nsw i32 %.0187326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, %i.ee
  br i1 %exitcond.not, label %.loopexit325, label %.lr.ph.split, !llvm.loop !130

bb.ba:                                            ; preds = %stbi__skip.exit
  br i1 %i.gt, label %bb.bb, label %.loopexit323

bb.bb:                                            ; preds = %bb.ba
  %i.kn = icmp eq i32 %i.cv, 0
  br i1 %i.kn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hl) #37
  %i.ko = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.ko, align 8, !tbaa !26
  br label %bb.cp

bb.bd:                                            ; preds = %bb.bb
  %i.kp = icmp eq i32 %i.cu, 0
  br i1 %i.kp, label %stbi__skip.exit270, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !8
  %.not.i265 = icmp eq ptr %i.kr, null
  br i1 %.not.i265, label %..thread_crit_edge.i267, label %bb.bf

..thread_crit_edge.i267:                          ; preds = %bb.be
  %.pre.i269 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %.thread.i266

bb.bf:                                            ; preds = %bb.be
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = trunc i64 %i.kw to i32                  ; 2 uses
  %i.ky = icmp sgt i32 %i.cu, %i.kx
  br i1 %i.ky, label %bb.bg, label %.thread.i266

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ks, ptr %i.b, align 8, !tbaa !16
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !58
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !21
  %i.ld = sub nsw i32 %i.cu, %i.kx
  tail call void %i.la(ptr noundef %i.lc, i32 noundef %i.ld) #37, !inline_history !59
  br label %stbi__skip.exit270

.thread.i266:                                     ; preds = %bb.bf, %..thread_crit_edge.i267
  %i.le = phi ptr [ %.pre.i269, %..thread_crit_edge.i267 ], [ %i.kt, %bb.bf ]
  %i.lf = zext nneg i32 %i.cu to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !16
  br label %stbi__skip.exit270

stbi__skip.exit270:                               ; preds = %bb.bd, %bb.bg, %.thread.i266
  %i.lh = mul nuw nsw i32 %i.cv, %.0193.ph        ; 2 uses
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = tail call noalias noundef ptr @malloc(i64 noundef %i.li) #38 ; 6 uses
  %.not208 = icmp eq ptr %i.lj, null
  br i1 %.not208, label %stbi__malloc_mad2.exit.thread, label %bb.bh

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__skip.exit270
  tail call void @free(ptr noundef nonnull %i.hl) #37
  %i.lk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.lk, align 8, !tbaa !26
  br label %bb.cp

bb.bh:                                            ; preds = %stbi__skip.exit270
  br i1 %.not209, label %bb.bj, label %.preheader322

.preheader322:                                    ; preds = %bb.bh
  %i.ll = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader322, %bb.bi
  %.0177328 = phi ptr [ %i.lj, %.preheader322 ], [ %i.md, %bb.bi ] ; 4 uses
  %.1188327 = phi i32 [ 0, %.preheader322 ], [ %i.me, %bb.bi ]
  %i.lm = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ln = trunc nuw i32 %i.lm to i16              ; 3 uses
  %i.lo = lshr i16 %i.ln, 10
  %i.lp = and i16 %i.lo, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.lp, 255
  %i.lq = udiv i16 %.lhs.trunc.i, 31
  %i.lr = trunc nuw i16 %i.lq to i8
  store i8 %i.lr, ptr %.0177328, align 1, !tbaa !24
  %i.ls = lshr i16 %i.ln, 5
  %i.lt = getelementptr inbounds nuw i8, ptr %.0177328, i64 1
  %i.lu = insertelement <2 x i16> poison, i16 %i.ls, i64 0
  %i.lv = insertelement <2 x i16> %i.lu, i16 %i.ln, i64 1
  %i.lw = and <2 x i16> %i.lv, splat (i16 31)
  %i.lx = mul nuw nsw <2 x i16> %i.lw, splat (i16 255)
  %i.ly = udiv <2 x i16> %i.lx, splat (i16 31)
  %i.lz = trunc <2 x i16> %i.ly to <2 x i8>       ; 2 uses
  %i.ma = extractelement <2 x i8> %i.lz, i64 0
  store i8 %i.ma, ptr %i.lt, align 1, !tbaa !24
  %i.mb = getelementptr inbounds nuw i8, ptr %.0177328, i64 2
  %i.mc = extractelement <2 x i8> %i.lz, i64 1
  store i8 %i.mc, ptr %i.mb, align 1, !tbaa !24
  %i.md = getelementptr inbounds nuw i8, ptr %.0177328, i64 %i.ll
  %i.me = add nuw nsw i32 %.1188327, 1            ; 2 uses
  %exitcond363.not = icmp eq i32 %i.me, %i.cv
  br i1 %exitcond363.not, label %.loopexit323, label %bb.bi, !llvm.loop !132

bb.bj:                                            ; preds = %bb.bh
  %i.mf = tail call i32 @stbi__getn(ptr noundef nonnull %0, ptr noundef nonnull %i.lj, i32 noundef %i.lh)
  %.not210 = icmp eq i32 %i.mf, 0
  br i1 %.not210, label %bb.bk, label %.loopexit323

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.hl) #37
  tail call void @free(ptr noundef nonnull %i.lj) #37
  %i.mg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.mg, align 8, !tbaa !26
  br label %bb.cp

.loopexit323:                                     ; preds = %bb.bi, %bb.bj, %bb.ba
  %.0191 = phi ptr [ null, %bb.ba ], [ %i.lj, %bb.bj ], [ %i.lj, %bb.bi ] ; 3 uses
  %.not350 = icmp eq i32 %i.hi, 0
  br i1 %.not350, label %._crit_edge, label %.lr.ph336

.lr.ph336:                                        ; preds = %.loopexit323
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mr = icmp eq i8 %.0.i243, 8
  %i.ms = zext nneg i8 %.0193.ph.shrunk to i64    ; 3 uses
  %wide.trip.count381 = zext nneg i32 %i.hi to i64
  %wide.trip.count368 = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph336, %.loopexit319
end_hunk_2
begin_hunk_3_@stbi__tga_load:bb.a
  %i.rd = zext i32 %indvars.iv389 to i64          ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.re = sext i32 %indvars.iv385 to i64          ; 2 uses
  %scevgep465 = getelementptr i8, ptr %scevgep464, i64 %i.re
  %scevgep463 = getelementptr i8, ptr %i.hl, i64 %i.re
  %i.rf = zext i32 %indvars.iv389 to i64          ; 2 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.rf
  %scevgep460 = getelementptr nuw i8, ptr %i.hl, i64 %i.rf
  %bound0 = icmp ult ptr %scevgep460, %scevgep465
  %bound1 = icmp ult ptr %scevgep463, %scevgep462
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check467, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rg = add nuw nsw i64 %n.vec, %i.rd
  %i.rh = add nsw i64 %n.vec, %i.rc
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.rd
  %invariant.gep501 = getelementptr i8, ptr %i.hl, i64 %i.rc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  %wide.load468 = load <16 x i8>, ptr %i.ri, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  %gep502 = getelementptr i8, ptr %invariant.gep501, i64 %index ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %gep502, i64 16 ; 2 uses
  %wide.load469 = load <16 x i8>, ptr %gep502, align 1, !tbaa !24, !alias.scope !138
  %wide.load470 = load <16 x i8>, ptr %i.rj, align 1, !tbaa !24, !alias.scope !138
  store <16 x i8> %wide.load469, ptr %gep, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  store <16 x i8> %wide.load470, ptr %i.ri, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  store <16 x i8> %wide.load, ptr %gep502, align 1, !tbaa !24, !alias.scope !138
  store <16 x i8> %wide.load468, ptr %i.rj, align 1, !tbaa !24, !alias.scope !138
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge342, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rl = add nuw nsw i64 %n.vec473, %i.rd
  %i.rm = add nsw i64 %n.vec473, %i.rc
  %invariant.gep503 = getelementptr i8, ptr %i.hl, i64 %i.rd
  %invariant.gep505 = getelementptr i8, ptr %i.hl, i64 %i.rc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index474 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %gep504 = getelementptr i8, ptr %invariant.gep503, i64 %index474 ; 2 uses
  %wide.load475 = load <8 x i8>, ptr %gep504, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  %gep506 = getelementptr i8, ptr %invariant.gep505, i64 %index474 ; 2 uses
  %wide.load476 = load <8 x i8>, ptr %gep506, align 1, !tbaa !24, !alias.scope !138
  store <8 x i8> %wide.load476, ptr %gep504, align 1, !tbaa !24, !alias.scope !135, !noalias !138
  store <8 x i8> %wide.load475, ptr %gep506, align 1, !tbaa !24, !alias.scope !138
  %index.next477 = add nuw i64 %index474, 8       ; 2 uses
  %i.rn = icmp eq i64 %index.next477, %n.vec473
  br i1 %i.rn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n478, label %._crit_edge342, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv391.ph = phi i64 [ %i.rd, %iter.check ], [ %i.rd, %vector.memcheck ], [ %i.rg, %vec.epilog.iter.check ], [ %i.rl, %vec.epilog.middle.block ]
  %indvars.iv387.ph = phi i64 [ %i.rc, %iter.check ], [ %i.rc, %vector.memcheck ], [ %i.rh, %vec.epilog.iter.check ], [ %i.rm, %vec.epilog.middle.block ]
  %.3190337.ph = phi i32 [ %i.qo, %iter.check ], [ %i.qo, %vector.memcheck ], [ %i.qz, %vec.epilog.iter.check ], [ %i.rb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %vec.epilog.scalar.ph ], [ %indvars.iv391.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %vec.epilog.scalar.ph ], [ %indvars.iv387.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3190337 = phi i32 [ %i.rs, %vec.epilog.scalar.ph ], [ %.3190337.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv391 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !24
  %i.rq = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv387 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !24
  store i8 %i.rr, ptr %i.ro, align 1, !tbaa !24
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !24
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1
  %indvars.iv.next388 = add nsw i64 %indvars.iv387, 1
  %i.rs = add nsw i32 %.3190337, -1
  %i.rt = icmp sgt i32 %.3190337, 1
  br i1 %i.rt, label %vec.epilog.scalar.ph, label %._crit_edge342, !llvm.loop !143

._crit_edge342:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ru = add nuw nsw i32 %.3343, 1
  %indvars.iv.next386 = sub i32 %indvars.iv385, %i.qo
  %indvars.iv.next390 = add i32 %indvars.iv389, %i.qo
  %exitcond396.not = icmp eq i32 %.3343, %i.qs
  br i1 %exitcond396.not, label %.loopexit318, label %iter.check, !llvm.loop !144

.loopexit318:                                     ; preds = %._crit_edge342, %.lr.ph344, %._crit_edge
  %.not212 = icmp eq ptr %.0191, null
  br i1 %.not212, label %.loopexit325, label %bb.cj

bb.cj:                                            ; preds = %.loopexit318
  tail call void @free(ptr noundef nonnull %.0191) #37
  br label %.loopexit325

.loopexit325.loopexit.unr-lcssa:                  ; preds = %stbi__getn.exit.us.us.1
  %lcmp.mod490.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod490.not, label %.loopexit325, label %..thread_crit_edge.i262.us.us.epil.preheader

..thread_crit_edge.i262.us.us.epil.preheader:     ; preds = %.loopexit325.loopexit.unr-lcssa, %..thread_crit_edge.i262.us.us.preheader
  %indvars.iv358.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader ], [ %indvars.iv.next359.1, %.loopexit325.loopexit.unr-lcssa ]
  %.epil.init489 = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader ], [ %i.ja, %.loopexit325.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod491 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod491)
  %i.rv = getelementptr inbounds nuw i8, ptr %.epil.init489, i64 %i.if ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.rv, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit325, label %bb.ck

bb.ck:                                            ; preds = %..thread_crit_edge.i262.us.us.epil.preheader
  %i.rw = trunc i64 %indvars.iv358.epil.init to i32
  %i.rx = xor i32 %i.rw, -1
  %i.ry = add i32 %i.ee, %i.rx
  %i.rz = mul i32 %i.ic, %i.ry
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds i8, ptr %i.hl, i64 %i.sa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sb, ptr align 1 %.epil.init489, i64 %i.if, i1 false)
  store ptr %i.rv, ptr %i.b, align 8, !tbaa !16
  br label %.loopexit325

.loopexit325.loopexit484.unr-lcssa:               ; preds = %stbi__getn.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit325, label %..thread_crit_edge.i262.us.epil.preheader

..thread_crit_edge.i262.us.epil.preheader:        ; preds = %.loopexit325.loopexit484.unr-lcssa, %..thread_crit_edge.i262.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader ], [ %indvars.iv.next.1, %.loopexit325.loopexit484.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader ], [ %i.jo, %.loopexit325.loopexit484.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.sc = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.if ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.sc, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit325, label %bb.cl

bb.cl:                                            ; preds = %..thread_crit_edge.i262.us.epil.preheader
  %i.sd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.se = mul i32 %i.ic, %i.sd
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds i8, ptr %i.hl, i64 %i.sf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sg, ptr align 1 %.epil.init, i64 %i.if, i1 false)
  store ptr %i.sc, ptr %i.b, align 8, !tbaa !16
  br label %.loopexit325

.loopexit325:                                     ; preds = %stbi__getn.exit, %.loopexit325.loopexit484.unr-lcssa, %bb.cl, %..thread_crit_edge.i262.us.epil.preheader, %.loopexit325.loopexit.unr-lcssa, %bb.ck, %..thread_crit_edge.i262.us.us.epil.preheader, %.preheader324, %.loopexit318, %bb.cj
  %i.sh = icmp samesign ult i8 %.0193.ph.shrunk, 3
  %.not352 = icmp eq i32 %i.hi, 0
  %i.si = or i1 %i.sh, %.not352
  %or.cond456 = or i1 %i.si, %i.gz
  br i1 %or.cond456, label %.loopexit, label %.lr.ph347

.lr.ph347:                                        ; preds = %.loopexit325
  %i.sj = zext nneg i8 %.0193.ph.shrunk to i64    ; 5 uses
  %i.sk = add i32 %i.hi, -1
  %xtraiter494 = and i32 %i.hi, 3                 ; 3 uses
  %i.sl = icmp ult i32 %i.sk, 3
  br i1 %i.sl, label %.epil.preheader, label %.lr.ph347.new

.lr.ph347.new:                                    ; preds = %.lr.ph347
  %unroll_iter497 = and i32 %i.hi, -4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph347.new
  %.0174346 = phi ptr [ %i.hl, %.lr.ph347.new ], [ %i.tb, %bb.cm ] ; 4 uses
  %niter498 = phi i32 [ 0, %.lr.ph347.new ], [ %niter498.next.3, %bb.cm ]
  %i.sm = load i8, ptr %.0174346, align 1, !tbaa !24
  %i.sn = getelementptr inbounds nuw i8, ptr %.0174346, i64 2 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !24
  store i8 %i.so, ptr %.0174346, align 1, !tbaa !24
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !24
  %i.sp = getelementptr inbounds nuw i8, ptr %.0174346, i64 %i.sj ; 4 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !24
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 2 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !24
  store i8 %i.ss, ptr %i.sp, align 1, !tbaa !24
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !24
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sj ; 4 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !24
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 2 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !24
  store i8 %i.sw, ptr %i.st, align 1, !tbaa !24
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !24
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sj ; 4 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !24
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 2 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !24
  store i8 %i.ta, ptr %i.sx, align 1, !tbaa !24
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !24
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sj ; 2 uses
  %niter498.next.3 = add i32 %niter498, 4         ; 2 uses
  %niter498.ncmp.3 = icmp eq i32 %niter498.next.3, %unroll_iter497
  br i1 %niter498.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !145

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod495.not = icmp eq i32 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph347
  %.0174346.epil.init = phi ptr [ %i.hl, %.lr.ph347 ], [ %i.tb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod496 = icmp ne i32 %xtraiter494, 0
  tail call void @llvm.assume(i1 %lcmp.mod496)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %.0174346.epil = phi ptr [ %.0174346.epil.init, %.epil.preheader ], [ %i.tf, %bb.cn ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.tc = load i8, ptr %.0174346.epil, align 1, !tbaa !24
  %i.td = getelementptr inbounds nuw i8, ptr %.0174346.epil, i64 2 ; 2 uses
  %i.te = load i8, ptr %i.td, align 1, !tbaa !24
  store i8 %i.te, ptr %.0174346.epil, align 1, !tbaa !24
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !24
  %i.tf = getelementptr inbounds nuw i8, ptr %.0174346.epil, i64 %i.sj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter494
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.cn, !llvm.loop !146

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cn, %.loopexit325
  %.not213 = icmp eq i32 %4, 0
  %.not214 = icmp eq i32 %4, %.0193.ph
  %or.cond220 = or i1 %.not213, %.not214
  br i1 %or.cond220, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit
  %i.tg = tail call ptr @stbi__convert_format(ptr noundef nonnull %i.hl, i32 noundef %.0193.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit, %bb.co, %bb.bk, %stbi__malloc_mad2.exit.thread, %bb.bc, %stbi__malloc_mad3.exit.thread, %bb.ao, %stbi__tga_get_comp.exit
  %.0 = phi ptr [ null, %stbi__tga_get_comp.exit ], [ null, %bb.ao ], [ null, %bb.bc ], [ null, %stbi__malloc_mad3.exit.thread ], [ null, %bb.bk ], [ null, %stbi__malloc_mad2.exit.thread ], [ %i.tg, %bb.co ], [ %i.hl, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.0
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @stbi__convert_16_to_8(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = mul nsw i32 %i.a, %3                     ; 5 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #38 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !85
  %wide.load20 = load <8 x i16>, ptr %i.i, align 2, !tbaa !85
  %i.j = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.k = lshr <8 x i16> %wide.load20, splat (i16 8)
  %i.l = trunc nuw <8 x i16> %i.j to <8 x i8>
  %i.m = trunc nuw <8 x i16> %i.k to <8 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <8 x i8> %i.l, ptr %i.n, align 1, !tbaa !24
  store <8 x i8> %i.m, ptr %i.o, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22
  %wide.load23 = load <4 x i16>, ptr %i.q, align 2, !tbaa !85
  %i.r = lshr <4 x i16> %wide.load23, splat (i16 8)
  %i.s = trunc nuw <4 x i16> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %index22
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !24
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec21, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !85
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  tail call void @free(ptr noundef %0) #37
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %i.d
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @stbi__convert_8_to_16(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = mul nsw i32 %i.a, %3                     ; 5 uses
  %i.c = shl nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #38 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !24
  %wide.load22 = load <8 x i8>, ptr %i.j, align 1, !tbaa !24
  %i.k = zext <8 x i8> %wide.load to <8 x i16>
  %i.l = zext <8 x i8> %wide.load22 to <8 x i16>
  %i.m = mul nuw <8 x i16> %i.k, splat (i16 257)
  %i.n = mul nuw <8 x i16> %i.l, splat (i16 257)
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !85
  store <8 x i16> %i.n, ptr %i.p, align 2, !tbaa !85
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !148
end_hunk_3
begin_hunk_4_@stbi__loadf_main:bb.a
bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ]
  %i.k = load i32, ptr %1, align 4, !tbaa !27
  %i.l = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.m = shl i32 %i.j, 2
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = mul nsw i64 %i.o, %i.n                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = ashr i32 %i.l, 1                         ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %.not32.i.i = icmp eq i64 %i.p, 0
  %or.cond.i.i = select i1 %i.r, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = mul i64 %indvars.iv.i.i, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = trunc i64 %indvars.iv.i.i to i32
  %i.v = xor i32 %i.u, -1
  %i.w = add i32 %i.l, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ad, %bb.i ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 3 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.aa, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.aa
  %i.ad = sub i64 %.02935.i.i, %i.aa              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.i.i, !llvm.loop !155

stbi__vertical_flip.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbi__float_postprocess.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !27
  %i.ag = load i32, ptr %2, align 4, !tbaa !27
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ %4, %bb.k ]
  %i.aj = tail call ptr @stbi__ldr_to_hdr(ptr noundef nonnull %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai)
  br label %stbi__float_postprocess.exit

bb.n:                                             ; preds = %bb.j
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str, ptr %i.ak, align 8, !tbaa !26
  br label %stbi__float_postprocess.exit

stbi__float_postprocess.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %stbi__vertical_flip.exit.i, %bb.n, %bb.m
  %.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.m ], [ %i.c, %stbi__vertical_flip.exit.i ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbi__ldr_to_hdr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not38.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not38.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i.i

stbi__mul2sizes_valid.exit.thread25.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nsw i32 %2, %1                       ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30.i.i, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i.i

stbi__mul2sizes_valid.exit18.thread30.i.i:        ; preds = %stbi__mul2sizes_valid.exit18.i.i, %bb.d
  %i.h = mul nsw i32 %i.d, %3                     ; 2 uses
  %or.cond = icmp ugt i32 %i.h, 536870911
  br i1 %or.cond, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #38 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad4.exit.thread, label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.thread25.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit18.thread30.i.i, %stbi__malloc_mad4.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %stbi__malloc_mad4.exit
  %i.n = and i32 %3, 1
  %.not47 = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = sext i1 %.not47 to i32
  %.0 = add i32 %3, %i.o                          ; 5 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.preheader49.lr.ph, label %.loopexit

.preheader49.lr.ph:                               ; preds = %bb.e
  %i.q = icmp sgt i32 %.0, 0
  %i.r = load float, ptr @stbi__l2h_gamma, align 4
  %i.s = fpext float %i.r to double               ; 3 uses
  %i.t = load float, ptr @stbi__l2h_scale, align 4
  %i.u = fpext float %i.t to double               ; 3 uses
  br i1 %i.q, label %.preheader49.preheader, label %._crit_edge52.split

.preheader49.preheader:                           ; preds = %.preheader49.lr.ph
  %i.v = sext i32 %3 to i64
  %wide.trip.count59 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %.0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i32 %.0 to i1
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.x = mul nsw i64 %indvars.iv56, %i.v          ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.y = add nsw i64 %indvars.iv, %i.x            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 2.550000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @pow(double noundef %i.ad, double noundef %i.s) #37
  %i.af = fmul double %i.ae, %i.u
  %i.ag = fptrunc double %i.af to float
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y
  store float %i.ag, ptr %i.ah, align 4, !tbaa !121
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ai = add nsw i64 %indvars.iv.next, %i.x      ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = fpext float %i.am to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef %i.s) #37
  %i.ap = fmul double %i.ao, %i.u
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ai
  store float %i.aq, ptr %i.ar, align 4, !tbaa !121
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !171

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.as = add nsw i64 %indvars.iv.epil.init, %i.x ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @pow(double noundef %i.ax, double noundef %i.s) #37
  %i.az = fmul double %i.ay, %i.u
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as
  store float %i.ba, ptr %i.bb, align 4, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge52.split, label %.preheader49, !llvm.loop !172

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader49.lr.ph
  br i1 %.not47, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge52.split
  %i.bc = sext i32 %3 to i64                      ; 3 uses
  %i.bd = sext i32 %.0 to i64                     ; 3 uses
  %wide.trip.count64 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter74 = and i64 %wide.trip.count64, 1
  %i.be = icmp eq i32 %i.d, 1
  br i1 %i.be, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter77 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph ] ; 3 uses
  %niter78 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter78.next.1, %.lr.ph ]
  %i.bf = mul nsw i64 %indvars.iv61, %i.bc
  %i.bg = add nsw i64 %i.bf, %i.bd                ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fdiv float %i.bj, 2.550000e+02
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bg
  store float %i.bk, ptr %i.bl, align 4, !tbaa !121
  %indvars.iv.next62 = or disjoint i64 %indvars.iv61, 1
  %i.bm = mul nsw i64 %indvars.iv.next62, %i.bc
  %i.bn = add nsw i64 %i.bm, %i.bd                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fdiv float %i.bq, 2.550000e+02
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bn
  store float %i.br, ptr %i.bs, align 4, !tbaa !121
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !173

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next62.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.bt = mul nsw i64 %indvars.iv61.epil.init, %i.bc
  %i.bu = add nsw i64 %i.bt, %i.bd                ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !24
  %i.bx = uitofp i8 %i.bw to float
  %i.by = fdiv float %i.bx, 2.550000e+02
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bu
  store float %i.by, ptr %i.bz, align 4, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %._crit_edge52.split
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit, %stbi__malloc_mad4.exit.thread
  %.042 = phi ptr [ null, %stbi__malloc_mad4.exit.thread ], [ %i.k, %.loopexit ], [ null, %bb.a ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !16
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !18
  %i.j = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !25 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !17
  %i.y = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !174 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !14
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !14
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !24
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !17
  %i.aa = call noundef ptr @stbi__loadf_main(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
end_hunk_4
begin_hunk_5_@stbi__process_frame_header:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %i.u = tail call i32 %i.o(ptr noundef %i.q, ptr noundef nonnull %i.r, i32 noundef %i.t) #37, !inline_history !54 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !14
  %i.ae = add nsw i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !14
  %i.af = icmp eq i32 %i.u, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.r, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.u to i64
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 %i.ah
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.h, %bb.g
  %i.aj = phi i8 [ 0, %bb.g ], [ %.pre.i, %bb.h ]
  %.sink.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  store ptr %.sink.i.i, ptr %i.g, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.d, %stbi__refill_buffer.exit.i
  %.0.i = phi i8 [ %i.k, %bb.d ], [ %i.aj, %stbi__refill_buffer.exit.i ]
  %.not = icmp eq i8 %.0.i, 8
  br i1 %.not, label %bb.i, label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.e, %stbi__get8.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.25, ptr %i.al, align 8, !tbaa !26
  br label %.critedge

bb.i:                                             ; preds = %stbi__get8.exit
  %i.am = tail call i32 @stbi__get16be(ptr noundef nonnull %i.a) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !43
  %i.ao = icmp eq i32 %i.am, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.ap, align 8, !tbaa !26
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call i32 @stbi__get16be(ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !44
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.27, ptr %i.as, align 8, !tbaa !26
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.an, align 4, !tbaa !43
  %i.au = icmp ugt i32 %i.at, 16777216
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.av, align 8, !tbaa !26
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.e, align 8, !tbaa !16
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !24
  br label %stbi__get8.exit207

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !13
  %.not.i202 = icmp eq i32 %i.bc, 0
  br i1 %.not.i202, label %stbi__get8.exit207.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %i.bk = tail call i32 %i.be(ptr noundef %i.bg, ptr noundef nonnull %i.bh, i32 noundef %i.bj) #37, !inline_history !54 ; 2 uses
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !14
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !14
  %i.bv = icmp eq i32 %i.bk, 0
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bb, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.bh, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i204

bb.t:                                             ; preds = %bb.r
  %i.bx = sext i32 %i.bk to i64
  %i.by = getelementptr inbounds i8, ptr %i.bh, i64 %i.bx
  %.pre.i203 = load i8, ptr %i.bh, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i204

stbi__refill_buffer.exit.i204:                    ; preds = %bb.t, %bb.s
  %i.bz = phi i8 [ 0, %bb.s ], [ %.pre.i203, %bb.t ]
  %.sink.i.i205 = phi ptr [ %i.bw, %bb.s ], [ %i.by, %bb.t ] ; 2 uses
  store ptr %.sink.i.i205, ptr %i.g, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 57 ; 2 uses
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !16
  br label %stbi__get8.exit207

stbi__get8.exit207:                               ; preds = %bb.p, %stbi__refill_buffer.exit.i204
  %i.cb = phi ptr [ %i.ax, %bb.p ], [ %.sink.i.i205, %stbi__refill_buffer.exit.i204 ]
  %i.cc = phi ptr [ %i.az, %bb.p ], [ %i.ca, %stbi__refill_buffer.exit.i204 ]
  %.0.i206 = phi i8 [ %i.ba, %bb.p ], [ %i.bz, %stbi__refill_buffer.exit.i204 ] ; 4 uses
  %i.cd = zext i8 %.0.i206 to i32                 ; 3 uses
  switch i8 %.0.i206, label %stbi__get8.exit207.thread [
    i8 4, label %.lr.ph
    i8 3, label %.lr.ph
    i8 1, label %.lr.ph
  ]

stbi__get8.exit207.thread:                        ; preds = %bb.q, %stbi__get8.exit207
  %i.ce = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ce, align 8, !tbaa !26
  br label %.critedge

.lr.ph:                                           ; preds = %stbi__get8.exit207, %stbi__get8.exit207, %stbi__get8.exit207
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 %i.cd, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 5 uses
  %wide.trip.count = zext nneg i8 %.0.i206 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ch = add i8 %.0.i206, -1
  %i.ci = icmp ult i8 %i.ch, 3
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.u ]
  %i.cj = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.ck, align 8, !tbaa !260
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store ptr null, ptr %i.cl, align 8, !tbaa !308
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  store ptr null, ptr %i.cn, align 8, !tbaa !260
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 168
  store ptr null, ptr %i.co, align 8, !tbaa !308
  %i.cp = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  store ptr null, ptr %i.cq, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 264
  store ptr null, ptr %i.cr, align 8, !tbaa !308
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 336
  store ptr null, ptr %i.ct, align 8, !tbaa !260
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 360
  store ptr null, ptr %i.cu, align 8, !tbaa !308
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.u, !llvm.loop !310

._crit_edge.unr-lcssa:                            ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod339 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod339)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.v ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %indvars.iv.epil ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store ptr null, ptr %i.cw, align 8, !tbaa !260
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  store ptr null, ptr %i.cx, align 8, !tbaa !308
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.v, !llvm.loop !311

._crit_edge:                                      ; preds = %bb.v, %._crit_edge.unr-lcssa
  %i.cy = mul nuw nsw i32 %i.cd, 3
  %i.cz = add nuw nsw i32 %i.cy, 8
  %.not193 = icmp eq i32 %i.b, %i.cz
  br i1 %.not193, label %.lr.ph247, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.da = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.24, ptr %i.da, align 8, !tbaa !26
  br label %.critedge

.lr.ph247:                                        ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 18512 ; 3 uses
  store i32 0, ptr %i.db, align 8, !tbaa !312
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 57 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18080
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph247, %bb.au
  %i.dl = phi ptr [ %i.cb, %.lr.ph247 ], [ %i.ha, %bb.au ] ; 3 uses
  %i.dm = phi i32 [ %i.cd, %.lr.ph247 ], [ %i.hc, %bb.au ] ; 2 uses
  %i.dn = phi ptr [ %i.cc, %.lr.ph247 ], [ %i.hb, %bb.au ] ; 4 uses
  %indvars.iv271 = phi i64 [ 0, %.lr.ph247 ], [ %indvars.iv.next272, %bb.au ] ; 3 uses
  %i.do = icmp ult ptr %i.dn, %i.dl
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  store ptr %i.dp, ptr %i.e, align 8, !tbaa !16
  %i.dq = load i8, ptr %i.dn, align 1, !tbaa !24
  br label %stbi__get8.exit213

bb.z:                                             ; preds = %bb.x
  %i.dr = load i32, ptr %i.dc, align 8, !tbaa !13
  %.not.i208 = icmp eq i32 %i.dr, 0
  br i1 %.not.i208, label %stbi__get8.exit213, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !8
  %i.dt = load ptr, ptr %i.de, align 8, !tbaa !21
  %i.du = load i32, ptr %i.dg, align 4, !tbaa !22
  %i.dv = tail call i32 %i.ds(ptr noundef %i.dt, ptr noundef nonnull %i.df, i32 noundef %i.du) #37, !inline_history !54 ; 2 uses
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !15
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = load i32, ptr %i.di, align 8, !tbaa !14
  %i.ed = add nsw i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %i.di, align 8, !tbaa !14
  %i.ee = icmp eq i32 %i.dv, 0
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dc, align 8, !tbaa !13
  store i8 0, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i210

bb.ac:                                            ; preds = %bb.aa
  %i.ef = sext i32 %i.dv to i64
  %i.eg = getelementptr inbounds i8, ptr %i.df, i64 %i.ef
  %.pre.i209 = load i8, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i210

stbi__refill_buffer.exit.i210:                    ; preds = %bb.ac, %bb.ab
  %i.eh = phi i8 [ 0, %bb.ab ], [ %.pre.i209, %bb.ac ]
  %.sink.i.i211 = phi ptr [ %i.dj, %bb.ab ], [ %i.eg, %bb.ac ] ; 2 uses
  store ptr %.sink.i.i211, ptr %i.g, align 8, !tbaa !18
  store ptr %i.dj, ptr %i.e, align 8, !tbaa !16
  %.pre = load i32, ptr %i.cf, align 8, !tbaa !53
  br label %stbi__get8.exit213

stbi__get8.exit213:                               ; preds = %bb.y, %bb.z, %stbi__refill_buffer.exit.i210
  %i.ei = phi ptr [ %i.dl, %bb.y ], [ %.sink.i.i211, %stbi__refill_buffer.exit.i210 ], [ %i.dl, %bb.z ] ; 2 uses
  %i.ej = phi ptr [ %i.dp, %bb.y ], [ %i.dj, %stbi__refill_buffer.exit.i210 ], [ %i.dn, %bb.z ] ; 3 uses
  %i.ek = phi i32 [ %i.dm, %bb.y ], [ %.pre, %stbi__refill_buffer.exit.i210 ], [ %i.dm, %bb.z ]
  %.0.i212 = phi i8 [ %i.dq, %bb.y ], [ %i.eh, %stbi__refill_buffer.exit.i210 ], [ 0, %bb.z ] ; 2 uses
  %i.el = zext i8 %.0.i212 to i32
  %i.em = getelementptr inbounds nuw [96 x i8], ptr %i.dk, i64 %indvars.iv271 ; 6 uses
  store i32 %i.el, ptr %i.em, align 8, !tbaa !303
  %i.en = icmp eq i32 %i.ek, 3
  br i1 %i.en, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %stbi__get8.exit213
  %i.eo = getelementptr inbounds nuw i8, ptr @__const.stbi__process_frame_header.rgb, i64 %indvars.iv271
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !24
  %i.eq = icmp eq i8 %.0.i212, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.er = load i32, ptr %i.db, align 8, !tbaa !312
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.db, align 8, !tbaa !312
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %stbi__get8.exit213
  %i.et = icmp ult ptr %i.ej, %i.ei
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  store ptr %i.eu, ptr %i.e, align 8, !tbaa !16
  %i.ev = load i8, ptr %i.ej, align 1, !tbaa !24
  br label %stbi__get8.exit219

bb.ah:                                            ; preds = %bb.af
  %i.ew = load i32, ptr %i.dc, align 8, !tbaa !13
  %.not.i214 = icmp eq i32 %i.ew, 0
  br i1 %.not.i214, label %stbi__get8.exit219.thread, label %bb.ai

stbi__get8.exit219.thread:                        ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 0, ptr %i.ex, align 4, !tbaa !267
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ey = load ptr, ptr %i.dd, align 8, !tbaa !8
  %i.ez = load ptr, ptr %i.de, align 8, !tbaa !21
  %i.fa = load i32, ptr %i.dg, align 4, !tbaa !22
  %i.fb = tail call i32 %i.ey(ptr noundef %i.ez, ptr noundef nonnull %i.df, i32 noundef %i.fa) #37, !inline_history !54 ; 2 uses
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.fd = load ptr, ptr %i.dh, align 8, !tbaa !15
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = load i32, ptr %i.di, align 8, !tbaa !14
  %i.fj = add nsw i32 %i.fi, %i.fh
  store i32 %i.fj, ptr %i.di, align 8, !tbaa !14
  %i.fk = icmp eq i32 %i.fb, 0
  br i1 %i.fk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dc, align 8, !tbaa !13
  store i8 0, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i216

bb.ak:                                            ; preds = %bb.ai
  %i.fl = sext i32 %i.fb to i64
  %i.fm = getelementptr inbounds i8, ptr %i.df, i64 %i.fl
  %.pre.i215 = load i8, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i216

stbi__refill_buffer.exit.i216:                    ; preds = %bb.ak, %bb.aj
  %i.fn = phi i8 [ 0, %bb.aj ], [ %.pre.i215, %bb.ak ]
  %.sink.i.i217 = phi ptr [ %i.dj, %bb.aj ], [ %i.fm, %bb.ak ] ; 2 uses
  store ptr %.sink.i.i217, ptr %i.g, align 8, !tbaa !18
  store ptr %i.dj, ptr %i.e, align 8, !tbaa !16
  br label %stbi__get8.exit219

stbi__get8.exit219:                               ; preds = %bb.ag, %stbi__refill_buffer.exit.i216
  %i.fo = phi ptr [ %i.ei, %bb.ag ], [ %.sink.i.i217, %stbi__refill_buffer.exit.i216 ] ; 3 uses
  %i.fp = phi ptr [ %i.eu, %bb.ag ], [ %i.dj, %stbi__refill_buffer.exit.i216 ] ; 4 uses
  %.0.i218 = phi i8 [ %i.ev, %bb.ag ], [ %i.fn, %stbi__refill_buffer.exit.i216 ] ; 2 uses
  %i.fq = zext i8 %.0.i218 to i32                 ; 2 uses
  %i.fr = lshr i32 %i.fq, 4                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !267
  %.not199 = icmp eq i32 %i.fr, 0
  %i.ft = icmp ugt i8 %.0.i218, 79
  %or.cond = or i1 %i.ft, %.not199
  br i1 %or.cond, label %.loopexit, label %bb.al

.loopexit:                                        ; preds = %stbi__get8.exit219, %stbi__get8.exit219.thread
  %i.fu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.fu, align 8, !tbaa !26
  br label %.critedge

bb.al:                                            ; preds = %stbi__get8.exit219
  %i.fv = and i32 %i.fq, 15                       ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !266
  %i.fx = add nsw i32 %i.fv, -5
  %or.cond201 = icmp ult i32 %i.fx, -4
  br i1 %or.cond201, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.31, ptr %i.fy, align 8, !tbaa !26
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  %i.fz = icmp ult ptr %i.fp, %i.fo
  br i1 %i.fz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store ptr %i.ga, ptr %i.e, align 8, !tbaa !16
  %i.gb = load i8, ptr %i.fp, align 1, !tbaa !24
  br label %stbi__get8.exit225

bb.ap:                                            ; preds = %bb.an
  %i.gc = load i32, ptr %i.dc, align 8, !tbaa !13
  %.not.i220 = icmp eq i32 %i.gc, 0
  br i1 %.not.i220, label %stbi__get8.exit225.thread, label %bb.aq

stbi__get8.exit225.thread:                        ; preds = %bb.ap
  %i.gd = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !259
  br label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ge = load ptr, ptr %i.dd, align 8, !tbaa !8
  %i.gf = load ptr, ptr %i.de, align 8, !tbaa !21
  %i.gg = load i32, ptr %i.dg, align 4, !tbaa !22
  %i.gh = tail call i32 %i.ge(ptr noundef %i.gf, ptr noundef nonnull %i.df, i32 noundef %i.gg) #37, !inline_history !54 ; 2 uses
  %i.gi = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.gj = load ptr, ptr %i.dh, align 8, !tbaa !15
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = trunc i64 %i.gm to i32
  %i.go = load i32, ptr %i.di, align 8, !tbaa !14
  %i.gp = add nsw i32 %i.go, %i.gn
  store i32 %i.gp, ptr %i.di, align 8, !tbaa !14
  %i.gq = icmp eq i32 %i.gh, 0
  br i1 %i.gq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dc, align 8, !tbaa !13
  store i8 0, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i222

bb.as:                                            ; preds = %bb.aq
  %i.gr = sext i32 %i.gh to i64
  %i.gs = getelementptr inbounds i8, ptr %i.df, i64 %i.gr
  %.pre.i221 = load i8, ptr %i.df, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i222

stbi__refill_buffer.exit.i222:                    ; preds = %bb.as, %bb.ar
  %i.gt = phi i8 [ 0, %bb.ar ], [ %.pre.i221, %bb.as ]
  %.sink.i.i223 = phi ptr [ %i.dj, %bb.ar ], [ %i.gs, %bb.as ] ; 2 uses
  store ptr %.sink.i.i223, ptr %i.g, align 8, !tbaa !18
  store ptr %i.dj, ptr %i.e, align 8, !tbaa !16
  br label %stbi__get8.exit225

stbi__get8.exit225:                               ; preds = %bb.ao, %stbi__refill_buffer.exit.i222
  %i.gu = phi ptr [ %i.fo, %bb.ao ], [ %.sink.i.i223, %stbi__refill_buffer.exit.i222 ]
  %i.gv = phi ptr [ %i.ga, %bb.ao ], [ %i.dj, %stbi__refill_buffer.exit.i222 ]
  %.0.i224 = phi i8 [ %i.gb, %bb.ao ], [ %i.gt, %stbi__refill_buffer.exit.i222 ] ; 2 uses
  %i.gw = zext i8 %.0.i224 to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !259
  %i.gy = icmp ugt i8 %.0.i224, 3
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %stbi__get8.exit225
  %i.gz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.32, ptr %i.gz, align 8, !tbaa !26
  br label %.critedge

bb.au:                                            ; preds = %stbi__get8.exit225.thread, %stbi__get8.exit225
  %i.ha = phi ptr [ %i.fo, %stbi__get8.exit225.thread ], [ %i.gu, %stbi__get8.exit225 ]
  %i.hb = phi ptr [ %i.fp, %stbi__get8.exit225.thread ], [ %i.gv, %stbi__get8.exit225 ]
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %i.hc = load i32, ptr %i.cf, align 8, !tbaa !53 ; 9 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next272, %i.hd
  br i1 %i.he, label %bb.x, label %._crit_edge248, !llvm.loop !313

._crit_edge248:                                   ; preds = %bb.au
  %.not194 = icmp eq i32 %1, 0
  br i1 %.not194, label %bb.av, label %.critedge

bb.av:                                            ; preds = %._crit_edge248
  %i.hf = load i32, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.hg = load i32, ptr %i.an, align 4, !tbaa !43 ; 3 uses
  %i.hh = tail call i32 @stbi__mad3sizes_valid(i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef %i.hc, i32 noundef 0)
  %.not195 = icmp eq i32 %i.hh, 0
  br i1 %.not195, label %bb.aw, label %.preheader233

.preheader233:                                    ; preds = %bb.av
  %i.hi = icmp sgt i32 %i.hc, 0                   ; 2 uses
  br i1 %i.hi, label %.lr.ph252, label %._crit_edge257

.lr.ph252:                                        ; preds = %.preheader233
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 3 uses
  %wide.trip.count277 = zext nneg i32 %i.hc to i64 ; 2 uses
  %xtraiter341 = and i64 %wide.trip.count277, 1
  %i.hk = icmp eq i32 %i.hc, 1
  br i1 %i.hk, label %.epil.preheader340, label %.lr.ph252.new

.lr.ph252.new:                                    ; preds = %.lr.ph252
  %unroll_iter347 = and i64 %wide.trip.count277, 2147483646
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.hl, align 8, !tbaa !26
  br label %.critedge

.lr.ph256.unr-lcssa:                              ; preds = %bb.ax
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %.lr.ph256, label %.epil.preheader340

.epil.preheader340:                               ; preds = %.lr.ph256.unr-lcssa, %.lr.ph252
  %indvars.iv274.epil.init = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next275.1, %.lr.ph256.unr-lcssa ]
  %.0176251.epil.init = phi i32 [ 1, %.lr.ph252 ], [ %.1.1, %.lr.ph256.unr-lcssa ]
  %.0177250.epil.init = phi i32 [ 1, %.lr.ph252 ], [ %spec.select.1, %.lr.ph256.unr-lcssa ]
  %lcmp.mod346 = trunc i32 %i.hc to i1
  tail call void @llvm.assume(i1 %lcmp.mod346)
  %i.hm = getelementptr inbounds nuw [96 x i8], ptr %i.hj, i64 %indvars.iv274.epil.init ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !267
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 %.0177250.epil.init)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !266
  %.1.epil = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 %.0176251.epil.init)
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.unr-lcssa, %.epil.preheader340
  %spec.select.lcssa = phi i32 [ %spec.select.1, %.lr.ph256.unr-lcssa ], [ %spec.select.epil, %.epil.preheader340 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.1.1, %.lr.ph256.unr-lcssa ], [ %.1.epil, %.epil.preheader340 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count282 = zext nneg i32 %i.hc to i64
  br label %bb.az

bb.ax:                                            ; preds = %bb.ax, %.lr.ph252.new
  %indvars.iv274 = phi i64 [ 0, %.lr.ph252.new ], [ %indvars.iv.next275.1, %bb.ax ] ; 3 uses
  %.0176251 = phi i32 [ 1, %.lr.ph252.new ], [ %.1.1, %bb.ax ]
  %.0177250 = phi i32 [ 1, %.lr.ph252.new ], [ %spec.select.1, %bb.ax ]
  %niter348 = phi i64 [ 0, %.lr.ph252.new ], [ %niter348.next.1, %bb.ax ]
  %i.hs = getelementptr inbounds nuw [96 x i8], ptr %i.hj, i64 %indvars.iv274 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !267
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 %.0177250)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !266
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 %.0176251)
  %i.hx = getelementptr inbounds nuw [96 x i8], ptr %i.hj, i64 %indvars.iv274 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 100
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !267
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 %spec.select) ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 104
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !266
  %.1.1 = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 %.1) ; 3 uses
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %.lr.ph256.unr-lcssa, label %bb.ax, !llvm.loop !314

bb.ay:                                            ; preds = %bb.bb
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge257, label %bb.az, !llvm.loop !315

bb.az:                                            ; preds = %.lr.ph256, %bb.ay
  %indvars.iv279 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next280, %bb.ay ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [96 x i8], ptr %i.hr, i64 %indvars.iv279 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !267
  %i.if = srem i32 %spec.select.lcssa, %i.ie
  %.not197 = icmp eq i32 %i.if, 0
  br i1 %.not197, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.ig, align 8, !tbaa !26
  br label %.critedge

bb.bb:                                            ; preds = %bb.az
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !266
  %i.ij = srem i32 %.1.lcssa, %i.ii
  %.not198 = icmp eq i32 %i.ij, 0
  br i1 %.not198, label %bb.ay, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ik = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.31, ptr %i.ik, align 8, !tbaa !26
  br label %.critedge

._crit_edge257:                                   ; preds = %bb.ay, %.preheader233
  %.0176.lcssa316 = phi i32 [ 1, %.preheader233 ], [ %.1.lcssa, %bb.ay ] ; 4 uses
  %.0177.lcssa314 = phi i32 [ 1, %.preheader233 ], [ %spec.select.lcssa, %bb.ay ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 18056
  store i32 %.0177.lcssa314, ptr %i.il, align 8, !tbaa !316
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 18060
  store i32 %.0176.lcssa316, ptr %i.im, align 4, !tbaa !317
  %i.in = shl nsw i32 %.0177.lcssa314, 3          ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 18072
  store i32 %i.in, ptr %i.io, align 8, !tbaa !318
  %i.ip = shl nsw i32 %.0176.lcssa316, 3          ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 18076
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !319
  %i.ir = add i32 %i.hf, -1
  %i.is = add i32 %i.ir, %i.in
  %i.it = udiv i32 %i.is, %i.in                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 18064
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !265
  %i.iv = add i32 %i.hg, -1
  %i.iw = add i32 %i.iv, %i.ip
  %i.ix = udiv i32 %i.iw, %i.ip                   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 18068
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !264
  br i1 %i.hi, label %.lr.ph260, label %.critedge

.lr.ph260:                                        ; preds = %._crit_edge257
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.ja = add nsw i32 %.0177.lcssa314, -1
  %i.jb = add nsw i32 %.0176.lcssa316, -1
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 18480
  %wide.trip.count287 = zext nneg i32 %i.hc to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph260, %bb.bj
  %indvars.iv284 = phi i64 [ 0, %.lr.ph260 ], [ %indvars.iv.next285, %bb.bj ] ; 4 uses
  %i.jd = getelementptr inbounds nuw [96 x i8], ptr %i.iz, i64 %indvars.iv284 ; 12 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !267 ; 2 uses
  %i.jg = mul i32 %i.jf, %i.hf
  %i.jh = add i32 %i.ja, %i.jg
  %i.ji = udiv i32 %i.jh, %.0177.lcssa314
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !255
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !266 ; 2 uses
  %i.jm = mul i32 %i.jl, %i.hg
  %i.jn = add i32 %i.jb, %i.jm
  %i.jo = udiv i32 %i.jn, %.0176.lcssa316
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !256
  %i.jq = mul nsw i32 %i.jf, %i.it                ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 3                    ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 36
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !261
  %i.jt = mul nsw i32 %i.jl, %i.ix                ; 2 uses
  %i.ju = shl nsw i32 %i.jt, 3                    ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 %i.ju, ptr %i.jv, align 8, !tbaa !320
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i8 0, i64 24, i1 false)
  %i.jy = tail call ptr @stbi__malloc_mad2(i32 noundef %i.jr, i32 noundef %i.ju, i32 noundef 15) ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !306
  %i.ka = icmp eq ptr %i.jy, null
  br i1 %i.ka, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kb = trunc nuw nsw i64 %indvars.iv284 to i32
  %i.kc = add nuw nsw i32 %i.kb, 1
  %i.kd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.kd, align 8, !tbaa !26
  %i.ke = tail call i32 @stbi__free_jpeg_components(ptr noundef nonnull %0, i32 noundef %i.kc, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.kf = ptrtoint ptr %i.jy to i64
  %i.kg = add i64 %i.kf, 15
  %i.kh = and i64 %i.kg, -16
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !260
  %i.kk = load i32, ptr %i.jc, align 8, !tbaa !253
  %.not196 = icmp eq i32 %i.kk, 0
  br i1 %.not196, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  store i32 %i.jq, ptr %i.kl, align 8, !tbaa !274
  %i.km = getelementptr inbounds nuw i8, ptr %i.jd, i64 92
  store i32 %i.jt, ptr %i.km, align 4, !tbaa !321
  %i.kn = tail call ptr @stbi__malloc_mad3(i32 noundef %i.jr, i32 noundef %i.ju, i32 noundef 2, i32 noundef 15) ; 3 uses
  store ptr %i.kn, ptr %i.jx, align 8, !tbaa !307
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kp = trunc nuw nsw i64 %indvars.iv284 to i32
  %i.kq = add nuw nsw i32 %i.kp, 1
  %i.kr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.kr, align 8, !tbaa !26
  %i.ks = tail call i32 @stbi__free_jpeg_components(ptr noundef nonnull %0, i32 noundef %i.kq, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.bi:                                            ; preds = %bb.bg
  %i.kt = ptrtoint ptr %i.kn to i64
  %i.ku = add i64 %i.kt, 15
  %i.kv = and i64 %i.ku, -16
  %i.kw = inttoptr i64 %i.kv to ptr
  store ptr %i.kw, ptr %i.jw, align 8, !tbaa !273
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %.critedge, label %bb.bd, !llvm.loop !322

.critedge:                                        ; preds = %bb.bj, %._crit_edge257, %.loopexit, %bb.am, %bb.at, %._crit_edge248, %bb.bh, %bb.be, %bb.bc, %bb.ba, %bb.aw, %bb.w, %stbi__get8.exit207.thread, %bb.n, %bb.l, %bb.j, %stbi__get8.exit.thread, %bb.b
  %.2183 = phi i32 [ 0, %bb.b ], [ 0, %stbi__get8.exit.thread ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.aw ], [ 0, %stbi__get8.exit207.thread ], [ 0, %bb.w ], [ 0, %.loopexit ], [ 1, %._crit_edge248 ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.be ], [ 0, %bb.bh ], [ 0, %bb.at ], [ 0, %bb.am ], [ 1, %._crit_edge257 ], [ 1, %bb.bj ]
  ret i32 %.2183
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__decode_jpeg_header(ptr nofree noundef captures(none) initializes((18472, 18473), (18504, 18512)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %i.a, align 8, !tbaa !302
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %i.b, align 4, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %i.c, align 8, !tbaa !109
  %i.d = tail call zeroext i8 @stbi__get_marker(ptr noundef %0)
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.33, ptr %i.f, align 8, !tbaa !26
  br label %.loopexit30

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i8 @stbi__get_marker(ptr noundef nonnull %0) ; 3 uses
  %.034 = zext i8 %i.h to i32                     ; 2 uses
  %i.i = and i32 %.034, 254
  %or.cond35 = icmp ne i32 %i.i, 192
  %i.j = icmp ne i8 %i.h, -62
  %spec.select36 = and i1 %i.j, %or.cond35
  br i1 %spec.select36, label %.lr.ph38, label %._crit_edge

.loopexit:                                        ; preds = %stbi__at_eof.exit.thread, %bb.e
  %.1.in.lcssa = phi i8 [ %i.n, %bb.e ], [ %i.af, %stbi__at_eof.exit.thread ] ; 3 uses
  %.0 = zext i8 %.1.in.lcssa to i32               ; 2 uses
  %i.k = and i32 %.0, 254
  %or.cond = icmp ne i32 %i.k, 192
  %i.l = icmp ne i8 %.1.in.lcssa, -62
  %spec.select = and i1 %i.l, %or.cond
  br i1 %spec.select, label %.lr.ph38, label %._crit_edge, !llvm.loop !323

.lr.ph38:                                         ; preds = %bb.d, %.loopexit
  %.037 = phi i32 [ %.0, %.loopexit ], [ %.034, %bb.d ]
  %i.m = tail call i32 @stbi__process_marker(ptr noundef nonnull %0, i32 noundef %.037)
  %.not23 = icmp eq i32 %i.m, 0
end_hunk_5
begin_hunk_6_@stbi__jpeg_info_raw
define range(i32 0, 2) i32 @stbi__jpeg_info_raw(ptr nofree noundef captures(none) initializes((18472, 18473), (18504, 18512)) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__decode_jpeg_header(ptr noundef %0, i32 noundef 2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !26
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !26
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !103
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  store i32 %i.g, ptr %1, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %0, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  store i32 %i.j, ptr %2, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !53
  %.inv = icmp slt i32 %i.m, 3
  %i.n = select i1 %.inv, i32 1, i32 3
  store i32 %i.n, ptr %3, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_info(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %calloc = tail call dereferenceable_or_null(18568) ptr @calloc(i64 1, i64 18568) ; 8 uses
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !26
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %calloc, align 8, !tbaa !103
  %i.b = tail call i32 @stbi__decode_jpeg_header(ptr noundef nonnull %calloc, i32 noundef 2)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %calloc, align 8, !tbaa !103 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !26
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !26
  br label %stbi__jpeg_info_raw.exit

bb.e:                                             ; preds = %bb.c
  %.not14.i = icmp eq ptr %1, null
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %calloc, align 8, !tbaa !103
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44
  store i32 %i.h, ptr %1, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not15.i = icmp eq ptr %2, null
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr %calloc, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43
  store i32 %i.k, ptr %2, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not16.i = icmp eq ptr %3, null
  br i1 %.not16.i, label %stbi__jpeg_info_raw.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = load ptr, ptr %calloc, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53
  %.inv.i = icmp slt i32 %i.n, 3
  %i.o = select i1 %.inv.i, i32 1, i32 3
  store i32 %i.o, ptr %3, align 4, !tbaa !27
  br label %stbi__jpeg_info_raw.exit

stbi__jpeg_info_raw.exit:                         ; preds = %bb.d, %bb.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.d ], [ 1, %bb.j ], [ 1, %bb.i ]
  tail call void @free(ptr noundef nonnull %calloc) #37
  br label %bb.k

bb.k:                                             ; preds = %stbi__jpeg_info_raw.exit, %bb.b
  %.0 = phi i32 [ %.0.i, %stbi__jpeg_info_raw.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65536) i32 @stbi__bitreverse16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %trunc = trunc i32 %0 to i16
  %rev = tail call i16 @llvm.bitreverse.i16(i16 %trunc)
  %i.a = zext i16 %rev to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65536) i32 @stbi__bit_reverse(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %trunc.i = trunc i32 %0 to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.a = zext i16 %rev.i to i32
  %i.b = sub nsw i32 16, %1
  %i.c = lshr i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__zbuild_huffman(ptr nofree noundef captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #22 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !394

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !395

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !27
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8, !tbaa !27
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4, !tbaa !27
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !85
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !85
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !27 ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !27
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !396

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4, !tbaa !27
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24  ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27 ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !85
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !85
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1, !tbaa !24
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !85
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2, !tbaa !85
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !397

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !398

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.39.sink = phi ptr [ @.str.38, %._crit_edge ], [ @.str.38, %bb.b ], [ @.str.38, %._crit_edge.thread ], [ @.str.39, %bb.c ]
  %i.df = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.39.sink, ptr %i.df, align 8, !tbaa !26
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbi__zeof(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !399
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !402
  %i.d = icmp uge ptr %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
end_hunk_6
begin_hunk_7_@stbi__compute_huffman_codes:bb.a
  br label %stbi__zreceive.exit97

bb.al:                                            ; preds = %.preheader145
  %i.ez = load ptr, ptr %0, align 8, !tbaa !399   ; 3 uses
  %i.fa = load ptr, ptr %i.bq, align 8, !tbaa !402
  %.not2.i.i.i95 = icmp ult ptr %i.ez, %i.fa
  br i1 %.not2.i.i.i95, label %bb.am, label %stbi__zget8.exit.i.i96

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fb, ptr %0, align 8, !tbaa !399
  %i.fc = load i8, ptr %i.ez, align 1, !tbaa !24
  %i.fd = zext i8 %i.fc to i32
  br label %stbi__zget8.exit.i.i96

stbi__zget8.exit.i.i96:                           ; preds = %bb.am, %bb.al
  %i.fe = phi i32 [ %i.fd, %bb.am ], [ 0, %bb.al ]
  %i.ff = shl i32 %i.fe, %i.ew
  %i.fg = or i32 %i.ff, %i.ex                     ; 3 uses
  store i32 %i.fg, ptr %i.f, align 8, !tbaa !403
  %i.fh = add nsw i32 %i.ew, 8                    ; 3 uses
  store i32 %i.fh, ptr %i.c, align 8, !tbaa !404
  %i.fi = icmp slt i32 %i.ew, 17
  br i1 %i.fi, label %.preheader145, label %stbi__zreceive.exit97, !llvm.loop !405

stbi__zreceive.exit97:                            ; preds = %stbi__zget8.exit.i.i96, %bb.aj, %bb.ak
  %i.fj = phi i32 [ %i.da, %bb.aj ], [ %i.ew, %bb.ak ], [ %i.fh, %stbi__zget8.exit.i.i96 ]
  %i.fk = phi i32 [ %.promoted.i.i92, %bb.aj ], [ %i.ex, %bb.ak ], [ %i.fg, %stbi__zget8.exit.i.i96 ] ; 2 uses
  %i.fl = and i32 %i.fk, 127
  %i.fm = lshr i32 %i.fk, 7
  store i32 %i.fm, ptr %i.f, align 8, !tbaa !403
  %i.fn = add nsw i32 %i.fj, -7
  store i32 %i.fn, ptr %i.c, align 8, !tbaa !404
  %i.fo = add nuw nsw i32 %i.fl, 11
  br label %bb.an

bb.an:                                            ; preds = %stbi__zreceive.exit91, %stbi__zreceive.exit97, %bb.ae
  %.046 = phi i32 [ %i.dw, %bb.ae ], [ %i.eu, %stbi__zreceive.exit91 ], [ %i.fo, %stbi__zreceive.exit97 ] ; 3 uses
  %.0 = phi i8 [ %i.ea, %bb.ae ], [ 0, %stbi__zreceive.exit91 ], [ 0, %stbi__zreceive.exit97 ]
  %i.fp = sub nsw i32 %i.cr, %.050144
  %i.fq = icmp slt i32 %i.fp, %.046
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.39, ptr %i.fr, align 8, !tbaa !26
  br label %.critedge

bb.ap:                                            ; preds = %bb.an
  %i.fs = sext i32 %.050144 to i64
  %i.ft = getelementptr inbounds i8, ptr %i.a, i64 %i.fs
  %i.fu = zext nneg i32 %.046 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, i8 %.0, i64 %i.fu, i1 false)
  %i.fv = add nsw i32 %.046, %.050144
  br label %bb.aq

bb.aq:                                            ; preds = %bb.x, %bb.ap
  %.353 = phi i32 [ %i.cx, %bb.x ], [ %i.fv, %bb.ap ] ; 3 uses
  %i.fw = icmp slt i32 %.353, %i.cr
  br i1 %i.fw, label %.preheader, label %bb.ar, !llvm.loop !417

bb.ar:                                            ; preds = %bb.aq
  %.not58 = icmp eq i32 %.353, %i.cr
  br i1 %.not58, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.39, ptr %i.fx, align 8, !tbaa !26
  br label %.critedge

bb.at:                                            ; preds = %bb.ar
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fz = call i32 @stbi__zbuild_huffman(ptr noundef nonnull %i.fy, ptr noundef nonnull %i.a, i32 noundef %i.z)
  %.not59 = icmp eq i32 %i.fz, 0
  br i1 %.not59, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.gb = zext nneg i32 %i.z to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb
  %i.gd = call i32 @stbi__zbuild_huffman(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gc, i32 noundef %i.au)
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.ao, %bb.v, %bb.au, %bb.at, %bb.u, %bb.as
  %.4 = phi i32 [ 0, %bb.u ], [ 0, %bb.as ], [ 0, %bb.at ], [ %i.gd, %bb.au ], [ 0, %bb.v ], [ 0, %bb.ao ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i32 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__parse_uncompressed_block(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !404  ; 5 uses
  %i.d = and i32 %i.c, 7                          ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.c, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.f, align 8, !tbaa !403 ; 2 uses
  br i1 %i.e, label %bb.c, label %stbi__zreceive.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %stbi__zget8.exit.i.i, %bb.c
  %i.h = phi i32 [ %i.s, %stbi__zget8.exit.i.i ], [ %i.c, %bb.c ] ; 5 uses
  %i.i = phi i32 [ %i.r, %stbi__zget8.exit.i.i ], [ %.promoted.i.i, %bb.c ] ; 3 uses
  %.highbits.i.i = lshr i32 %i.i, %i.h
  %.not.i.i = icmp eq i32 %.highbits.i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !402
  store ptr %i.j, ptr %0, align 8, !tbaa !399
  br label %stbi__zreceive.exit

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !399    ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !402
  %.not2.i.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not2.i.i.i, label %bb.g, label %stbi__zget8.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.m, ptr %0, align 8, !tbaa !399
  %i.n = load i8, ptr %i.k, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i32
  br label %stbi__zget8.exit.i.i

stbi__zget8.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.p = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ]
  %i.q = shl i32 %i.p, %i.h
  %i.r = or i32 %i.q, %i.i                        ; 3 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !403
  %i.s = add nsw i32 %i.h, 8                      ; 3 uses
  store i32 %i.s, ptr %i.b, align 8, !tbaa !404
  %i.t = icmp slt i32 %i.h, 17
  br i1 %i.t, label %bb.d, label %stbi__zreceive.exit, !llvm.loop !405

stbi__zreceive.exit:                              ; preds = %stbi__zget8.exit.i.i, %bb.b, %bb.e
  %i.u = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.e ], [ %i.s, %stbi__zget8.exit.i.i ]
  %i.v = phi i32 [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.e ], [ %i.r, %stbi__zget8.exit.i.i ]
  %i.w = lshr i32 %i.v, %i.d
  store i32 %i.w, ptr %i.f, align 8, !tbaa !403
  %i.x = sub nsw i32 %i.u, %i.d                   ; 2 uses
  store i32 %i.x, ptr %i.b, align 8, !tbaa !404
  br label %bb.h

bb.h:                                             ; preds = %stbi__zreceive.exit, %bb.a
  %.pr = phi i32 [ %i.x, %stbi__zreceive.exit ], [ %i.c, %bb.a ] ; 6 uses
  %i.y = icmp sgt i32 %.pr, 0
  br i1 %i.y, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.z, align 8, !tbaa !403 ; 2 uses
  %i.aa = add nsw i32 %.pr, -1
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %xtraiter = and i32 %i.ac, 3                    ; 3 uses
  %i.ad = icmp ult i32 %.pr, 25
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.ac, 1073741820
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.i ] ; 5 uses
  %i.ae = phi i32 [ %.promoted, %.lr.ph.new ], [ 0, %bb.i ] ; 4 uses
  %i.af = phi i32 [ %.pr, %.lr.ph.new ], [ %i.au, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.ag = trunc i32 %i.ae to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 2, !tbaa !24
  %i.ai = lshr i32 %i.ae, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !24
  %i.am = lshr i32 %i.ae, 16
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.an, ptr %i.ap, align 2, !tbaa !24
  %i.aq = lshr i32 %i.ae, 24
  %i.ar = trunc nuw i32 %i.aq to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !24
  %i.au = add nsw i32 %i.af, -32                  ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.i, !llvm.loop !418

.unr-lcssa:                                       ; preds = %bb.i
  %i.av = add nsw i32 %i.af, -24
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted, %.lr.ph ], [ 0, %.unr-lcssa ]
  %.epil.init111 = phi i32 [ %.pr, %.lr.ph ], [ %i.au, %.unr-lcssa ]
  %lcmp.mod117 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 3 uses
  %i.aw = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ba, %bb.j ] ; 2 uses
  %i.ax = phi i32 [ %.epil.init111, %.epil.preheader ], [ %i.bb, %bb.j ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ay = trunc i32 %i.aw to i8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !24
  %i.ba = lshr i32 %i.aw, 8                       ; 2 uses
  %i.bb = add nsw i32 %i.ax, -8                   ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.j, !llvm.loop !419

.epilog-lcssa:                                    ; preds = %bb.j
  %i.bc = icmp samesign ult i64 %indvars.iv.epil, 3
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.bc, %.epilog-lcssa ]
  %.lcssa103 = phi i32 [ %i.av, %.unr-lcssa ], [ %i.ax, %.epilog-lcssa ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.3, %.unr-lcssa ], [ %indvars.iv.next.epil, %.epilog-lcssa ]
  %.lcssa102 = phi i32 [ 0, %.unr-lcssa ], [ %i.ba, %.epilog-lcssa ]
  %.lcssa101 = phi i32 [ %i.au, %.unr-lcssa ], [ %i.bb, %.epilog-lcssa ]
  store i32 %.lcssa102, ptr %i.z, align 8, !tbaa !403
  store i32 %.lcssa101, ptr %i.b, align 8, !tbaa !404
  %.not91 = icmp eq i32 %.lcssa103, 8
  br i1 %.not91, label %.preheader, label %bb.m

.thread:                                          ; preds = %bb.h
  %i.bd = icmp slt i32 %.pr, 0
  br i1 %i.bd, label %bb.m, label %.lr.ph49

.preheader:                                       ; preds = %bb.k
  br i1 %indvars.iv.lcssa, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.thread, %.preheader
  %.0.lcssa8082 = phi i64 [ %indvars.iv.next.lcssa, %.preheader ], [ 0, %.thread ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !402 ; 3 uses
  %.promoted51 = load ptr, ptr %0, align 8, !tbaa !399 ; 5 uses
  %xtraiter118 = and i64 %.0.lcssa8082, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph49
  %.not2.i.prol = icmp ult ptr %.promoted51, %i.bf
  br i1 %.not2.i.prol, label %bb.l, label %stbi__zget8.exit.prol

bb.l:                                             ; preds = %.prol.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.promoted51, i64 1 ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !399
  %i.bh = load i8, ptr %.promoted51, align 1, !tbaa !24
  br label %stbi__zget8.exit.prol

stbi__zget8.exit.prol:                            ; preds = %bb.l, %.prol.preheader
  %i.bi = phi ptr [ %i.bg, %bb.l ], [ %.promoted51, %.prol.preheader ]
  %i.bj = phi i8 [ %i.bh, %bb.l ], [ 0, %.prol.preheader ]
  %indvars.iv.next63.prol = add nuw nsw i64 %.0.lcssa8082, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa8082
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !24
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %stbi__zget8.exit.prol, %.lr.ph49
  %indvars.iv62.unr = phi i64 [ %.0.lcssa8082, %.lr.ph49 ], [ %indvars.iv.next63.prol, %stbi__zget8.exit.prol ]
  %.unr120 = phi ptr [ %.promoted51, %.lr.ph49 ], [ %i.bi, %stbi__zget8.exit.prol ]
  %i.bl = icmp eq i64 %.0.lcssa8082, 3
  br i1 %i.bl, label %._crit_edge50, label %.lr.ph49.new

bb.m:                                             ; preds = %.thread, %bb.k
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.43, ptr %i.bm, align 8, !tbaa !26
  br label %stbi__zexpand.exit.thread

.lr.ph49.new:                                     ; preds = %.prol.loopexit, %stbi__zget8.exit.1
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %stbi__zget8.exit.1 ], [ %indvars.iv62.unr, %.prol.loopexit ] ; 3 uses
  %i.bn = phi ptr [ %i.bv, %stbi__zget8.exit.1 ], [ %.unr120, %.prol.loopexit ] ; 4 uses
  %.not2.i = icmp ult ptr %i.bn, %i.bf
  br i1 %.not2.i, label %bb.n, label %stbi__zget8.exit

bb.n:                                             ; preds = %.lr.ph49.new
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !399
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !24
  br label %stbi__zget8.exit

stbi__zget8.exit:                                 ; preds = %.lr.ph49.new, %bb.n
  %i.bq = phi ptr [ %i.bo, %bb.n ], [ %i.bn, %.lr.ph49.new ] ; 4 uses
  %i.br = phi i8 [ %i.bp, %bb.n ], [ 0, %.lr.ph49.new ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv62
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !24
  %.not2.i.1 = icmp ult ptr %i.bq, %i.bf
  br i1 %.not2.i.1, label %bb.o, label %stbi__zget8.exit.1

bb.o:                                             ; preds = %stbi__zget8.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !399
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !24
  br label %stbi__zget8.exit.1

stbi__zget8.exit.1:                               ; preds = %bb.o, %stbi__zget8.exit
  %i.bv = phi ptr [ %i.bt, %bb.o ], [ %i.bq, %stbi__zget8.exit ]
  %i.bw = phi i8 [ %i.bu, %bb.o ], [ 0, %stbi__zget8.exit ]
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !24
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next63.1, 4
  br i1 %exitcond.not.1, label %._crit_edge50, label %.lr.ph49.new, !llvm.loop !420

._crit_edge50:                                    ; preds = %.prol.loopexit, %stbi__zget8.exit.1, %.preheader
  %i.bz = load i16, ptr %i.a, align 2             ; 3 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = xor i16 %i.cc, %i.bz
  %.not33 = icmp eq i16 %i.cd, -1
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge50
  %i.ce = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.43, ptr %i.ce, align 8, !tbaa !26
  br label %stbi__zexpand.exit.thread

bb.q:                                             ; preds = %._crit_edge50
  %i.cf = load ptr, ptr %0, align 8, !tbaa !399   ; 2 uses
  %i.cg = zext i16 %i.bz to i64                   ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !402
  %i.ck = icmp ugt ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.44, ptr %i.cl, align 8, !tbaa !26
  br label %stbi__zexpand.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !407 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cg
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !410 ; 2 uses
  %i.cr = icmp ugt ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !408
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.40, ptr %i.cu, align 8, !tbaa !26
  br label %stbi__zexpand.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !409 ; 2 uses
  %i.cx = ptrtoint ptr %i.cn to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = xor i32 %i.da, -1
  %i.dc = icmp ugt i32 %i.ca, %i.db
  br i1 %i.dc, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.dd = ptrtoint ptr %i.cq to i64
  %i.de = sub i64 %i.dd, %i.cy
  %i.df = trunc i64 %i.de to i32                  ; 3 uses
  %i.dg = add i32 %i.da, %i.ca                    ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, %i.df
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.i

bb.w:                                             ; preds = %bb.v
  %i.di = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.di, align 8, !tbaa !26
  br label %stbi__zexpand.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.y
end_hunk_7
begin_hunk_8_@stbi__create_png_image_raw:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.oy, align 1, !tbaa !24
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !450

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.oz = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv426
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !24
  %i.pb = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr %i.dz, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !24
  %i.pe = zext i8 %i.pd to i32                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv426
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !24
  %i.ph = zext i8 %i.pg to i32                    ; 3 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ee, i64 %i.pb
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !24
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  %i.pl = mul nuw nsw i32 %i.pk, 3
  %i.pm = add nuw nsw i32 %i.ph, %i.pe
  %i.pn = sub nsw i32 %i.pl, %i.pm                ; 2 uses
  %i.po = tail call i32 @llvm.umin.i32(i32 %i.pe, i32 %i.ph) ; 2 uses
  %i.pp = tail call i32 @llvm.umax.i32(i32 %i.pe, i32 %i.ph) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.pp, %i.pn
  %i.pq = select i1 %.not.i303, i32 %i.pk, i32 %i.po
  %.not20.i = icmp sgt i32 %i.pn, %i.po
  %i.pr = select i1 %.not20.i, i32 %i.pq, i32 %i.pp
  %.tr = trunc nuw i32 %i.pr to i8
  %.narrow284 = add i8 %i.pa, %.tr
  %i.ps = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.ps, align 1, !tbaa !24
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !451

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %i.ej, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.pt = add i64 %index705, %i.ax                ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ej, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.pu, align 1, !tbaa !24
  %wide.load707 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !24
  %i.pw = getelementptr inbounds i8, ptr %i.dz, i64 %index705 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !24
  %wide.load709 = load <16 x i8>, ptr %i.px, align 1, !tbaa !24
  %i.py = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.pz = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.qa = add <16 x i8> %i.py, %wide.load706
  %i.qb = add <16 x i8> %i.pz, %wide.load707
  %i.qc = getelementptr inbounds i8, ptr %i.dz, i64 %i.pt ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store <16 x i8> %i.qa, ptr %i.qc, align 1, !tbaa !24
  store <16 x i8> %i.qb, ptr %i.qd, align 1, !tbaa !24
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.qe = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.qe, label %middle.block711, label %vector.body704, !llvm.loop !452

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !141

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.qf = add i64 %index722, %i.ax                ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.ej, i64 %i.qf
  %wide.load723 = load <8 x i8>, ptr %i.qg, align 1, !tbaa !24
  %i.qh = getelementptr inbounds i8, ptr %i.dz, i64 %index722
  %wide.load724 = load <8 x i8>, ptr %i.qh, align 1, !tbaa !24
  %i.qi = lshr <8 x i8> %wide.load724, splat (i8 1)
  %i.qj = add <8 x i8> %i.qi, %wide.load723
  %i.qk = getelementptr inbounds i8, ptr %i.dz, i64 %i.qf
  store <8 x i8> %i.qj, ptr %i.qk, align 1, !tbaa !24
  %index.next725 = add nuw i64 %index722, 8       ; 2 uses
  %i.ql = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.ql, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !453

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  br i1 %cmp.n727, label %.loopexit348, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check715, %vec.epilog.iter.check717, %vec.epilog.middle.block726
  %indvars.iv.ph = phi i64 [ %i.ax, %iter.check715 ], [ %i.bq, %vec.epilog.iter.check717 ], [ %i.br, %vec.epilog.middle.block726 ] ; 7 uses
  %i.qm = sub nsw i64 %i.bb, %indvars.iv.ph
  %xtraiter = and i64 %i.qm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.qn = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv.ph
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !24
  %i.qp = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.qq = getelementptr inbounds i8, ptr %i.dz, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !24
  %i.qs = lshr i8 %i.qr, 1
  %.narrow.prol = add i8 %i.qs, %i.qo
  %i.qt = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv.ph
  store i8 %.narrow.prol, ptr %i.qt, align 1, !tbaa !24
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.qu = icmp eq i64 %indvars.iv.ph, %i.bs
  br i1 %i.qu, label %.loopexit348, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.qv = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !24
  %i.qx = sub nsw i64 %indvars.iv, %i.ax
  %i.qy = getelementptr inbounds i8, ptr %i.dz, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !24
  %i.ra = lshr i8 %i.qz, 1
  %.narrow = add i8 %i.ra, %i.qw
  %i.rb = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv
  store i8 %.narrow, ptr %i.rb, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.rc = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv.next
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !24
  %i.re = sub nsw i64 %indvars.iv.next, %i.ax
  %i.rf = getelementptr inbounds i8, ptr %i.dz, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !24
  %i.rh = lshr i8 %i.rg, 1
  %.narrow.1 = add i8 %i.rh, %i.rd
  %i.ri = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv.next
  store i8 %.narrow.1, ptr %i.ri, align 1, !tbaa !24
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bb
  br i1 %exitcond.not.1, label %.loopexit348, label %.lr.ph, !llvm.loop !454

.loopexit348:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph362, %.lr.ph366.prol.loopexit, %.lr.ph366, %.lr.ph368.prol.loopexit, %.lr.ph368, %.lr.ph370.prol.loopexit, %.lr.ph370, %middle.block711, %vec.epilog.middle.block726, %middle.block644, %vec.epilog.middle.block661, %middle.block574, %vec.epilog.middle.block590, %middle.block542, %vec.epilog.middle.block556, %middle.block517, %vec.epilog.middle.block, %bb.s, %.preheader354, %.preheader351, %.preheader349, %bb.r, %bb.q, %bb.p
  %i.rj = getelementptr inbounds i8, ptr %i.ej, i64 %i.bb
  br i1 %i.au, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.loopexit348
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rk = load i8, ptr %i.bk, align 1, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.rl = phi i8 [ %i.rk, %bb.u ], [ 1, %bb.t ]   ; 9 uses
  switch i32 %6, label %.preheader [
    i32 4, label %.preheader336
    i32 2, label %.preheader338
  ]

.preheader338:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %.preheader338
  br i1 %i.ct, label %.lr.ph387.epil.preheader, label %.lr.ph387

.preheader336:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.preheader336
  br i1 %i.cu, label %.lr.ph392.epil.preheader, label %.lr.ph392

.preheader:                                       ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader
  br i1 %i.cv, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %.lr.ph392
  %.0239390 = phi ptr [ %i.rt, %.lr.ph392 ], [ %i.ei, %.lr.ph392.preheader ] ; 3 uses
  %.0242389 = phi ptr [ %i.rm, %.lr.ph392 ], [ %i.dz, %.lr.ph392.preheader ] ; 2 uses
  %.0265388 = phi i32 [ %i.ru, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %niter786 = phi i32 [ %niter786.next.1, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %i.rm = getelementptr inbounds nuw i8, ptr %.0242389, i64 1 ; 2 uses
  %i.rn = load i8, ptr %.0242389, align 1, !tbaa !24 ; 2 uses
  %i.ro = lshr i8 %i.rn, 4
  %i.rp = mul i8 %i.ro, %i.rl
  %i.rq = getelementptr inbounds nuw i8, ptr %.0239390, i64 1
  store i8 %i.rp, ptr %.0239390, align 1, !tbaa !24
  %i.rr = and i8 %i.rn, 15
  %i.rs = mul i8 %i.rr, %i.rl
  %i.rt = getelementptr inbounds nuw i8, ptr %.0239390, i64 2 ; 2 uses
  store i8 %i.rs, ptr %i.rq, align 1, !tbaa !24
  %i.ru = add nuw i32 %.0265388, 2                ; 2 uses
  %niter786.next.1 = add i32 %niter786, 2         ; 2 uses
  %niter786.ncmp.1 = icmp eq i32 %niter786.next.1, %unroll_iter785
  br i1 %niter786.ncmp.1, label %.loopexit335.loopexit738.unr-lcssa, label %.lr.ph392, !llvm.loop !455

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %.lr.ph387.1
  %.2238386 = phi i8 [ %i.sg, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %.1240385 = phi ptr [ %i.sf, %.lr.ph387.1 ], [ %i.ei, %.lr.ph387.preheader ] ; 3 uses
  %.2244384 = phi ptr [ %.3245, %.lr.ph387.1 ], [ %i.dz, %.lr.ph387.preheader ] ; 3 uses
  %.1266383 = phi i32 [ %i.sh, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ] ; 2 uses
  %niter780 = phi i32 [ %niter780.next.1, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %i.rv = and i32 %.1266383, 2
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.w, label %.lr.ph387.1

bb.w:                                             ; preds = %.lr.ph387
  %i.rx = getelementptr inbounds nuw i8, ptr %.2244384, i64 1
  %i.ry = load i8, ptr %.2244384, align 1, !tbaa !24
  br label %.lr.ph387.1

.lr.ph387.1:                                      ; preds = %bb.w, %.lr.ph387
  %.3245 = phi ptr [ %i.rx, %bb.w ], [ %.2244384, %.lr.ph387 ] ; 2 uses
  %.3 = phi i8 [ %i.ry, %bb.w ], [ %.2238386, %.lr.ph387 ] ; 3 uses
  %i.rz = lshr i8 %.3, 6
  %i.sa = mul i8 %i.rz, %i.rl
  %i.sb = getelementptr inbounds nuw i8, ptr %.1240385, i64 1
  store i8 %i.sa, ptr %.1240385, align 1, !tbaa !24
  %i.sc = lshr i8 %.3, 4
  %i.sd = and i8 %i.sc, 3
  %i.se = mul i8 %i.sd, %i.rl
  %i.sf = getelementptr inbounds nuw i8, ptr %.1240385, i64 2 ; 2 uses
  store i8 %i.se, ptr %i.sb, align 1, !tbaa !24
  %i.sg = shl i8 %.3, 4                           ; 2 uses
  %i.sh = add nuw i32 %.1266383, 2                ; 2 uses
  %niter780.next.1 = add i32 %niter780, 2         ; 2 uses
  %niter780.ncmp.1 = icmp eq i32 %niter780.next.1, %unroll_iter779
  br i1 %niter780.ncmp.1, label %.loopexit335.loopexit739.unr-lcssa, label %.lr.ph387, !llvm.loop !456

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %.lr.ph397.1
  %.4396 = phi i8 [ %i.sq, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.sp, %.lr.ph397.1 ], [ %i.ei, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.dz, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.sr, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter792 = phi i32 [ %niter792.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.si = and i32 %.2267393, 6
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.sk = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.sl = load i8, ptr %.4246394, align 1, !tbaa !24
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.sk, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.sl, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.sm = select i1 %isneg, i8 %i.rl, i8 0
  %i.sn = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.sm, ptr %.2241395, align 1, !tbaa !24
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.so = select i1 %isneg.1.not, i8 0, i8 %i.rl
  %i.sp = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.so, ptr %i.sn, align 1, !tbaa !24
  %i.sq = shl i8 %.5, 2                           ; 2 uses
  %i.sr = add nuw i32 %.2267393, 2                ; 2 uses
  %niter792.next.1 = add i32 %niter792, 2         ; 2 uses
  %niter792.ncmp.1 = icmp eq i32 %niter792.next.1, %unroll_iter791
  br i1 %niter792.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !457

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod789.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.sq, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.ei, %.lr.ph397.preheader ], [ %i.sp, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.dz, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.sr, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod790)
  %i.ss = and i32 %.2267393.epil.init, 7
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.su = load i8, ptr %.4246394.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.su, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.sv = select i1 %isneg.epil, i8 %i.rl, i8 0
  store i8 %i.sv, ptr %.2241395.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit738.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod783.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit738.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.ei, %.lr.ph392.preheader ], [ %i.rt, %.loopexit335.loopexit738.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.dz, %.lr.ph392.preheader ], [ %i.rm, %.loopexit335.loopexit738.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.ru, %.loopexit335.loopexit738.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod784)
  %i.sw = and i32 %.0265388.epil.init, 1
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %bb.z, label %.loopexit335.loopexit738.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.sy = load i8, ptr %.0242389.epil.init, align 1, !tbaa !24
  %i.sz = lshr i8 %i.sy, 4
  %i.ta = mul i8 %i.sz, %i.rl
  br label %.loopexit335.loopexit738.epilog-lcssa

.loopexit335.loopexit738.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.ta, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit739.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod777.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit739.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.sg, %.loopexit335.loopexit739.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.ei, %.lr.ph387.preheader ], [ %i.sf, %.loopexit335.loopexit739.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.dz, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit739.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.sh, %.loopexit335.loopexit739.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod778)
  %i.tb = and i32 %.1266383.epil.init, 3
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.aa, label %.loopexit335.loopexit739.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.td = load i8, ptr %.2244384.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit739.epilog-lcssa

.loopexit335.loopexit739.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.td, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.te = lshr i8 %.3.epil, 6
  %i.tf = mul i8 %i.te, %i.rl
  store i8 %i.tf, ptr %.1240385.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit739.epilog-lcssa, %.loopexit335.loopexit739.unr-lcssa, %.loopexit335.loopexit738.epilog-lcssa, %.loopexit335.loopexit738.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bd, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.be, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod794.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.cx ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 3
  store i8 -1, ptr %i.th, align 1, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.cy ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  store i8 %i.tk, ptr %i.tl, align 1, !tbaa !24
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !24
  %i.to = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !24
  %i.tp = load i8, ptr %i.ti, align 1, !tbaa !24
  store i8 %i.tp, ptr %i.tg, align 1, !tbaa !24
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.cz, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod797.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bg, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter798 = phi i64 [ %prol.iter798.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.tq = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store i8 -1, ptr %i.ts, align 1, !tbaa !24
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv35.i.prol
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !24
  store i8 %i.tu, ptr %i.tr, align 1, !tbaa !24
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter798.next = add i64 %prol.iter798, 1   ; 2 uses
  %prol.iter798.cmp.not = icmp eq i64 %prol.iter798.next, %xtraiter796
  br i1 %prol.iter798.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !458

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bg, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.da, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.tv = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 -1, ptr %i.tx, align 1, !tbaa !24
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv35.i
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !24
  store i8 %i.tz, ptr %i.tw, align 1, !tbaa !24
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.ua = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ua ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 -1, ptr %i.uc, align 1, !tbaa !24
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next36.i
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !24
  store i8 %i.ue, ptr %i.ub, align 1, !tbaa !24
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.uf = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store i8 -1, ptr %i.uh, align 1, !tbaa !24
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next36.i.1
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !24
  store i8 %i.uj, ptr %i.ug, align 1, !tbaa !24
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.uk = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.uk ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  store i8 -1, ptr %i.um, align 1, !tbaa !24
  %i.un = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next36.i.2
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !24
  store i8 %i.uo, ptr %i.ul, align 1, !tbaa !24
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !459

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.up = shl nsw i64 %indvars.iv.i, 2
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.up ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 3
  store i8 -1, ptr %i.ur, align 1, !tbaa !24
  %i.us = mul nuw nsw i64 %indvars.iv.i, 3
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.us ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !24
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uq, i64 2
  store i8 %i.uv, ptr %i.uw, align 1, !tbaa !24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !24
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  store i8 %i.uy, ptr %i.uz, align 1, !tbaa !24
  %i.va = load i8, ptr %i.ut, align 1, !tbaa !24
  store i8 %i.va, ptr %i.uq, align 1, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.vb = shl nsw i64 %indvars.iv.next.i, 2
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.vb ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 3
  store i8 -1, ptr %i.vd, align 1, !tbaa !24
  %i.ve = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ve ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 2
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !24
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  store i8 %i.vh, ptr %i.vi, align 1, !tbaa !24
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !24
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vc, i64 1
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !24
  %i.vm = load i8, ptr %i.vf, align 1, !tbaa !24
  store i8 %i.vm, ptr %i.vc, align 1, !tbaa !24
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !430

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr nonnull align 1 %i.dz, i64 %i.bh, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.be, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod773.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.co ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 3
  store i8 -1, ptr %i.vo, align 1, !tbaa !24
  %i.vp = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cp ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 2
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !24
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 2
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !24
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !24
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 1
  store i8 %i.vu, ptr %i.vv, align 1, !tbaa !24
  %i.vw = load i8, ptr %i.vp, align 1, !tbaa !24
  store i8 %i.vw, ptr %i.vn, align 1, !tbaa !24
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bg, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cq, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader740, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.vx = sub i64 %i.bg, %index                   ; 2 uses
  %i.vy = shl nuw nsw i64 %i.vx, 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.vx
  %i.wb = getelementptr inbounds i8, ptr %i.wa, i64 -7
  %wide.load = load <8 x i8>, ptr %i.wb, align 1, !tbaa !24
  %i.wc = getelementptr inbounds i8, ptr %i.vz, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.wc, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wd = icmp eq i64 %index.next, %n.vec
  br i1 %i.wd, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader740

.lr.ph32.i314.preheader740:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bg, %.lr.ph32.i314.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader740, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader740 ] ; 4 uses
  %i.we = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.we ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  store i8 -1, ptr %i.wg, align 1, !tbaa !24
  %i.wh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv35.i315
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !24
  store i8 %i.wi, ptr %i.wf, align 1, !tbaa !24
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !461

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wj = shl nsw i64 %indvars.iv.i309, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.wj ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 3
  store i8 -1, ptr %i.wl, align 1, !tbaa !24
  %i.wm = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.wm ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 2
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !24
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !24
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !24
  %i.wu = load i8, ptr %i.wn, align 1, !tbaa !24
  store i8 %i.wu, ptr %i.wk, align 1, !tbaa !24
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wv = shl nsw i64 %indvars.iv.next.i310, 2
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.wv ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 3
  store i8 -1, ptr %i.wx, align 1, !tbaa !24
  %i.wy = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wz = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.wy ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !24
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 2
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !24
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !24
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !24
  %i.xg = load i8, ptr %i.wz, align 1, !tbaa !24
  store i8 %i.xg, ptr %i.ww, align 1, !tbaa !24
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !430

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bd, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.cm, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.yp, %.lr.ph382 ], [ %i.ei, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.yq, %.lr.ph382 ], [ %i.dz, %.lr.ph382.preheader ] ; 9 uses
  %niter771 = phi i32 [ %niter771.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xh = load i8, ptr %.0249380, align 1, !tbaa !24
  %i.xi = zext i8 %i.xh to i16
  %i.xj = shl nuw i16 %i.xi, 8
  %i.xk = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !24
  %i.xm = zext i8 %i.xl to i16
  %i.xn = or disjoint i16 %i.xj, %i.xm
  store i16 %i.xn, ptr %.0381, align 2, !tbaa !85
  %i.xo = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xp = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !24
  %i.xr = zext i8 %i.xq to i16
  %i.xs = shl nuw i16 %i.xr, 8
  %i.xt = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !24
  %i.xv = zext i8 %i.xu to i16
  %i.xw = or disjoint i16 %i.xs, %i.xv
  store i16 %i.xw, ptr %i.xo, align 2, !tbaa !85
  %i.xx = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xy = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !24
  %i.ya = zext i8 %i.xz to i16
  %i.yb = shl nuw i16 %i.ya, 8
  %i.yc = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !24
  %i.ye = zext i8 %i.yd to i16
  %i.yf = or disjoint i16 %i.yb, %i.ye
  store i16 %i.yf, ptr %i.xx, align 2, !tbaa !85
  %i.yg = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yh = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !24
  %i.yj = zext i8 %i.yi to i16
  %i.yk = shl nuw i16 %i.yj, 8
  %i.yl = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !24
  %i.yn = zext i8 %i.ym to i16
  %i.yo = or disjoint i16 %i.yk, %i.yn
  store i16 %i.yo, ptr %i.yg, align 2, !tbaa !85
  %i.yp = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter771.next.3 = add i32 %niter771, 4         ; 2 uses
  %niter771.ncmp.3 = icmp eq i32 %niter771.next.3, %unroll_iter770
  br i1 %niter771.ncmp.3, label %.loopexit.loopexit743.unr-lcssa, label %.lr.ph382, !llvm.loop !462

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cl, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.zj, %.lr.ph378 ], [ %i.ei, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.zk, %.lr.ph378 ], [ %i.dz, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.yr = load i8, ptr %.1250376, align 1, !tbaa !24
  %i.ys = zext i8 %i.yr to i16
  %i.yt = shl nuw i16 %i.ys, 8
  %i.yu = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !24
  %i.yw = zext i8 %i.yv to i16
  %i.yx = or disjoint i16 %i.yt, %i.yw
  store i16 %i.yx, ptr %.1377, align 2, !tbaa !85
  %i.yy = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.yy, align 2, !tbaa !85
  %i.yz = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.za = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !24
  %i.zc = zext i8 %i.zb to i16
  %i.zd = shl nuw i16 %i.zc, 8
  %i.ze = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !24
  %i.zg = zext i8 %i.zf to i16
  %i.zh = or disjoint i16 %i.zd, %i.zg
  store i16 %i.zh, ptr %i.yz, align 2, !tbaa !85
  %i.zi = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.zi, align 2, !tbaa !85
  %i.zj = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit744.unr-lcssa, label %.lr.ph378, !llvm.loop !463

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.aam, %.lr.ph374 ], [ %i.ei, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.aan, %.lr.ph374 ], [ %i.dz, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.aal, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.zl = load i8, ptr %.2251372, align 1, !tbaa !24
  %i.zm = zext i8 %i.zl to i16
  %i.zn = shl nuw i16 %i.zm, 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !24
  %i.zq = zext i8 %i.zp to i16
  %i.zr = or disjoint i16 %i.zn, %i.zq
  store i16 %i.zr, ptr %.2373, align 2, !tbaa !85
  %i.zs = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !24
  %i.zu = zext i8 %i.zt to i16
  %i.zv = shl nuw i16 %i.zu, 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !24
  %i.zy = zext i8 %i.zx to i16
  %i.zz = or disjoint i16 %i.zv, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !85
  %i.aab = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !24
  %i.aad = zext i8 %i.aac to i16
  %i.aae = shl nuw i16 %i.aad, 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !24
  %i.aah = zext i8 %i.aag to i16
  %i.aai = or disjoint i16 %i.aae, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.aai, ptr %i.aaj, align 2, !tbaa !85
  %i.aak = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.aak, align 2, !tbaa !85
  %i.aal = add nuw i32 %.5270371, 1               ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.aal, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !464

.loopexit.loopexit743.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod768.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.ei, %.lr.ph382.preheader ], [ %i.yp, %.loopexit.loopexit743.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dz, %.lr.ph382.preheader ], [ %i.yq, %.loopexit.loopexit743.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod769)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.aav, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.aaw, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.aao = load i8, ptr %.0249380.epil, align 1, !tbaa !24
  %i.aap = zext i8 %i.aao to i16
  %i.aaq = shl nuw i16 %i.aap, 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !24
  %i.aat = zext i8 %i.aas to i16
  %i.aau = or disjoint i16 %i.aaq, %i.aat
  store i16 %i.aau, ptr %.0381.epil, align 2, !tbaa !85
  %i.aav = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter767
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !465

.loopexit.loopexit744.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit744.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.ei, %.lr.ph378.preheader ], [ %i.zj, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dz, %.lr.ph378.preheader ], [ %i.zk, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod766)
  %i.aax = load i8, ptr %.1250376.epil.init, align 1, !tbaa !24
  %i.aay = zext i8 %i.aax to i16
  %i.aaz = shl nuw i16 %i.aay, 8
  %i.aba = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !24
  %i.abc = zext i8 %i.abb to i16
  %i.abd = or disjoint i16 %i.aaz, %i.abc
  store i16 %i.abd, ptr %.1377.epil.init, align 2, !tbaa !85
  %i.abe = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.abe, align 2, !tbaa !85
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit744.unr-lcssa, %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !466

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.abf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.50, ptr %i.abf, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %4, 16
  %i.b = zext i1 %i.a to i32
  %i.c = shl i32 %3, %i.b                         ; 6 uses
  %.not = icmp eq i32 %6, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %4, i32 noundef %5)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i.i.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.k = udiv i32 2147483647, %i.g
  %.not24.i.i = icmp sgt i32 %i.e, %i.k
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.l = mul nsw i32 %i.g, %i.e                   ; 3 uses
  %i.m = or i32 %i.l, %i.c
  %or.cond.not.i10.i.i = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.o = udiv i32 2147483647, %i.c
  %.not.i.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.p = mul nsw i32 %i.l, %i.c
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.r, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = sext i32 %i.c to i64                     ; 9 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !26
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27  ; 4 uses
  %i.ab = xor i32 %i.y, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.aa                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 4 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add i32 %i.ag, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = udiv i32 %i.an, %i.ak                   ; 4 uses
  %i.ap = icmp ule i32 %i.aa, %i.ad
  %i.aq = icmp ule i32 %i.ak, %i.an
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.at = mul i32 %i.ae, %4
  %i.au = mul i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 7
  %i.aw = ashr i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.ax, %i.ao                ; 2 uses
  %i.az = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ae, i32 noundef %i.ao, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.az, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ba = icmp sgt i32 %i.ao, 0
  %i.bb = icmp sgt i32 %i.ae, 0
  %or.cond107 = and i1 %i.ba, %i.bb
  %.pre115 = load ptr, ptr %i.s, align 8, !tbaa !431 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32
  %i.bd = sext i32 %i.aa to i64                   ; 3 uses
  %i.be = sext i32 %i.y to i64                    ; 3 uses
  %i.bf = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.bg = zext nneg i32 %i.ao to i64
  %.pre.pre = load i32, ptr %i.bc, align 8, !tbaa !44
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %i.bf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ae to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bi = trunc i64 %indvars.iv109 to i32
  %i.bj = mul i32 %i.ak, %i.bi
  %i.bk = add i32 %i.bj, %i.ai
  %.reass = mul i32 %i.bk, %factor.op.mul
  %i.bl = mul nuw nsw i64 %indvars.iv109, %i.bf   ; 3 uses
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bm ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bo = mul nsw i64 %indvars.iv, %i.bd
  %i.bp = add nsw i64 %i.bo, %i.be
  %i.bq = mul nsw i64 %i.bp, %i.t
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nuw nsw i64 %indvars.iv, %i.bl
  %i.bt = mul nsw i64 %i.bs, %i.t
  %i.bu = getelementptr inbounds i8, ptr %.pre115, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bu, i64 %i.t, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv.next, %i.bd
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = mul nsw i64 %i.bw, %i.t
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv.next, %i.bl
  %i.ca = mul nsw i64 %i.bz, %i.t
  %i.cb = getelementptr inbounds i8, ptr %.pre115, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %i.t, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !467

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cc = mul nsw i64 %indvars.iv.epil.init, %i.bd
  %i.cd = add nsw i64 %i.cc, %i.be
  %i.ce = mul nsw i64 %i.cd, %i.t
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 %i.ce
  %i.cg = add nuw nsw i64 %indvars.iv.epil.init, %i.bl
  %i.ch = mul nsw i64 %i.cg, %i.t
  %i.ci = getelementptr inbounds i8, ptr %.pre115, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ci, i64 %i.t, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next110, %i.bg
  br i1 %i.cj, label %.preheader, label %._crit_edge103.split, !llvm.loop !468

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ck = zext i32 %i.ay to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ck
  %i.cm = sub i32 %.085104, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.cm, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cl, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !469

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.s, align 8, !tbaa !431
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.029 = phi ptr [ %i.g, %.lr.ph30.preheader.new ], [ %i.ai, %.lr.ph30 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %i.l = load i8, ptr %.029, align 1, !tbaa !24
  %i.m = load i8, ptr %1, align 1, !tbaa !24
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = load i8, ptr %1, align 1, !tbaa !24
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = load i8, ptr %1, align 1, !tbaa !24
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = load i8, ptr %1, align 1, !tbaa !24
  %i.af = icmp ne i8 %i.ad, %i.ae
  %i.ag = sext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 7
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !470

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.av, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.f ]
  %i.aj = load i8, ptr %.127, align 1, !tbaa !24
  %i.ak = load i8, ptr %1, align 1, !tbaa !24
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.127, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = load i8, ptr %i.i, align 1, !tbaa !24
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = load i8, ptr %i.j, align 1, !tbaa !24
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.127, i64 3
  store i8 0, ptr %i.au, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.aw = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !471

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.029.epil.init = phi ptr [ %i.g, %.lr.ph30.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.029.epil = phi ptr [ %i.bc, %.lr.ph30.epil ], [ %.029.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %i.ax = load i8, ptr %.029.epil, align 1, !tbaa !24
  %i.ay = load i8, ptr %1, align 1, !tbaa !24
  %i.az = icmp ne i8 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.epil, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !472

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %scevgep37 = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %scevgep37
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph30.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.k, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec = sub nsw i64 %i.k, %i.r                 ; 3 uses
  %i.s = shl nsw i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %i.u = trunc i64 %n.vec to i32
  %i.v = load i16, ptr %1, align 2, !tbaa !85, !alias.scope !473
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %i.y = getelementptr i8, ptr %i.g, i64 %i.w
  %i.z = getelementptr i8, ptr %i.g, i64 %i.w
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aa = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>        ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ad = getelementptr i8, ptr %i.x, i64 6
  %i.ae = getelementptr i8, ptr %i.y, i64 10
  %i.af = getelementptr i8, ptr %i.z, i64 14
  %i.ag = extractelement <4 x i16> %i.ab, i64 0
  store i16 %i.ag, ptr %i.ac, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.ah = extractelement <4 x i16> %i.ab, i64 1
  store i16 %i.ah, ptr %i.ad, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.ai = extractelement <4 x i16> %i.ab, i64 2
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.aj = extractelement <4 x i16> %i.ab, i64 3
  store i16 %i.aj, ptr %i.af, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph30.preheader42, label %vector.body, !llvm.loop !478

.lr.ph30.preheader42:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph30.preheader
  %.029.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph30.preheader ], [ %i.t, %vector.body ] ; 2 uses
  %.02228.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph30.preheader ], [ %i.u, %vector.body ] ; 4 uses
  %i.al = sub i32 %i.e, %.02228.ph
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader42, %.lr.ph30.prol
  %.029.prol = phi ptr [ %i.ar, %.lr.ph30.prol ], [ %.029.ph, %.lr.ph30.preheader42 ] ; 3 uses
  %.02228.prol = phi i32 [ %i.as, %.lr.ph30.prol ], [ %.02228.ph, %.lr.ph30.preheader42 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph30.prol ], [ 0, %.lr.ph30.preheader42 ]
  %i.am = load i16, ptr %.029.prol, align 2, !tbaa !85
  %i.an = load i16, ptr %1, align 2, !tbaa !85
  %i.ao = icmp ne i16 %i.am, %i.an
  %i.ap = sext i1 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.prol, i64 2
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %.029.prol, i64 4 ; 2 uses
  %i.as = add nuw i32 %.02228.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol, !llvm.loop !479

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader42
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph30.preheader42 ], [ %i.ar, %.lr.ph30.prol ]
  %.02228.unr = phi i32 [ %.02228.ph, %.lr.ph30.preheader42 ], [ %i.as, %.lr.ph30.prol ]
  %i.at = sub i32 %.02228.ph, %i.e
  %i.au = icmp ugt i32 %i.at, -4
  br i1 %i.au, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %.029 = phi ptr [ %i.bs, %.lr.ph30 ], [ %.029.unr, %.lr.ph30.prol.loopexit ] ; 9 uses
  %.02228 = phi i32 [ %i.bt, %.lr.ph30 ], [ %.02228.unr, %.lr.ph30.prol.loopexit ]
  %i.av = load i16, ptr %.029, align 2, !tbaa !85
  %i.aw = load i16, ptr %1, align 2, !tbaa !85
  %i.ax = icmp ne i16 %i.av, %i.aw
  %i.ay = sext i1 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.029, i64 2
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !85
  %i.bc = load i16, ptr %1, align 2, !tbaa !85
  %i.bd = icmp ne i16 %i.bb, %i.bc
  %i.be = sext i1 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.029, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !85
  %i.bi = load i16, ptr %1, align 2, !tbaa !85
  %i.bj = icmp ne i16 %i.bh, %i.bi
  %i.bk = sext i1 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.029, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !85
  %i.bo = load i16, ptr %1, align 2, !tbaa !85
  %i.bp = icmp ne i16 %i.bn, %i.bo
  %i.bq = sext i1 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.029, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bt = add nuw i32 %.02228, 4                  ; 2 uses
  %exitcond33.not.3 = icmp eq i32 %i.bt, %i.e
  br i1 %exitcond33.not.3, label %.loopexit, label %.lr.ph30, !llvm.loop !480

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.cg, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.f ]
  %i.bu = load i16, ptr %.127, align 2, !tbaa !85
  %i.bv = load i16, ptr %1, align 2, !tbaa !85
  %i.bw = icmp eq i16 %i.bu, %i.bv
  br i1 %i.bw, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !85
  %i.bz = load i16, ptr %i.i, align 2, !tbaa !85
  %i.ca = icmp eq i16 %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !85
  %i.cd = load i16, ptr %i.j, align 2, !tbaa !85
  %i.ce = icmp eq i16 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %.127, i64 6
  store i16 0, ptr %i.cf, align 2, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.ch = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !481

.loopexit:                                        ; preds = %bb.f, %.lr.ph30.prol.loopexit, %.lr.ph30, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__expand_png_palette(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 9 uses
  %i.h = or i32 %i.e, %3
  %or.cond.not.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %stbi__malloc_mad2.exit, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.j = udiv i32 2147483647, %3
  %.not11.i.i = icmp sgt i32 %i.e, %i.j
  br i1 %.not11.i.i, label %stbi__malloc_mad2.exit.thread, label %stbi__malloc_mad2.exit

stbi__malloc_mad2.exit:                           ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i
  %i.k = mul nsw i32 %i.e, %3
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %stbi__malloc_mad2.exit.thread, label %bb.c

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__malloc_mad2.exit
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %stbi__malloc_mad2.exit
  %i.p = icmp eq i32 %3, 3
  %.not56 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.e, 4
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count62 = zext i32 %i.e to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count62, 1
  %i.r = icmp eq i32 %i.e, 1
  br i1 %i.r, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter75 = and i64 %wide.trip.count62, 4294967294
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next60.1, %.lr.ph55 ] ; 3 uses
  %.04553 = phi ptr [ %i.m, %.lr.ph55.preheader.new ], [ %i.as, %.lr.ph55 ] ; 7 uses
  %niter76 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter76.next.1, %.lr.ph55 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  store i8 %i.x, ptr %.04553, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.04553, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.04553, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.04553, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.04553, i64 4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %.04553, i64 5
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.04553, i64 6 ; 2 uses
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !482

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.14651 = phi ptr [ %i.m, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load <4 x i8>, ptr %i.ax, align 1, !tbaa !24
  store <4 x i8> %i.ay, ptr %.14651, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.14651, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load <4 x i8>, ptr %i.bf, align 1, !tbaa !24
  store <4 x i8> %i.bg, ptr %i.az, align 1, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %.14651, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !24
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load <4 x i8>, ptr %i.bn, align 1, !tbaa !24
  store <4 x i8> %i.bo, ptr %i.bh, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %.14651, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load <4 x i8>, ptr %i.bv, align 1, !tbaa !24
  store <4 x i8> %i.bw, ptr %i.bp, align 1, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.14651, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !483

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ]
  %.04553.epil.init = phi ptr [ %i.m, %.lr.ph55.preheader ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
  store i8 %i.cd, ptr %.04553.epil.init, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !24
  br label %.loopexit

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit69.unr-lcssa ]
  %.14651.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.bx, %.loopexit.loopexit69.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.14651.epil = phi ptr [ %.14651.epil.init, %.lr.ph.epil.preheader ], [ %i.cq, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !24
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load <4 x i8>, ptr %i.co, align 1, !tbaa !24
  store <4 x i8> %i.cp, ptr %.14651.epil, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.14651.epil, i64 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !484

.loopexit:                                        ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.epil, %.lr.ph55.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader49, %.preheader
  tail call void @free(ptr noundef %i.g) #37
  store ptr %i.m, ptr %i.f, align 8, !tbaa !431
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %stbi__malloc_mad2.exit.thread
  %.0 = phi i32 [ 0, %stbi__malloc_mad2.exit.thread ], [ 1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__de_iphone_flag_global, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !27
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !27
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_set)
  store i32 1, ptr %i.b, align 4, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi__de_iphone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !485
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq i32 %i.e, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader
  %xtraiter85 = and i32 %i.e, 3                   ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter89 = and i32 %i.e, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.04666 = phi ptr [ %i.g, %.lr.ph68.preheader.new ], [ %i.aa, %.lr.ph68 ] ; 10 uses
  %niter90 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter90.next.3, %.lr.ph68 ]
  %i.l = load i8, ptr %.04666, align 1, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %.04666, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  store i8 %i.n, ptr %.04666, align 1, !tbaa !24
  store i8 %i.l, ptr %i.m, align 1, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %.04666, i64 3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %.04666, i64 5 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  store i8 %i.r, ptr %i.o, align 1, !tbaa !24
  store i8 %i.p, ptr %i.q, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %.04666, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %.04666, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  store i8 %i.v, ptr %i.s, align 1, !tbaa !24
  store i8 %i.t, ptr %i.u, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.04666, i64 9 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %.04666, i64 11 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  store i8 %i.z, ptr %i.w, align 1, !tbaa !24
  store i8 %i.x, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.04666, i64 12 ; 2 uses
  %niter90.next.3 = add i32 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i32 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !486

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_set)
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_local)
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = load i32, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !27
  %.not50 = icmp eq i32 %i.af, 0
  br i1 %.not50, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.162 = phi i32 [ %i.bh, %bb.h ], [ 0, %bb.e ]
  %.14761 = phi ptr [ %i.bg, %bb.h ], [ %i.g, %bb.e ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.14761, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24  ; 3 uses
  %i.ai = load i8, ptr %.14761, align 1, !tbaa !24 ; 2 uses
  %.not52 = icmp eq i8 %i.ah, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = lshr i8 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.14761, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 255
  %i.ao = zext nneg i8 %i.aj to i32               ; 3 uses
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %.lhs.trunc = trunc nuw i32 %i.ap to i16
  %.rhs.trunc = zext i8 %i.ah to i16              ; 3 uses
  %i.aq = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.ar = trunc i16 %i.aq to i8
  store i8 %i.ar, ptr %.14761, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.14761, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = zext i8 %i.at to i32
  %i.av = mul nuw nsw i32 %i.au, 255
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %.lhs.trunc53 = trunc nuw i32 %i.aw to i16
  %i.ax = udiv i16 %.lhs.trunc53, %.rhs.trunc
  %i.ay = trunc i16 %i.ax to i8
  store i8 %i.ay, ptr %i.as, align 1, !tbaa !24
  %i.az = zext i8 %i.ai to i32
  %i.ba = mul nuw nsw i32 %i.az, 255
  %i.bb = add nuw nsw i32 %i.ba, %i.ao
  %.lhs.trunc56 = trunc nuw i32 %i.bb to i16
  %i.bc = udiv i16 %.lhs.trunc56, %.rhs.trunc
  %i.bd = trunc i16 %i.bc to i8
  store i8 %i.bd, ptr %i.ak, align 1, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.14761, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !24
  store i8 %i.bf, ptr %.14761, align 1, !tbaa !24
  store i8 %i.ai, ptr %i.be, align 1, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.14761, i64 4
  %i.bh = add nuw i32 %.162, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !487

bb.i:                                             ; preds = %bb.d, %bb.c
  %.not70 = icmp eq i32 %i.e, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.i
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.bi = icmp ult i32 %i.e, 4
  br i1 %i.bi, label %.lr.ph65.epil.preheader, label %.lr.ph65.preheader.new

.lr.ph65.preheader.new:                           ; preds = %.lr.ph65.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65, %.lr.ph65.preheader.new
  %.24863 = phi ptr [ %i.g, %.lr.ph65.preheader.new ], [ %i.by, %.lr.ph65 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph65.preheader.new ], [ %niter.next.3, %.lr.ph65 ]
  %i.bj = load i8, ptr %.24863, align 1, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.24863, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  store i8 %i.bl, ptr %.24863, align 1, !tbaa !24
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %.24863, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.24863, i64 6 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !24
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %.24863, i64 8 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %.24863, i64 10 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !24
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.24863, i64 12 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.24863, i64 14 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !24
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %.24863, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit82.unr-lcssa, label %.lr.ph65, !llvm.loop !488

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph68
  %lcmp.mod87.not = icmp eq i32 %xtraiter85, 0
  br i1 %lcmp.mod87.not, label %.loopexit, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.04666.epil.init = phi ptr [ %i.g, %.lr.ph68.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i32 %xtraiter85, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.04666.epil = phi ptr [ %i.cc, %.lr.ph68.epil ], [ %.04666.epil.init, %.lr.ph68.epil.preheader ] ; 4 uses
  %epil.iter86 = phi i32 [ %epil.iter86.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.bz = load i8, ptr %.04666.epil, align 1, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %.04666.epil, i64 2 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  store i8 %i.cb, ptr %.04666.epil, align 1, !tbaa !24
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %.04666.epil, i64 3
  %epil.iter86.next = add i32 %epil.iter86, 1     ; 2 uses
  %epil.iter86.cmp.not = icmp eq i32 %epil.iter86.next, %xtraiter85
  br i1 %epil.iter86.cmp.not, label %.loopexit, label %.lr.ph68.epil, !llvm.loop !489

.loopexit.loopexit82.unr-lcssa:                   ; preds = %.lr.ph65
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %.loopexit.loopexit82.unr-lcssa, %.lr.ph65.preheader
  %.24863.epil.init = phi ptr [ %i.g, %.lr.ph65.preheader ], [ %i.by, %.loopexit.loopexit82.unr-lcssa ]
  %lcmp.mod84 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph65.epil

.lr.ph65.epil:                                    ; preds = %.lr.ph65.epil, %.lr.ph65.epil.preheader
  %.24863.epil = phi ptr [ %i.cg, %.lr.ph65.epil ], [ %.24863.epil.init, %.lr.ph65.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph65.epil ], [ 0, %.lr.ph65.epil.preheader ]
  %i.cd = load i8, ptr %.24863.epil, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %.24863.epil, i64 2 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  store i8 %i.cf, ptr %.24863.epil, align 1, !tbaa !24
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.24863.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph65.epil, !llvm.loop !490

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit82.unr-lcssa, %.lr.ph65.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph68.epil, %bb.e, %bb.i, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__parse_png_file(ptr nofree noundef captures(none) initializes((8, 32)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 10 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  %i.d = alloca [25 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.e = load ptr, ptr %0, align 8, !tbaa !32     ; 35 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 61 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 25 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 56 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 57 ; 40 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !16 ; 3 uses
  %.pre7.i = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.r = icmp ult ptr %.pre.i, %.pre7.i
  br i1 %i.r, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %stbi__get8.exit.i
  %i.s = icmp ult ptr %i.gj, %i.gi
  br i1 %i.s, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.j, align 8, !tbaa !13
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.1, label %stbi__check_png_header.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.w = load i32, ptr %i.n, align 4, !tbaa !22
  %i.x = tail call i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.m, i32 noundef %i.w) #37, !inline_history !40 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !14
  %i.af = add nsw i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.p, align 8, !tbaa !14
  %i.ag = icmp eq i32 %i.x, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sext i32 %i.x to i64
  %i.ai = getelementptr inbounds i8, ptr %i.m, i64 %i.ah
  %.pre.i.i.1 = load i8, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i.i.1

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !13
  store i8 0, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i.i.1

stbi__refill_buffer.exit.i.i.1:                   ; preds = %bb.f, %bb.e
  %i.aj = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1, %bb.e ]
  %.sink.i.i.i.1 = phi ptr [ %i.q, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1, ptr %i.i, align 8, !tbaa !18
  store ptr %i.q, ptr %i.h, align 8, !tbaa !16
  br label %stbi__get8.exit.i.1

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !16
  %i.al = load i8, ptr %i.gj, align 1, !tbaa !24
  br label %stbi__get8.exit.i.1

stbi__get8.exit.i.1:                              ; preds = %bb.g, %stbi__refill_buffer.exit.i.i.1
  %i.am = phi ptr [ %i.gi, %bb.g ], [ %.sink.i.i.i.1, %stbi__refill_buffer.exit.i.i.1 ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %bb.g ], [ %i.q, %stbi__refill_buffer.exit.i.i.1 ] ; 3 uses
  %.0.i.i.1 = phi i8 [ %i.al, %bb.g ], [ %i.aj, %stbi__refill_buffer.exit.i.i.1 ]
  %.not.i.1 = icmp eq i8 %.0.i.i.1, 80
  br i1 %.not.i.1, label %bb.h, label %stbi__check_png_header.exit.thread

bb.h:                                             ; preds = %stbi__get8.exit.i.1
  %i.ao = icmp ult ptr %i.an, %i.am
  br i1 %i.ao, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !13
  %.not.i.i.2 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.2, label %stbi__check_png_header.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.as = load i32, ptr %i.n, align 4, !tbaa !22
  %i.at = tail call i32 %i.aq(ptr noundef %i.ar, ptr noundef nonnull %i.m, i32 noundef %i.as) #37, !inline_history !40 ; 2 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !14
  %i.bb = add nsw i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.p, align 8, !tbaa !14
  %i.bc = icmp eq i32 %i.at, 0
  br i1 %i.bc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds i8, ptr %i.m, i64 %i.bd
  %.pre.i.i.2 = load i8, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i.i.2

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.j, align 8, !tbaa !13
  store i8 0, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i.i.2

stbi__refill_buffer.exit.i.i.2:                   ; preds = %bb.l, %bb.k
  %i.bf = phi i8 [ 0, %bb.l ], [ %.pre.i.i.2, %bb.k ]
  %.sink.i.i.i.2 = phi ptr [ %i.q, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.i.2, ptr %i.i, align 8, !tbaa !18
  store ptr %i.q, ptr %i.h, align 8, !tbaa !16
  br label %stbi__get8.exit.i.2

bb.m:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !16
  %i.bh = load i8, ptr %i.an, align 1, !tbaa !24
  br label %stbi__get8.exit.i.2

stbi__get8.exit.i.2:                              ; preds = %bb.m, %stbi__refill_buffer.exit.i.i.2
  %i.bi = phi ptr [ %i.am, %bb.m ], [ %.sink.i.i.i.2, %stbi__refill_buffer.exit.i.i.2 ] ; 2 uses
  %i.bj = phi ptr [ %i.bg, %bb.m ], [ %i.q, %stbi__refill_buffer.exit.i.i.2 ] ; 3 uses
  %.0.i.i.2 = phi i8 [ %i.bh, %bb.m ], [ %i.bf, %stbi__refill_buffer.exit.i.i.2 ]
  %.not.i.2 = icmp eq i8 %.0.i.i.2, 78
  br i1 %.not.i.2, label %bb.n, label %stbi__check_png_header.exit.thread

bb.n:                                             ; preds = %stbi__get8.exit.i.2
  %i.bk = icmp ult ptr %i.bj, %i.bi
end_hunk_8
begin_hunk_9_@stbi__out_gif_code:bb.a
  %i.ad = sext i32 %i.l to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !24
  %i.ak = load i8, ptr %i.z, align 1, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !24
  %i.am = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = load i32, ptr %i.j, align 4, !tbaa !526
  %i.ap = add nsw i32 %i.ao, 4                    ; 2 uses
  store i32 %i.ap, ptr %i.j, align 4, !tbaa !526
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 34900
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !529
  %.not42 = icmp slt i32 %i.ap, %i.ar
  br i1 %.not42, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 34892
  %i.at = load i32, ptr %i.as, align 4, !tbaa !530
  store i32 %i.at, ptr %i.j, align 4, !tbaa !526
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34884 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !531
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !524
  %i.ax = add nsw i32 %i.aw, %i.av                ; 2 uses
  store i32 %i.ax, ptr %i.f, align 8, !tbaa !524
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 34880 ; 3 uses
  %i.az = load i32, ptr %i.h, align 8, !tbaa !525 ; 2 uses
  %.not4344 = icmp slt i32 %i.ax, %i.az
  br i1 %.not4344, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 34916
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %.promoted46 = load i32, ptr %i.ay, align 8, !tbaa !532 ; 2 uses
  %i.bc = icmp sgt i32 %.promoted46, 0
  br i1 %i.bc, label %.lr.ph50.preheader, label %.critedge

.lr.ph50.preheader:                               ; preds = %.lr.ph
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !533
  %i.be = load i32, ptr %i.bb, align 8, !tbaa !534
  br label %.lr.ph50

bb.h:                                             ; preds = %.lr.ph50
  %i.bf = icmp sgt i32 %i.bg, 1
  br i1 %i.bf, label %.lr.ph50, label %.critedge.loopexit, !llvm.loop !535

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %bb.h
  %i.bg = phi i32 [ %i.bk, %bb.h ], [ %.promoted46, %.lr.ph50.preheader ] ; 3 uses
  %i.bh = shl i32 %i.bd, %i.bg                    ; 3 uses
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = add nsw i32 %i.be, %i.bi                ; 3 uses
  %i.bk = add nsw i32 %i.bg, -1                   ; 3 uses
  %.not43 = icmp slt i32 %i.bj, %i.az
  br i1 %.not43, label %..critedge.loopexit_crit_edge, label %bb.h, !llvm.loop !535

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph50
  store i32 %i.bh, ptr %i.au, align 4, !tbaa !531
  store i32 %i.bj, ptr %i.f, align 8, !tbaa !524
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !532
  br label %.critedge, !llvm.loop !535

.critedge.loopexit:                               ; preds = %bb.h
  store i32 %i.bh, ptr %i.au, align 4, !tbaa !531
  store i32 %i.bj, ptr %i.f, align 8, !tbaa !524
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !532
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.g, %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbi__process_gif_raster(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 22 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = load i8, ptr %i.b, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #37, !inline_history !54 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !14
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %stbi__refill_buffer.exit.i
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.ah = icmp ugt i8 %.0.i, 12
  br i1 %i.ah, label %.thread, label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.c, %stbi__get8.exit
  %.0.i146 = phi i8 [ %.0.i, %stbi__get8.exit ], [ 0, %bb.c ] ; 2 uses
  %i.ai = zext nneg i8 %.0.i146 to i32            ; 3 uses
  %i.aj = shl nuw nsw i32 1, %i.ai                ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2100 ; 11 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.al = icmp samesign ult i8 %.0.i146, 2
  br i1 %i.al, label %.epil.preheader, label %stbi__get8.exit.thread.new

stbi__get8.exit.thread.new:                       ; preds = %stbi__get8.exit.thread
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %stbi__get8.exit.thread.new
  %indvars.iv = phi i64 [ 0, %stbi__get8.exit.thread.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %stbi__get8.exit.thread.new ], [ %niter.next.3, %bb.g ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  store i16 -1, ptr %i.am, align 4, !tbaa !522
  %i.an = trunc i64 %indvars.iv to i8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !536
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !528
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next ; 3 uses
  store i16 -1, ptr %i.aq, align 4, !tbaa !522
  %i.ar = trunc i64 %indvars.iv.next to i8        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 %i.ar, ptr %i.as, align 2, !tbaa !536
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !528
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.1 ; 3 uses
  store i16 -1, ptr %i.au, align 4, !tbaa !522
  %i.av = trunc i64 %indvars.iv.next.1 to i8      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.av, ptr %i.aw, align 2, !tbaa !536
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !528
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.2 ; 3 uses
  store i16 -1, ptr %i.ay, align 4, !tbaa !522
  %i.az = trunc i64 %indvars.iv.next.2 to i8      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.az, ptr %i.ba, align 2, !tbaa !536
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !528
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.g, !llvm.loop !537

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %stbi__get8.exit.thread
  %indvars.iv.epil.init = phi i64 [ 0, %stbi__get8.exit.thread ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.epil ; 3 uses
  store i16 -1, ptr %i.bc, align 4, !tbaa !522
  %i.bd = trunc i64 %indvars.iv.epil to i8        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !536
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !528
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.h, !llvm.loop !538

.epilog-lcssa:                                    ; preds = %bb.h, %.unr-lcssa
  %i.bg = add nuw nsw i32 %i.ai, 1                ; 3 uses
  %i.bh = shl nuw nsw i32 2, %i.ai
  %i.bi = add nsw i32 %i.bh, -1                   ; 3 uses
  %i.bj = add nuw nsw i32 %i.aj, 2                ; 3 uses
  %i.bk = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 8 uses
  br label %.outer

.outer:                                           ; preds = %stbi__get8.exit130, %.epilog-lcssa
  %.0101.ph = phi i32 [ %i.ea, %stbi__get8.exit130 ], [ 0, %.epilog-lcssa ] ; 7 uses
  %.096.ph = phi i32 [ %.096.lcssa, %stbi__get8.exit130 ], [ 1, %.epilog-lcssa ] ; 2 uses
  %.091.ph = phi i32 [ %.091.lcssa, %stbi__get8.exit130 ], [ %i.bg, %.epilog-lcssa ] ; 6 uses
  %.086.ph = phi i32 [ %.086.lcssa, %stbi__get8.exit130 ], [ %i.bi, %.epilog-lcssa ] ; 4 uses
  %.082.ph = phi i32 [ %.082.lcssa, %stbi__get8.exit130 ], [ %i.bj, %.epilog-lcssa ] ; 7 uses
  %.080.ph = phi i32 [ %.080.lcssa, %stbi__get8.exit130 ], [ -1, %.epilog-lcssa ] ; 4 uses
  %.078.ph = phi i32 [ %i.ex, %stbi__get8.exit130 ], [ 0, %.epilog-lcssa ] ; 3 uses
  %.077.ph = phi i32 [ %i.ey, %stbi__get8.exit130 ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.bt = icmp slt i32 %.077.ph, %.091.ph
  br i1 %i.bt, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.outer
  %i.bu = and i32 %.078.ph, %.086.ph              ; 7 uses
  %i.bv = ashr i32 %.078.ph, %.091.ph
  %i.bw = sub nsw i32 %.077.ph, %.091.ph
  %i.bx = icmp eq i32 %i.bu, %i.aj
  br i1 %i.bx, label %.outer.peel.newph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = icmp eq i32 %i.bu, %i.bk
  br i1 %i.by, label %.loopexit234, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.peel = icmp sgt i32 %i.bu, %.082.ph
  br i1 %.not.peel, label %.loopexit235, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not117.peel = icmp eq i32 %.096.ph, 0
  br i1 %.not117.peel, label %bb.m, label %.loopexit242

bb.m:                                             ; preds = %bb.l
  %i.bz = icmp sgt i32 %.080.ph, -1
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = icmp eq i32 %i.bu, %.082.ph
  br i1 %i.ca, label %.loopexit237, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cb = icmp sgt i32 %.082.ph, 8191
  br i1 %i.cb, label %.loopexit238, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = sext i32 %.082.ph to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.cc ; 3 uses
  %i.ce = add nsw i32 %.082.ph, 1
  %i.cf = trunc i32 %.080.ph to i16
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !522
  %i.cg = zext nneg i32 %.080.ph to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !536
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cj, ptr %i.ck, align 2, !tbaa !536
  %i.cl = sext i32 %i.bu to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !536
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !528
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.183.peel = phi i32 [ %i.ce, %bb.p ], [ %.082.ph, %bb.n ] ; 3 uses
  %i.cq = trunc i32 %i.bu to i16
  tail call void @stbi__out_gif_code(ptr noundef %1, i16 noundef zeroext %i.cq)
  %i.cr = and i32 %.183.peel, %.086.ph
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = icmp slt i32 %.183.peel, 4096
  %or.cond.peel = and i1 %i.ct, %i.cs             ; 2 uses
  %i.cu = add nsw i32 %.091.ph, 1                 ; 2 uses
  %notmask.peel = shl nsw i32 -1, %i.cu
  %i.cv = xor i32 %notmask.peel, -1
  %.192.peel = select i1 %or.cond.peel, i32 %i.cu, i32 %.091.ph
  %.187.peel = select i1 %or.cond.peel, i32 %i.cv, i32 %.086.ph
  br label %.outer.peel.newph

.outer.peel.newph:                                ; preds = %bb.i, %bb.q
  %.091.be.peel = phi i32 [ %.192.peel, %bb.q ], [ %i.bg, %bb.i ]
  %.086.be.peel = phi i32 [ %.187.peel, %bb.q ], [ %i.bi, %bb.i ]
  %.082.be.peel = phi i32 [ %.183.peel, %bb.q ], [ %i.bj, %bb.i ]
  %.080.be.peel = phi i32 [ %i.bu, %bb.q ], [ -1, %bb.i ]
  br label %bb.r

bb.r:                                             ; preds = %.backedge, %.outer.peel.newph
  %.091 = phi i32 [ %.091.be.peel, %.outer.peel.newph ], [ %.091.be, %.backedge ] ; 6 uses
  %.086 = phi i32 [ %.086.be.peel, %.outer.peel.newph ], [ %.086.be, %.backedge ] ; 4 uses
  %.082 = phi i32 [ %.082.be.peel, %.outer.peel.newph ], [ %.082.be, %.backedge ] ; 7 uses
  %.080 = phi i32 [ %.080.be.peel, %.outer.peel.newph ], [ %.080.be, %.backedge ] ; 4 uses
  %.078 = phi i32 [ %i.bv, %.outer.peel.newph ], [ %i.fa, %.backedge ] ; 3 uses
  %.077 = phi i32 [ %i.bw, %.outer.peel.newph ], [ %i.fb, %.backedge ] ; 3 uses
  %i.cw = icmp slt i32 %.077, %.091
  br i1 %i.cw, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %bb.r, %.outer
  %.096.lcssa = phi i32 [ %.096.ph, %.outer ], [ 0, %bb.r ]
  %.091.lcssa = phi i32 [ %.091.ph, %.outer ], [ %.091, %bb.r ]
  %.086.lcssa = phi i32 [ %.086.ph, %.outer ], [ %.086, %bb.r ]
  %.082.lcssa = phi i32 [ %.082.ph, %.outer ], [ %.082, %bb.r ]
  %.080.lcssa = phi i32 [ %.080.ph, %.outer ], [ %.080, %bb.r ]
  %.078.lcssa = phi i32 [ %.078.ph, %.outer ], [ %.078, %bb.r ]
  %.077.lcssa = phi i32 [ %.077.ph, %.outer ], [ %.077, %bb.r ] ; 2 uses
  %i.cx = icmp eq i32 %.0101.ph, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.pre170 = load ptr, ptr %i.c, align 8, !tbaa !18 ; 3 uses
  br i1 %i.cx, label %bb.s, label %bb.y

bb.s:                                             ; preds = %.loopexit
  %i.cy = icmp ult ptr %.pre, %.pre170
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !16
  %i.da = load i8, ptr %.pre, align 1, !tbaa !24
  br label %stbi__get8.exit124

bb.u:                                             ; preds = %bb.s
  %i.db = load i32, ptr %i.bl, align 8, !tbaa !13
  %.not.i119 = icmp eq i32 %i.db, 0
  br i1 %.not.i119, label %stbi__get8.exit124.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.dd = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.de = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.df = tail call i32 %i.dc(ptr noundef %i.dd, ptr noundef nonnull %i.bo, i32 noundef %i.de) #37, !inline_history !54 ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load i32, ptr %i.br, align 8, !tbaa !14
  %i.dn = add nsw i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.br, align 8, !tbaa !14
  %i.do = icmp eq i32 %i.df, 0
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bl, align 8, !tbaa !13
  store i8 0, ptr %i.bo, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i121

bb.x:                                             ; preds = %bb.v
  %i.dp = sext i32 %i.df to i64
  %i.dq = getelementptr inbounds i8, ptr %i.bo, i64 %i.dp
  %.pre.i120 = load i8, ptr %i.bo, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i121

stbi__refill_buffer.exit.i121:                    ; preds = %bb.x, %bb.w
  %i.dr = phi i8 [ 0, %bb.w ], [ %.pre.i120, %bb.x ]
  %.sink.i.i122 = phi ptr [ %i.bs, %bb.w ], [ %i.dq, %bb.x ] ; 2 uses
  store ptr %.sink.i.i122, ptr %i.c, align 8, !tbaa !18
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !16
end_hunk_9
begin_hunk_10_@stbi__process_gif_raster:bb.a
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.hm ; 3 uses
  %i.ho = add nsw i32 %.082, 1
  %i.hp = trunc i32 %.080 to i16
  store i16 %i.hp, ptr %i.hn, align 2, !tbaa !522
  %i.hq = zext nneg i32 %.080 to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = load i8, ptr %i.hs, align 2, !tbaa !536
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i8 %i.ht, ptr %i.hu, align 2, !tbaa !536
  %i.hv = sext i32 %i.ez to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !536
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !528
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.ia = icmp eq i32 %i.ez, %.082
  br i1 %i.ia, label %.loopexit237, label %bb.ay

.loopexit237:                                     ; preds = %bb.n, %bb.ax
  %i.ib = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.ib, align 8, !tbaa !26
  br label %.thread

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.183 = phi i32 [ %i.ho, %bb.aw ], [ %.082, %bb.ax ] ; 3 uses
  %i.ic = trunc i32 %i.ez to i16
  tail call void @stbi__out_gif_code(ptr noundef %1, i16 noundef zeroext %i.ic)
  %i.id = and i32 %.183, %.086
  %i.ie = icmp eq i32 %i.id, 0
  %i.if = icmp slt i32 %.183, 4096
  %or.cond = and i1 %i.if, %i.ie                  ; 2 uses
  %i.ig = add nsw i32 %.091, 1                    ; 2 uses
  %notmask = shl nsw i32 -1, %i.ig
  %i.ih = xor i32 %notmask, -1
  %.192 = select i1 %or.cond, i32 %i.ig, i32 %.091
  %.187 = select i1 %or.cond, i32 %i.ih, i32 %.086
  br label %.backedge

.loopexit235:                                     ; preds = %bb.k, %bb.at
  %i.ii = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.ii, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %.loopexit237, %.loopexit238, %.loopexit242, %stbi__get8.exit138.thread, %.loopexit235, %stbi__get8.exit, %stbi__get8.exit124.thread
  %.3108 = phi ptr [ null, %stbi__get8.exit ], [ %i.dx, %stbi__get8.exit124.thread ], [ null, %.loopexit237 ], [ null, %.loopexit238 ], [ null, %.loopexit242 ], [ %i.hh, %stbi__get8.exit138.thread ], [ null, %.loopexit235 ]
  ret ptr %.3108
}

; Function Attrs: nounwind uwtable
define ptr @stbi__gif_load_next(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @stbi__gif_header(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %stbi__skip.exit219.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 4 uses
  %.not24.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not24.i, label %stbi__skip.exit219.thread.sink.split, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %stbi__skip.exit219.thread.sink.split

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %stbi__skip.exit219.thread.sink.split, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %stbi__mul2sizes_valid.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 3 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !37
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !39
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %i.p) #38 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !38
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %stbi__skip.exit219.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %stbi__mad3sizes_valid.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %stbi__skip.exit219.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !541
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %4, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader247
    i32 2, label %.preheader248
  ]

.preheader248:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader248
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader247:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph257, label %.loopexit

.lr.ph257:                                        ; preds = %.preheader247
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %wide.trip.count268 = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter330 = and i64 %wide.trip.count268, 1
  %i.ai = icmp eq i32 %i.z, 1
  br i1 %i.ai, label %.epil.preheader329, label %.lr.ph257.new

.lr.ph257.new:                                    ; preds = %.lr.ph257
  %unroll_iter333 = and i64 %wide.trip.count268, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph257.new
  %indvars.iv265 = phi i64 [ 0, %.lr.ph257.new ], [ %indvars.iv.next266.1, %bb.l ] ; 4 uses
  %niter334 = phi i64 [ 0, %.lr.ph257.new ], [ %niter334.next.1, %bb.l ]
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv265
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %.not165 = icmp eq i8 %i.al, 0
  br i1 %.not165, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.an = shl nuw nsw i64 %indvars.iv265, 2       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 1
  store i32 %i.aq, ptr %i.ao, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next266 = or disjoint i64 %indvars.iv265, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next266
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %.not165.1 = icmp eq i8 %i.at, 0
  br i1 %.not165.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.av = shl nuw nsw i64 %indvars.iv.next266, 2  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 1
  store i32 %i.ay, ptr %i.aw, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %niter334.next.1 = add i64 %niter334, 2         ; 2 uses
  %niter334.ncmp.1 = icmp eq i64 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !542

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !24
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bd = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  %i.bh = load i32, ptr %i.bg, align 1
  store i32 %i.bh, ptr %i.be, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !24
  %.not.1 = icmp eq i8 %i.bk, 0
  br i1 %.not.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bm = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 1
  store i32 %i.bq, ptr %i.bn, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit327.unr-lcssa, label %bb.m, !llvm.loop !543

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.loopexit, label %.epil.preheader329

.epil.preheader329:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph257
  %indvars.iv265.epil.init = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next266.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod332 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod332)
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv265.epil.init
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24
  %.not165.epil = icmp eq i8 %i.bt, 0
  br i1 %.not165.epil, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.epil.preheader329
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bv = shl nuw nsw i64 %indvars.iv265.epil.init, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 1
  store i32 %i.by, ptr %i.bw, align 1
  br label %.loopexit

.loopexit.loopexit327.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit327.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit327.unr-lcssa ] ; 2 uses
  %lcmp.mod328 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.epil.init
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %.not.epil = icmp eq i8 %i.cb, 0
  br i1 %.not.epil, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.epil.preheader
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.cd = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 1
  store i32 %i.ch, ptr %i.ce, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit327.unr-lcssa, %bb.s, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.r, %.epil.preheader329, %.preheader248, %.preheader247, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.cl = load i32, ptr %1, align 8, !tbaa !34
  %i.cm = shl nsw i32 %i.cl, 2
  %i.cn = load i32, ptr %i.x, align 4, !tbaa !36
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = sext i32 %i.co to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cp, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38
  %.pre275 = load i32, ptr %1, align 8, !tbaa !34
  %.pre277 = load i32, ptr %i.x, align 4, !tbaa !36
  %.pre280 = mul nsw i32 %.pre277, %.pre275
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.f
  %.pre-phi = phi i32 [ %.pre280, %.loopexit ], [ %i.j, %bb.f ]
  %i.cq = phi ptr [ %.pre, %.loopexit ], [ %i.q, %bb.f ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ct = sext i32 %.pre-phi to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cq, i8 0, i64 %i.ct, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 33 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 12 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 28 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 14 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 18 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 34920
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  br label %stbi__skip.exit219

stbi__skip.exit219:                               ; preds = %stbi__skip.exit219.backedge, %bb.t
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !16 ; 3 uses
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !18 ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbi__skip.exit219
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  store ptr %i.dl, ptr %i.cu, align 8, !tbaa !16
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.v:                                             ; preds = %stbi__skip.exit219
  %i.dn = load i32, ptr %i.cw, align 8, !tbaa !13
  %.not.i181 = icmp eq i32 %i.dn, 0
  br i1 %.not.i181, label %stbi__skip.exit219.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.cx, align 8, !tbaa !8
  %i.dp = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.dq = load i32, ptr %i.da, align 4, !tbaa !22
  %i.dr = tail call i32 %i.do(ptr noundef %i.dp, ptr noundef nonnull %i.cz, i32 noundef %i.dq) #37, !inline_history !54 ; 2 uses
  %i.ds = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = load i32, ptr %i.dc, align 8, !tbaa !14
  %i.dz = add nsw i32 %i.dy, %i.dx
  store i32 %i.dz, ptr %i.dc, align 8, !tbaa !14
  %i.ea = icmp eq i32 %i.dr, 0
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cw, align 8, !tbaa !13
  store i8 0, ptr %i.cz, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.y:                                             ; preds = %bb.w
  %i.eb = sext i32 %i.dr to i64
  %i.ec = getelementptr inbounds i8, ptr %i.cz, i64 %i.eb
  %.pre.i = load i8, ptr %i.cz, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.y, %bb.x
  %i.ed = phi i8 [ 0, %bb.x ], [ %.pre.i, %bb.y ]
  %.sink.i.i = phi ptr [ %i.dd, %bb.x ], [ %i.ec, %bb.y ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cv, align 8, !tbaa !18
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.u, %stbi__refill_buffer.exit.i
  %i.ee = phi ptr [ %i.dj, %bb.u ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.ef = phi ptr [ %i.dl, %bb.u ], [ %i.dd, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.dm, %bb.u ], [ %i.ed, %stbi__refill_buffer.exit.i ]
  switch i8 %.0.i, label %stbi__skip.exit219.thread.sink.split [
    i8 44, label %bb.z
    i8 33, label %bb.at
    i8 59, label %stbi__skip.exit219.thread
  ]

bb.z:                                             ; preds = %stbi__get8.exit
  %i.eg = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.eh = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.ei = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  %i.ej = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ek = add nuw nsw i32 %i.ei, %i.eg            ; 2 uses
  %i.el = load i32, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.em = icmp sgt i32 %i.ek, %i.el
  br i1 %i.em, label %stbi__skip.exit219.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = add nuw nsw i32 %i.ej, %i.eh            ; 2 uses
  %i.eo = load i32, ptr %i.cs, align 4, !tbaa !36
  %i.ep = icmp sgt i32 %i.en, %i.eo
  br i1 %i.ep, label %stbi__skip.exit219.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = shl nsw i32 %i.el, 2                    ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 34916 ; 2 uses
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !533
  %i.es = shl nuw nsw i32 %i.eg, 2                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 34892
  store i32 %i.es, ptr %i.et, align 4, !tbaa !530
  %i.eu = mul nsw i32 %i.eq, %i.eh                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 34896
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !534
  %i.ew = shl nuw nsw i32 %i.ek, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 34900
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !529
  %i.ey = mul i32 %i.eq, %i.en                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 34904
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !525
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 34908
  store i32 %i.es, ptr %i.fa, align 4, !tbaa !526
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 34912
  %i.fc = icmp eq i32 %i.ei, 0
  %spec.store.select244 = select i1 %i.fc, i32 %i.ey, i32 %i.eu
  store i32 %spec.store.select244, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %i.cu, align 8, !tbaa !16 ; 3 uses
  %i.fe = load ptr, ptr %i.cv, align 8, !tbaa !18
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fg, ptr %i.cu, align 8, !tbaa !16
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !24
  br label %stbi__get8.exit187
end_hunk_10
