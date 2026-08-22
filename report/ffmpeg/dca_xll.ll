Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_xll?download=true
inline.NumInlined: 155
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@chs_filter_band_data:bb.a
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !79
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !79
  tail call void %i.el(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.ei, i64 noundef %i.ee) #12
  %.pre = load i32, ptr %1, align 16, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eq = phi i32 [ %.pre, %bb.i ], [ %i.eg, %bb.h ] ; 3 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.er = sdiv i32 %i.eq, 2
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next176, %i.es
  br i1 %i.et, label %bb.h, label %.preheader108, !llvm.loop !183

.lr.ph139:                                        ; preds = %.preheader108
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.ev = zext nneg i32 %.lcssa to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %i.eu, i64 %i.ew, i1 false), !tbaa !79
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 704 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %wide.trip.count184 = zext nneg i32 %.lcssa to i64 ; 2 uses
  %xtraiter218 = and i64 %wide.trip.count184, 3   ; 3 uses
  %i.ez = icmp ult i32 %.lcssa, 4
  br i1 %i.ez, label %.epil.preheader217, label %.lr.ph139.new

.lr.ph139.new:                                    ; preds = %.lr.ph139
  %unroll_iter222 = and i64 %wide.trip.count184, 2147483644
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph139.new
  %indvars.iv181 = phi i64 [ 0, %.lr.ph139.new ], [ %indvars.iv.next182.3, %bb.k ] ; 6 uses
  %niter223 = phi i64 [ 0, %.lr.ph139.new ], [ %niter223.next.3, %bb.k ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv181
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !79
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv181
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !76
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fe
  store ptr %i.fb, ptr %i.ff, align 8, !tbaa !79
  %indvars.iv.next182 = or disjoint i64 %indvars.iv181, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next182
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next182
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !76
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fk
  store ptr %i.fh, ptr %i.fl, align 8, !tbaa !79
  %indvars.iv.next182.1 = or disjoint i64 %indvars.iv181, 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next182.1
  %i.fn = load ptr, ptr %i.fm, align 16, !tbaa !79
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next182.1
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !76
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fq
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !79
  %indvars.iv.next182.2 = or disjoint i64 %indvars.iv181, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next182.2
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !79
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next182.2
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !76
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fw
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !79
  %indvars.iv.next182.3 = add nuw nsw i64 %indvars.iv181, 4 ; 2 uses
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %._crit_edge140.loopexit.unr-lcssa, label %bb.k, !llvm.loop !184

._crit_edge140.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod220.not, label %._crit_edge140, label %.epil.preheader217

.epil.preheader217:                               ; preds = %._crit_edge140.loopexit.unr-lcssa, %.lr.ph139
  %indvars.iv181.epil.init = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next182.3, %._crit_edge140.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader217
  %indvars.iv181.epil = phi i64 [ %indvars.iv181.epil.init, %.epil.preheader217 ], [ %indvars.iv.next182.epil, %bb.l ] ; 3 uses
  %epil.iter219 = phi i64 [ 0, %.epil.preheader217 ], [ %epil.iter219.next, %bb.l ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv181.epil
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !79
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv181.epil
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !76
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.gc
  store ptr %i.fz, ptr %i.gd, align 8, !tbaa !79
  %indvars.iv.next182.epil = add nuw nsw i64 %indvars.iv181.epil, 1
  %epil.iter219.next = add i64 %epil.iter219, 1   ; 2 uses
  %epil.iter219.cmp.not = icmp eq i64 %epil.iter219.next, %xtraiter218
  br i1 %epil.iter219.cmp.not, label %._crit_edge140, label %bb.l, !llvm.loop !185

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit.unr-lcssa, %bb.l, %.preheader108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge140, %._crit_edge131
  %i.ge = phi i32 [ %.lcssa, %._crit_edge140 ], [ %i.dy, %._crit_edge131 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.gg = load i32, ptr %i.gf, align 16, !tbaa !108
  %i.gh = icmp eq i32 %i.gg, 1
  %i.gi = icmp sgt i32 %i.ge, 0
  %or.cond = and i1 %i.gh, %i.gi
  br i1 %or.cond, label %.lr.ph142, label %.loopexit

.lr.ph142:                                        ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 704 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8744 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 5 uses
  %wide.trip.count189 = zext nneg i32 %i.ge to i64 ; 2 uses
  %xtraiter225 = and i64 %wide.trip.count189, 3   ; 3 uses
  %i.gm = icmp ult i32 %i.ge, 4
  br i1 %i.gm, label %.epil.preheader224, label %.lr.ph142.new

.lr.ph142.new:                                    ; preds = %.lr.ph142
  %unroll_iter229 = and i64 %wide.trip.count189, 2147483644
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph142.new
  %indvars.iv186 = phi i64 [ 0, %.lr.ph142.new ], [ %indvars.iv.next187.3, %bb.n ] ; 6 uses
  %niter230 = phi i64 [ 0, %.lr.ph142.new ], [ %niter230.next.3, %bb.n ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv186
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !79
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv186
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !76
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gr
  store ptr %i.go, ptr %i.gs, align 8, !tbaa !79
  %indvars.iv.next187 = or disjoint i64 %indvars.iv186, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next187
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !79
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next187
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !76
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gx
  store ptr %i.gu, ptr %i.gy, align 8, !tbaa !79
  %indvars.iv.next187.1 = or disjoint i64 %indvars.iv186, 2 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next187.1
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !79
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next187.1
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !76
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.hd
  store ptr %i.ha, ptr %i.he, align 8, !tbaa !79
  %indvars.iv.next187.2 = or disjoint i64 %indvars.iv186, 3 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next187.2
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next187.2
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !76
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.hj
  store ptr %i.hg, ptr %i.hk, align 8, !tbaa !79
  %indvars.iv.next187.3 = add nuw nsw i64 %indvars.iv186, 4 ; 2 uses
  %niter230.next.3 = add i64 %niter230, 4         ; 2 uses
  %niter230.ncmp.3 = icmp eq i64 %niter230.next.3, %unroll_iter229
  br i1 %niter230.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !186

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod227.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod227.not, label %.loopexit, label %.epil.preheader224

.epil.preheader224:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph142
  %indvars.iv186.epil.init = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next187.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod228 = icmp ne i64 %xtraiter225, 0
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader224
  %indvars.iv186.epil = phi i64 [ %indvars.iv186.epil.init, %.epil.preheader224 ], [ %indvars.iv.next187.epil, %bb.o ] ; 3 uses
  %epil.iter226 = phi i64 [ 0, %.epil.preheader224 ], [ %epil.iter226.next, %bb.o ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv186.epil
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !79
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv186.epil
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !76
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.hp
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !79
  %indvars.iv.next187.epil = add nuw nsw i64 %indvars.iv186.epil, 1
  %epil.iter226.next = add i64 %epil.iter226, 1   ; 2 uses
  %epil.iter226.cmp.not = icmp eq i64 %epil.iter226.next, %xtraiter225
  br i1 %epil.iter226.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !187

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.m
  ret void
}

declare i32 @ff_dca_set_channel_layout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_dca_downmix_to_stereo_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_side_data_update_matrix_encoding(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dca_xll_flush(ptr nofree noundef writeonly captures(none) initializes((8712, 8720)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8712
  store i32 0, ptr %i.a, align 8, !tbaa !19
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8716
  store i32 0, ptr %1, align 4, !tbaa !20
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_dca_xll_close(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.01317 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ]
  %.01416 = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01416, i64 2832
  %i.c = getelementptr inbounds nuw i8, ptr %.01416, i64 2816
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 0, ptr %i.e, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !188

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %.01317, 1               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01416, i64 2864
  %exitcond19.not = icmp eq i32 %i.f, 3
  br i1 %exitcond19.not, label %bb.d, label %.preheader, !llvm.loop !189

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8672
  tail call void @av_freep(ptr noundef nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8680
  store i32 0, ptr %i.i, align 8, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8704
  tail call void @av_freep(ptr noundef nonnull %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8712
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8716
  store i32 0, ptr %1, align 4, !tbaa !20
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @parse_frame(ptr noundef initializes((8, 28)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %or.cond.i = icmp ugt i32 %2, 268435455
  %i.b = shl nuw nsw i32 %2, 3                    ; 2 uses
  %i.c = select i1 %or.cond.i, i32 -8, i32 %i.b   ; 4 uses
  %or.cond.i.i = icmp ult i32 %i.c, 2147483135    ; 2 uses
  %i.d = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.d, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %1, ptr null ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.c, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.a, align 8, !tbaa !191
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  store i32 %.013.i.i, ptr %i.e, align 4, !tbaa !192
  %i.f = add nuw nsw i32 %.013.i.i, 8             ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 53 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 154 uses
  store i32 0, ptr %i.h, align 8, !tbaa !194
  br i1 %or.cond3.i.i, label %bb.b, label %parse_common_header.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 1, !tbaa !195
  %i.j = and i32 %i.i, 65535
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.f, i32 16) ; 3 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !194
  %i.m = lshr exact i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 1, !tbaa !195
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = lshr i32 %i.q, 16
  %i.s = add nuw nsw i32 %i.l, 16
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.s) ; 4 uses
  store i32 %i.t, ptr %i.h, align 8, !tbaa !194
  %i.u = or disjoint i32 %i.r, %i.k
  %.not.i = icmp eq i32 %i.u, 1101174087
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.v, i32 noundef 40, ptr noundef nonnull @.str.1) #12
  br label %parse_common_header.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.w = lshr i32 %i.t, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !195
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = and i32 %i.t, 7
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 28                      ; 2 uses
  %i.ae = add nuw nsw i32 %i.t, 4
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ae) ; 4 uses
  store i32 %i.af, ptr %i.h, align 8, !tbaa !194
  %.not79.i = icmp eq i32 %i.ad, 0
  br i1 %.not79.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nuw nsw i32 %i.ad, 1
  %i.ah = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.ah, ptr noundef nonnull @.str.2, i32 noundef %i.ag) #12
  br label %parse_common_header.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ai = lshr i32 %i.af, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !195
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = and i32 %i.af, 7
  %i.ao = shl i32 %i.am, %i.an                    ; 2 uses
  %i.ap = add nuw nsw i32 %i.af, 8
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ap) ; 4 uses
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !194
  %i.ar = load ptr, ptr %0, align 16, !tbaa !28   ; 32 uses
  %i.as = lshr i32 %i.ao, 21                      ; 2 uses
  %i.at = and i32 %i.as, 2040                     ; 3 uses
  %i.au = add nuw nsw i32 %i.at, 8                ; 3 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 32
  %.val.i = load ptr, ptr %i.av, align 8, !tbaa !29 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.ar, i64 528    ; 2 uses
  %.val68.i = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ax = and i32 %.val68.i, 65537
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %ff_dca_check_crc.exit.thread74.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp samesign uge i32 %i.at, %i.c
  %i.az = icmp ult i32 %i.ao, 83886080
  %or.cond80.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond80.i, label %ff_dca_check_crc.exit.thread.i, label %ff_dca_check_crc.exit.i

ff_dca_check_crc.exit.i:                          ; preds = %bb.g
  %i.ba = add nsw i32 %i.as, -24
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 77920
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = lshr i32 %i.ba, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = tail call i32 @av_crc(ptr noundef %i.bc, i32 noundef 65535, ptr noundef nonnull %i.bd, i64 noundef %i.bf) #14
  %.not18.i.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not18.i.not.i, label %ff_dca_check_crc.exit.thread74.i, label %ff_dca_check_crc.exit.thread.i

ff_dca_check_crc.exit.thread.i:                   ; preds = %ff_dca_check_crc.exit.i, %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ar, i32 noundef 16, ptr noundef nonnull @.str.3) #12
  br label %parse_common_header.exit.thread

ff_dca_check_crc.exit.thread74.i:                 ; preds = %ff_dca_check_crc.exit.i, %bb.f
  %i.bh = lshr i32 %i.aq, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !195
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = and i32 %i.aq, 7
  %i.bn = shl i32 %i.bl, %i.bm                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 27                      ; 4 uses
  %i.bp = add nuw nsw i32 %i.aq, 5
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.bp) ; 5 uses
  store i32 %i.bq, ptr %i.h, align 16, !tbaa !194
  %i.br = icmp ult i32 %i.bn, -939524096
  %i.bs = lshr i32 %i.bq, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !195
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.bq, 7
  %i.by = shl i32 %i.bw, %i.bx                    ; 2 uses
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ff_dca_check_crc.exit.thread74.i
  %i.bz = xor i32 %i.bo, 31
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add nuw nsw i32 %i.bq, 1
  %i.cc = add nuw nsw i32 %i.cb, %i.bo
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cc)
  br label %get_bits_long.exit.i

bb.i:                                             ; preds = %ff_dca_check_crc.exit.thread74.i
  %i.ce = lshr i32 %i.by, 16
  %i.cf = add nuw nsw i32 %i.bq, 16
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cf) ; 4 uses
  store i32 %i.cg, ptr %i.h, align 16, !tbaa !194
  %i.ch = add nsw i32 %i.bo, -15                  ; 2 uses
  %i.ci = shl nuw i32 %i.ce, %i.ch
  %i.cj = lshr i32 %i.cg, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !195
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = and i32 %i.cg, 7
  %i.cp = shl i32 %i.cn, %i.co
  %i.cq = sub nuw nsw i32 47, %i.bo
  %i.cr = lshr i32 %i.cp, %i.cq
  %i.cs = add nuw nsw i32 %i.ch, %i.cg
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cs)
  %i.cu = or i32 %i.cr, %i.ci
  br label %get_bits_long.exit.i

get_bits_long.exit.i:                             ; preds = %bb.i, %bb.h
  %i.cv = phi i32 [ %i.cd, %bb.h ], [ %i.ct, %bb.i ] ; 4 uses
  %.0.i70.i = phi i32 [ %i.ca, %bb.h ], [ %i.cu, %bb.i ] ; 4 uses
  store i32 %i.cv, ptr %i.h, align 16, !tbaa !194
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 %.0.i70.i, ptr %i.cw, align 16, !tbaa !24
  %or.cond.i33 = icmp ugt i32 %.0.i70.i, 245759
  br i1 %or.cond.i33, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_bits_long.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ar, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %.0.i70.i) #12
  br label %parse_common_header.exit.thread

bb.k:                                             ; preds = %get_bits_long.exit.i
  %i.cx = add nuw nsw i32 %.0.i70.i, 1
  store i32 %i.cx, ptr %i.cw, align 16, !tbaa !24
  %i.cy = lshr i32 %i.cv, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 1, !tbaa !195
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = and i32 %i.cv, 7
  %i.de = shl i32 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr i32 %i.de, 28
  %i.dg = add nuw nsw i32 %i.cv, 4
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.dg) ; 4 uses
  store i32 %i.dh, ptr %i.h, align 16, !tbaa !194
end_hunk_0
