inline.NumInlined: 71
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@simil:bb.a
  %i.ct = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.179) #18 ; 2 uses
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.177) #18 ; 2 uses
  %i.cv = icmp ugt i64 %i.ct, 1
  %i.cw = icmp ne i64 %i.cu, 0
  %or.cond5 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond5, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = icmp ugt i64 %i.cu, 1
  %i.cy = icmp ne i64 %i.ct, 0
  %or.cond7 = and i1 %i.cy, %i.cx
  br i1 %or.cond7, label %bb.ab, label %compare.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cz = call ptr @cli_malloc(i64 noundef 16) #16 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %push.exit62.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = call ptr @cli_strdup(ptr noundef nonnull %.179) #16 ; 2 uses
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !32
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %push.exit62.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %.181, ptr %i.dd, align 8, !tbaa !35
  %i.de = call ptr @cli_malloc(i64 noundef 16) #16 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %push.exit62.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = call ptr @cli_strdup(ptr noundef nonnull %.177) #16 ; 2 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !32
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %push.exit62.thread, label %push.exit64

push.exit64:                                      ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.cz, ptr %i.di, align 8, !tbaa !35
  br label %compare.exit.thread

push.exit62.thread:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  call void @free(ptr noundef %i.e) #16
  call void @free(ptr noundef %i.g) #16
  br label %bb.ag

compare.exit.thread:                              ; preds = %pop.exit54, %push.exit64, %bb.aa, %compare.exit
  %.17794 = phi ptr [ %.177, %compare.exit ], [ %.177, %push.exit64 ], [ %.177, %bb.aa ], [ %.076107, %pop.exit54 ]
  %.17993 = phi ptr [ %.179, %compare.exit ], [ %.179, %push.exit64 ], [ %.179, %bb.aa ], [ %.078106, %pop.exit54 ]
  %.2 = phi ptr [ %.6, %compare.exit ], [ %i.de, %push.exit64 ], [ %.181, %bb.aa ], [ %.6, %pop.exit54 ] ; 2 uses
  %.1 = phi i32 [ %.042108, %compare.exit ], [ %i.cc, %push.exit64 ], [ %i.cc, %bb.aa ], [ %.042108, %pop.exit54 ] ; 2 uses
  %.not.i = icmp eq ptr %.2, null
  br i1 %.not.i, label %pop.exit, label %bb.l, !llvm.loop !40

pop.exit:                                         ; preds = %compare.exit.thread
  call void @free(ptr noundef %i.e) #16
  call void @free(ptr noundef %i.g) #16
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %pop.exit
  %i.dj = mul i32 %.1, 200
  %i.dk = zext i32 %i.dj to i64
  %i.dl = udiv i64 %i.dk, %i.m
  %i.dm = trunc nuw i64 %i.dl to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %pop.exit, %bb.b, %bb.a, %push.exit62.thread, %push.exit58.thread, %push.exit.thread, %bb.g, %bb.d
  %.0 = phi i32 [ -2, %bb.b ], [ 100, %bb.a ], [ -2, %bb.d ], [ -5, %bb.g ], [ -2, %push.exit.thread ], [ -2, %push.exit58.thread ], [ -2, %push.exit62.thread ], [ %i.dm, %bb.af ], [ 0, %pop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @messageGetMimeType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @messageSetMimeSubtype(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ @.str.8, %bb.b ], [ %1, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = tail call ptr @cli_strdup(ptr noundef nonnull %.0) #16
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  ret void
}

declare ptr @cli_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @messageGetMimeSubtype(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.8, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local void @messageSetDispositionType(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not1722 = icmp eq i8 %i.d, 0
  br i1 %.not1722, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = tail call ptr @__ctype_b_loc() #17
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !16
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.g = phi i8 [ %i.d, %.lr.ph ], [ %i.m, %bb.f ]
  %.023 = phi ptr [ %1, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !27
  %i.k = and i16 %i.j, 8192
  %.not18 = icmp eq i16 %i.k, 0
  br i1 %.not18, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26    ; 2 uses
  %.not17 = icmp eq i8 %i.m, 0
  br i1 %.not17, label %._crit_edge, label %bb.e, !llvm.loop !41

.critedge:                                        ; preds = %bb.e
  %i.n = tail call ptr @cli_strdup(ptr noundef nonnull %.023) #16 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !16
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.o = tail call i64 @strstrip(ptr noundef nonnull %i.n) #16 ; 0 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.preheader
  store ptr null, ptr %i.a, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %._crit_edge, %bb.d
  ret void
}

declare i64 @strstrip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @messageGetDispositionType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.8, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local void @messageAddArgument(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = ptrtoint ptr %1 to i64
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.loopexit, label %.preheader47

.preheader47:                                     ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #17       ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader47
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %.preheader47 ] ; 3 uses
  %.0 = phi ptr [ %i.j, %bb.b ], [ %1, %.preheader47 ] ; 20 uses
  %i.e = load i8, ptr %.0, align 1, !tbaa !26     ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !27
  %i.i = and i16 %i.h, 8192
  %.not = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !42

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.e, 0
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull %.0) #16
  %i.l = tail call fastcc i32 @usefulArg(ptr noundef %.0)
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @strcasecmp(ptr noundef nonnull %.0, ptr noundef nonnull %i.s) #18
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.032.lcssa = phi i32 [ 0, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 3 uses
  %i.x = icmp eq i32 %.032.lcssa, %i.n
  br i1 %i.x, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.032.lcssa77 = phi i32 [ %.032.lcssa, %._crit_edge ], [ %i.n, %bb.g ]
  %i.y = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = sext i32 %i.y to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = tail call ptr @cli_realloc(ptr noundef %i.aa, i64 noundef %i.ac) #16 ; 2 uses
  %.not39 = icmp eq ptr %i.ad, null
  br i1 %.not39, label %.thread, label %bb.h

.thread:                                          ; preds = %._crit_edge.thread
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !18
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.m, align 8, !tbaa !18
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge.thread
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.032.lcssa76 = phi i32 [ %.032.lcssa77, %bb.h ], [ %.032.lcssa, %._crit_edge ] ; 3 uses
  %i.ag = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.110) #18
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.111) #16
  br label %rfc2231.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.112) #18 ; 2 uses
  %.not59.i = icmp eq ptr %i.ah, null
  br i1 %.not59.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.113) #18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %rfc2231.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.073.i = phi i32 [ 0, %bb.l ], [ 2, %bb.k ]
  %.04872.i = phi ptr [ %i.ai, %bb.l ], [ %i.ah, %bb.k ] ; 4 uses
  %.04872.i89 = ptrtoint ptr %.04872.i to i64     ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.114, ptr noundef nonnull %.0) #16
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #18
  %i.al = add i64 %i.ak, 1
  %i.am = tail call ptr @cli_malloc(i64 noundef %i.al) #16 ; 13 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %rfc2231.exit.thread, label %.preheader74.i

rfc2231.exit.thread:                              ; preds = %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = zext nneg i32 %.032.lcssa76 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr null, ptr %i.as, align 8, !tbaa !19
  br label %.loopexit

.preheader74.i:                                   ; preds = %.thread.i
  %.not6075.i = icmp eq ptr %.0, %.04872.i
  br i1 %.not6075.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader74.i
  %i.at = add i64 %indvar, %2
  %i.au = sub i64 %.04872.i89, %i.at              ; 7 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.av = add i64 %indvar, %i.a
  %i.aw = sub i64 %i.av, %i.an
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check90 = icmp ult i64 %i.au, 32
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 28
  %n.vec = and i64 %i.au, -32                     ; 5 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %n.vec ; 2 uses
  %i.ay = getelementptr i8, ptr %.0, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %next.gep91 = getelementptr i8, ptr %.0, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep91, align 1, !tbaa !26
  %wide.load92 = load <16 x i8>, ptr %i.az, align 1, !tbaa !26
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load92, ptr %i.ba, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.au, -4                    ; 4 uses
  %i.bc = getelementptr i8, ptr %i.am, i64 %n.vec95 ; 2 uses
  %i.bd = getelementptr i8, ptr %.0, i64 %n.vec95 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 3 uses
  %next.gep97 = getelementptr i8, ptr %i.am, i64 %index96
  %next.gep98 = getelementptr i8, ptr %.0, i64 %index96
  %wide.load99 = load <4 x i8>, ptr %next.gep98, align 1, !tbaa !26
  store <4 x i8> %wide.load99, ptr %next.gep97, align 1, !tbaa !26
  %index.next100 = add nuw i64 %index96, 4        ; 2 uses
  %i.be = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %i.au, %n.vec95
  br i1 %cmp.n101, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04377.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.am, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 2 uses
  %.05376.i.ph = phi ptr [ %.0, %iter.check ], [ %.0, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 3 uses
  %.05376.i.ph109 = ptrtoint ptr %.05376.i.ph to i64 ; 2 uses
  %i.bf = sub i64 %.04872.i89, %.05376.i.ph109
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.04377.i.prol = phi ptr [ %i.bi, %.lr.ph.i.prol ], [ %.04377.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.05376.i.prol = phi ptr [ %i.bg, %.lr.ph.i.prol ], [ %.05376.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.05376.i.prol, i64 1 ; 3 uses
  %i.bh = load i8, ptr %.05376.i.prol, align 1, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %.04377.i.prol, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.04377.i.prol, align 1, !tbaa !26
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !49

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa105.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %.lcssa104.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.04377.i.unr = phi ptr [ %.04377.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.05376.i.unr = phi ptr [ %.05376.i.ph, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bj = sub i64 %.05376.i.ph109, %.04872.i89
  %i.bk = icmp ugt i64 %i.bj, -8
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04377.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.04377.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.05376.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %.05376.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05376.i, i64 1
  %i.bm = load i8, ptr %.05376.i, align 1, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.04377.i, i64 1
  store i8 %i.bm, ptr %.04377.i, align 1, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %.05376.i, i64 2
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %.04377.i, i64 2
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %.05376.i, i64 3
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.04377.i, i64 3
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %.05376.i, i64 4
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %.04377.i, i64 4
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.05376.i, i64 5
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.04377.i, i64 5
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %.05376.i, i64 6
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %.04377.i, i64 6
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %.05376.i, i64 7
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %.04377.i, i64 7
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %.05376.i, i64 8 ; 3 uses
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %.04377.i, i64 8 ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !26
  %.not60.i.7 = icmp eq ptr %i.cg, %.04872.i
  br i1 %.not60.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader74.i
  %.053.lcssa.i = phi ptr [ %.0, %.preheader74.i ], [ %i.bd, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %.lcssa105.unr, %.lr.ph.i.prol.loopexit ], [ %i.cg, %.lr.ph.i ]
  %.043.lcssa.i = phi ptr [ %i.am, %.preheader74.i ], [ %i.bc, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %.lcssa104.unr, %.lr.ph.i.prol.loopexit ], [ %i.ci, %.lr.ph.i ] ; 2 uses
  store i8 61, ptr %.043.lcssa.i, align 1, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.i
  %.149.i = phi ptr [ %.04872.i, %._crit_edge.i ], [ %i.cj, %bb.m ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.149.i, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.149.i, align 1, !tbaa !26
  %.not61.i = icmp eq i8 %i.ck, 61
  br i1 %.not61.i, label %.preheader.preheader.i, label %bb.m, !llvm.loop !52

.preheader.preheader.i:                           ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ai, %.preheader.preheader.i
  %.250.i = phi ptr [ %i.dw, %bb.ai ], [ %i.cj, %.preheader.preheader.i ] ; 6 uses
  %.144.i = phi ptr [ %.346.i, %bb.ai ], [ %i.cl, %.preheader.preheader.i ] ; 11 uses
  %.1.i = phi i32 [ %.2.i, %bb.ai ], [ %.073.i, %.preheader.preheader.i ] ; 2 uses
  %i.cm = load i8, ptr %.250.i, align 1, !tbaa !26 ; 5 uses
  %.not62.i = icmp eq i8 %i.cm, 0
  br i1 %.not62.i, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %.preheader.i
  switch i32 %.1.i, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp eq i8 %i.cm, 39
  %spec.select.i = zext i1 %i.cn to i32
  br label %thread-pre-split.i

bb.p:                                             ; preds = %bb.n
  %i.co = icmp eq i8 %i.cm, 39
  %spec.select64.i = select i1 %i.co, i32 2, i32 1
  br label %thread-pre-split.i

bb.q:                                             ; preds = %bb.n
  %i.cp = icmp eq i8 %i.cm, 37
  br i1 %i.cp, label %bb.r, label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.250.i, i64 1 ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !26  ; 10 uses
  switch i8 %i.cr, label %bb.s [
    i8 0, label %bb.ai
    i8 10, label %bb.ai
  ]

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.ct = sext i8 %i.cr to i32
  %i.cu = sext i8 %i.cr to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !27
  %i.cx = and i16 %i.cw, 2048
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = add i8 %i.cr, -48
  br label %hex.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cz = add i8 %i.cr, -65
  %or.cond.i.i = icmp ult i8 %i.cz, 6
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.da = add nsw i8 %i.cr, -55
  br label %hex.exit.i

bb.w:                                             ; preds = %bb.u
  %i.db = add i8 %i.cr, -97
  %or.cond5.i.i = icmp ult i8 %i.db, 6
  br i1 %or.cond5.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dc = add nsw i8 %i.cr, -87
  br label %hex.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99, i32 noundef %i.ct) #16
  br label %hex.exit.i

hex.exit.i:                                       ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %.0.i.i = phi i8 [ %i.cy, %bb.t ], [ %i.da, %bb.v ], [ %i.dc, %bb.x ], [ 61, %bb.y ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.250.i, i64 2 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !26  ; 8 uses
  switch i8 %i.de, label %bb.aa [
    i8 0, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %hex.exit.i, %hex.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %.144.i, i64 1
  store i8 %.0.i.i, ptr %.144.i, align 1, !tbaa !26
  br label %thread-pre-split.i

bb.aa:                                            ; preds = %hex.exit.i
  %i.dg = shl i8 %.0.i.i, 4
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.di = sext i8 %i.de to i32
  %i.dj = sext i8 %i.de to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !27
  %i.dm = and i16 %i.dl, 2048
  %.not.i65.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i65.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = add i8 %i.de, -48
  br label %hex.exit69.i

bb.ac:                                            ; preds = %bb.aa
  %i.do = add i8 %i.de, -65
  %or.cond.i67.i = icmp ult i8 %i.do, 6
  br i1 %or.cond.i67.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add nsw i8 %i.de, -55
  br label %hex.exit69.i

bb.ae:                                            ; preds = %bb.ac
  %i.dq = add i8 %i.de, -97
  %or.cond5.i68.i = icmp ult i8 %i.dq, 6
  br i1 %or.cond5.i68.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dr = add nsw i8 %i.de, -87
  br label %hex.exit69.i
end_hunk_0
