Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/cordbscs?download=true
inline.NumInlined: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CORD_riter4:bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %i.af, %bb.m ]
  %i.ah = sub i64 %i.z, %i.ag
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  %i.ak = phi i64 [ %i.w, %bb.i ], [ %i.ah, %bb.n ], [ %i.aj, %bb.o ] ; 3 uses
  %.not60 = icmp ult i64 %.tr64.ph, %i.ak
  br i1 %.not60, label %tailrecurse, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = sub nuw i64 %.tr64.ph, %i.ak
  %i.ao = tail call i32 @CORD_riter4(ptr noundef %i.am, i64 noundef %i.an, ptr noundef %2, ptr noundef %3)
  %.not61 = icmp eq i32 %i.ao, 0
  %i.ap = add i64 %i.ak, -1
  br i1 %.not61, label %tailrecurse.outer, label %.loopexit

.lr.ph115:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.079114 = phi i64 [ %i.aq, %.lr.ph ], [ %.tr64.ph, %.lr.ph.preheader ]
  %i.aq = add i64 %.079114, -1                    ; 3 uses
  %i.ar = load ptr, ptr %i.m, align 8
  %i.as = load ptr, ptr %i.n, align 8
  %i.at = tail call signext i8 %i.ar(i64 noundef %i.aq, ptr noundef %i.as) #15
  %i.au = tail call i32 %2(i8 noundef signext %i.at, ptr noundef %3) #15
  %.not56 = icmp eq i32 %i.au, 0
  br i1 %.not56, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph115
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %.loopexit, label %.lr.ph115

.loopexit.loopexit117:                            ; preds = %bb.f
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %tailrecurse, %.lr.ph115, %.lr.ph, %bb.f, %.loopexit.loopexit117, %.lr.ph.preheader, %.preheader
  %.5 = phi i32 [ 0, %bb.f ], [ 1, %.loopexit.loopexit117 ], [ 0, %tailrecurse ], [ 1, %.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ 1, %.lr.ph115 ], [ 1, %bb.q ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CORD_riter(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %CORD_len.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #16
  br label %CORD_len.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  br label %CORD_len.exit

CORD_len.exit:                                    ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.f = icmp eq i64 %.0.i, 0
  br i1 %i.f, label %CORD_len.exit.thread, label %bb.e

bb.e:                                             ; preds = %CORD_len.exit
  %i.g = add i64 %.0.i, -1
  %i.h = tail call i32 @CORD_riter4(ptr noundef nonnull %0, i64 noundef %i.g, ptr noundef %1, ptr noundef %2)
  br label %CORD_len.exit.thread

CORD_len.exit.thread:                             ; preds = %bb.a, %CORD_len.exit, %bb.e
  %.0 = phi i32 [ %i.h, %bb.e ], [ 0, %CORD_len.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @CORD_init_min_len() local_unnamed_addr #10 {
bb.a:
  store i64 1, ptr @min_len, align 16
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 8), align 8
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 16), align 16
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 24), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 32), align 16
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 40), align 8
  store i64 21, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 48), align 16
  store i64 34, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 56), align 8
  store i64 55, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 64), align 16
  store i64 89, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 72), align 8
  store i64 144, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 80), align 16
  store i64 233, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 88), align 8
  store i64 377, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 96), align 16
  store i64 610, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 104), align 8
  store i64 987, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 112), align 16
  store i64 1597, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 120), align 8
  store i64 2584, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 128), align 16
  store i64 4181, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 136), align 8
  store i64 6765, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 144), align 16
  store i64 10946, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 152), align 8
  store i64 17711, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 160), align 16
  store i64 28657, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 168), align 8
  store i64 46368, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 176), align 16
  store i64 75025, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 184), align 8
  store i64 121393, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 192), align 16
  store i64 196418, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 200), align 8
  store i64 317811, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 208), align 16
  store i64 514229, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 216), align 8
  store i64 832040, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 224), align 16
  store i64 1346269, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 232), align 8
  store i64 2178309, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 240), align 16
  store i64 3524578, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 248), align 8
  store i64 5702887, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 256), align 16
  store i64 9227465, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 264), align 8
  store i64 14930352, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 272), align 16
  store i64 24157817, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 280), align 8
  store i64 39088169, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 288), align 16
  store i64 63245986, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 296), align 8
  store i64 102334155, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 304), align 16
  store i64 165580141, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 312), align 8
  store i64 267914296, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 320), align 16
  store i64 433494437, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 328), align 8
  store i64 701408733, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 336), align 16
  store i64 1134903170, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 344), align 8
  store i64 1836311903, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 352), align 16
  store i64 2971215073, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 360), align 8
  store i64 4807526976, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 368), align 16
  store i64 7778742049, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 376), align 8
  store i32 -811192544, ptr @CORD_max_len, align 4
  store i1 true, ptr @min_len_init, align 4
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden void @CORD_init_forest(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  br label %bb.e

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ugt i64 %i.c, %1
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next.1
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.g, %1
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond.not.2, label %bb.g, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.2, %bb.d ] ; 5 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10) #18 ; 0 uses
  tail call void @abort() #19
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @CORD_add_forest(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 8), align 8
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %.049 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.03648 = phi ptr [ %.137, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.d, null
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call ptr @CORD_cat(ptr noundef nonnull %i.d, ptr noundef %.03648)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %.049
  store ptr null, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.137 = phi ptr [ %i.e, %bb.b ], [ %.03648, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.h, %bb.b ], [ %.049, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ugt i64 %2, %i.j
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.040.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv, %bb.c ] ; 3 uses
  %.036.lcssa = phi ptr [ null, %bb.a ], [ %.137, %bb.c ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.c ]
  %i.l = tail call ptr @CORD_cat(ptr noundef %.036.lcssa, ptr noundef %1) ; 2 uses
  %i.m = add i64 %.0.lcssa, %2                    ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %.040.lcssa
  %i.o = load i64, ptr %i.n, align 8
  %.not52 = icmp ult i64 %i.m, %i.o
  br i1 %.not52, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %._crit_edge, %bb.e
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.e ], [ %.040.lcssa, %._crit_edge ] ; 2 uses
  %.255 = phi i64 [ %.3, %bb.e ], [ %i.m, %._crit_edge ] ; 2 uses
  %.23854 = phi ptr [ %.339, %bb.e ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv69 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.q, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph57
  %i.r = tail call ptr @CORD_cat(ptr noundef nonnull %i.q, ptr noundef %.23854)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %.255
  store ptr null, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph57
  %.339 = phi ptr [ %i.r, %bb.d ], [ %.23854, %.lr.ph57 ] ; 2 uses
  %.3 = phi i64 [ %i.u, %bb.d ], [ %.255, %.lr.ph57 ] ; 3 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next70
  %i.w = load i64, ptr %i.v, align 8
  %.not = icmp ult i64 %.3, %i.w
  br i1 %.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !4

._crit_edge58:                                    ; preds = %bb.e, %._crit_edge
  %.238.lcssa = phi ptr [ %i.l, %._crit_edge ], [ %.339, %bb.e ]
  %.2.lcssa = phi i64 [ %i.m, %._crit_edge ], [ %.3, %bb.e ]
  %.lcssa = phi i64 [ %.040.lcssa, %._crit_edge ], [ %indvars.iv.next70, %bb.e ]
  %i.x = getelementptr [16 x i8], ptr %0, i64 %.lcssa ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  store ptr %.238.lcssa, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -8
  store i64 %.2.lcssa, ptr %i.z, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @CORD_concat_forest(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.019 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.01118 = phi ptr [ %.112, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call ptr @CORD_cat(ptr noundef nonnull %i.b, ptr noundef %.01118)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, %.019
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.112 = phi ptr [ %i.c, %bb.b ], [ %.01118, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.f, %bb.b ], [ %.019, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq i64 %.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.011.lcssa = phi ptr [ null, %bb.a ], [ %.112, %bb.c ]
  ret ptr %.011.lcssa
}

; Function Attrs: nounwind uwtable
define hidden void @CORD_balance_insert(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not48 = icmp eq i8 %i.a, 0
  br i1 %.not48, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bd, %tailrecurse ]
  %.tr43.lcssa = phi i64 [ %1, %bb.a ], [ %i.be, %tailrecurse ] ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 8), align 8
  %i.c = icmp ugt i64 %.tr43.lcssa, %i.b
  br i1 %i.c, label %.lr.ph55, label %._crit_edge

.lr.ph55:                                         ; preds = %.preheader, %bb.c
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.c ], [ 1, %.preheader ] ; 2 uses
  %.0.i54 = phi i64 [ %.1.i, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %.036.i53 = phi ptr [ %.137.i, %bb.c ], [ null, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv104 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not46.i = icmp eq ptr %i.e, null
  br i1 %.not46.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph55
  %i.f = tail call ptr @CORD_cat(ptr noundef nonnull %i.e, ptr noundef %.036.i53), !inline_history !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %.0.i54
  store ptr null, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph55
  %.137.i = phi ptr [ %i.f, %bb.b ], [ %.036.i53, %.lr.ph55 ] ; 2 uses
  %.1.i = phi i64 [ %i.i, %bb.b ], [ %.0.i54, %.lr.ph55 ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next103
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %.tr43.lcssa, %i.k
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.040.i.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv102, %bb.c ] ; 3 uses
  %.036.i.lcssa = phi ptr [ null, %.preheader ], [ %.137.i, %bb.c ]
  %.0.i.lcssa = phi i64 [ 0, %.preheader ], [ %.1.i, %bb.c ]
  %i.m = tail call ptr @CORD_cat(ptr noundef %.036.i.lcssa, ptr noundef nonnull %.tr.lcssa), !inline_history !23 ; 2 uses
  %i.n = add i64 %.0.i.lcssa, %.tr43.lcssa        ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %.040.i.lcssa
  %i.p = load i64, ptr %i.o, align 8
  %.not.i59 = icmp ult i64 %i.n, %i.p
  br i1 %.not.i59, label %CORD_add_forest.exit, label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge, %bb.e
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %bb.e ], [ %.040.i.lcssa, %._crit_edge ] ; 2 uses
  %.2.i62 = phi i64 [ %.3.i, %bb.e ], [ %i.n, %._crit_edge ] ; 2 uses
  %.238.i61 = phi ptr [ %.339.i, %bb.e ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv109 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not45.i = icmp eq ptr %i.r, null
  br i1 %.not45.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph64
  %i.s = tail call ptr @CORD_cat(ptr noundef nonnull %i.r, ptr noundef %.238.i61), !inline_history !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, %.2.i62
  store ptr null, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph64
  %.339.i = phi ptr [ %i.s, %bb.d ], [ %.238.i61, %.lr.ph64 ] ; 2 uses
  %.3.i = phi i64 [ %i.v, %bb.d ], [ %.2.i62, %.lr.ph64 ] ; 3 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next110
  %i.x = load i64, ptr %i.w, align 8
  %.not.i = icmp ult i64 %.3.i, %i.x
  br i1 %.not.i, label %CORD_add_forest.exit, label %.lr.ph64, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr4350 = phi i64 [ %i.be, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %.tr49 = phi ptr [ %i.bd, %tailrecurse ], [ %0, %bb.a ] ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr49, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.p

bb.f:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr49, i64 2
  %i.ac = load i8, ptr %i.ab, align 2             ; 2 uses
  %i.ad = icmp sgt i8 %i.ac, 47
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sext i8 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr @min_len, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %.tr4350, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr49, i64 3
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %.not26 = icmp eq i8 %i.aj, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = zext i8 %i.aj to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.tr49, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %tailrecurse

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.tr49, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not27 = icmp eq i8 %i.an, 0
  br i1 %.not27, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr49, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr49, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1
  %.not28 = icmp eq i8 %i.as, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = phi i64 [ %i.at, %bb.l ], [ %i.av, %bb.m ]
  %i.ax = sub i64 %i.ap, %i.aw
  br label %tailrecurse

bb.o:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.o, %bb.i
  %i.ba = phi ptr [ %.pre, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ]
  %i.bb = phi i64 [ %i.ak, %bb.i ], [ %i.ax, %bb.n ], [ %i.az, %bb.o ] ; 2 uses
  tail call void @CORD_balance_insert(ptr noundef %i.ba, i64 noundef %i.bb, ptr noundef %2)
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr49, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = sub i64 %.tr4350, %i.bb                 ; 2 uses
  %i.bf = load i8, ptr %i.bd, align 1
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %bb.g, %.lr.ph
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @min_len, i64 8), align 8
  %i.bh = icmp ugt i64 %.tr4350, %i.bg
  br i1 %i.bh, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %bb.p, %bb.r
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 1, %bb.p ] ; 2 uses
  %.0.i3170 = phi i64 [ %.1.i41, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.036.i3069 = phi ptr [ %.137.i40, %bb.r ], [ null, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv94 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not46.i39 = icmp eq ptr %i.bj, null
  br i1 %.not46.i39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph72
  %i.bk = tail call ptr @CORD_cat(ptr noundef nonnull %i.bj, ptr noundef %.036.i3069), !inline_history !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.bm, %.0.i3170
  store ptr null, ptr %i.bi, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph72
  %.137.i40 = phi ptr [ %i.bk, %bb.q ], [ %.036.i3069, %.lr.ph72 ] ; 2 uses
  %.1.i41 = phi i64 [ %i.bn, %bb.q ], [ %.0.i3170, %.lr.ph72 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp ugt i64 %.tr4350, %i.bp
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br i1 %i.bq, label %.lr.ph72, label %._crit_edge73, !llvm.loop !3

._crit_edge73:                                    ; preds = %bb.r, %bb.p
  %.040.i29.lcssa = phi i64 [ 0, %bb.p ], [ %indvars.iv, %bb.r ] ; 3 uses
  %.036.i30.lcssa = phi ptr [ null, %bb.p ], [ %.137.i40, %bb.r ]
  %.0.i31.lcssa = phi i64 [ 0, %bb.p ], [ %.1.i41, %bb.r ]
  %i.br = tail call ptr @CORD_cat(ptr noundef %.036.i30.lcssa, ptr noundef nonnull %.tr49), !inline_history !23 ; 2 uses
  %i.bs = add i64 %.0.i31.lcssa, %.tr4350         ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %.040.i29.lcssa
  %i.bu = load i64, ptr %i.bt, align 8
  %.not.i3577 = icmp ult i64 %i.bs, %i.bu
  br i1 %.not.i3577, label %CORD_add_forest.exit, label %.lr.ph82

.lr.ph82:                                         ; preds = %._crit_edge73, %bb.t
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.t ], [ %.040.i29.lcssa, %._crit_edge73 ] ; 2 uses
  %.2.i3480 = phi i64 [ %.3.i38, %bb.t ], [ %i.bs, %._crit_edge73 ] ; 2 uses
  %.238.i3379 = phi ptr [ %.339.i37, %bb.t ], [ %i.br, %._crit_edge73 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv99 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not45.i36 = icmp eq ptr %i.bw, null
  br i1 %.not45.i36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph82
  %i.bx = tail call ptr @CORD_cat(ptr noundef nonnull %i.bw, ptr noundef %.238.i3379), !inline_history !23
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = add i64 %i.bz, %.2.i3480
  store ptr null, ptr %i.bv, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph82
  %.339.i37 = phi ptr [ %i.bx, %bb.s ], [ %.238.i3379, %.lr.ph82 ] ; 2 uses
  %.3.i38 = phi i64 [ %i.ca, %bb.s ], [ %.2.i3480, %.lr.ph82 ] ; 3 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @min_len, i64 %indvars.iv.next100
  %i.cc = load i64, ptr %i.cb, align 8
  %.not.i35 = icmp ult i64 %.3.i38, %i.cc
  br i1 %.not.i35, label %CORD_add_forest.exit, label %.lr.ph82, !llvm.loop !4

CORD_add_forest.exit:                             ; preds = %bb.t, %bb.e, %._crit_edge73, %._crit_edge
  %.lcssa.sink = phi i64 [ %indvars.iv.next110, %bb.e ], [ %.040.i.lcssa, %._crit_edge ], [ %.040.i29.lcssa, %._crit_edge73 ], [ %indvars.iv.next100, %bb.t ]
  %.238.i33.lcssa.sink = phi ptr [ %.339.i, %bb.e ], [ %i.m, %._crit_edge ], [ %i.br, %._crit_edge73 ], [ %.339.i37, %bb.t ]
  %.2.i34.lcssa.sink = phi i64 [ %.3.i, %bb.e ], [ %i.n, %._crit_edge ], [ %i.bs, %._crit_edge73 ], [ %.3.i38, %bb.t ]
  %i.cd = getelementptr [16 x i8], ptr %2, i64 %.lcssa.sink ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -16
  store ptr %.238.i33.lcssa.sink, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 -8
  store i64 %.2.i34.lcssa.sink, ptr %i.cf, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @CORD__extend_path(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  br label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.070 = phi i64 [ %.1, %bb.k ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.04869 = phi i64 [ %.sink, %bb.k ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.05068 = phi ptr [ %.sink75, %bb.k ], [ %i.f, %.lr.ph.preheader ] ; 6 uses
  %.05267 = phi ptr [ %i.aj, %bb.k ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05068, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.05068, i64 3
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not55 = icmp eq i8 %i.r, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i8 %i.r to i64
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.05068, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %.not56 = icmp eq i8 %i.v, 0
  br i1 %.not56, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.05068, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1
  %.not57 = icmp eq i8 %i.aa, 0
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i64 [ %i.ab, %bb.g ], [ %i.ad, %bb.h ]
  %i.af = sub i64 %i.x, %i.ae
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %i.ai = phi i64 [ %i.s, %bb.d ], [ %i.af, %bb.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05267, i64 16 ; 2 uses
  %i.ak = add i64 %i.ai, %.04869                  ; 2 uses
  %.not58 = icmp ult i64 %i.g, %i.ak              ; 3 uses
  %i.al = sub i64 %.070, %i.ai
  %.sink75.in.v = select i1 %.not58, i64 16, i64 24
  %.sink75.in = getelementptr inbounds nuw i8, ptr %.05068, i64 %.sink75.in.v
  %.sink = select i1 %.not58, i64 %.04869, i64 %i.ak ; 3 uses
  %.1 = select i1 %.not58, i64 %i.ai, i64 %i.al   ; 2 uses
  %.sink75 = load ptr, ptr %.sink75.in, align 8   ; 4 uses
  store ptr %.sink75, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.05267, i64 24
  store i64 %.sink, ptr %i.am, align 8
  %i.an = load i32, ptr %i.b, align 8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.b, align 8
  %i.ap = load i8, ptr %.sink75, align 1
  %.not54 = icmp eq i8 %i.ap, 0
  br i1 %.not54, label %.lr.ph, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.k, %bb.b
  %.050.lcssa = phi ptr [ %i.f, %bb.b ], [ %.sink75, %bb.k ]
  %.048.lcssa = phi i64 [ %i.i, %bb.b ], [ %.sink, %bb.k ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.k, %bb.b ], [ %.1, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.050.lcssa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.048.lcssa, ptr %i.ar, align 8
  %i.as = add i64 %.0.lcssa, %.048.lcssa          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.as, ptr %i.at, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.au, align 8
  %.pre = add i64 %.070, %.04869
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ %i.as, %.critedge ]
  %.not60 = icmp ult i64 %i.g, %.pre-phi
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 1431655765, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @CORD__pos_fetch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 1431655765
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 4
  %.not10 = icmp eq i8 %i.k, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call signext i8 %i.o(i64 noundef %i.s, ptr noundef %i.u) #15
  ret i8 %i.v
}

; Function Attrs: nounwind uwtable
define void @CORD__next(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 1                          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %.not = icmp eq i32 %i.d, 1431655765
end_hunk_0
