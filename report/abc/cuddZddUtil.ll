Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddZddUtil?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cudd_zddPrintCover:bb.a
bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.l, align 8, !tbaa !32
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 3, ptr %i.m, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  tail call fastcc void @zddPrintCoverAux(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, ptr noundef %i.f)
  tail call void @free(ptr noundef nonnull %i.f) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.015 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.015
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @zddPrintCoverAux(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %bb.a
  %.tr70.ph = phi ptr [ %1, %bb.a ], [ %i.av, %tailrecurse.outer.backedge ] ; 6 uses
  %.tr71.ph = phi i32 [ %2, %bb.a ], [ %i.ba, %tailrecurse.outer.backedge ]
  %i.e = ptrtoint ptr %.tr70.ph to i64
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = sext i32 %.tr71.ph to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %indvars.iv = phi i64 [ %indvars.iv.next, %tailrecurse.backedge ], [ %i.h, %tailrecurse.outer ] ; 5 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !34
  %i.j = icmp eq i32 %i.i, 2147483647
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %tailrecurse
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.l = icmp eq ptr %.tr70.ph, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.d, align 4, !tbaa !8
  %i.n = trunc nsw i64 %indvars.iv to i32
  %.not69 = icmp eq i32 %i.m, %i.n
  br i1 %.not69, label %.preheader, label %tailrecurse.backedge

.preheader:                                       ; preds = %bb.c
  %i.o = icmp sgt i64 %indvars.iv, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.d

tailrecurse.backedge:                             ; preds = %bb.c, %bb.h
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %3, i64 %i.t
  store i32 0, ptr %i.u, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv80 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next81, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = shl nsw i32 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = add nsw i32 %i.x, %i.z                  ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ac = icmp ult i32 %i.aa, 5
  br i1 %i.ac, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.ad = zext nneg i32 %i.aa to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.zddPrintCoverAux, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 64, %bb.d ]
  %i.ae = tail call i32 @putc(i32 noundef %.sink, ptr noundef %i.ab) ; 0 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.af = load i32, ptr %i.d, align 4, !tbaa !8
  %i.ag = trunc nuw i64 %indvars.iv.next81 to i32
  %i.ah = icmp sgt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.37, i64 3, i64 1, ptr %i.aj) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %tailrecurse
  %i.al = load i32, ptr %.tr70.ph, align 8, !tbaa !34 ; 3 uses
  %i.am = icmp eq i32 %i.al, 2147483647
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ar = phi i32 [ %i.aq, %bb.g ], [ 2147483647, %bb.f ] ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv to i32
  %.not = icmp eq i32 %i.ar, %i.as
  br i1 %.not, label %bb.i, label %tailrecurse.backedge

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.tr70.ph, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.tr70.ph, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.av
  %i.ay = zext i32 %i.al to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = add nsw i32 %i.ar, 1                    ; 2 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.az, align 4, !tbaa !27
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.j, %bb.k
  br label %tailrecurse.outer

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %i.az, align 4, !tbaa !27
  tail call fastcc void @zddPrintCoverAux(ptr noundef %0, ptr noundef %i.aw, i32 noundef %i.ba, ptr noundef %3)
  %i.bb = load i32, ptr %.tr70.ph, align 8, !tbaa !34
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc
  store i32 0, ptr %i.bd, align 4, !tbaa !27
  br label %tailrecurse.outer.backedge

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_zddPrintDebug(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %1, %i.b
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = tail call i64 @fwrite(ptr nonnull @.str, i64 19, i64 1, ptr %i.f) ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @Cudd_zddDagSize(ptr noundef %1) #14 ; 2 uses
  %i.i = icmp ne i32 %i.h, -1
  %i.j = tail call double @Cudd_zddCountMinterm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #14 ; 2 uses
  %i.k = fcmp une double %i.j, -1.000000e+00
  %narrow = select i1 %i.k, i1 %i.i, i1 false     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.1, i32 noundef %i.h, double noundef %i.j) #14 ; 0 uses
  %i.o = icmp samesign ugt i32 %3, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #14 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %cuddZddP.exit.thread, label %cuddZddP.exit

cuddZddP.exit:                                    ; preds = %bb.e
  %i.r = tail call fastcc i32 @zp2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.p)
  tail call void @st__free_table(ptr noundef nonnull %i.p) #14
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.t = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.s) ; 0 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %cuddZddP.exit.thread, label %bb.f

cuddZddP.exit.thread:                             ; preds = %bb.e, %cuddZddP.exit
  br label %bb.f

bb.f:                                             ; preds = %cuddZddP.exit, %cuddZddP.exit.thread, %bb.d
  %.2.shrunk = phi i1 [ %narrow, %cuddZddP.exit ], [ false, %cuddZddP.exit.thread ], [ %narrow, %bb.d ]
  %.2 = zext i1 %.2.shrunk to i32                 ; 2 uses
  %i.u = icmp eq i32 %3, 2
  %i.v = icmp samesign ugt i32 %3, 3
  %or.cond3 = or i1 %i.u, %i.v
  br i1 %or.cond3, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 4 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #13 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph.preheader.i, label %Cudd_zddPrintMinterm.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.x to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> splat (i32 3), ptr %i.ad, align 4, !tbaa !27
  store <4 x i32> splat (i32 3), ptr %i.ae, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Cudd_zddPrintMinterm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store i32 3, ptr %i.ag, align 4, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cudd_zddPrintMinterm.exit, label %.lr.ph.i, !llvm.loop !46

Cudd_zddPrintMinterm.exit:                        ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  tail call fastcc void @zdd_print_minterm_aux(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, ptr noundef %i.aa)
  tail call void @free(ptr noundef nonnull %i.aa) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.ah, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %Cudd_zddPrintMinterm.exit, %bb.h
  %i.ai = phi i32 [ 0, %bb.h ], [ %.2, %Cudd_zddPrintMinterm.exit ]
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !37
  %fputc = tail call i32 @fputc(i32 10, ptr %i.aj) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.f, %bb.b
  %.sink.in = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %bb.i ]
  %.029.ph = phi i32 [ 1, %bb.b ], [ %.2, %bb.f ], [ %i.ai, %bb.i ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !37
  %i.ak = tail call i32 @fflush(ptr noundef %.sink) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c
  %.029 = phi i32 [ 1, %bb.c ], [ %.029.ph, %.sink.split ]
  ret i32 %.029
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @Cudd_zddDagSize(ptr noundef) local_unnamed_addr #6

declare double @Cudd_zddCountMinterm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddZddP(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @zp2(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  tail call void @st__free_table(ptr noundef nonnull %i.a) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Cudd_zddFirstPath(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #13 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.e, align 8, !tbaa !32
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  store ptr %0, ptr %i.c, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 6 uses
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #13 ; 9 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !40
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.preheader93

.preheader93:                                     ; preds = %bb.d
  %i.r = icmp sgt i32 %i.m, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader93
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph.preheader179, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> splat (i32 2), ptr %i.s, align 4, !tbaa !27
  store <4 x i32> splat (i32 2), ptr %i.t, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader179

.lr.ph.preheader179:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.v, align 8, !tbaa !32
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader179, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader179 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 2, ptr %i.w, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader93
  %i.x = add i32 %i.m, 1                          ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #13 ; 6 uses
end_hunk_0
