Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qdist?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@qdist_pr_plain:bb.a
  %exitcond11.not.i = icmp eq i64 %i.as, %.val4
  br i1 %exitcond11.not.i, label %qdist_pr_internal.exit, label %.lr.ph6.split.us.i, !llvm.loop !15

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.0302.i = phi double [ %i.v, %.lr.ph.i.preheader ], [ %.131.i.1, %.lr.ph.i ] ; 2 uses
  %.0321.i = phi double [ %i.v, %.lr.ph.i.preheader ], [ %.133.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader ], [ %niter.next.1, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.03.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = uitofp i64 %i.av to double              ; 4 uses
  %i.ax = fcmp ogt double %.0321.i, %i.aw
  %.133.i = select i1 %i.ax, double %i.aw, double %.0321.i ; 2 uses
  %i.ay = fcmp olt double %.0302.i, %i.aw
  %.131.i = select i1 %i.ay, double %i.aw, double %.0302.i ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.03.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = uitofp i64 %i.bb to double              ; 4 uses
  %i.bd = fcmp ogt double %.133.i, %i.bc
  %.133.i.1 = select i1 %i.bd, double %i.bc, double %.133.i ; 4 uses
  %i.be = fcmp olt double %.131.i, %i.bc
  %.131.i.1 = select i1 %i.be, double %i.bc, double %.131.i ; 4 uses
  %i.bf = add nuw i64 %.03.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph6.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i, %g_string_append_c_inline.exit.i
  %.15.i = phi i64 [ %i.cc, %g_string_append_c_inline.exit.i ], [ 0, %.lr.ph6.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.15.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph6.split.i
  %i.bj = uitofp i64 %i.bi to double
  %i.bk = fsub double %i.bj, %.133.i.lcssa
  %i.bl = fdiv double %i.bk, %i.ac
  %i.bm = fmul double %i.bl, 7.000000e+00
  %i.bn = fptosi double %i.bm to i32
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr @qdist_blocks, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = tail call ptr @g_string_append_unichar(ptr noundef nonnull %.fr.i, i32 noundef %i.bq) #12 ; 0 uses
  br label %g_string_append_c_inline.exit.i

bb.k:                                             ; preds = %.lr.ph6.split.i
  %i.bs = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  %i.bu = load i64, ptr %i.ae, align 8
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k
  %i.bw = tail call ptr @g_string_insert_c(ptr noundef nonnull %.fr.i, i64 noundef -1, i8 noundef signext 32) #12 ; 0 uses
  br label %g_string_append_c_inline.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %.fr.i, align 8
  store i64 %i.bt, ptr %i.ad, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  store i8 32, ptr %i.by, align 1
  %i.bz = load ptr, ptr %.fr.i, align 8
  %i.ca = load i64, ptr %i.ad, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cb, align 1
  br label %g_string_append_c_inline.exit.i

g_string_append_c_inline.exit.i:                  ; preds = %bb.l, %.critedge.i.i, %bb.j
  %i.cc = add nuw i64 %.15.i, 1                   ; 2 uses
  %exitcond10.not.i = icmp eq i64 %i.cc, %.val4
  br i1 %exitcond10.not.i, label %qdist_pr_internal.exit, label %.lr.ph6.split.i, !llvm.loop !15

qdist_pr_internal.exit:                           ; preds = %g_string_append_c_inline.exit.i, %g_string_append_c_inline.exit.us.i, %bb.c, %bb.e, %.critedge.i39.i, %bb.h
  %i.cd = tail call ptr @g_string_free(ptr noundef %.fr.i, i32 noundef 0) #12
  tail call void @g_free(ptr noundef nonnull %.val) #12
  br label %bb.m

bb.m:                                             ; preds = %qdist_pr_internal.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.cd, %qdist_pr_internal.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qdist_pr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #11 ; 2 uses
  store i64 11674015054521640, ptr %i.d, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %2, 1
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, ptr @.str.2, ptr @.str.1 ; 2 uses
  %i.g = tail call ptr @g_string_new(ptr noundef nonnull @.str.2) #12 ; 2 uses
  %i.h = tail call fastcc ptr @qdist_pr_label(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.i = tail call fastcc ptr @qdist_pr_label(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext false) ; 2 uses
  %i.j = tail call ptr @qdist_pr_plain(ptr noundef nonnull %0, i64 noundef %1) ; 2 uses
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.g, ptr noundef nonnull @.str.3, ptr noundef %i.h, ptr noundef nonnull %i.f, ptr noundef %i.j, ptr noundef nonnull %i.f, ptr noundef %i.i) #12
  tail call void @g_free(ptr noundef %i.h) #12
  tail call void @g_free(ptr noundef %i.i) #12
  tail call void @g_free(ptr noundef %i.j) #12
  %i.k = tail call ptr @g_string_free(ptr noundef %i.g, i32 noundef 0) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.0
}

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @qdist_pr_label(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_string_new(ptr noundef nonnull @.str.2) #12 ; 10 uses
  %i.b = zext i32 %2 to i64                       ; 5 uses
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %g_string_append_len_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not43 = icmp eq i64 %i.d, 0
  %i.e = zext i1 %.not43 to i32                   ; 3 uses
  %i.f = and i64 %i.b, 8                          ; 2 uses
  %.not44.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not44.not, ptr @.str.2, ptr @.str.4 ; 6 uses
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ %1, %bb.b ]
  %i.k = uitofp i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %qdist_xmin.exit53, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8
  br label %qdist_xmin.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.n, label %qdist_xmin.exit53, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %0, align 8
  %i.q = shl i64 %i.m, 32
  %sext.i = add i64 %i.q, -4294967296
  %i.r = ashr exact i64 %sext.i, 28
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  br label %qdist_xmin.exit

qdist_xmin.exit:                                  ; preds = %bb.f, %bb.h
  %.in = phi ptr [ %i.s, %bb.h ], [ %i.o, %bb.f ]
  %i.t = load double, ptr %.in, align 8
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = shl i64 %i.m, 32
  %sext.i49 = add i64 %i.v, -4294967296
  %i.w = ashr exact i64 %sext.i49, 28
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load double, ptr %i.x, align 8
  %i.z = load double, ptr %i.u, align 8
  %i.aa = fsub double %i.y, %i.z
  br label %qdist_xmin.exit53

qdist_xmin.exit53:                                ; preds = %bb.g, %bb.e, %qdist_xmin.exit
  %i.ab = phi double [ %i.t, %qdist_xmin.exit ], [ +qnan, %bb.e ], [ +qnan, %bb.g ] ; 2 uses
  %i.ac = phi double [ %i.aa, %qdist_xmin.exit ], [ +qnan, %bb.e ], [ +qnan, %bb.g ]
  %i.ad = and i64 %i.b, 16
  %.not46 = icmp eq i64 %i.ad, 0                  ; 2 uses
  %i.ae = fmul double %i.ab, 1.000000e+02
  %.0 = select i1 %.not46, double %i.ab, double %i.ae ; 5 uses
  %i.af = and i64 %i.b, 32
  %.not47 = icmp eq i64 %i.af, 0
  br i1 %.not47, label %bb.i, label %.critedge

bb.i:                                             ; preds = %qdist_xmin.exit53
  %i.ag = fdiv double %i.ac, %i.k                 ; 2 uses
  %i.ah = fmul double %i.ag, 1.000000e+02
  %.037 = select i1 %.not46, double %i.ag, double %i.ah ; 2 uses
  %4 = select i1 %3, ptr @.str.6, ptr @.str.7
  %5 = fsub double %.0, %.037
  %6 = fadd double %.0, %.037
  %.039 = select i1 %3, double %.0, double %5
  %.038 = select i1 %3, double %6, double %.0
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %i.e, double noundef %.039) #12
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.9, i32 noundef %i.e, double noundef %.038, ptr noundef nonnull %4) #12
  br label %bb.j

.critedge:                                        ; preds = %qdist_xmin.exit53
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %i.e, double noundef %.0) #12
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.g, i64 noundef -1) #12 ; 0 uses
  br label %g_string_append_len_inline.exit

bb.l:                                             ; preds = %bb.j
  %.lobit = lshr exact i64 %i.f, 3                ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = add i64 %i.ak, %.lobit
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %.not56.i = icmp ult i64 %i.al, %i.an
  br i1 %.not56.i, label %bb.m, label %bb.q, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.lobit
  %.not57.i = icmp ugt ptr %i.aq, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.lobit
  %i.as = icmp ule ptr %i.g, %i.ar
  %or.cond.i.not = select i1 %.not57.i, i1 %i.as, i1 false
  br i1 %or.cond.i.not, label %bb.o, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ap, ptr noundef nonnull align 1 %i.g, i64 noundef %.lobit, i1 noundef false) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ap, ptr noundef nonnull align 1 %i.g, i64 noundef %.lobit, i1 noundef false) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.at = load i64, ptr %i.aj, align 8
  %i.au = add i64 %i.at, %.lobit                  ; 2 uses
  store i64 %i.au, ptr %i.aj, align 8
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  br label %g_string_append_len_inline.exit

bb.q:                                             ; preds = %bb.l
  %i.ax = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.a, i64 noundef -1, ptr noundef nonnull %i.g, i64 noundef -1) #12 ; 0 uses
  br label %g_string_append_len_inline.exit

g_string_append_len_inline.exit:                  ; preds = %bb.q, %bb.p, %bb.k, %bb.a
  %i.ay = tail call ptr @g_string_free(ptr noundef %i.a, i32 noundef 0) #12
  ret ptr %i.ay
}

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @qdist_unique_entries(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @qdist_sample_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.d = and i64 %i.b, 3                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub i64 %i.b, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec11 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec12 = shufflevector <4 x i64> %wide.vec11, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec12, %vec.phi10 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.09.ph = phi i64 [ 0, %.lr.ph ], [ %i.n, %middle.block ]
  %.078.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09 = phi i64 [ %i.r, %scalar.ph ], [ %.09.ph, %scalar.ph.preheader ]
  %.078 = phi i64 [ %i.s, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.078
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %.09                       ; 2 uses
  %i.s = add nuw i64 %.078, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %scalar.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @qdist_avg(ptr nofree noundef readonly %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %qdist_sample_count.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.d = and i64 %i.b, 3                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub i64 %i.b, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec11 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec12 = shufflevector <4 x i64> %wide.vec11, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec12, %vec.phi10 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.r, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ]
  %.078.i = phi i64 [ %i.s, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.078.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %.09.i                     ; 3 uses
  %i.s = add nuw i64 %.078.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not.i, label %qdist_sample_count.exit, label %scalar.ph, !llvm.loop !21

qdist_sample_count.exit:                          ; preds = %scalar.ph
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %qdist_sample_count.exit.thread, label %bb.b

bb.b:                                             ; preds = %qdist_sample_count.exit
end_hunk_0
