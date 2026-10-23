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
  br i1 %niter.ncmp.7, label %..loopexit235_crit_edge.us.thread.unr-lcssa, label %.preheader234.us, !llvm.loop !181

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
  br i1 %epil.iter.cmp.not, label %..loopexit235_crit_edge.us.thread, label %.preheader234.us.epil, !llvm.loop !182

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
  %niter340.next.7 = add nuw nsw i32 %niter340, 8 ; 2 uses
  %niter340.ncmp.7 = icmp eq i32 %niter340.next.7, %unroll_iter339
  br i1 %niter340.ncmp.7, label %..loopexit235_crit_edge.us.1.thread.unr-lcssa, label %.preheader234.us.1, !llvm.loop !181

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
  br i1 %epil.iter336.cmp.not, label %..loopexit235_crit_edge.us.1.thread, label %.preheader234.us.1.epil, !llvm.loop !183

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
  %niter346.next.7 = add nuw nsw i32 %niter346, 8 ; 2 uses
  %niter346.ncmp.7 = icmp eq i32 %niter346.next.7, %unroll_iter345
  br i1 %niter346.ncmp.7, label %..loopexit235_crit_edge.us.2.thread.unr-lcssa, label %.preheader234.us.2, !llvm.loop !181

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
  br i1 %epil.iter342.cmp.not, label %..loopexit235_crit_edge.us.2.thread, label %.preheader234.us.2.epil, !llvm.loop !184

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
  %niter352.next.7 = add nuw nsw i32 %niter352, 8 ; 2 uses
  %niter352.ncmp.7 = icmp eq i32 %niter352.next.7, %unroll_iter351
  br i1 %niter352.ncmp.7, label %.loopexit.loopexit324.unr-lcssa, label %.preheader234.us.3, !llvm.loop !181

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
  br i1 %niter364.ncmp.7, label %.loopexit225.loopexit322.unr-lcssa, label %.lr.ph245, !llvm.loop !185

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
  br i1 %niter358.ncmp.7, label %.loopexit225.loopexit323.unr-lcssa, label %.lr.ph, !llvm.loop !186

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
  br i1 %exitcond276.not, label %.loopexit225, label %.lr.ph254, !llvm.loop !187

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
  br i1 %exitcond275.not, label %.loopexit225, label %.lr.ph251, !llvm.loop !188

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
begin_hunk_1_@stbi__YCbCr_to_RGB_simd:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbi__setup_jpeg(ptr nofree noundef writeonly captures(none) initializes((18544, 18568)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  store ptr @stbi__idct_simd, ptr %i.a, align 8, !tbaa !79
  store ptr @stbi__YCbCr_to_RGB_simd, ptr %i.b, align 8, !tbaa !80
  store ptr @stbi__resample_row_hv_2_simd, ptr %i.c, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbi__cleanup_jpeg(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %stbi__free_jpeg_components.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %indvars.iv.i ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.h) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.k) #37
  store ptr null, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %i.l, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %.not29.i = icmp eq ptr %i.n, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #37
  store ptr null, ptr %i.m, align 8, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbi__free_jpeg_components.exit, label %bb.b, !llvm.loop !9

stbi__free_jpeg_components.exit:                  ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__blinn_8x8(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = zext i8 %1 to i32
  %i.c = mul nuw nsw i32 %i.b, %i.a
  %i.d = add nuw nsw i32 %i.c, 128                ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = add nuw nsw i32 %i.e, %i.d
  %i.g = lshr i32 %i.f, 8
  %i.h = trunc nuw i32 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: nounwind uwtable
define noundef ptr @load_jpeg_image(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 13 uses
  %5 = alloca [4 x %struct.stbi__resample], align 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %or.cond = icmp ugt i32 %4, 4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.37, ptr %i.d, align 8, !tbaa !39
  br label %stbi__cleanup_jpeg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @stbi__decode_jpeg_image(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %._crit_edge452

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %stbi__cleanup_jpeg.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #37
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %.not28.i.i = icmp eq ptr %i.p, null
  br i1 %.not28.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.p) #37
  store ptr null, ptr %i.o, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr null, ptr %i.q, align 8, !tbaa !120
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126  ; 2 uses
  %.not29.i.i = icmp eq ptr %i.s, null
  br i1 %.not29.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.s) #37
  store ptr null, ptr %i.r, align 8, !tbaa !126
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__cleanup_jpeg.exit, label %bb.e, !llvm.loop !9

._crit_edge452:                                   ; preds = %bb.c
  %.not281 = icmp eq i32 %4, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !78    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !64   ; 10 uses
  %.inv = icmp slt i32 %i.u, 3
  %i.v = select i1 %.inv, i32 1, i32 3
  %i.w = select i1 %.not281, i32 %i.v, i32 %4     ; 9 uses
  %i.x = icmp ne i32 %i.u, 3                      ; 2 uses
  br i1 %i.x, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge452
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.z = load i32, ptr %i.y, align 8, !tbaa !127
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18508
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18504
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !122
  %.not282 = icmp eq i32 %i.af, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %._crit_edge452
  %i.ag = phi i1 [ false, %._crit_edge452 ], [ true, %bb.l ], [ false, %bb.m ], [ %.not282, %bb.n ] ; 3 uses
  %i.ah = icmp samesign ugt i32 %i.w, 2           ; 2 uses
  %or.cond3.not285 = select i1 %i.x, i1 true, i1 %i.ah
  %or.cond5 = select i1 %or.cond3.not285, i1 true, i1 %i.ag
  %. = select i1 %or.cond5, i32 %i.u, i32 1       ; 2 uses
  %i.ai = icmp slt i32 %., 1
  br i1 %i.ai, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp sgt i32 %i.u, 0
  br i1 %i.aj, label %.lr.ph.i.i293, label %stbi__cleanup_jpeg.exit

.lr.ph.i.i293:                                    ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i.i294 = zext nneg i32 %i.u to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i293
  %indvars.iv.i.i295 = phi i64 [ 0, %.lr.ph.i.i293 ], [ %indvars.iv.next.i.i299, %bb.w ] ; 2 uses
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %indvars.iv.i.i295 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !124 ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.an, null
  br i1 %.not.i.i296, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.an) #37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !125 ; 2 uses
  %.not28.i.i297 = icmp eq ptr %i.aq, null
  br i1 %.not28.i.i297, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.aq) #37
  store ptr null, ptr %i.ap, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !120
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i298 = icmp eq ptr %i.at, null
  br i1 %.not29.i.i298, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.at) #37
  store ptr null, ptr %i.as, align 8, !tbaa !126
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i.i299 = add nuw nsw i64 %indvars.iv.i.i295, 1 ; 2 uses
  %exitcond.not.i.i300 = icmp eq i64 %indvars.iv.next.i.i299, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i300, label %stbi__cleanup_jpeg.exit, label %bb.q, !llvm.loop !9

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.au = load i32, ptr %.pre, align 8, !tbaa !55 ; 6 uses
  %i.av = add i32 %i.au, 3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 18056
  %i.az = add i32 %i.au, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %wide.trip.count = zext nneg i32 %. to i64      ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread333
  %indvars.iv = phi i64 [ 0, %bb.x ], [ %indvars.iv.next, %.thread333 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv ; 7 uses
  %i.bc = tail call noalias noundef ptr @malloc(i64 noundef %i.aw) #38 ; 2 uses
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !126
  %.not292.not = icmp eq ptr %i.bc, null
  br i1 %.not292.not, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.bf = icmp sgt i32 %i.u, 0
  br i1 %i.bf, label %.lr.ph.i.i302, label %.thread334

.thread334:                                       ; preds = %bb.z
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bg, align 8, !tbaa !39
  br label %bb.bx

.lr.ph.i.i302:                                    ; preds = %bb.z
  %wide.trip.count.i.i303 = zext nneg i32 %i.u to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i302
  %indvars.iv.i.i304 = phi i64 [ 0, %.lr.ph.i.i302 ], [ %indvars.iv.next.i.i308, %bb.ag ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv.i.i304 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i305, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.bj) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !125 ; 2 uses
  %.not28.i.i306 = icmp eq ptr %i.bm, null
  br i1 %.not28.i.i306, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bm) #37
  store ptr null, ptr %i.bl, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr null, ptr %i.bn, align 8, !tbaa !120
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i307 = icmp eq ptr %i.bp, null
  br i1 %.not29.i.i307, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.bp) #37
  store ptr null, ptr %i.bo, align 8, !tbaa !126
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next.i.i308 = add nuw nsw i64 %indvars.iv.i.i304, 1 ; 2 uses
  %exitcond.not.i.i309 = icmp eq i64 %indvars.iv.next.i.i308, %wide.trip.count.i.i303
  br i1 %exitcond.not.i.i309, label %bb.al, label %bb.aa, !llvm.loop !9

bb.ah:                                            ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bs = load <2 x i32>, ptr %i.ay, align 8, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !40
  %i.bu = sdiv <2 x i32> %i.bs, %i.bt             ; 3 uses
  store <2 x i32> %i.bu, ptr %i.br, align 8, !tbaa !40
  %i.bv = extractelement <2 x i32> %i.bu, i64 1   ; 4 uses
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !420
  %i.by = extractelement <2 x i32> %i.bu, i64 0   ; 3 uses
  %i.bz = add i32 %i.az, %i.by
  %i.ca = udiv i32 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i32 %i.ca, ptr %i.cb, align 16, !tbaa !421
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 0, ptr %i.cc, align 8, !tbaa !422
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !114 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ce, ptr %i.cf, align 16, !tbaa !423
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !424
  switch i32 %i.by, label %.thread332 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %switch.selectcmp = icmp eq i32 %i.bv, 2
  %switch.select = select i1 %switch.selectcmp, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp499 = icmp eq i32 %i.bv, 1
  %switch.select500 = select i1 %switch.selectcmp499, ptr @resample_row_1, ptr %switch.select
  br label %.thread333

bb.aj:                                            ; preds = %bb.ah
  switch i32 %i.bv, label %.thread332 [
    i32 1, label %.thread333
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !81
  br label %.thread333

.thread332:                                       ; preds = %bb.aj, %bb.ah
  br label %.thread333

bb.al:                                            ; preds = %bb.ag
  %i.ci = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.ci, align 8, !tbaa !39
  br label %bb.bx

.thread333:                                       ; preds = %bb.aj, %bb.ai, %bb.ak, %.thread332
  %stbi__resample_row_v_2.sink = phi ptr [ %switch.select500, %bb.ai ], [ %i.ch, %bb.ak ], [ @stbi__resample_row_generic, %.thread332 ], [ @stbi__resample_row_h_2, %bb.aj ]
  store ptr %stbi__resample_row_v_2.sink, ptr %i.bb, align 16, !tbaa !425
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.am, label %bb.y, !llvm.loop !406

bb.am:                                            ; preds = %.thread333
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !54 ; 4 uses
  %i.cl = or i32 %i.au, %i.w
  %or.cond.not.i.i.i = icmp sgt i32 %i.cl, -1
  br i1 %or.cond.not.i.i.i, label %bb.an, label %stbi__malloc_mad3.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.cm = icmp eq i32 %i.au, 0
  br i1 %i.cm, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.an
  %i.cn = udiv i32 2147483647, %i.au
  %.not24.i.i = icmp sgt i32 %i.w, %i.cn
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.an
  %i.co = mul nuw nsw i32 %i.au, %i.w             ; 3 uses
  %i.cp = or i32 %i.ck, %i.co
  %or.cond.not.i10.i.i = icmp sgt i32 %i.cp, -1
  br i1 %or.cond.not.i10.i.i, label %bb.ao, label %stbi__malloc_mad3.exit.thread

bb.ao:                                            ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.cq = icmp eq i32 %i.ck, 0                    ; 2 uses
  br i1 %i.cq, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.ao
  %i.cr = udiv i32 2147483647, %i.ck
  %.not.i.i311 = icmp sgt i32 %i.co, %i.cr
  br i1 %.not.i.i311, label %stbi__malloc_mad3.exit.thread, label %stbi__mad3sizes_valid.exit.i

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.ao
  %i.cs = mul nuw nsw i32 %i.co, %i.ck            ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 2147483647
  br i1 %i.ct, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mad3sizes_valid.exit.i
  %i.cu = add nsw i32 %i.cs, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = tail call noalias noundef ptr @malloc(i64 noundef %i.cv) #38 ; 4 uses
  %.not286 = icmp eq ptr %i.cw, null
  br i1 %.not286, label %stbi__malloc_mad3.exit.thread, label %.preheader356

.preheader356:                                    ; preds = %stbi__malloc_mad3.exit
  br i1 %i.cq, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %.preheader356
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 18508 ; 2 uses
  %i.cy = icmp eq i32 %i.w, 1                     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.da = zext nneg i32 %i.w to i64               ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  br label %.lr.ph.preheader

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %bb.am, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mad3sizes_valid.exit.i, %stbi__malloc_mad3.exit
  %i.de = icmp sgt i32 %i.u, 0
  br i1 %i.de, label %.lr.ph.i.i312, label %stbi__cleanup_jpeg.exit320

.lr.ph.i.i312:                                    ; preds = %stbi__malloc_mad3.exit.thread
  %wide.trip.count.i.i313 = zext nneg i32 %i.u to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.lr.ph.i.i312
  %indvars.iv.i.i314 = phi i64 [ 0, %.lr.ph.i.i312 ], [ %indvars.iv.next.i.i318, %bb.av ] ; 2 uses
  %i.df = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv.i.i314 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !124 ; 2 uses
  %.not.i.i315 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i315, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %i.dh) #37
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 64 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !125 ; 2 uses
  %.not28.i.i316 = icmp eq ptr %i.dk, null
  br i1 %.not28.i.i316, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.dk) #37
  store ptr null, ptr %i.dj, align 8, !tbaa !125
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  store ptr null, ptr %i.dl, align 8, !tbaa !120
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 72 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i317 = icmp eq ptr %i.dn, null
  br i1 %.not29.i.i317, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.dn) #37
  store ptr null, ptr %i.dm, align 8, !tbaa !126
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.i.i318 = add nuw nsw i64 %indvars.iv.i.i314, 1 ; 2 uses
  %exitcond.not.i.i319 = icmp eq i64 %indvars.iv.next.i.i318, %wide.trip.count.i.i313
  br i1 %exitcond.not.i.i319, label %stbi__cleanup_jpeg.exit320, label %bb.ap, !llvm.loop !9

stbi__cleanup_jpeg.exit320:                       ; preds = %bb.av, %stbi__malloc_mad3.exit.thread
  %i.do = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.do, align 8, !tbaa !39
  br label %bb.bx

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph392
  %i.dp = phi ptr [ %.pre, %.lr.ph392 ], [ %i.ou, %.loopexit ]
  %.0264391 = phi i32 [ 0, %.lr.ph392 ], [ %i.ot, %.loopexit ] ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !55
  %i.dr = mul i32 %.0264391, %i.w
  %i.ds = mul i32 %i.dr, %i.dq
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dt ; 12 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvars.iv417 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next418, %bb.ay ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv417 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !420 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !426 ; 2 uses
  %i.ea = ashr i32 %i.dz, 1
  %.not289 = icmp slt i32 %i.dx, %i.ea            ; 2 uses
  %i.eb = load ptr, ptr %i.dv, align 16, !tbaa !425
  %i.ec = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv417 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !126
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  %.in = select i1 %.not289, ptr %i.eg, ptr %i.ef
  %i.eh = load ptr, ptr %.in, align 8, !tbaa !39
  %.in290 = select i1 %.not289, ptr %i.ef, ptr %i.eg
  %i.ei = load ptr, ptr %.in290, align 8, !tbaa !39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ek = load i32, ptr %i.ej, align 16, !tbaa !421
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !427
  %i.en = tail call ptr %i.eb(ptr noundef %i.ee, ptr noundef %i.eh, ptr noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.em) #37
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv417
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !39
  %i.ep = add nsw i32 %i.dx, 1                    ; 2 uses
  store i32 %i.ep, ptr %i.dw, align 4, !tbaa !420
  %.not291 = icmp slt i32 %i.ep, %i.dz
  br i1 %.not291, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph
  store i32 0, ptr %i.dw, align 4, !tbaa !420
  %i.eq = load ptr, ptr %i.ef, align 16, !tbaa !423 ; 2 uses
  store ptr %i.eq, ptr %i.eg, align 8, !tbaa !424
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !422
  %i.et = add nsw i32 %i.es, 1                    ; 2 uses
  store i32 %i.et, ptr %i.er, align 8, !tbaa !422
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !110
  %i.ew = icmp slt i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !115
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.eq, i64 %i.ez
  store ptr %i.fa, ptr %i.ef, align 16, !tbaa !423
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %.lr.ph
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count
  br i1 %exitcond421.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.ay
  br i1 %i.ah, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.a, align 16, !tbaa !39 ; 5 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !78    ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !64
  switch i32 %i.fe, label %.preheader [
    i32 3, label %bb.ba
    i32 4, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.az
  %i.ff = load i32, ptr %i.fc, align 8, !tbaa !55
  %.not404 = icmp eq i32 %i.ff, 0
  br i1 %.not404, label %.loopexit, label %.lr.ph390

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ag, label %.preheader339, label %.loopexit.sink.split

.preheader339:                                    ; preds = %bb.ba
  %i.fg = load i32, ptr %i.fc, align 8, !tbaa !55
  %.not403 = icmp eq i32 %i.fg, 0
  br i1 %.not403, label %.loopexit, label %.lr.ph387

.lr.ph387:                                        ; preds = %.preheader339
  %i.fh = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.fi = load ptr, ptr %i.dc, align 16, !tbaa !39
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph387, %bb.bb
  %indvars.iv446 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next447, %bb.bb ] ; 4 uses
  %.0260386 = phi ptr [ %i.du, %.lr.ph387 ], [ %i.fs, %bb.bb ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv446
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !37
  store i8 %i.fk, ptr %.0260386, align 1, !tbaa !37
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv446
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %.0260386, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv446
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37
  %i.fq = getelementptr inbounds nuw i8, ptr %.0260386, i64 2
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %.0260386, i64 3
  store i8 -1, ptr %i.fr, align 1, !tbaa !37
  %i.fs = getelementptr inbounds nuw i8, ptr %.0260386, i64 %i.da
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.ft = load i32, ptr %i.fc, align 8, !tbaa !55
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next447, %i.fu
  br i1 %i.fv, label %bb.bb, label %.loopexit, !llvm.loop !408

bb.bc:                                            ; preds = %bb.az
  %i.fw = load i32, ptr %i.cx, align 4, !tbaa !82
  switch i32 %i.fw, label %.loopexit.sink.split [
    i32 0, label %.preheader341
    i32 2, label %bb.be
  ]

.preheader341:                                    ; preds = %bb.bc
  %i.fx = load i32, ptr %i.fc, align 8, !tbaa !55
  %.not402 = icmp eq i32 %i.fx, 0
  br i1 %.not402, label %.loopexit, label %.lr.ph384

.lr.ph384:                                        ; preds = %.preheader341
  %i.fy = load ptr, ptr %i.cz, align 8, !tbaa !39
  %i.fz = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.ga = load ptr, ptr %i.dc, align 16, !tbaa !39
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph384, %bb.bd
  %indvars.iv443 = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next444, %bb.bd ] ; 5 uses
  %.1261383 = phi ptr [ %i.du, %.lr.ph384 ], [ %i.hi, %bb.bd ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv443
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv443
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !37
  %i.gf = zext i8 %i.ge to i32
  %i.gg = zext i8 %i.gc to i32                    ; 3 uses
  %i.gh = mul nuw nsw i32 %i.gf, %i.gg
  %i.gi = add nuw nsw i32 %i.gh, 128              ; 2 uses
  %i.gj = lshr i32 %i.gi, 8
  %i.gk = add nuw nsw i32 %i.gj, %i.gi
  %i.gl = lshr i32 %i.gk, 8
  %i.gm = trunc nuw i32 %i.gl to i8
  store i8 %i.gm, ptr %.1261383, align 1, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv443
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !37
  %i.gp = zext i8 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.gp, %i.gg
  %i.gr = add nuw nsw i32 %i.gq, 128              ; 2 uses
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = add nuw nsw i32 %i.gs, %i.gr
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = trunc nuw i32 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %.1261383, i64 1
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv443
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !37
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw nsw i32 %i.gz, %i.gg
  %i.hb = add nuw nsw i32 %i.ha, 128              ; 2 uses
  %i.hc = lshr i32 %i.hb, 8
  %i.hd = add nuw nsw i32 %i.hc, %i.hb
  %i.he = lshr i32 %i.hd, 8
  %i.hf = trunc nuw i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.1261383, i64 2
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !37
  %i.hh = getelementptr inbounds nuw i8, ptr %.1261383, i64 3
  store i8 -1, ptr %i.hh, align 1, !tbaa !37
  %i.hi = getelementptr inbounds nuw i8, ptr %.1261383, i64 %i.da
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.hj = load i32, ptr %i.fc, align 8, !tbaa !55
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next444, %i.hk
  br i1 %i.hl, label %bb.bd, label %.loopexit, !llvm.loop !409

bb.be:                                            ; preds = %bb.bc
  %i.hm = load ptr, ptr %i.dd, align 8, !tbaa !80
  %i.hn = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.ho = load ptr, ptr %i.dc, align 16, !tbaa !39
  %i.hp = load i32, ptr %i.fc, align 8, !tbaa !55
  tail call void %i.hm(ptr noundef nonnull %i.du, ptr noundef %i.fb, ptr noundef %i.hn, ptr noundef %i.ho, i32 noundef %i.hp, i32 noundef %i.w) #37
  %i.hq = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !55
  %.not401 = icmp eq i32 %i.hr, 0
  br i1 %.not401, label %.loopexit, label %.lver.check

.lver.check:                                      ; preds = %bb.be
  %i.hs = load ptr, ptr %i.cz, align 8, !tbaa !39
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lver.check
  %indvars.iv440.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next441.lver.orig, %bb.bf ] ; 2 uses
  %.2262379.lver.orig = phi ptr [ %i.du, %.lver.check ], [ %i.iz, %bb.bf ] ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv440.lver.orig
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !37
  %i.hv = load i8, ptr %.2262379.lver.orig, align 1, !tbaa !37
  %i.hw = xor i8 %i.hv, -1
  %i.hx = zext i8 %i.hw to i32
  %i.hy = zext i8 %i.hu to i32                    ; 3 uses
  %i.hz = mul nuw nsw i32 %i.hx, %i.hy
  %i.ia = add nuw nsw i32 %i.hz, 128              ; 2 uses
  %i.ib = lshr i32 %i.ia, 8
  %i.ic = add nuw nsw i32 %i.ib, %i.ia
  %i.id = lshr i32 %i.ic, 8
  %i.ie = trunc nuw i32 %i.id to i8
  store i8 %i.ie, ptr %.2262379.lver.orig, align 1, !tbaa !37
  %i.if = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 1 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !37
  %i.ih = xor i8 %i.ig, -1
  %i.ii = zext i8 %i.ih to i32
  %i.ij = mul nuw nsw i32 %i.ii, %i.hy
  %i.ik = add nuw nsw i32 %i.ij, 128              ; 2 uses
  %i.il = lshr i32 %i.ik, 8
  %i.im = add nuw nsw i32 %i.il, %i.ik
  %i.in = lshr i32 %i.im, 8
  %i.io = trunc nuw i32 %i.in to i8
  store i8 %i.io, ptr %i.if, align 1, !tbaa !37
  %i.ip = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 2 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !37
  %i.ir = xor i8 %i.iq, -1
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, %i.hy
  %i.iu = add nuw nsw i32 %i.it, 128              ; 2 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = add nuw nsw i32 %i.iv, %i.iu
  %i.ix = lshr i32 %i.iw, 8
  %i.iy = trunc nuw i32 %i.ix to i8
  store i8 %i.iy, ptr %i.ip, align 1, !tbaa !37
  %i.iz = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 %i.da
  %indvars.iv.next441.lver.orig = add nuw nsw i64 %indvars.iv440.lver.orig, 1 ; 2 uses
  %i.ja = load i32, ptr %i.hq, align 8, !tbaa !55
  %i.jb = zext i32 %i.ja to i64
  %i.jc = icmp samesign ult i64 %indvars.iv.next441.lver.orig, %i.jb
  br i1 %i.jc, label %bb.bf, label %.loopexit, !llvm.loop !410

.lr.ph390:                                        ; preds = %.preheader, %.lr.ph390
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.lr.ph390 ], [ 0, %.preheader ] ; 2 uses
  %.3263389 = phi ptr [ %i.ji, %.lr.ph390 ], [ %i.du, %.preheader ] ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv449
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !37  ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.3263389, i64 2
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %.3263389, i64 1
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !37
  store i8 %i.je, ptr %.3263389, align 1, !tbaa !37
  %i.jh = getelementptr inbounds nuw i8, ptr %.3263389, i64 3
  store i8 -1, ptr %i.jh, align 1, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %.3263389, i64 %i.da
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.jj = load i32, ptr %i.fc, align 8, !tbaa !55
  %i.jk = zext i32 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv.next450, %i.jk
  br i1 %i.jl, label %.lr.ph390, label %.loopexit, !llvm.loop !411

end_hunk_1
