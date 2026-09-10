Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/blame?download=true
inline.NumInlined: 205
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@get_blame_suspects:bb.a
  %.not.i.i = icmp ugt i32 %i.d, %i.b
  br i1 %.not.i.i, label %bb.b, label %blame_suspects_peek.exit.thread

bb.b:                                             ; preds = %bb.a
  %.pre.i.i = load ptr, ptr @blame_suspects.3, align 8, !tbaa !38
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not35.i.i = icmp eq ptr %i.g, null
  br i1 %.not35.i.i, label %blame_suspects_peek.exit.thread, label %blame_suspects_peek.exit

blame_suspects_peek.exit:                         ; preds = %bb.b
  %.b6 = load i1, ptr @blame_suspects.1, align 4
  %i.h = zext nneg i32 %i.c to i64
  %i.i = select i1 %.b6, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %blame_suspects_peek.exit.thread

blame_suspects_peek.exit.thread:                  ; preds = %bb.b, %bb.a, %blame_suspects_peek.exit
  %i.l = phi ptr [ %i.k, %blame_suspects_peek.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @blame_origin_decref(ptr noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !43
  %i.c = icmp slt i32 %i.a, 2
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @blame_origin_decref(ptr noundef nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %.val.i = load i32, ptr %i.j, align 8, !tbaa !32 ; 2 uses
  %i.k = udiv i32 %.val.i, 65532                  ; 3 uses
  %i.l = urem i32 %.val.i, 65532                  ; 2 uses
  %i.m = load i32, ptr @blame_suspects.2, align 8, !tbaa !37
  %.not.i.i.i = icmp ugt i32 %i.m, %i.k
  br i1 %.not.i.i.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %.pre.i.i.i = load ptr, ptr @blame_suspects.3, align 8, !tbaa !38
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not35.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not35.i.i.i, label %._crit_edge, label %get_blame_suspects.exit

get_blame_suspects.exit:                          ; preds = %bb.f
  %.b46 = load i1, ptr @blame_suspects.1, align 4
  %i.q = zext nneg i32 %i.l to i64
  %i.r = select i1 %.b46, i64 %i.q, i64 0
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 4 uses
  %.not2128 = icmp eq ptr %i.t, null
  br i1 %.not2128, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %get_blame_suspects.exit
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %.lr.ph._crit_edge, label %.lr.ph50

.lr.ph:                                           ; preds = %.lr.ph50
  %i.v = icmp eq ptr %i.al, %0
  br i1 %i.v, label %.lr.ph._crit_edge, label %.lr.ph50, !llvm.loop !228

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.030.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0172949, %.lr.ph ] ; 2 uses
  %.01729.lcssa = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.al, %.lr.ph ]
  %.not22 = icmp eq ptr %.030.lcssa, null
  %i.w = getelementptr inbounds nuw i8, ptr %.01729.lcssa, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %.030.lcssa, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph._crit_edge
  %.pre.i.i.i24 = load ptr, ptr @blame_suspects.3, align 8, !tbaa !38
  %i.z = zext nneg i32 %i.k to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i24, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %.not35.i.i.i25 = icmp eq ptr %i.ab, null
  br i1 %.not35.i.i.i25, label %.thread8.i.i.i, label %set_blame_suspects.exit

.thread8.i.i.i:                                   ; preds = %bb.h
  %.b44 = load i1, ptr @blame_suspects.1, align 4
  %i.ac = select i1 %.b44, i64 8, i64 0
  %i.ad = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef %i.ac) #20 ; 2 uses
  %i.ae = load ptr, ptr @blame_suspects.3, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.z
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !40
  br label %set_blame_suspects.exit

set_blame_suspects.exit:                          ; preds = %bb.h, %.thread8.i.i.i
  %i.ag = phi ptr [ %i.ad, %.thread8.i.i.i ], [ %i.ab, %bb.h ]
  %.b45 = load i1, ptr @blame_suspects.1, align 4
  %i.ah = zext nneg i32 %i.l to i64
  %i.ai = select i1 %.b45, i64 %i.ah, i64 0
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %set_blame_suspects.exit, %bb.g
  tail call void @free(ptr noundef %0) #20
  br label %bb.j

.lr.ph50:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172949 = phi ptr [ %i.al, %.lr.ph ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0172949, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 4 uses
  %.not21 = icmp eq ptr %i.al, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph50, %bb.e, %bb.f, %get_blame_suspects.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str) #21
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @blame_sort_final(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sort_blame_entries.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %.023.val.i5 = load ptr, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %.not27.not.i6 = icmp eq ptr %.023.val.i5, null
  br i1 %.not27.not.i6, label %.split.us.i.preheader, label %.split.i

.split.us.i.preheader:                            ; preds = %._crit_edge.i, %.preheader.i.preheader
  %.124.us.i.ph = phi ptr [ %i.c, %.preheader.i.preheader ], [ %.023.val.i9, %._crit_edge.i ]
  %.0.us.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ae, %._crit_edge.i ]
  br label %.split.us.i

.split.i:                                         ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.023.val.i9 = phi ptr [ %.023.val.i, %._crit_edge.i ], [ %.023.val.i5, %.preheader.i.preheader ] ; 3 uses
  %.022.i8 = phi i64 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.023.i7 = phi ptr [ %.023.val.i9, %._crit_edge.i ], [ %i.c, %.preheader.i.preheader ] ; 3 uses
  store ptr null, ptr %.023.i7, align 8, !tbaa !53
  %i.d = and i64 %.022.i8, 1
  %.not2838.i = icmp eq i64 %i.d, 0
  br i1 %.not2838.i, label %._crit_edge.i, label %.lr.ph.i

.split.us.i:                                      ; preds = %.split.us.i.preheader, %bb.h
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.h ], [ 0, %.split.us.i.preheader ] ; 2 uses
  %.124.us.i = phi ptr [ %.2.us.i, %bb.h ], [ %.124.us.i.ph, %.split.us.i.preheader ] ; 5 uses
  %.0.us.i = phi i64 [ %i.q, %bb.h ], [ %.0.us.i.ph, %.split.us.i.preheader ] ; 3 uses
  %i.e = and i64 %.0.us.i, 1
  %.not28.us.i = icmp eq i64 %i.e, 0
  br i1 %.not28.us.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv48.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %.124.us.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %1 = icmp sle i32 %i.i, %i.k                    ; 3 uses
  %2 = zext i1 %1 to i32
  %spec.select.i.us.i = select i1 %1, ptr %.124.us.i, ptr %i.g
  %spec.select35.i.us.i = select i1 %1, ptr %i.g, ptr %.124.us.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.133.i.us.i = phi ptr [ %spec.select.i.us.i, %bb.b ], [ %.2.val.i.us.i, %bb.f ] ; 4 uses
  %.1.i.us.i = phi ptr [ %spec.select35.i.us.i, %bb.b ], [ %.133.i.us.i, %bb.f ]
  %.018.i.us.i = phi i32 [ %2, %bb.b ], [ %5, %bb.f ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.133.i.us.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.2.i.us.i = phi ptr [ %.1.i.us.i, %bb.c ], [ %.2.val.i.us.i, %bb.e ] ; 3 uses
  %.2.val.i.us.i = load ptr, ptr %.2.i.us.i, align 8, !tbaa !53 ; 4 uses
  %.not.i.us.i = icmp eq ptr %.2.val.i.us.i, null
  br i1 %.not.i.us.i, label %sort_blame_entries__merge.exit.us.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.2.val.i.us.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !54
  %i.o = load i32, ptr %i.l, align 8, !tbaa !54
  %i.p = icmp sgt i32 %i.n, %i.o
  %3 = select i1 %i.p, i32 1, i32 -1
  %4 = icmp slt i32 %3, %.018.i.us.i
  br i1 %4, label %bb.d, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  store ptr %.133.i.us.i, ptr %.2.i.us.i, align 8, !tbaa !53
  %5 = xor i32 %.018.i.us.i, 1
  br label %bb.c

sort_blame_entries__merge.exit.us.i:              ; preds = %bb.d
  store ptr %.133.i.us.i, ptr %.2.i.us.i, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.split.us.i
  %.not29.us.i = icmp eq i64 %.0.us.i, 0
  br i1 %.not29.us.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %sort_blame_entries__merge.exit.us.i
  %.2.us.i = phi ptr [ %spec.select35.i.us.i, %sort_blame_entries__merge.exit.us.i ], [ %.124.us.i, %bb.g ]
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %i.q = lshr i64 %.0.us.i, 1
  br label %.split.us.i

.lr.ph.i:                                         ; preds = %.split.i, %sort_blame_entries__merge.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sort_blame_entries__merge.exit.i ], [ 0, %.split.i ] ; 2 uses
  %.041.i = phi i64 [ %i.ac, %sort_blame_entries__merge.exit.i ], [ %.022.i8, %.split.i ] ; 2 uses
  %.12439.i = phi ptr [ %spec.select35.i.i, %sort_blame_entries__merge.exit.i ], [ %.023.i7, %.split.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %.12439.i, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !54
  %6 = icmp sle i32 %i.u, %i.w                    ; 3 uses
  %7 = zext i1 %6 to i32
  %spec.select.i.i = select i1 %6, ptr %.12439.i, ptr %i.s
  %spec.select35.i.i = select i1 %6, ptr %i.s, ptr %.12439.i ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %.133.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %.2.val.i.i, %bb.l ] ; 4 uses
  %.1.i.i = phi ptr [ %spec.select35.i.i, %.lr.ph.i ], [ %.133.i.i, %bb.l ]
  %.018.i.i = phi i32 [ %7, %.lr.ph.i ], [ %10, %bb.l ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.2.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.2.val.i.i, %bb.k ] ; 3 uses
  %.2.val.i.i = load ptr, ptr %.2.i.i, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.2.val.i.i, null
  br i1 %.not.i.i, label %sort_blame_entries__merge.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.2.val.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !54
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !54
  %i.ab = icmp sgt i32 %i.z, %i.aa
  %8 = select i1 %i.ab, i32 1, i32 -1
  %9 = icmp slt i32 %8, %.018.i.i
  br i1 %9, label %bb.j, label %bb.l, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  store ptr %.133.i.i, ptr %.2.i.i, align 8, !tbaa !53
  %10 = xor i32 %.018.i.i, 1
  br label %bb.i

sort_blame_entries__merge.exit.i:                 ; preds = %bb.j
  store ptr %.133.i.i, ptr %.2.i.i, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = lshr i64 %.041.i, 1
  %i.ad = and i64 %.041.i, 2
  %.not28.i = icmp eq i64 %i.ad, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %sort_blame_entries__merge.exit.i, %.split.i
  %.124.lcssa37.i = phi ptr [ %.023.i7, %.split.i ], [ %spec.select35.i.i, %sort_blame_entries__merge.exit.i ]
  %.020.lcssa36.i = phi i64 [ 0, %.split.i ], [ %indvars.iv.next.i, %sort_blame_entries__merge.exit.i ]
  %i.ae = add i64 %.022.i8, 1                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.020.lcssa36.i
  store ptr %.124.lcssa37.i, ptr %i.af, align 8, !tbaa !51
  %.023.val.i = load ptr, ptr %.023.val.i9, align 8, !tbaa !53 ; 2 uses
  %.not27.not.i = icmp eq ptr %.023.val.i, null
  br i1 %.not27.not.i, label %.split.us.i.preheader, label %.split.i

.thread.i:                                        ; preds = %bb.g
  store ptr %.124.us.i, ptr %i.b, align 8, !tbaa !51
  br label %sort_blame_entries.exit

sort_blame_entries.exit:                          ; preds = %bb.a, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blame_coalesce(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not36 = icmp eq ptr %i.b, null
  br i1 %.not36, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not2858 = icmp eq ptr %i.c, null
  br i1 %.not2858, label %.critedge, label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.d = phi ptr [ %i.am, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 13 uses
  %.0263759 = phi ptr [ %.0, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0263759, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph60
  %i.j = getelementptr inbounds nuw i8, ptr %.0263759, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %.0263759, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68   ; 3 uses
  %i.n = add nsw i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !67
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0263759, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !54
  %i.t = add nsw i32 %i.s, %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !54
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.0263759, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0263759, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !68
  %i.aj = add nsw i32 %i.ai, %i.m
  store i32 %i.aj, ptr %i.l, align 4, !tbaa !68
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !53
  store ptr %i.ak, ptr %.0263759, align 8, !tbaa !53
  tail call void @blame_origin_decref(ptr noundef %i.h)
  tail call void @free(ptr noundef nonnull %i.d) #20
  %i.al = getelementptr inbounds nuw i8, ptr %.0263759, i64 28
  store i32 0, ptr %i.al, align 4, !tbaa !71
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph60, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi ptr [ %.0263759, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph60 ] ; 2 uses
  %i.am = load ptr, ptr %.0, align 8, !tbaa !53   ; 2 uses
  %.not28 = icmp eq ptr %i.am, null
  br i1 %.not28, label %.critedge, label %.lr.ph60

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !72
  %.not29 = icmp eq i32 %i.ao, 0
  br i1 %.not29, label %sanity_check_refcnt.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %.012.i = load ptr, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  %.not13.i = icmp eq ptr %.012.i, null
  br i1 %.not13.i, label %sanity_check_refcnt.exit, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.g, %.thread.i
  %.015.ph.i = phi ptr [ %.018.i, %.thread.i ], [ %.012.i, %bb.g ]
  %i.ap = phi i1 [ false, %.thread.i ], [ true, %bb.g ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.outer.i
  %.015.i = phi ptr [ %.0.i, %bb.h ], [ %.015.ph.i, %.lr.ph.outer.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !43
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %.0.i = load ptr, ptr %.015.i, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.thread.i:                                        ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = tail call ptr @oid_to_hex(ptr noundef nonnull %i.az) #20
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !43
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.aw, ptr noundef %i.ba, i32 noundef %i.bc) #22 ; 0 uses
  %.018.i = load ptr, ptr %.015.i, align 8, !tbaa !51 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, null
  br i1 %.not19.i, label %._crit_edge.thread21.i, label %.lr.ph.outer.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.h
  br i1 %i.ap, label %sanity_check_refcnt.exit, label %._crit_edge.thread21.i

._crit_edge.thread21.i:                           ; preds = %.thread.i, %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !75
  tail call void %i.bf(ptr noundef %0, i32 noundef 1) #20, !inline_history !2
  br label %sanity_check_refcnt.exit

sanity_check_refcnt.exit:                         ; preds = %._crit_edge.thread21.i, %._crit_edge.i, %bb.g, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @blame_nth_line(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  ret ptr %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @blame_entry_score(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68
  %i.n = add nsw i32 %i.m, %i.d
  %i.o = sext i32 %i.n to i64
end_hunk_0
