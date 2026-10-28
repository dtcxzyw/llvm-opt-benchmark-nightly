Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_message?download=true
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
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !56
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %push.exit62.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %.181, ptr %i.dd, align 8, !tbaa !57
  %i.de = call ptr @cli_malloc(i64 noundef 16) #16 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %push.exit62.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = call ptr @cli_strdup(ptr noundef nonnull %.177) #16 ; 2 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !56
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %push.exit62.thread, label %push.exit64

push.exit64:                                      ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.cz, ptr %i.di, align 8, !tbaa !57
  br label %compare.exit.thread

push.exit62.thread:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  call void @free(ptr noundef %i.e) #16
  call void @free(ptr noundef %i.g) #16
  br label %bb.ag

compare.exit.thread:                              ; preds = %pop.exit54, %push.exit64, %bb.aa, %compare.exit
  %.17794 = phi ptr [ %.177, %compare.exit ], [ %.177, %push.exit64 ], [ %.177, %bb.aa ], [ %.076107, %pop.exit54 ]
  %.17993 = phi ptr [ %.179, %compare.exit ], [ %.179, %push.exit64 ], [ %.179, %bb.aa ], [ %.078106, %pop.exit54 ]
  %.2 = phi ptr [ %.6, %compare.exit ], [ %i.de, %push.exit64 ], [ %.181, %bb.aa ], [ %.6, %pop.exit54 ] ; 2 uses
  %.1 = phi i32 [ %.0108, %compare.exit ], [ %i.cc, %push.exit64 ], [ %i.cc, %bb.aa ], [ %.0108, %pop.exit54 ] ; 2 uses
  %.not.i = icmp eq ptr %.2, null
  br i1 %.not.i, label %pop.exit, label %bb.l, !llvm.loop !53

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
  %.042 = phi i32 [ -2, %bb.b ], [ 100, %bb.a ], [ -2, %bb.d ], [ -5, %bb.g ], [ -2, %push.exit.thread ], [ -2, %push.exit58.thread ], [ -2, %push.exit62.thread ], [ %i.dm, %bb.af ], [ 0, %pop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @messageGetMimeType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !16
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = tail call ptr @cli_strdup(ptr noundef nonnull %.0) #16
  store ptr %i.d, ptr %i.b, align 8, !tbaa !17
  ret void
}

declare ptr @cli_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @messageGetMimeSubtype(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.8, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local void @messageSetDispositionType(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %1, align 1, !tbaa !27      ; 2 uses
  %.not1722 = icmp eq i8 %i.d, 0
  br i1 %.not1722, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = tail call ptr @__ctype_b_loc() #17
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.g = phi i8 [ %i.d, %.lr.ph ], [ %i.m, %bb.f ]
  %.023 = phi ptr [ %1, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !29
  %i.k = and i16 %i.j, 8192
  %.not18 = icmp eq i16 %i.k, 0
  br i1 %.not18, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !27    ; 2 uses
  %.not17 = icmp eq i8 %i.m, 0
  br i1 %.not17, label %._crit_edge, label %bb.e, !llvm.loop !58

.critedge:                                        ; preds = %bb.e
  %i.n = tail call ptr @cli_strdup(ptr noundef nonnull %.023) #16 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !18
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.o = tail call i64 @strstrip(ptr noundef nonnull %i.n) #16 ; 0 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.preheader
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %._crit_edge, %bb.d
  ret void
}

declare i64 @strstrip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @messageGetDispositionType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.8, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local void @messageAddArgument(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.loopexit, label %.preheader47

.preheader47:                                     ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #17       ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader47
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %.preheader47 ] ; 2 uses
  %.032 = phi ptr [ %i.j, %bb.b ], [ %1, %.preheader47 ] ; 20 uses
  %i.e = load i8, ptr %.032, align 1, !tbaa !27   ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !29
  %i.i = and i16 %i.h, 8192
  %.not = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !59

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.e, 0
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull %.032) #16
  %i.l = tail call fastcc i32 @usefulArg(ptr noundef %.032)
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @strcasecmp(ptr noundef nonnull %.032, ptr noundef nonnull %i.s) #18
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !60

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.031.lcssa = phi i32 [ 0, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 3 uses
  %i.x = icmp eq i32 %.031.lcssa, %i.n
  br i1 %i.x, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.031.lcssa76 = phi i32 [ %.031.lcssa, %._crit_edge ], [ %i.n, %bb.g ]
  %i.y = add nuw nsw i32 %i.n, 1                  ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = sext i32 %i.y to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call ptr @cli_realloc(ptr noundef %i.aa, i64 noundef %i.ac) #16 ; 2 uses
  %.not39 = icmp eq ptr %i.ad, null
  br i1 %.not39, label %.thread, label %bb.h

.thread:                                          ; preds = %._crit_edge.thread
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !20
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.m, align 8, !tbaa !20
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge.thread
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.031.lcssa75 = phi i32 [ %.031.lcssa76, %bb.h ], [ %.031.lcssa, %._crit_edge ] ; 3 uses
  %i.ag = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.032, ptr noundef nonnull dereferenceable(1) @.str.110) #18
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.111) #16
  br label %rfc2231.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.032, ptr noundef nonnull dereferenceable(1) @.str.112) #18 ; 2 uses
  %.not59.i = icmp eq ptr %i.ah, null
  br i1 %.not59.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.032, ptr noundef nonnull dereferenceable(1) @.str.113) #18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %rfc2231.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.073.i = phi i32 [ 0, %bb.l ], [ 2, %bb.k ]
  %.04772.i = phi ptr [ %i.ai, %bb.l ], [ %i.ah, %bb.k ] ; 4 uses
  %.04772.i88 = ptrtoaddr ptr %.04772.i to i64    ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.114, ptr noundef nonnull %.032) #16
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.032) #18
  %i.al = add i64 %i.ak, 1
  %i.am = tail call ptr @cli_malloc(i64 noundef %i.al) #16 ; 12 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %rfc2231.exit.thread, label %.preheader74.i

rfc2231.exit.thread:                              ; preds = %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = zext nneg i32 %.031.lcssa75 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr null, ptr %i.as, align 8, !tbaa !21
  br label %.loopexit

.preheader74.i:                                   ; preds = %.thread.i
  %.not6075.i = icmp eq ptr %.032, %.04772.i
  br i1 %.not6075.i, label %._crit_edge.i, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader74.i
  %i.at = add i64 %indvar, %i.a
  %2 = sub i64 %.04772.i88, %i.at                 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8
  %3 = ptrtoaddr ptr %.032 to i64
  %i.au = sub i64 %3, %i.an
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check89 = icmp ult i64 %2, 32
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %n.vec ; 2 uses
  %i.ax = getelementptr i8, ptr %.032, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.032, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep90, align 1, !tbaa !27
  %wide.load91 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !27
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load91, ptr %i.az, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %2, -8                       ; 4 uses
  %i.bb = getelementptr i8, ptr %i.am, i64 %n.vec92 ; 2 uses
  %i.bc = getelementptr i8, ptr %.032, i64 %n.vec92 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %i.am, i64 %index93
  %next.gep95 = getelementptr i8, ptr %.032, i64 %index93
  %wide.load96 = load <8 x i8>, ptr %next.gep95, align 1, !tbaa !27
  store <8 x i8> %wide.load96, ptr %next.gep94, align 1, !tbaa !27
  %index.next97 = add nuw i64 %index93, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %2, %n.vec92
  br i1 %cmp.n98, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04377.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.05276.i.ph = phi ptr [ %.032, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 3 uses
  %.05276.i.ph105 = ptrtoaddr ptr %.05276.i.ph to i64 ; 2 uses
  %i.be = sub i64 %.04772.i88, %.05276.i.ph105
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.04377.i.prol = phi ptr [ %i.bh, %.lr.ph.i.prol ], [ %.04377.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.05276.i.prol = phi ptr [ %i.bf, %.lr.ph.i.prol ], [ %.05276.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05276.i.prol, i64 1 ; 3 uses
  %i.bg = load i8, ptr %.05276.i.prol, align 1, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %.04377.i.prol, i64 1 ; 3 uses
  store i8 %i.bg, ptr %.04377.i.prol, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !63

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa101.unr.a = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %.04377.i.unr = phi ptr [ %.04377.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %.05276.i.unr = phi ptr [ %.05276.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bi = sub i64 %.05276.i.ph105, %.04772.i88
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04377.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %.04377.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.05276.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %.05276.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05276.i, i64 1
  %i.bl = load i8, ptr %.05276.i, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.04377.i, i64 1
  store i8 %i.bl, ptr %.04377.i, align 1, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %.05276.i, i64 2
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.04377.i, i64 2
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %.05276.i, i64 3
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %.04377.i, i64 3
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.05276.i, i64 4
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.04377.i, i64 4
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %.05276.i, i64 5
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.04377.i, i64 5
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %.05276.i, i64 6
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.04377.i, i64 6
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.05276.i, i64 7
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.04377.i, i64 7
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.05276.i, i64 8 ; 3 uses
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %.04377.i, i64 8 ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !27
  %.not60.i.7 = icmp eq ptr %i.cf, %.04772.i
  br i1 %.not60.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !64

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader74.i
  %.052.lcssa.i = phi ptr [ %.032, %.preheader74.i ], [ %i.bc, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %.lcssa101.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.cf, %.lr.ph.i ]
  %.043.lcssa.i = phi ptr [ %i.am, %.preheader74.i ], [ %i.bb, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %.lcssa100.unr, %.lr.ph.i.prol.loopexit ], [ %i.ch, %.lr.ph.i ] ; 2 uses
  store i8 61, ptr %.043.lcssa.i, align 1, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.i
  %.148.i = phi ptr [ %.04772.i, %._crit_edge.i ], [ %i.ci, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.148.i, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.148.i, align 1, !tbaa !27
  %.not61.i = icmp eq i8 %i.cj, 61
  br i1 %.not61.i, label %.preheader.preheader.i, label %bb.m, !llvm.loop !65

.preheader.preheader.i:                           ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ai, %.preheader.preheader.i
  %.249.i = phi ptr [ %i.dv, %bb.ai ], [ %i.ci, %.preheader.preheader.i ] ; 6 uses
  %.144.i = phi ptr [ %.346.i, %bb.ai ], [ %i.ck, %.preheader.preheader.i ] ; 11 uses
  %.1.i = phi i32 [ %.2.i, %bb.ai ], [ %.073.i, %.preheader.preheader.i ] ; 2 uses
  %i.cl = load i8, ptr %.249.i, align 1, !tbaa !27 ; 5 uses
  %.not62.i = icmp eq i8 %i.cl, 0
  br i1 %.not62.i, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %.preheader.i
  switch i32 %.1.i, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp eq i8 %i.cl, 39
  %spec.select.i = zext i1 %i.cm to i32
  br label %thread-pre-split.i

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp eq i8 %i.cl, 39
  %spec.select64.i = select i1 %i.cn, i32 2, i32 1
  br label %thread-pre-split.i

bb.q:                                             ; preds = %bb.n
  %i.co = icmp eq i8 %i.cl, 37
  br i1 %i.co, label %bb.r, label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.249.i, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27  ; 10 uses
  switch i8 %i.cq, label %bb.s [
    i8 0, label %bb.ai
    i8 10, label %bb.ai
  ]

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.cs = sext i8 %i.cq to i32
  %i.ct = sext i8 %i.cq to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !29
  %i.cw = and i16 %i.cv, 2048
  %.not.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = add i8 %i.cq, -48
  br label %hex.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cy = add i8 %i.cq, -65
  %or.cond.i.i = icmp ult i8 %i.cy, 6
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = add nsw i8 %i.cq, -55
  br label %hex.exit.i

bb.w:                                             ; preds = %bb.u
  %i.da = add i8 %i.cq, -97
  %or.cond5.i.i = icmp ult i8 %i.da, 6
  br i1 %or.cond5.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.db = add nsw i8 %i.cq, -87
  br label %hex.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99, i32 noundef %i.cs) #16
  br label %hex.exit.i

hex.exit.i:                                       ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %.0.i.i = phi i8 [ %i.cx, %bb.t ], [ %i.cz, %bb.v ], [ %i.db, %bb.x ], [ 61, %bb.y ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.249.i, i64 2 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !27  ; 8 uses
  switch i8 %i.dd, label %bb.aa [
    i8 0, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %hex.exit.i, %hex.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.144.i, i64 1
  store i8 %.0.i.i, ptr %.144.i, align 1, !tbaa !27
  br label %thread-pre-split.i

bb.aa:                                            ; preds = %hex.exit.i
  %i.df = shl i8 %.0.i.i, 4
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.dh = sext i8 %i.dd to i32
  %i.di = sext i8 %i.dd to i64
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !29
  %i.dl = and i16 %i.dk, 2048
  %.not.i65.i = icmp eq i16 %i.dl, 0
  br i1 %.not.i65.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add i8 %i.dd, -48
  br label %hex.exit69.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = add i8 %i.dd, -65
  %or.cond.i67.i = icmp ult i8 %i.dn, 6
  br i1 %or.cond.i67.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.do = add nsw i8 %i.dd, -55
  br label %hex.exit69.i

bb.ae:                                            ; preds = %bb.ac
  %i.dp = add i8 %i.dd, -97
  %or.cond5.i68.i = icmp ult i8 %i.dp, 6
  br i1 %or.cond5.i68.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dq = add nsw i8 %i.dd, -87
end_hunk_0
