Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/cdf?download=true
inline.NumInlined: 106
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cdf_read_dir:bb.a
  %i.co = load i32, ptr %i.cn, align 1
  store i32 %i.co, ptr %i.cm, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 124
  %i.cr = load i32, ptr %i.cq, align 1
  store i32 %i.cr, ptr %i.cp, align 8
  %i.cs = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.l, %.preheader93
  %.1.lcssa = phi i64 [ 1, %.preheader93 ], [ %i.af, %bb.l ]
  %i.ct = load ptr, ptr %2, align 8, !tbaa !33
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.am
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  %i.cw = add nuw i64 %.082100, 1                 ; 2 uses
  %exitcond112.not = icmp eq i64 %i.cw, %.016.i.ph
  br i1 %exitcond112.not, label %.loopexit, label %bb.e, !llvm.loop !61

.loopexit:                                        ; preds = %._crit_edge, %.preheader94
  tail call void @_efree(ptr noundef nonnull %i.ab) #19
  br label %bb.m

cdf_read_sector.exit.thread:                      ; preds = %bb.j, %bb.f, %cdf_read_sector.exit, %bb.e, %bb.k
  %i.cx = load ptr, ptr %3, align 8, !tbaa !39
  tail call void @_efree(ptr noundef %i.cx) #19
  tail call void @_efree(ptr noundef nonnull %i.ab) #19
  %i.cy = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.cy, align 4, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %cdf_count_chain.exit, %.loopexit95, %cdf_read_sector.exit.thread, %.loopexit, %bb.d
  %.084 = phi i32 [ 0, %.loopexit ], [ -1, %cdf_count_chain.exit ], [ -1, %bb.d ], [ -1, %cdf_read_sector.exit.thread ], [ -1, %.loopexit95 ]
  ret i32 %.084
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_ssat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 8)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !26
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !64   ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = mul i64 %i.i, %i.e
  %i.k = lshr i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp eq i32 %i.g, -2
  br i1 %i.m, label %.loopexit44, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.n = icmp sgt i32 %i.g, -1
  br i1 %i.n, label %.lr.ph.split.i, label %cdf_count_chain.exit

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.b
  %.022.i = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.01720.i = phi i32 [ %i.s, %bb.b ], [ %i.g, %.preheader.i ] ; 2 uses
  %i.o = icmp samesign ult i64 %.022.i, 10000
  %.not.i = icmp slt i32 %.01720.i, %i.l
  %or.cond.i = select i1 %i.o, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %cdf_count_chain.exit

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !33
  %i.q = zext nneg i32 %.01720.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %i.t = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %i.u = icmp sgt i32 %i.s, -1
  br i1 %i.u, label %.lr.ph.split.i, label %.loopexit44, !llvm.loop !0

cdf_count_chain.exit:                             ; preds = %.lr.ph.split.i, %.preheader.i
  %i.v = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 22, ptr %i.v, align 4, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.w, align 8, !tbaa !32
  br label %cdf_read_sector.exit.thread.sink.split

.loopexit44:                                      ; preds = %bb.b, %bb.a
  %.016.i.ph = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.016.i.ph, ptr %i.x, align 8, !tbaa !32
  %i.y = tail call noalias ptr @_ecalloc(i64 noundef %.016.i.ph, i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !33
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %cdf_read_sector.exit.thread, label %.preheader

.preheader:                                       ; preds = %.loopexit44
  %i.aa = icmp sgt i32 %i.g, -1
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.ad = add nuw nsw i64 %.0314966, 1            ; 2 uses
  %exitcond = icmp eq i64 %i.ad, 10000
  br i1 %exitcond, label %.loopexit43.loopexit, label %bb.d, !llvm.loop !63

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0314966 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.c ] ; 3 uses
  %.05065 = phi i32 [ %i.g, %.lr.ph ], [ %i.bc, %bb.c ]
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !32
  %.not = icmp ult i64 %.0314966, %i.ae
  br i1 %.not, label %bb.e, label %.loopexit43.loopexit

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr %i.a, align 2, !tbaa !26
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext nneg i32 %.05065 to i64            ; 3 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %cdf_read_sector.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = mul i64 %.0314966, %i.e
  %i.al = load ptr, ptr %3, align 8, !tbaa !33
  %i.am = add nuw nsw i64 %i.aj, 1
  %i.an = mul nsw i64 %i.am, %i.ai                ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i64 %i.an, %i.e
  %i.ar = load i64, ptr %i.ac, align 8, !tbaa !22
  %.not24.i.i = icmp ult i64 %i.ar, %i.aq
  br i1 %.not24.i.i, label %bb.h, label %cdf_read_sector.exit.thread40

cdf_read_sector.exit.thread40:                    ; preds = %bb.g
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i64 %i.e, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = load i32, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call i64 @lseek(i32 noundef %i.at, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %i.an, i32 noundef 0) #19
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %cdf_read_sector.exit.thread, label %cdf_read_sector.exit

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call ptr @__errno_location() #20
  br label %cdf_read_sector.exit.thread.sink.split

cdf_read_sector.exit:                             ; preds = %bb.i
  %i.ay = load i32, ptr %0, align 8, !tbaa !23
  %i.az = tail call i64 @read(i32 noundef %i.ay, ptr noundef %i.ao, i64 noundef %i.e) #19
  %.not25.i.i = icmp eq i64 %i.az, %i.e
  br i1 %.not25.i.i, label %bb.k, label %cdf_read_sector.exit.thread

bb.k:                                             ; preds = %cdf_read_sector.exit.thread40, %cdf_read_sector.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aj
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.c, label %.loopexit, !llvm.loop !63

.loopexit43.loopexit:                             ; preds = %bb.c, %bb.d
  %.pre = tail call ptr @__errno_location() #20
  br label %cdf_read_sector.exit.thread.sink.split

cdf_read_sector.exit.thread.sink.split:           ; preds = %cdf_count_chain.exit, %.loopexit43.loopexit, %bb.j
  %.sink = phi ptr [ %i.ax, %bb.j ], [ %.pre, %.loopexit43.loopexit ], [ %i.v, %cdf_count_chain.exit ]
  store i32 22, ptr %.sink, align 4, !tbaa !28
  br label %cdf_read_sector.exit.thread

cdf_read_sector.exit.thread:                      ; preds = %bb.i, %bb.e, %cdf_read_sector.exit, %cdf_read_sector.exit.thread.sink.split, %.loopexit44
  %i.be = load ptr, ptr %3, align 8, !tbaa !33
  tail call void @_efree(ptr noundef %i.be) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader, %cdf_read_sector.exit.thread
  %.033 = phi i32 [ -1, %cdf_read_sector.exit.thread ], [ 0, %.preheader ], [ 0, %bb.k ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_short_stream(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #6 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %i.c, i64 %.023
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  %i.f = load i8, ptr %i.e, align 2, !tbaa !42
  %i.g = icmp eq i8 %i.f, 5
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.b
  %i.i = icmp eq i64 %.023, %i.b
  br i1 %i.i, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %3, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %.023 ; 3 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i32 @cdf_read_long_sector_chain(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.m, i64 noundef %i.q, ptr noundef %4)
  br label %bb.f

._crit_edge.thread:                               ; preds = %bb.c, %bb.a, %bb.d, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call void @_efree(ptr noundef null) #19
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %bb.e
  %.021 = phi i32 [ 0, %._crit_edge.thread ], [ %i.r, %bb.e ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_doc_summary_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) initializes((0, 8)) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @cdf_find_stream(ptr noundef readonly %5, ptr noundef nonnull @.str.1, i32 noundef 2) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  br label %cdf_read_user_stream.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !39
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [136 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @cdf_read_short_sector_chain(ptr noundef nonnull readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %4, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %6)
  br label %cdf_read_user_stream.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call i32 @cdf_read_long_sector_chain(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %6)
  br label %cdf_read_user_stream.exit

cdf_read_user_stream.exit:                        ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i32 [ -1, %bb.b ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_user_stream(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @cdf_find_stream(ptr noundef %5, ptr noundef %6, i32 noundef 2) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  br label %cdf_read_sector_chain.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !39
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [136 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @cdf_read_short_sector_chain(ptr noundef nonnull readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %4, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %7)
  br label %cdf_read_sector_chain.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call i32 @cdf_read_long_sector_chain(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %7)
  br label %cdf_read_sector_chain.exit

cdf_read_sector_chain.exit:                       ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_summary_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) initializes((0, 8)) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @cdf_find_stream(ptr noundef readonly %5, ptr noundef nonnull @.str.2, i32 noundef 2) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  br label %cdf_read_user_stream.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !39
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [136 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @cdf_read_short_sector_chain(ptr noundef nonnull readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %4, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %6)
  br label %cdf_read_user_stream.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call i32 @cdf_read_long_sector_chain(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %6)
  br label %cdf_read_user_stream.exit

cdf_read_user_stream.exit:                        ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i32 [ -1, %bb.b ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @cdf_find_stream(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %.fr37 = freeze i64 %i.a                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %.not29 = icmp eq i64 %i.c, 0
  br i1 %.not29, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not21.i = icmp eq i64 %.fr37, -1
  br i1 %.not21.i, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.030.us = phi i64 [ %i.j, %bb.b ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.e = getelementptr [136 x i8], ptr %i.d, i64 %.030.us
  %i.f = getelementptr i8, ptr %i.e, i64 -70
  %i.g = load i8, ptr %i.f, align 2, !tbaa !42
  %i.h = zext i8 %i.g to i32
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %cdf_namecmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = add i64 %.030.us, -1                     ; 2 uses
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !66

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.d
  %.030 = phi i64 [ %i.aa, %bb.d ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.k = getelementptr [136 x i8], ptr %i.d, i64 %.030 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -70
  %i.m = load i8, ptr %i.l, align 2, !tbaa !42
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i32 %2, %i.n
  br i1 %i.o, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.split.split
  %i.p = getelementptr i8, ptr %i.k, i64 -136
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %bb.c
  %i.q = phi i64 [ %i.x, %bb.c ], [ %.fr37, %.lr.ph.i ] ; 2 uses
  %.0923.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %.01022.i = phi ptr [ %i.v, %bb.c ], [ %1, %.lr.ph.i ] ; 2 uses
  %i.r = load i8, ptr %.01022.i, align 1, !tbaa !45 ; 2 uses
  %i.s = sext i8 %i.r to i32
  %i.t = load i16, ptr %.0923.i, align 2, !tbaa !46 ; 2 uses
  %i.u = zext i16 %i.t to i32
  %.not1216.i = icmp eq i32 %i.s, %i.u
  br i1 %.not1216.i, label %bb.c, label %cdf_namecmp.exit.loopexit15

bb.c:                                             ; preds = %.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01022.i, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0923.i, i64 2
  %i.x = add i64 %i.q, -1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %cdf_namecmp.exit.thread, label %.thread.i, !llvm.loop !67

cdf_namecmp.exit.loopexit15:                      ; preds = %.thread.i
end_hunk_0
