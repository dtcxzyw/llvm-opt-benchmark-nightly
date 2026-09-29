Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__psd_load:bb.a
  store ptr @.str.86, ptr %i.as, align 8, !tbaa !39
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
  store ptr @.str.47, ptr %i.ay, align 8, !tbaa !39
  br label %bb.bg

bb.s:                                             ; preds = %bb.q
  %i.az = tail call i32 @stbi__mad3sizes_valid(i32 noundef 4, i32 noundef %i.ak, i32 noundef %i.ag, i32 noundef 0)
  %.not208 = icmp eq i32 %i.az, 0
  br i1 %.not208, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.ba, align 8, !tbaa !39
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
  store i32 16, ptr %5, align 4, !tbaa !42
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
  store ptr @.str.1, ptr %i.bj, align 8, !tbaa !39
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
  store i8 0, ptr %.0193237.us, align 1, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 4
  store i8 0, ptr %i.ce, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 8
  store i8 0, ptr %i.cf, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 12
  store i8 0, ptr %i.cg, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 16
  store i8 0, ptr %i.ch, align 1, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 20
  store i8 0, ptr %i.ci, align 1, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 24
  store i8 0, ptr %i.cj, align 1, !tbaa !37
  %i.ck = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 28
  store i8 0, ptr %i.ck, align 1, !tbaa !37
  %i.cl = getelementptr inbounds nuw i8, ptr %.0193237.us, i64 32 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..loopexit235_crit_edge.us.thread.unr-lcssa, label %.preheader234.us, !llvm.loop !180

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
  store i8 0, ptr %.0193237.us.epil, align 1, !tbaa !37
  %i.cm = getelementptr inbounds nuw i8, ptr %.0193237.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit235_crit_edge.us.thread, label %.preheader234.us.epil, !llvm.loop !181

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
  store i8 0, ptr %.0193237.us.1, align 1, !tbaa !37
  %i.cs = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 4
  store i8 0, ptr %i.cs, align 1, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 8
  store i8 0, ptr %i.ct, align 1, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 12
  store i8 0, ptr %i.cu, align 1, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 16
  store i8 0, ptr %i.cv, align 1, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 20
  store i8 0, ptr %i.cw, align 1, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 24
  store i8 0, ptr %i.cx, align 1, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 28
  store i8 0, ptr %i.cy, align 1, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %.0193237.us.1, i64 32 ; 2 uses
  %niter340.next.7 = add i32 %niter340, 8         ; 2 uses
  %niter340.ncmp.7 = icmp eq i32 %niter340.next.7, %unroll_iter339
  br i1 %niter340.ncmp.7, label %..loopexit235_crit_edge.us.1.thread.unr-lcssa, label %.preheader234.us.1, !llvm.loop !180

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
  store i8 0, ptr %.0193237.us.1.epil, align 1, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %.0193237.us.1.epil, i64 4
  %epil.iter336.next = add i32 %epil.iter336, 1   ; 2 uses
  %epil.iter336.cmp.not = icmp eq i32 %epil.iter336.next, %xtraiter335
  br i1 %epil.iter336.cmp.not, label %..loopexit235_crit_edge.us.1.thread, label %.preheader234.us.1.epil, !llvm.loop !182

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
  store i8 0, ptr %.0193237.us.2, align 1, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 4
  store i8 0, ptr %i.dg, align 1, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 8
  store i8 0, ptr %i.dh, align 1, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 12
  store i8 0, ptr %i.di, align 1, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 16
  store i8 0, ptr %i.dj, align 1, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 20
  store i8 0, ptr %i.dk, align 1, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 24
  store i8 0, ptr %i.dl, align 1, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 28
  store i8 0, ptr %i.dm, align 1, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %.0193237.us.2, i64 32 ; 2 uses
  %niter346.next.7 = add i32 %niter346, 8         ; 2 uses
  %niter346.ncmp.7 = icmp eq i32 %niter346.next.7, %unroll_iter345
  br i1 %niter346.ncmp.7, label %..loopexit235_crit_edge.us.2.thread.unr-lcssa, label %.preheader234.us.2, !llvm.loop !180

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
  store i8 0, ptr %.0193237.us.2.epil, align 1, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %.0193237.us.2.epil, i64 4
  %epil.iter342.next = add i32 %epil.iter342, 1   ; 2 uses
  %epil.iter342.cmp.not = icmp eq i32 %epil.iter342.next, %xtraiter341
  br i1 %epil.iter342.cmp.not, label %..loopexit235_crit_edge.us.2.thread, label %.preheader234.us.2.epil, !llvm.loop !183

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
  store i8 -1, ptr %.0193237.us.3, align 1, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 4
  store i8 -1, ptr %i.du, align 1, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 8
  store i8 -1, ptr %i.dv, align 1, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 12
  store i8 -1, ptr %i.dw, align 1, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 16
  store i8 -1, ptr %i.dx, align 1, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 20
  store i8 -1, ptr %i.dy, align 1, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 24
  store i8 -1, ptr %i.dz, align 1, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 28
  store i8 -1, ptr %i.ea, align 1, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %.0193237.us.3, i64 32 ; 2 uses
  %niter352.next.7 = add i32 %niter352, 8         ; 2 uses
  %niter352.ncmp.7 = icmp eq i32 %niter352.next.7, %unroll_iter351
  br i1 %niter352.ncmp.7, label %.loopexit.loopexit324.unr-lcssa, label %.preheader234.us.3, !llvm.loop !180

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
  store ptr @.str.87, ptr %i.ee, align 8, !tbaa !39
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
  store i16 %i.em, ptr %.0192243, align 2, !tbaa !74
  %i.eo = getelementptr inbounds nuw i8, ptr %.0192243, i64 8
  store i16 %i.em, ptr %i.eo, align 2, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %.0192243, i64 16
  store i16 %i.em, ptr %i.ep, align 2, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %.0192243, i64 24
  store i16 %i.em, ptr %i.eq, align 2, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %.0192243, i64 32
  store i16 %i.em, ptr %i.er, align 2, !tbaa !74
  %i.es = getelementptr inbounds nuw i8, ptr %.0192243, i64 40
  store i16 %i.em, ptr %i.es, align 2, !tbaa !74
  %i.et = getelementptr inbounds nuw i8, ptr %.0192243, i64 48
  store i16 %i.em, ptr %i.et, align 2, !tbaa !74
  %i.eu = getelementptr inbounds nuw i8, ptr %.0192243, i64 56
  store i16 %i.em, ptr %i.eu, align 2, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %.0192243, i64 64 ; 2 uses
  %niter364.next.7 = add nuw nsw i32 %niter364, 8 ; 2 uses
  %niter364.ncmp.7 = icmp eq i32 %niter364.next.7, %unroll_iter363
  br i1 %niter364.ncmp.7, label %.loopexit225.loopexit322.unr-lcssa, label %.lr.ph245, !llvm.loop !184

bb.am:                                            ; preds = %bb.ak
  %i.ew = sext i1 %i.el to i8                     ; 9 uses
  br i1 %i.bl, label %.lr.ph.preheader, label %.loopexit225

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %.0195, i64 %indvars.iv ; 2 uses
  br i1 %i.bx, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0191241 = phi ptr [ %i.ff, %.lr.ph ], [ %i.ex, %.lr.ph.preheader ] ; 9 uses
  %niter358 = phi i32 [ %niter358.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  store i8 %i.ew, ptr %.0191241, align 1, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %.0191241, i64 4
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %.0191241, i64 8
  store i8 %i.ew, ptr %i.ez, align 1, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %.0191241, i64 12
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %.0191241, i64 16
  store i8 %i.ew, ptr %i.fb, align 1, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %.0191241, i64 20
  store i8 %i.ew, ptr %i.fc, align 1, !tbaa !37
  %i.fd = getelementptr inbounds nuw i8, ptr %.0191241, i64 24
  store i8 %i.ew, ptr %i.fd, align 1, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %.0191241, i64 28
  store i8 %i.ew, ptr %i.fe, align 1, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %.0191241, i64 32 ; 2 uses
  %niter358.next.7 = add nuw nsw i32 %niter358, 8 ; 2 uses
  %niter358.ncmp.7 = icmp eq i32 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %.loopexit225.loopexit323.unr-lcssa, label %.lr.ph, !llvm.loop !185

bb.an:                                            ; preds = %bb.aj
  %i.fg = load i32, ptr %5, align 4, !tbaa !42
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
  store i16 %i.fk, ptr %.0190252, align 2, !tbaa !74
  %i.fl = add nuw nsw i32 %.3253, 1               ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0190252, i64 8
  %exitcond276.not = icmp eq i32 %i.fl, %.fr260
  br i1 %exitcond276.not, label %.loopexit225, label %.lr.ph254, !llvm.loop !186

bb.ap:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %.0195, i64 %indvars.iv ; 2 uses
  br i1 %i.bc, label %.preheader226, label %.preheader228

.preheader228:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph248.preheader, label %.loopexit225

.lr.ph248.preheader:                              ; preds = %.preheader228
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !29
  %.pre288 = load ptr, ptr %i.bn, align 8, !tbaa !31
  br label %.lr.ph248

.preheader226:                                    ; preds = %bb.ap
  br i1 %i.bl, label %.lr.ph251, label %.loopexit225

.lr.ph251:                                        ; preds = %.preheader226, %.lr.ph251
  %.4250 = phi i32 [ %i.fr, %.lr.ph251 ], [ 0, %.preheader226 ]
  %.0188249 = phi ptr [ %i.fs, %.lr.ph251 ], [ %i.fn, %.preheader226 ] ; 2 uses
  %i.fo = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.fp = lshr i32 %i.fo, 8
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %.0188249, align 1, !tbaa !37
  %i.fr = add nuw nsw i32 %.4250, 1               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0188249, i64 4
  %exitcond275.not = icmp eq i32 %i.fr, %.fr260
  br i1 %exitcond275.not, label %.loopexit225, label %.lr.ph251, !llvm.loop !187

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %stbi__get8.exit
  %i.ft = phi ptr [ %i.gp, %stbi__get8.exit ], [ %.pre288, %.lr.ph248.preheader ] ; 3 uses
  %i.fu = phi ptr [ %i.gq, %stbi__get8.exit ], [ %.pre, %.lr.ph248.preheader ] ; 4 uses
  %.5247 = phi i32 [ %i.gr, %stbi__get8.exit ], [ 0, %.lr.ph248.preheader ]
  %.1189246 = phi ptr [ %i.gs, %stbi__get8.exit ], [ %i.fn, %.lr.ph248.preheader ] ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.ft
  br i1 %i.fv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph248
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fw, ptr %i.bm, align 8, !tbaa !29
  %i.fx = load i8, ptr %i.fu, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.ar:                                            ; preds = %.lr.ph248
  %i.fy = load i32, ptr %i.bo, align 8, !tbaa !26
  %.not.i221 = icmp eq i32 %i.fy, 0
  br i1 %.not.i221, label %stbi__get8.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ga = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.gb = load i32, ptr %i.br, align 4, !tbaa !35
  %i.gc = tail call i32 %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.bq, i32 noundef %i.gb) #37, !inline_history !65 ; 2 uses
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.ge = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = trunc i64 %i.gh to i32
end_hunk_0
