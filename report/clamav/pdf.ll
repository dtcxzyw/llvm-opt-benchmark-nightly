Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdf?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pdf_parse_trailer:bb.a
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !33
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = and i16 %i.ad, 2048
  %.not53.i = icmp eq i16 %i.ae, 0
  br i1 %.not53.i, label %pdf_parse_encrypt.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ag = ptrtoint ptr %i.u to i64
  %.neg54.i = sub i64 %i.ag, %i.af
  %i.ah = trunc i64 %.neg54.i to i32
  %i.ai = add i32 %i.v, %i.ah                     ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = call i32 @cli_strntol_wrap(ptr noundef nonnull %i.x, i64 noundef %i.aj, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a) #19
  %.not55.i = icmp eq i32 %i.ak, 0
  br i1 %.not55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230) #19
  br label %pdf_parse_encrypt.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.a, align 8, !tbaa !9   ; 4 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.231, i64 noundef %i.al) #19
  br label %pdf_parse_encrypt.exit

bb.l:                                             ; preds = %bb.j
  %i.an = shl i64 %i.al, 8
  %i.ao = call fastcc ptr @pdf_nextobject(ptr noundef nonnull %i.x, i64 noundef %i.aj) ; 5 uses
  %.not56.i = icmp eq ptr %i.ao, null
  br i1 %.not56.i, label %pdf_parse_encrypt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !33
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !35
  %i.au = and i16 %i.at, 2048
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %pdf_parse_encrypt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = ptrtoint ptr %i.ao to i64
  %.neg58.i = sub i64 %i.af, %i.av
  %i.aw = trunc i64 %.neg58.i to i32
  %i.ax = add i32 %i.ai, %i.aw
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = call i32 @cli_strntol_wrap(ptr noundef nonnull %i.ao, i64 noundef %i.ay, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a) #19
  %.not59.i = icmp eq i32 %i.az, 0
  br i1 %.not59.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.232) #19
  br label %pdf_parse_encrypt.exit

bb.p:                                             ; preds = %bb.n
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.233, i64 noundef %i.ba) #19
  br label %pdf_parse_encrypt.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = and i64 %i.ba, 255                      ; 2 uses
  %i.bd = or disjoint i64 %i.bc, %i.an
  %i.be = call fastcc ptr @pdf_nextobject(ptr noundef nonnull %i.ao, i64 noundef %i.ay) ; 2 uses
  %.not60.i = icmp eq ptr %i.be, null
  br i1 %.not60.i, label %pdf_parse_encrypt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !33
  %.not61.i = icmp eq i8 %i.bf, 82
  br i1 %.not61.i, label %bb.t, label %pdf_parse_encrypt.exit

bb.t:                                             ; preds = %bb.s
  %i.bg = and i64 %i.al, 72057594037927935
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.234, i64 noundef %i.bg, i64 noundef %i.bc) #19
  %i.bh = trunc i64 %i.bd to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !104
  br label %pdf_parse_encrypt.exit

pdf_parse_encrypt.exit:                           ; preds = %bb.d, %bb.f, %bb.g, %bb.i, %bb.k, %bb.l, %bb.m, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bj = trunc i64 %2 to i32
  %i.bk = call fastcc ptr @pdf_readstring(ptr noundef %1, i32 noundef %i.bj, ptr noundef nonnull @.str.229, ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  %.not16 = icmp eq ptr %i.bk, null
  br i1 %.not16, label %bb.v, label %bb.u

bb.u:                                             ; preds = %pdf_parse_encrypt.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !103
  call void @free(ptr noundef %i.bm) #19
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !103
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !105
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %pdf_parse_encrypt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @parse_enc_method(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !50
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.121) #22
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call fastcc ptr @pdf_getdict(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %i.a, align 4, !tbaa !50
  %i.e = tail call fastcc ptr @pdf_readval(ptr noundef nonnull %i.c, i32 noundef %i.d, ptr noundef nonnull @.str.122) ; 8 uses
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.h, label %sub_0

sub_0:                                            ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.123, ptr noundef nonnull %2, ptr noundef nonnull %i.e) #19
  %i.f = load i8, ptr %i.e, align 1
  %.not28 = icmp eq i8 %i.f, 86
  br i1 %.not28, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 50
  br i1 %i.i, label %bb.g, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.j = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(6) @.str.125, i64 noundef 5) #22
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.tail.thread
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(6) @.str.126, i64 noundef 5) #22
  %.not26 = icmp eq i32 %i.k, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(5) @.str.127, i64 noundef 4) #22
  %.not27 = icmp eq i32 %i.l, 0
  %spec.select = zext i1 %.not27 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.tail.thread, %.tail
  %.0 = phi i32 [ %spec.select, %bb.f ], [ 5, %bb.e ], [ 4, %.tail.thread ], [ 3, %.tail ]
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c, %bb.b, %bb.a
  %.017 = phi i32 [ %3, %bb.c ], [ 2, %bb.b ], [ %3, %bb.a ], [ %.0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.017
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pdf_readval(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !50
  %i.b = call fastcc ptr @pdf_getdict(ptr noundef %0, ptr noundef %i.a, ptr noundef %2) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = load i32, ptr %i.a, align 4              ; 3 uses
  %i.e = icmp slt i32 %i.d, 1
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.f ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.03455 = phi ptr [ %i.b, %.preheader ], [ %i.i, %bb.c ] ; 4 uses
  %i.g = phi i32 [ %i.d, %.preheader ], [ %i.j, %bb.c ] ; 6 uses
  %i.h = load i8, ptr %.03455, align 1, !tbaa !33
  switch i8 %i.h, label %.loopexit [
    i8 32, label %bb.c
    i8 47, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.03455, i64 1
  %i.j = add nsw i32 %i.g, -1
  %i.k = icmp sgt i32 %i.g, 1
  br i1 %i.k, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c
  %.pr = load i8, ptr %scevgep, align 1, !tbaa !33
  %.not4291 = icmp eq i8 %.pr, 47
  br i1 %.not4291, label %.thread, label %.loopexit

.thread:                                          ; preds = %.critedge.thread
  %i.l = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  br label %.critedge3.sink.split

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.03455, i64 1 ; 7 uses
  %storemerge58 = add nsw i32 %i.g, -1            ; 2 uses
  store i32 %storemerge58, ptr %i.a, align 4, !tbaa !50
  %i.n = icmp samesign ugt i32 %i.g, 1
  br i1 %i.n, label %.lr.ph.preheader, label %.critedge3

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = zext nneg i32 %i.g to i64
  %scevgep80 = getelementptr i8, ptr %.03455, i64 %i.o
  %.promoted = load i32, ptr %i.a, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge50
  %storemerge102 = phi i32 [ %storemerge, %.critedge50 ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %storemerge61 = phi i32 [ %storemerge, %.critedge50 ], [ %storemerge58, %.lr.ph.preheader ] ; 6 uses
  %.060 = phi ptr [ %i.t, %.critedge50 ], [ %i.m, %.lr.ph.preheader ] ; 6 uses
  %storemerge.in5759 = phi i32 [ %storemerge61, %.critedge50 ], [ %i.g, %.lr.ph.preheader ]
  %i.p = load i8, ptr %.060, align 1, !tbaa !33   ; 2 uses
  switch i8 %i.p, label %bb.e [
    i8 0, label %.critedge3.sink.split
    i8 47, label %.critedge3.sink.split
  ]

bb.e:                                             ; preds = %.lr.ph
  %.not44 = icmp ne i32 %storemerge.in5759, 2
  %i.q = icmp eq i8 %i.p, 62
  %or.cond47 = and i1 %.not44, %i.q
  br i1 %or.cond47, label %bb.f, label %.critedge50

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %.not = icmp eq i8 %i.s, 62
  br i1 %.not, label %.critedge3.sink.split, label %.critedge50

.critedge50:                                      ; preds = %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %storemerge = add nsw i32 %storemerge61, -1     ; 4 uses
  %3 = icmp samesign ugt i32 %storemerge61, 1
  br i1 %3, label %.lr.ph, label %.critedge3.sink.split

.critedge3.sink.split:                            ; preds = %bb.f, %.critedge50, %.lr.ph, %.lr.ph, %.thread
  %storemerge101.sink = phi i32 [ -1, %.thread ], [ %storemerge102, %bb.f ], [ %storemerge, %.critedge50 ], [ %storemerge102, %.lr.ph ], [ %storemerge102, %.lr.ph ]
  %.ph = phi ptr [ %i.l, %.thread ], [ %i.m, %.lr.ph ], [ %i.m, %.lr.ph ], [ %i.m, %.critedge50 ], [ %i.m, %bb.f ]
  %.promoted68.ph107 = phi i32 [ -1, %.thread ], [ %storemerge61, %bb.f ], [ %storemerge, %.critedge50 ], [ %storemerge61, %.lr.ph ], [ %storemerge61, %.lr.ph ]
  %.0.lcssa.ph108 = phi ptr [ %i.l, %.thread ], [ %.060, %bb.f ], [ %scevgep80, %.critedge50 ], [ %.060, %.lr.ph ], [ %.060, %.lr.ph ]
  store i32 %storemerge101.sink, ptr %i.a, align 4
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.sink.split, %bb.d
  %i.u = phi ptr [ %i.m, %bb.d ], [ %.ph, %.critedge3.sink.split ] ; 2 uses
  %.promoted68 = phi i32 [ 0, %bb.d ], [ %.promoted68.ph107, %.critedge3.sink.split ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.m, %bb.d ], [ %.0.lcssa.ph108, %.critedge3.sink.split ] ; 2 uses
  %i.v = icmp slt i32 %.promoted68, %1
  br i1 %i.v, label %.lr.ph70, label %.critedge5

.lr.ph70:                                         ; preds = %.critedge3
  %i.w = tail call ptr @__ctype_b_loc() #21
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph70, %bb.h
  %.169 = phi ptr [ %.0.lcssa, %.lr.ph70 ], [ %i.z, %bb.h ] ; 2 uses
  %i.y = phi i32 [ %.promoted68, %.lr.ph70 ], [ %i.af, %bb.h ]
  %i.z = getelementptr inbounds i8, ptr %.169, i64 -1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = and i16 %i.ad, 8192
  %.not45 = icmp eq i16 %i.ae, 0
  br i1 %.not45, label %.critedge5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add i32 %i.y, 1                         ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !50
  %exitcond.not = icmp eq i32 %i.af, %1
  br i1 %exitcond.not, label %.critedge5, label %bb.g

.critedge5:                                       ; preds = %bb.g, %bb.h, %.critedge3
  %.1.lcssa = phi ptr [ %.0.lcssa, %.critedge3 ], [ %i.z, %bb.h ], [ %.169, %bb.g ]
  %i.ag = ptrtoint ptr %.1.lcssa to i64
  %i.ah = ptrtoint ptr %i.u to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = add nsw i64 %i.ai, 1
  %i.ak = tail call ptr @cli_max_malloc(i64 noundef %i.aj) #19 ; 4 uses
  %.not46 = icmp eq ptr %i.ak, null
  br i1 %.not46, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.critedge5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %i.u, i64 %i.ai, i1 false)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.critedge.thread, %.critedge5, %bb.a, %bb.i
  %.033 = phi ptr [ null, %.critedge.thread ], [ null, %bb.a ], [ %i.ak, %bb.i ], [ null, %.critedge5 ], [ null, %bb.b ]
  ret ptr %.033
}

; Function Attrs: nounwind uwtable
define void @pdf_handle_enc(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104  ; 5 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128) #19
  br label %bb.be

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19   ; 5 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %wide.trip.count.i = zext i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %._crit_edge.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.e

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %._crit_edge.loopexit.i ] ; 4 uses
  %i.s = icmp ult i32 %.0.lcssa.i, %i.n
  br i1 %i.s, label %.lr.ph34.i, label %.preheader.i

.lr.ph34.i:                                       ; preds = %._crit_edge.i
  %i.t = zext i32 %.0.lcssa.i to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next45.i to i32
  %exitcond47.not.i = icmp eq i32 %i.n, %lftr.wideiv.i
  br i1 %exitcond47.not.i, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.f, %bb.g, %._crit_edge.i
  %.0.lcssa54.i = phi i32 [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.n, %bb.f ] ; 2 uses
  %.not40.i = icmp eq i32 %.0.lcssa54.i, 0
  br i1 %.not40.i, label %.loopexit291, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.preheader.i
  %wide.trip.count51.i = zext i32 %.0.lcssa54.i to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.g, %.lr.ph34.i
  %indvars.iv44.i = phi i64 [ %i.t, %.lr.ph34.i ], [ %indvars.iv.next45.i, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv44.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38
  %i.y = icmp eq i32 %i.x, %i.g
  br i1 %i.y, label %find_obj.exit, label %bb.g

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %.loopexit291, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph36.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next49.i, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv48.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.ad = icmp eq i32 %i.ac, %i.g
  br i1 %i.ad, label %find_obj.exit, label %bb.i

.loopexit291:                                     ; preds = %bb.i, %.preheader.i
  %i.ae = lshr i32 %i.g, 8
  %i.af = and i32 %i.g, 255
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %i.ae, i32 noundef %i.af) #19
  br label %bb.be

find_obj.exit:                                    ; preds = %bb.h, %bb.j
  %.024.i = phi ptr [ %i.aa, %bb.j ], [ %i.v, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.ai = trunc i64 %i.ah to i32                  ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.024.i, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  %i.am = and i64 %i.ah, 4294967295               ; 4 uses
  %i.an = add nsw i64 %i.am, -1                   ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.n

bb.k:                                             ; preds = %find_obj.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp uge i64 %i.an, %i.ap
  %or.cond248 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond248, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %i.au = load i32, ptr %.024.i, align 8, !tbaa !39
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.az = add i64 %i.am, %i.ax                    ; 2 uses
  %i.ba = add i64 %i.ap, %i.ay                    ; 2 uses
  %.not237 = icmp ule i64 %i.az, %i.ba
  %i.bb = icmp ugt i64 %i.az, %i.ay
  %or.cond249 = and i1 %.not237, %i.bb
  %i.bc = icmp ugt i64 %i.ba, %i.ax
end_hunk_0
