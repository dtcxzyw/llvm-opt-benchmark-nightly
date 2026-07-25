begin_hunk_0_@gzvprintf:bb.a
  %i.bh = zext i32 %i.bc to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !23
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !28
  store i32 %i.bc, ptr %i.t, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.l, %bb.m, %bb.n, %bb.b, %bb.c, %bb.a, %bb.q, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.l ], [ -2, %bb.a ], [ %i.l, %bb.f ], [ %i.s, %bb.i ], [ -2, %bb.b ], [ %i.bb, %bb.q ], [ -2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.am, %bb.r ], [ %i.am, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_init(ptr noundef nonnull initializes((48, 56)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %i.d = shl i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.3) #13
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !33
  %.not = icmp eq i32 %i.j, 0
  %i.k = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !18
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %i.k to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.3) #13
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = tail call i32 @deflateInit2_(ptr noundef nonnull %i.a, i32 noundef %i.s, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %i.u, ptr noundef nonnull @.str.4, i32 noundef 112) #13
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.w) #13
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.x) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.3) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %.pr = load i32, ptr %i.i, align 8, !tbaa !33
  %i.y = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.y, ptr %i.z, align 8, !tbaa !18
  %.not32 = icmp eq i32 %.pr, 0
  br i1 %.not32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !37
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_comp(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @gz_init(ptr noundef %0)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.not7276 = icmp eq i32 %i.j, 0
  br i1 %.not7276, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.z, %bb.f ]
  %i.m = phi i32 [ %i.j, %.lr.ph ], [ %i.w, %bb.f ]
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.m, i32 1073741824)
  %i.n = zext nneg i32 %narrow to i64
  %i.o = load i32, ptr %i.k, align 4, !tbaa !40
  %i.p = tail call i64 @write(i32 noundef %i.o, ptr noundef %i.l, i64 noundef %i.n) #13 ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__errno_location() #16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !5
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.u) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = sub i32 %i.v, %i.q                       ; 3 uses
  store i32 %i.w, ptr %i.i, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.y = and i64 %i.p, 2147483647
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !28
  %.not72 = icmp eq i32 %i.w, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !41

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not68 = icmp eq i32 %i.ab, 0
  br i1 %.not68, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !27
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @deflateReset(ptr noundef nonnull %i.a) #13 ; 0 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %.not69 = icmp eq i32 %1, 0
  %i.ah = icmp ne i32 %1, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre90 = load i32, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  br i1 %.not69, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.j, %9
  %i.am = phi i32 [ %10, %9 ], [ %.pre90, %bb.j ] ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %5

bb.k:                                             ; preds = %.split.us
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %i.aq = icmp ugt ptr %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph77.us, label %._crit_edge.us.thread

._crit_edge.us:                                   ; preds = %bb.l
  %.pre91 = load i32, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %2 = icmp eq i32 %.pre91, 0
  br i1 %2, label %._crit_edge.us.thread, label %5

._crit_edge.us.thread:                            ; preds = %bb.k, %._crit_edge.us
  %3 = load i32, ptr %i.b, align 8, !tbaa !18     ; 2 uses
  store i32 %3, ptr %i.ag, align 8, !tbaa !37
  %4 = load ptr, ptr %i.al, align 8, !tbaa !34    ; 2 uses
  store ptr %4, ptr %i.ai, align 8, !tbaa !38
  store ptr %4, ptr %i.aj, align 8, !tbaa !39
  br label %5

5:                                                ; preds = %.split.us, %._crit_edge.us.thread, %._crit_edge.us
  %6 = phi i32 [ %i.am, %.split.us ], [ %3, %._crit_edge.us.thread ], [ %.pre91, %._crit_edge.us ]
  %7 = tail call i32 @deflate(ptr noundef nonnull %i.a, i32 noundef 0) #13
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %.split79.us, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %i.ag, align 8, !tbaa !37   ; 2 uses
  %.not70.us = icmp eq i32 %6, %10
  br i1 %.not70.us, label %.split81.us, label %.split.us, !llvm.loop !43

.lr.ph77.us:                                      ; preds = %bb.k, %bb.l
  %i.ar = phi ptr [ %i.bd, %bb.l ], [ %i.ap, %bb.k ] ; 2 uses
  %i.as = phi ptr [ %i.be, %bb.l ], [ %i.ao, %bb.k ]
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.av, i64 1073741824)
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.az = tail call i64 @write(i32 noundef %i.ay, ptr noundef %i.ar, i64 noundef %i.ax) #13 ; 2 uses
  %i.ba = and i64 %i.az, 2147483648
  %.not71.us = icmp eq i64 %i.ba, 0
  br i1 %.not71.us, label %bb.l, label %.split83.us.a

bb.l:                                             ; preds = %.lr.ph77.us
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.bc = and i64 %i.az, 2147483647
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc ; 3 uses
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !39
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.bf = icmp ugt ptr %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph77.us, label %._crit_edge.us, !llvm.loop !44

.split:                                           ; preds = %bb.j, %bb.q
  %i.bg = phi i32 [ %i.cl, %bb.q ], [ %.pre90, %bb.j ] ; 3 uses
  %.059 = phi i32 [ %i.cj, %bb.q ], [ 0, %bb.j ]
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp eq i32 %.059, 1
  %or.cond = or i1 %i.ah, %i.bi
  %or.cond84 = or i1 %i.bh, %or.cond
  br i1 %or.cond84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.split
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %i.bl = icmp ugt ptr %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.m, %bb.n
  %i.bm = phi ptr [ %i.cb, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bn = phi ptr [ %i.cc, %bb.n ], [ %i.bj, %bb.m ]
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 1073741824)
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.bu = tail call i64 @write(i32 noundef %i.bt, ptr noundef %i.bm, i64 noundef %i.bs) #13 ; 2 uses
  %i.bv = and i64 %i.bu, 2147483648
  %.not71 = icmp eq i64 %i.bv, 0
  br i1 %.not71, label %bb.n, label %.split83.us.a

.split83.us.a:                                    ; preds = %.lr.ph77, %.lr.ph77.us
  %i.bw = tail call ptr @__errno_location() #16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !5
  %i.by = tail call ptr @strerror(i32 noundef %i.bx) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.by) #13
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph77
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.ca = and i64 %i.bu, 2147483647
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 3 uses
  store ptr %i.cb, ptr %i.aj, align 8, !tbaa !39
  %i.cc = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.cd = icmp ugt ptr %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph77, label %._crit_edge.loopexit, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre89 = load i32, ptr %i.ag, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.ce = phi i32 [ %.pre89, %._crit_edge.loopexit ], [ %i.bg, %bb.m ] ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  store i32 %i.cg, ptr %i.ag, align 8, !tbaa !37
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  store ptr %i.ch, ptr %i.ai, align 8, !tbaa !38
  store ptr %i.ch, ptr %i.aj, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %.split, %._crit_edge, %bb.o
  %i.ci = phi i32 [ %i.bg, %.split ], [ %i.ce, %._crit_edge ], [ %i.cg, %bb.o ]
  %i.cj = tail call i32 @deflate(ptr noundef nonnull %i.a, i32 noundef %1) #13 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -2
  br i1 %i.ck, label %.split79.us, label %bb.q

.split79.us:                                      ; preds = %bb.p, %5
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.5) #13
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %.not70 = icmp eq i32 %i.ci, %i.cl
  br i1 %.not70, label %.split81.us, label %.split, !llvm.loop !43

.split81.us:                                      ; preds = %bb.q, %9
  %i.cm = icmp eq i32 %1, 4
  br i1 %i.cm, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.split81.us
  store i32 1, ptr %i.aa, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader, %.split81.us, %bb.r, %bb.h, %bb.b, %.split79.us, %.split83.us.a, %bb.e
  %.0 = phi i32 [ 0, %bb.h ], [ -1, %bb.e ], [ -1, %bb.b ], [ 0, %.split81.us ], [ -1, %.split83.us.a ], [ -1, %.split79.us ], [ 0, %bb.r ], [ 0, %.preheader ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @gzvprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %.not = icmp eq i32 %i.c, 31153
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %.not17 = icmp ne i32 %i.e, 0
  %or.cond = icmp ugt i32 %1, 4
  %or.cond19 = or i1 %or.cond, %.not17
  br i1 %or.cond19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.i)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef %1) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %i.m = load i32, ptr %i.d, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -2, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ], [ %i.m, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %.not = icmp eq i32 %i.d, 31153
  br i1 %.not, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = icmp eq i32 %2, %i.m
  br i1 %i.n, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = tail call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.r)
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.e, align 4, !tbaa !17
  br label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %.not31 = icmp eq i32 %i.y, 0
  br i1 %.not31, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 5)
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !17
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ac = tail call i32 @deflateParams(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  store i32 %1, ptr %i.i, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %2, ptr %i.ad, align 4, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.a, %bb.o, %bb.m, %bb.i
  %.0 = phi i32 [ 0, %bb.o ], [ -2, %bb.a ], [ -2, %bb.b ], [ %i.u, %bb.i ], [ %i.ab, %bb.m ], [ -2, %bb.d ], [ -2, %bb.c ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %.not = icmp eq i32 %i.c, 31153
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.g)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f
end_hunk_0
