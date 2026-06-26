inline.NumInlined: 119
inline.NumDeleted: 7
begin_hunk_0_@scriptingRelease:bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr %i.a, align 4, !tbaa !9
  %i.k = tail call i32 @lua_gc(ptr noundef %i.d, i32 noundef 2, i32 noundef 0) #17 ; 0 uses
  tail call void @lua_close(ptr noundef %i.d) #17
  %i.l = call i32 @je_mallctl(ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @freeLuaScriptsAsync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @scriptingReset(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @scriptingRelease(i32 noundef %0)
  tail call void @scriptingInit(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @evalExtractShebangFlags(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
sub_0:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load i8, ptr %0, align 1
  %.not141 = icmp eq i8 %i.c, 35
  br i1 %.not141, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 33
  br i1 %i.f, label %bb.a, label %.tail.thread

bb.a:                                             ; preds = %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 10) #16 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not102 = icmp eq ptr %3, null
  br i1 %.not102, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @sdsnew(ptr noundef nonnull @.str.12) #17
  store ptr %i.i, ptr %3, align 8, !tbaa !103
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = tail call ptr @sdsnewlen(ptr noundef nonnull %0, i64 noundef %i.l) #17 ; 2 uses
  %i.n = call ptr @sdssplitargs(ptr noundef %i.m, ptr noundef nonnull %i.a) #17 ; 10 uses
  call void @sdsfree(ptr noundef %i.m) #17
  %i.o = icmp eq ptr %i.n, null
  %i.p = load i32, ptr %i.a, align 4              ; 6 uses
  %i.q = icmp eq i32 %i.p, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not101 = icmp eq ptr %3, null
  br i1 %.not101, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @sdsnew(ptr noundef nonnull @.str.13) #17
  store ptr %i.r, ptr %3, align 8, !tbaa !103
  %.pre160 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %.pre160, %bb.f ], [ %i.p, %bb.e ]
  call void @sdsfreesplitres(ptr noundef %i.n, i32 noundef %i.s) #17
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(6) @.str.14) #16
  %.not92 = icmp eq i32 %i.u, 0
  br i1 %.not92, label %.preheader107, label %bb.i

.preheader107:                                    ; preds = %bb.h
  %i.v = icmp sgt i32 %i.p, 1
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge139

.lr.ph.preheader:                                 ; preds = %.preheader107
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103  ; 2 uses
  %i.y = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #16
  %.not93211 = icmp eq i32 %i.y, 0
  br i1 %.not93211, label %.lr.ph214, label %.lr.ph._crit_edge

bb.i:                                             ; preds = %bb.h
  %.not100 = icmp eq ptr %3, null
  br i1 %.not100, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call ptr @sdsempty() #17
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.ab = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.z, ptr noundef nonnull @.str.15, ptr noundef %i.aa) #17
  store ptr %i.ab, ptr %3, align 8, !tbaa !103
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = phi i32 [ %.pre, %bb.j ], [ %i.p, %bb.i ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.n, i32 noundef %i.ac) #17
  br label %.critedge

.lr.ph:                                           ; preds = %.thread106
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next156 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #16
  %.not93 = icmp eq i32 %i.af, 0
  br i1 %.not93, label %.lr.ph214, label %.lr.ph._crit_edge, !llvm.loop !104

.lr.ph214:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ag = phi ptr [ %i.ae, %.lr.ph ], [ %i.x, %.lr.ph.preheader ]
  %i.ah = phi ptr [ %i.ad, %.lr.ph ], [ %i.w, %.lr.ph.preheader ]
  %.069138213 = phi i64 [ %.170.lcssa, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv155212 = phi i64 [ %indvars.iv.next156, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  call void @sdsrange(ptr noundef nonnull %i.ag, i64 noundef 6, i64 noundef -1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 6 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %.val.i = load i8, ptr %i.aj, align 1, !tbaa !19 ; 2 uses
  %i.ak = and i8 %.val.i, 7
  switch i8 %i.ak, label %sdslen.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %.lr.ph214
  %i.al = lshr i8 %.val.i, 3
  %i.am = zext nneg i8 %i.al to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %.lr.ph214
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %i.ap = zext i8 %i.ao to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %.lr.ph214
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -5
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !105
  %i.as = zext i16 %i.ar to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %.lr.ph214
  %i.at = getelementptr inbounds i8, ptr %i.ai, i64 -9
  %i.au = load i32, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i32 %i.au to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %.lr.ph214
  %i.aw = getelementptr inbounds i8, ptr %i.ai, i64 -17
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph214, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.ax, %bb.p ], [ %i.am, %bb.l ], [ %i.ap, %bb.m ], [ %i.as, %bb.n ], [ %i.av, %bb.o ], [ 0, %.lr.ph214 ]
  %i.ay = call ptr @sdssplitlen(ptr noundef nonnull %i.ai, i64 noundef %.0.i, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %i.b) #17 ; 4 uses
  %i.az = load i32, ptr %i.b, align 4, !tbaa !9   ; 4 uses
  %.not98125 = icmp sgt i32 %i.az, 0
  br i1 %.not98125, label %.preheader.lr.ph, label %.thread106

.preheader.lr.ph:                                 ; preds = %sdslen.exit
  %i.ba = load i64, ptr @scripts_flags_def, align 8, !tbaa !107 ; 2 uses
  %.not94120 = icmp eq i64 %i.ba, 0
  br i1 %.not94120, label %.preheader._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %i.az to i64
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @scripts_flags_def, i64 8), align 8, !tbaa !109
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.170126 = phi i64 [ %.069138213, %.preheader.preheader ], [ %i.bo, %._crit_edge ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 2 uses
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) %i.bb) #16
  %.not95207 = icmp eq i32 %i.be, 0
  br i1 %.not95207, label %._crit_edge, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader, %bb.q
  %.0121208 = phi ptr [ %i.bf, %bb.q ], [ @scripts_flags_def, %.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0121208, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !107 ; 2 uses
  %.not94 = icmp eq i64 %i.bg, 0
  br i1 %.not94, label %.preheader._crit_edge, label %bb.q, !llvm.loop !110

bb.q:                                             ; preds = %.lr.ph210
  %i.bh = getelementptr inbounds nuw i8, ptr %.0121208, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !109
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) %i.bi) #16
  %.not95 = icmp eq i32 %i.bj, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph210, !llvm.loop !110

.preheader._crit_edge:                            ; preds = %.preheader.lr.ph, %.lr.ph210
  %.066.lcssa110 = phi i64 [ %indvars.iv, %.lr.ph210 ], [ 0, %.preheader.lr.ph ]
  %.not97 = icmp eq ptr %3, null
  br i1 %.not97, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader._crit_edge
  %i.bk = call ptr @sdsempty() #17
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.066.lcssa110
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !103
  %i.bn = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.bk, ptr noundef nonnull @.str.18, ptr noundef %i.bm) #17
  store ptr %i.bn, ptr %3, align 8, !tbaa !103
  %.pre159 = load i32, ptr %i.b, align 4, !tbaa !9
  br label %bb.s

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.lcssa = phi i64 [ %i.ba, %.preheader ], [ %i.bg, %bb.q ]
  %i.bo = or i64 %.lcssa, %.170126                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread106, label %.preheader, !llvm.loop !111

.thread106:                                       ; preds = %._crit_edge, %sdslen.exit
  %.170.lcssa = phi i64 [ %.069138213, %sdslen.exit ], [ %i.bo, %._crit_edge ] ; 2 uses
  call void @sdsfreesplitres(ptr noundef %i.ay, i32 noundef %i.az) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155212, 1 ; 3 uses
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next156, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge139, !llvm.loop !104

bb.s:                                             ; preds = %.preheader._crit_edge, %bb.r
  %i.bs = phi i32 [ %i.az, %.preheader._crit_edge ], [ %.pre159, %bb.r ]
  call void @sdsfreesplitres(ptr noundef %i.ay, i32 noundef %i.bs) #17
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.n, i32 noundef %i.bt) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.critedge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa196 = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.bp, %.lr.ph ]
  %.lcssa192 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %.not99 = icmp eq ptr %3, null
  br i1 %.not99, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph._crit_edge
  %i.bu = call ptr @sdsempty() #17
  %i.bv = load ptr, ptr %.lcssa192, align 8, !tbaa !103
  %i.bw = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.bu, ptr noundef nonnull @.str.19, ptr noundef %i.bv) #17
  store ptr %i.bw, ptr %3, align 8, !tbaa !103
  %.pre158 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph._crit_edge
  %i.bx = phi i32 [ %.pre158, %bb.t ], [ %.lcssa196, %.lr.ph._crit_edge ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.n, i32 noundef %i.bx) #17
  br label %.critedge

._crit_edge139:                                   ; preds = %.thread106, %.preheader107
  %.069.lcssa = phi i64 [ 0, %.preheader107 ], [ %.170.lcssa, %.thread106 ]
  %.lcssa112 = phi i32 [ %i.p, %.preheader107 ], [ %i.bp, %.thread106 ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.n, i32 noundef %.lcssa112) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %._crit_edge139, %.tail
  %.675 = phi i64 [ 16, %.tail ], [ %.069.lcssa, %._crit_edge139 ], [ 16, %sub_0 ]
  %.168 = phi i64 [ 0, %.tail ], [ %i.l, %._crit_edge139 ], [ 0, %sub_0 ]
  %.not103 = icmp eq ptr %2, null
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.tail.thread
  store i64 %.168, ptr %2, align 8, !tbaa !106
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.tail.thread
  store i64 %.675, ptr %1, align 8, !tbaa !106
  br label %bb.x

.critedge:                                        ; preds = %bb.s, %bb.u, %bb.k, %bb.g, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %bb.w
  %.6 = phi i32 [ 0, %bb.w ], [ -1, %.critedge ]
  ret i32 %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #1

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @sdssplitargs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

declare void @sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @sdscatfmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @sdsrange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @sdssplitlen(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @evalGetCommandFlags(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = icmp eq ptr %i.f, @evalShaCommand
  %i.h = icmp eq ptr %i.f, @evalShaRoCommand
  %spec.select = or i1 %i.g, %i.h                 ; 3 uses
  %i.i = zext i1 %spec.select to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121  ; 6 uses
  br i1 %spec.select, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i = load i8, ptr %i.p, align 1, !tbaa !19
  %i.q = and i8 %.val.i, 7
  switch i8 %i.q, label %sdslen.exit.thread [
    i8 4, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.v = load i16, ptr %i.u, align 1, !tbaa !105
  %i.w = zext i16 %i.v to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ %i.z, %bb.e ], [ %i.t, %bb.c ], [ %i.w, %bb.d ]
  %.not = icmp eq i64 %.0.i, 40
  br i1 %.not, label %._crit_edge, label %sdslen.exit.thread

._crit_edge:                                      ; preds = %bb.a, %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  call fastcc void @evalCalcFunctionName(i32 noundef %i.i, ptr noundef %i.o, ptr noundef %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !70
  %i.af = call ptr @dictFind(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #17 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !123
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  br i1 %spec.select, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121
  %i.am = call i32 @evalExtractShebangFlags(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.k, label %._crit_edge28

bb.i:                                             ; preds = %._crit_edge
  %i.ao = call ptr @dictGetVal(ptr noundef nonnull %i.af) #17
  br label %._crit_edge28
end_hunk_0
