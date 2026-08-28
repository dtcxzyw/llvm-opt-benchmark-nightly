Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/cordbscs?download=true
inline.NumInlined: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CORD_iter5:bb.a

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = phi i64 [ %i.z, %bb.m ], [ %i.ab, %bb.n ]
  %i.ad = sub i64 %i.v, %i.ac
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.j
  %i.ag = phi i64 [ %i.q, %bb.j ], [ %i.ad, %bb.o ], [ %i.af, %bb.p ] ; 2 uses
  %.not67 = icmp ult i64 %.tr7386, %i.ag
  br i1 %.not67, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = sub nuw i64 %.tr7386, %i.ag
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %.thread, %bb.r
  %.tr73.be = phi i64 [ %i.ah, %bb.r ], [ 0, %.thread ]
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr85, i64 24
  %.tr.be = load ptr, ptr %.tr.be.in, align 8     ; 2 uses
  %i.ai = icmp eq ptr %.tr.be, null
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.q, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr85, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @CORD_iter5(ptr noundef %i.ak, i64 noundef %.tr7386, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %.not68 = icmp eq i32 %i.al, 0
  br i1 %.not68, label %tailrecurse.backedge, label %.loopexit

bb.s:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.tr85, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr85, i64 16
  %i.ap = icmp ult i64 %.tr7386, %i.an
  br i1 %i.ap, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr85, i64 24
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.ar = add i64 %.089, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.an
  br i1 %exitcond.not, label %.loopexit, label %bb.u, !llvm.loop !19

bb.u:                                             ; preds = %.lr.ph90, %bb.t
  %.089 = phi i64 [ %.tr7386, %.lr.ph90 ], [ %i.ar, %bb.t ] ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = tail call signext i8 %i.as(i64 noundef %.089, ptr noundef %i.at) #15
  %i.av = tail call i32 %2(i8 noundef signext %i.au, ptr noundef %4) #15
  %.not62 = icmp eq i32 %i.av, 0
  br i1 %.not62, label %bb.t, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %.thread, %.preheader, %bb.f, %bb.t, %bb.u, %bb.a, %bb.s, %bb.e
  %.4 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ], [ 1, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %.preheader ], [ 0, %tailrecurse.backedge ], [ 1, %.thread ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @CORD_iter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @CORD_iter5(ptr noundef %0, i64 noundef 0, ptr noundef %1, ptr noundef null, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CORD_riter4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.q, %bb.a
  %.tr.ph = phi ptr [ %i.t, %bb.q ], [ %0, %bb.a ]
  %.tr64.ph = phi i64 [ %i.ap, %bb.q ], [ %1, %bb.a ] ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.p
  %.tr = phi ptr [ %i.t, %bb.p ], [ %.tr.ph, %tailrecurse.outer ] ; 11 uses
  %i.a = icmp eq ptr %.tr, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.b = load i8, ptr %.tr, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 %.tr64.ph
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.049 = phi ptr [ %i.c, %bb.c ], [ %.1, %bb.f ] ; 3 uses
  %i.d = load i8, ptr %.049, align 1              ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = tail call i32 %2(i8 noundef signext %i.d, ptr noundef %3) #15
  %.not62 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = icmp ne ptr %.049, %.tr                  ; 2 uses
  %spec.select63 = select i1 %i.i, i32 0, i32 2
  %narrow = and i1 %i.i, %.not62
  %.1.idx = sext i1 %narrow to i64
  %.1 = getelementptr inbounds i8, ptr %.049, i64 %.1.idx
  %.048 = select i1 %.not62, i32 %spec.select63, i32 1
  switch i32 %.048, label %.loopexit.loopexit117 [
    i32 0, label %bb.d
    i32 2, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 3 uses
  br i1 %i.l, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = tail call signext i8 %i.o(i64 noundef %.tr64.ph, ptr noundef %i.p) #15
  %i.r = tail call i32 %2(i8 noundef signext %i.q, ptr noundef %3) #15
  %.not5678 = icmp eq i32 %i.r, 0
  br i1 %.not5678, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = icmp eq i64 %.tr64.ph, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph115

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 3
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %.not57 = icmp eq i8 %i.v, 0
  br i1 %.not57, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = zext i8 %i.v to i64
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.t, align 1
  %.not58 = icmp eq i8 %i.x, 0
  br i1 %.not58, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %.not59 = icmp eq i8 %i.ac, 0
  br i1 %.not59, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #16
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
  %.not61 = trunc nuw i32 %i.ao to i1
  %i.ap = add i64 %i.ak, -1
  br i1 %.not61, label %.loopexit, label %tailrecurse.outer

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
  br i1 %exitcond.not.2, label %bb.g, label %bb.e, !llvm.loop !7

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
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.040.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv, %bb.c ] ; 3 uses
  %.036.lcssa = phi ptr [ null, %bb.a ], [ %.137, %bb.c ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.c ]
end_hunk_0
