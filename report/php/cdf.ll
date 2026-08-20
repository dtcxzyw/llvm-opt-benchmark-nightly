inline.NumInlined: 106
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cdf_read_sat:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.dj = tail call i64 @lseek(i32 noundef %i.dh, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %i.db, i32 noundef 0) #19
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %cdf_read_sector.exit95.thread, label %cdf_read_sector.exit103

cdf_read_sector.exit103:                          ; preds = %bb.ah
  %i.dl = load i32, ptr %0, align 8, !tbaa !25
  %i.dm = tail call i64 @read(i32 noundef %i.dl, ptr noundef %i.dc, i64 noundef %i.e) #19
  %.not25.i.i101 = icmp eq i64 %i.dm, %i.e
  br i1 %.not25.i.i101, label %bb.ai, label %cdf_read_sector.exit95.thread

bb.ai:                                            ; preds = %cdf_read_sector.exit103.thread114, %cdf_read_sector.exit103
  %i.dn = add nuw i64 %.074138, 1                 ; 2 uses
  %i.do = add nuw i64 %.3137, 1                   ; 2 uses
  %exitcond155.not = icmp eq i64 %i.dn, %i.g
  br i1 %exitcond155.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.ai, %.preheader
  %.3.lcssa = phi i64 [ %.2140195, %.preheader ], [ %i.do, %bb.ai ] ; 2 uses
  %i.dp = load i32, ptr %i.bx, align 4, !tbaa !31 ; 2 uses
  %i.dq = add nuw nsw i64 %.075141194, 1          ; 3 uses
  %i.dr = load i32, ptr %i.ah, align 8, !tbaa !33
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign uge i64 %i.dq, %i.ds
  %i.du = icmp slt i32 %i.dp, 0
  %or.cond = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond, label %.loopexit, label %bb.w, !llvm.loop !40

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph, %bb.v
  %.4 = phi i64 [ %.3137, %.lr.ph ], [ %.1.lcssa, %bb.v ], [ %.3.lcssa, %._crit_edge ]
  store i64 %.4, ptr %i.am, align 8, !tbaa !34
  tail call void @_efree(ptr noundef nonnull %i.bq) #19
  br label %bb.aj

cdf_read_sector.exit95.thread.sink.split:         ; preds = %bb.w, %bb.aa, %bb.ac, %bb.ag
  %i.dv = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.dv, align 4, !tbaa !31
  br label %cdf_read_sector.exit95.thread

cdf_read_sector.exit95.thread:                    ; preds = %bb.ab, %bb.x, %cdf_read_sector.exit95, %bb.ah, %bb.ad, %cdf_read_sector.exit103, %cdf_read_sector.exit95.thread.sink.split
  tail call void @_efree(ptr noundef nonnull %i.bq) #19
  br label %cdf_read_sector.exit.thread

cdf_read_sector.exit.thread:                      ; preds = %bb.r, %bb.n, %cdf_read_sector.exit, %bb.s, %bb.u, %cdf_read_sector.exit95.thread
  %i.dw = load ptr, ptr %2, align 8, !tbaa !37
  tail call void @_efree(ptr noundef %i.dw) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.l, %cdf_read_sector.exit.thread, %.loopexit, %bb.k
  %.077 = phi i32 [ -1, %bb.k ], [ 0, %.loopexit ], [ -1, %cdf_read_sector.exit.thread ], [ -1, %bb.l ]
  ret i32 %.077
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 -1, 10001) i64 @cdf_count_chain(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %i.c = mul i64 %i.b, %2
  %i.d = lshr i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp eq i32 %1, -2
  br i1 %i.f, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %1, -1
  br i1 %i.g, label %.lr.ph.split, label %.loopexit

.lr.ph.split:                                     ; preds = %.preheader, %bb.b
  %.022 = phi i64 [ %i.m, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %.01720 = phi i32 [ %i.l, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %i.h = icmp samesign ult i64 %.022, 10000
  %.not = icmp slt i32 %.01720, %i.e
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.split
  %i.i = load ptr, ptr %0, align 8, !tbaa !37
  %i.j = zext nneg i32 %.01720 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = add nuw nsw i64 %.022, 1                 ; 2 uses
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !42

.loopexit:                                        ; preds = %.lr.ph.split, %.preheader
  %i.o = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.o, align 4, !tbaa !31
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.a, %.loopexit
  %.016 = phi i64 [ 0, %bb.a ], [ -1, %.loopexit ], [ %i.m, %bb.b ]
  ret i64 %.016
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_long_sector_chain(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !29
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64                     ; 8 uses
  store ptr null, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = mul i64 %i.g, %i.e
  %i.i = lshr i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp eq i32 %3, -2                       ; 2 uses
  br i1 %i.k, label %cdf_count_chain.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.l = icmp sgt i32 %3, -1
  br i1 %i.l, label %.lr.ph.split.i, label %.loopexit.i

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.b
  %.022.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.01720.i = phi i32 [ %i.q, %bb.b ], [ %3, %.preheader.i ] ; 2 uses
  %i.m = icmp samesign ult i64 %.022.i, 10000
  %.not.i = icmp slt i32 %.01720.i, %i.j
  %or.cond.i = select i1 %i.m, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !37
  %i.o = zext nneg i32 %.01720.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %i.r = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %i.s = icmp sgt i32 %i.q, -1
  br i1 %i.s, label %.lr.ph.split.i, label %cdf_count_chain.exit, !llvm.loop !42

.loopexit.i:                                      ; preds = %.lr.ph.split.i, %.preheader.i
  %i.t = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.t, align 4, !tbaa !31
  br label %cdf_count_chain.exit

cdf_count_chain.exit:                             ; preds = %bb.b, %bb.a, %.loopexit.i
  %.016.i = phi i64 [ 0, %bb.a ], [ -1, %.loopexit.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %.016.i, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43
  %i.x = zext i32 %i.w to i64
  %. = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %., ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.e, ptr %i.z, align 8, !tbaa !45
  %i.aa = icmp eq i64 %4, 0
  %or.cond = or i1 %i.k, %i.aa
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %cdf_count_chain.exit
  %i.ab = icmp eq i64 %.016.i, -1
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noalias ptr @_ecalloc(i64 noundef %.016.i, i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !17
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ae = icmp sgt i32 %3, -1
  br i1 %i.ae, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.m
  %i.ah = add nuw nsw i64 %.06988, 1              ; 2 uses
  %exitcond = icmp eq i64 %i.ah, 10000
  br i1 %exitcond, label %.thread.loopexit, label %bb.f, !llvm.loop !46

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0496789 = phi i32 [ %3, %.lr.ph ], [ %i.bg, %bb.e ]
  %.06988 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !32
  %.not = icmp ult i64 %.06988, %i.ai
  br i1 %.not, label %bb.g, label %.thread.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aj = load i16, ptr %i.a, align 2, !tbaa !29
  %i.ak = zext nneg i16 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = zext nneg i32 %.0496789 to i64          ; 3 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.an)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = mul nsw i64 %.06988, %i.e
  %i.ap = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.aq = add nuw nsw i64 %i.an, 1
  %i.ar = mul nsw i64 %i.aq, %i.am                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add nsw i64 %i.ar, %i.e
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !24
  %.not24.i.i = icmp ult i64 %i.av, %i.au
  br i1 %.not24.i.i, label %bb.j, label %cdf_read_sector.exit.thread59

cdf_read_sector.exit.thread59:                    ; preds = %bb.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i64 %i.e, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = tail call i64 @lseek(i32 noundef %i.ax, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %i.ar, i32 noundef 0) #19
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %.thread.loopexit, label %cdf_read_sector.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.bb, align 4, !tbaa !31
  br label %.thread

cdf_read_sector.exit:                             ; preds = %bb.k
  %i.bc = load i32, ptr %0, align 8, !tbaa !25
  %i.bd = tail call i64 @read(i32 noundef %i.bc, ptr noundef %i.as, i64 noundef %i.e) #19
  %.not25.i.i = icmp eq i64 %i.bd, %i.e
  br i1 %.not25.i.i, label %bb.m, label %.thread.loopexit

bb.m:                                             ; preds = %cdf_read_sector.exit.thread59, %cdf_read_sector.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.an
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !31 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.e, label %.loopexit, !llvm.loop !46

.thread.loopexit:                                 ; preds = %bb.e, %bb.f, %bb.k, %bb.g, %cdf_read_sector.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.l, %bb.c
  %i.bi = phi ptr [ %.pre, %.thread.loopexit ], [ %i.ap, %bb.l ], [ null, %bb.c ]
  %i.bj = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.bj, align 4, !tbaa !31
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.d, %cdf_count_chain.exit, %.thread
  %.sink = phi ptr [ %i.bi, %.thread ], [ null, %cdf_count_chain.exit ], [ null, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  tail call void @_efree(ptr noundef %.sink) #19
  store ptr null, ptr %5, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split, %.preheader
  %.048 = phi i32 [ -1, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.m ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_short_sector_chain(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !30
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  store ptr null, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !29
  %i.h = zext nneg i16 %i.g to i32
  %i.i = shl nuw i32 1, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34
  %i.m = mul i64 %i.l, %i.j
  %i.n = lshr i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp eq i32 %3, -2
  br i1 %i.p, label %.loopexit44, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.q = icmp sgt i32 %3, -1
  br i1 %i.q, label %.lr.ph.split.i, label %cdf_count_chain.exit

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.b
  %.022.i = phi i64 [ %i.w, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.01720.i = phi i32 [ %i.v, %bb.b ], [ %3, %.preheader.i ] ; 2 uses
  %i.r = icmp samesign ult i64 %.022.i, 10000
  %.not.i = icmp slt i32 %.01720.i, %i.o
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %cdf_count_chain.exit

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = zext nneg i32 %.01720.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31   ; 2 uses
  %i.w = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %i.x = icmp sgt i32 %i.v, -1
  br i1 %i.x, label %.lr.ph.split.i, label %.loopexit44, !llvm.loop !42

cdf_count_chain.exit:                             ; preds = %.lr.ph.split.i, %.preheader.i
  %i.y = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.y, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %cdf_read_short_sector.exit.thread

.loopexit44:                                      ; preds = %bb.b, %bb.a
  %.016.i.ph = phi i64 [ 0, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 %.016.i.ph, ptr %i.aa, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %4, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.e, ptr %i.ac, align 8, !tbaa !45
  %i.ad = tail call noalias ptr @_ecalloc(i64 noundef %.016.i.ph, i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !17
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.loopexit44
  %i.af = icmp sgt i32 %3, -1
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.loopexit44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %.loopexit.sink.split

.lr.ph.split:                                     ; preds = %cdf_read_short_sector.exit
  %i.ah = add nuw nsw i64 %.05074, 1              ; 2 uses
  %exitcond = icmp eq i64 %i.ah, 10000
  br i1 %exitcond, label %cdf_read_short_sector.exit.thread, label %bb.d, !llvm.loop !47

bb.d:                                             ; preds = %.lr.ph, %.lr.ph.split
  %.0374875 = phi i32 [ %3, %.lr.ph ], [ %i.bf, %.lr.ph.split ]
  %.05074 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.lr.ph.split ] ; 3 uses
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !32
  %.not = icmp ult i64 %.05074, %i.ai
  br i1 %.not, label %bb.e, label %cdf_read_short_sector.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %5, align 8, !tbaa !17
  %i.ak = mul nsw i64 %.05074, %i.e
  %i.al = load i16, ptr %i.a, align 8, !tbaa !30
  %i.am = zext nneg i16 %i.al to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = zext nneg i32 %.0374875 to i64          ; 3 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ao, i64 %i.ap)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %cdf_read_short_sector.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = mul nsw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = add nsw i64 %i.aq, %i.e
  %i.as = load i16, ptr %i.f, align 2, !tbaa !29
  %i.at = zext nneg i16 %i.as to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp ugt i64 %i.ar, %i.ax
  br i1 %i.ay, label %.split.us, label %cdf_read_short_sector.exit

.split.us:                                        ; preds = %bb.f
  %i.az = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.az, align 4, !tbaa !31
  br label %cdf_read_short_sector.exit.thread

cdf_read_short_sector.exit:                       ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.bb = load ptr, ptr %2, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 1 dereferenceable(1) %i.bc, i64 %i.e, i1 false)
  %i.bd = load ptr, ptr %1, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ap
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %.lr.ph.split, label %.loopexit, !llvm.loop !47

cdf_read_short_sector.exit.thread:                ; preds = %.lr.ph.split, %bb.d, %bb.e, %.split.us, %cdf_count_chain.exit
  %i.bh = phi ptr [ %i.aa, %.split.us ], [ %i.z, %cdf_count_chain.exit ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ], [ %i.aa, %.lr.ph.split ]
  %i.bi = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.bi, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %5, align 8, !tbaa !17
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %cdf_read_short_sector.exit.thread
  %.sink = phi ptr [ %i.bj, %cdf_read_short_sector.exit.thread ], [ null, %bb.c ]
  tail call void @_efree(ptr noundef %.sink) #19
  store ptr null, ptr %5, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %cdf_read_short_sector.exit, %.loopexit.sink.split, %.preheader
  %.036 = phi i32 [ -1, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %cdf_read_short_sector.exit ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_sector_chain(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef captures(none) initializes((0, 8)) %7) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ult i64 %6, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !17
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @cdf_read_short_sector_chain(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i64 noundef %6, ptr noundef %7)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @cdf_read_long_sector_chain(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %5, i64 noundef %6, ptr noundef %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_dir(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !29
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = mul i64 %i.i, %i.e
  %i.k = lshr i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp eq i32 %i.g, -2
  br i1 %i.m, label %.loopexit95, label %.preheader.i

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
  %i.p = load ptr, ptr %2, align 8, !tbaa !37
  %i.q = zext nneg i32 %.01720.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 2 uses
  %i.t = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %i.u = icmp sgt i32 %i.s, -1
  br i1 %i.u, label %.lr.ph.split.i, label %.loopexit95, !llvm.loop !42

cdf_count_chain.exit:                             ; preds = %.lr.ph.split.i, %.preheader.i
  %i.v = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.v, align 4, !tbaa !31
  br label %bb.m

.loopexit95:                                      ; preds = %bb.b, %bb.a
  %.016.i.ph = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %i.w = lshr i64 %i.e, 7                         ; 5 uses
  %i.x = mul i64 %.016.i.ph, %i.w                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !49
  %i.z = tail call noalias ptr @_ecalloc(i64 noundef %i.x, i64 noundef 136) #21 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !51
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %bb.c

bb.c:                                             ; preds = %.loopexit95
  %i.ab = tail call noalias ptr @_emalloc(i64 noundef %i.e) #22 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %.preheader94

.preheader94:                                     ; preds = %bb.c
  %.not = icmp eq i64 %.016.i.ph, 0
  br i1 %.not, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader94
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not106 = icmp eq i64 %i.w, 0
  %i.af = add nuw nsw i64 %i.w, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %3, align 8, !tbaa !51
  tail call void @_efree(ptr noundef %i.ag) #19
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph103, %._crit_edge
  %.0102 = phi i32 [ %i.g, %.lr.ph103 ], [ %i.cv, %._crit_edge ]
  %.081101 = phi i64 [ 0, %.lr.ph103 ], [ %.1.lcssa, %._crit_edge ]
  %.082100 = phi i64 [ 0, %.lr.ph103 ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.ah = icmp ugt i64 %.081101, 9999
  br i1 %i.ah, label %cdf_read_sector.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i16, ptr %i.a, align 2, !tbaa !29
  %i.aj = zext nneg i16 %i.ai to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sext i32 %.0102 to i64                  ; 3 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 %i.am)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %cdf_read_sector.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i64 %i.am, 1
  %i.ao = mul nsw i64 %i.an, %i.al                ; 3 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nsw i64 %i.ao, %i.e
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !24
  %.not24.i.i = icmp ult i64 %i.ar, %i.aq
  br i1 %.not24.i.i, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i64 %i.e, i1 false)
  br label %.preheader93

.preheader93:                                     ; preds = %cdf_read_sector.exit, %.critedge
  br i1 %.not106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader93
  %i.at = mul i64 %.082100, %i.w
  br label %bb.l
end_hunk_0
begin_hunk_1_@cdf_read_dir:bb.a
  %i.au = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call i64 @lseek(i32 noundef %i.au, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %i.ao, i32 noundef 0) #19
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %cdf_read_sector.exit.thread, label %cdf_read_sector.exit

cdf_read_sector.exit:                             ; preds = %bb.j
  %i.ay = load i32, ptr %0, align 8, !tbaa !25
  %i.az = tail call i64 @read(i32 noundef %i.ay, ptr noundef nonnull %i.ab, i64 noundef %i.e) #19
  %.not25.i.i = icmp eq i64 %i.az, %i.e
  br i1 %.not25.i.i, label %.preheader93, label %cdf_read_sector.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.ba, align 4, !tbaa !31
  br label %cdf_read_sector.exit.thread

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.199 = phi i64 [ 0, %.lr.ph ], [ %i.cs, %bb.l ] ; 3 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !51
  %i.bc = getelementptr [136 x i8], ptr %i.bb, i64 %i.at
  %i.bd = getelementptr [136 x i8], ptr %i.bc, i64 %.199 ; 14 uses
  %i.be = shl nuw i64 %.199, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.be ; 14 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.bf, i64 64, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = load i16, ptr %i.bh, align 1
  store i16 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 66
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 66
  %i.bl = load i8, ptr %i.bk, align 1
  store i8 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 67
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bo = load i8, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bm, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.br = load i32, ptr %i.bq, align 1
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bu = load i32, ptr %i.bt, align 1
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 76
  %i.bx = load i32, ptr %i.bw, align 1
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.cc = load i32, ptr %i.cb, align 1
  store i32 %i.cc, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 100
  %i.cf = load i64, ptr %i.ce, align 1
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 108
  %i.ci = load i64, ptr %i.ch, align 1
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 116
  %i.cl = load i32, ptr %i.ck, align 1
  store i32 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 124
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.co = load i32, ptr %i.cn, align 1
  store i32 %i.co, ptr %i.cm, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 124
  %i.cr = load i32, ptr %i.cq, align 1
  store i32 %i.cr, ptr %i.cp, align 8
  %i.cs = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.l, %.preheader93
  %.1.lcssa = phi i64 [ 1, %.preheader93 ], [ %i.af, %bb.l ]
  %i.ct = load ptr, ptr %2, align 8, !tbaa !37
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.am
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !31
  %i.cw = add nuw i64 %.082100, 1                 ; 2 uses
  %exitcond112.not = icmp eq i64 %i.cw, %.016.i.ph
  br i1 %exitcond112.not, label %.loopexit, label %bb.e, !llvm.loop !53

.loopexit:                                        ; preds = %._crit_edge, %.preheader94
  tail call void @_efree(ptr noundef nonnull %i.ab) #19
  br label %bb.m

cdf_read_sector.exit.thread:                      ; preds = %bb.j, %bb.f, %cdf_read_sector.exit, %bb.e, %bb.k
  %i.cx = load ptr, ptr %3, align 8, !tbaa !51
  tail call void @_efree(ptr noundef %i.cx) #19
  tail call void @_efree(ptr noundef nonnull %i.ab) #19
  %i.cy = tail call ptr @__errno_location() #20
  store i32 22, ptr %i.cy, align 4, !tbaa !31
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
  %i.b = load i16, ptr %i.a, align 2, !tbaa !29
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
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
  %i.p = load ptr, ptr %2, align 8, !tbaa !37
  %i.q = zext nneg i32 %.01720.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 2 uses
  %i.t = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %i.u = icmp sgt i32 %i.s, -1
  br i1 %i.u, label %.lr.ph.split.i, label %.loopexit44, !llvm.loop !42

cdf_count_chain.exit:                             ; preds = %.lr.ph.split.i, %.preheader.i
  %i.v = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 22, ptr %i.v, align 4, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.w, align 8, !tbaa !34
  br label %cdf_read_sector.exit.thread.sink.split

.loopexit44:                                      ; preds = %bb.b, %bb.a
  %.016.i.ph = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.016.i.ph, ptr %i.x, align 8, !tbaa !34
  %i.y = tail call noalias ptr @_ecalloc(i64 noundef %.016.i.ph, i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !37
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
  br i1 %exitcond, label %.loopexit43.loopexit, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0314966 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.c ] ; 3 uses
  %.05065 = phi i32 [ %i.g, %.lr.ph ], [ %i.bc, %bb.c ]
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !34
  %.not = icmp ult i64 %.0314966, %i.ae
  br i1 %.not, label %bb.e, label %.loopexit43.loopexit

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr %i.a, align 2, !tbaa !29
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext nneg i32 %.05065 to i64            ; 3 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %cdf_read_sector.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = mul nsw i64 %.0314966, %i.e
  %i.al = load ptr, ptr %3, align 8, !tbaa !37
  %i.am = add nuw nsw i64 %i.aj, 1
  %i.an = mul nsw i64 %i.am, %i.ai                ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i64 %i.an, %i.e
  %i.ar = load i64, ptr %i.ac, align 8, !tbaa !24
  %.not24.i.i = icmp ult i64 %i.ar, %i.aq
  br i1 %.not24.i.i, label %bb.h, label %cdf_read_sector.exit.thread40

cdf_read_sector.exit.thread40:                    ; preds = %bb.g
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i64 %i.e, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
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
  %i.ay = load i32, ptr %0, align 8, !tbaa !25
  %i.az = tail call i64 @read(i32 noundef %i.ay, ptr noundef %i.ao, i64 noundef %i.e) #19
  %.not25.i.i = icmp eq i64 %i.az, %i.e
  br i1 %.not25.i.i, label %bb.k, label %cdf_read_sector.exit.thread

bb.k:                                             ; preds = %cdf_read_sector.exit.thread40, %cdf_read_sector.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aj
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.c, label %.loopexit, !llvm.loop !55

.loopexit43.loopexit:                             ; preds = %bb.c, %bb.d
  %.pre = tail call ptr @__errno_location() #20
  br label %cdf_read_sector.exit.thread.sink.split

cdf_read_sector.exit.thread.sink.split:           ; preds = %cdf_count_chain.exit, %.loopexit43.loopexit, %bb.j
  %.sink = phi ptr [ %i.ax, %bb.j ], [ %.pre, %.loopexit43.loopexit ], [ %i.v, %cdf_count_chain.exit ]
  store i32 22, ptr %.sink, align 4, !tbaa !31
  br label %cdf_read_sector.exit.thread

cdf_read_sector.exit.thread:                      ; preds = %bb.i, %bb.e, %cdf_read_sector.exit, %cdf_read_sector.exit.thread.sink.split, %.loopexit44
  %i.be = load ptr, ptr %3, align 8, !tbaa !37
  tail call void @_efree(ptr noundef %i.be) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader, %cdf_read_sector.exit.thread
  %.033 = phi i32 [ -1, %cdf_read_sector.exit.thread ], [ 0, %.preheader ], [ 0, %bb.k ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_read_short_stream(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #6 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %i.c, i64 %.023
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  %i.f = load i8, ptr %i.e, align 2, !tbaa !57
  %i.g = icmp eq i8 %i.f, 5
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.023, %bb.b ] ; 2 uses
  %i.i = icmp eq i64 %.0.lcssa, %i.b
  br i1 %i.i, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %3, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %.0.lcssa ; 3 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i32 @cdf_read_long_sector_chain(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.m, i64 noundef %i.q, ptr noundef %4)
  br label %bb.f

._crit_edge.thread:                               ; preds = %bb.c, %bb.d, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call void @_efree(ptr noundef null) #19
  store ptr null, ptr %4, align 8, !tbaa !17
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
  %i.c = load ptr, ptr %5, align 8, !tbaa !51
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [136 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !17
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
  %i.c = load ptr, ptr %5, align 8, !tbaa !51
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [136 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @cdf_read_short_sector_chain(ptr noundef nonnull readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %4, i32 noundef %i.g, i64 noundef %i.j, ptr noundef %7)
  br label %cdf_read_sector_chain.exit

end_hunk_1
