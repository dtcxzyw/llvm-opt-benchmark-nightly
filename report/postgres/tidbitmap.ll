Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tidbitmap?download=true
inline.NumInlined: 90
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tbm_extract_page_tuple:bb.a
.loopexit.4:                                      ; preds = %bb.u, %.loopexit.3
  %.3.4 = phi i32 [ %.3.3, %.loopexit.3 ], [ %.2.4, %bb.u ]
  ret i32 %.3.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @tbm_private_iterate(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.b, align 4              ; 4 uses
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = sext i32 %i.d to i64
  %.pre = load i32, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tbm_advance_schunkbit.exit.thread
  %i.j = phi i32 [ %i.d, %.lr.ph ], [ %i.z, %tbm_advance_schunkbit.exit.thread ]
  %i.k = phi i32 [ %.pre, %.lr.ph ], [ 0, %tbm_advance_schunkbit.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %tbm_advance_schunkbit.exit.thread ] ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 256)
  %exitcond.not.i82 = icmp sgt i32 %i.k, 255
  br i1 %exitcond.not.i82, label %tbm_advance_schunkbit.exit.thread, label %.lr.ph84

bb.c:                                             ; preds = %.lr.ph84
  %i.p = add nsw i32 %.010.i83, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %smax.i
  br i1 %exitcond.not.i, label %tbm_advance_schunkbit.exit.thread, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b, %bb.c
  %.010.i83 = phi i32 [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %i.q = sdiv i32 %.010.i83, 64
  %i.r = srem i32 %.010.i83, 64
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.r to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.c, label %tbm_advance_schunkbit.exit

tbm_advance_schunkbit.exit:                       ; preds = %.lr.ph84
  %i.y = icmp slt i32 %.010.i83, 256
  br i1 %i.y, label %.thread, label %tbm_advance_schunkbit.exit.thread

.thread:                                          ; preds = %tbm_advance_schunkbit.exit
  store i32 %.010.i83, ptr %i.h, align 8
  %.pre63 = load i32, ptr %i.c, align 4
  br label %.loopexit

tbm_advance_schunkbit.exit.thread:                ; preds = %bb.c, %bb.b, %tbm_advance_schunkbit.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.z = trunc nsw i64 %indvars.iv.next to i32    ; 3 uses
  store i32 %i.z, ptr %i.b, align 4
  store i32 0, ptr %i.h, align 8
  %i.aa = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tbm_advance_schunkbit.exit.thread, %bb.a, %.thread
  %i.ad = phi i32 [ %.pre63, %.thread ], [ %i.e, %bb.a ], [ %i.aa, %tbm_advance_schunkbit.exit.thread ]
  %i.ae = phi i32 [ %i.j, %.thread ], [ %i.d, %bb.a ], [ %i.z, %tbm_advance_schunkbit.exit.thread ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.ad
  br i1 %i.af, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.as = load i32, ptr %i.ar, align 8
  %.not = icmp slt i32 %i.aq, %i.as
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ult i32 %i.ao, %i.ay
  br i1 %i.az, label %.critedge, label %.thread73

.critedge:                                        ; preds = %bb.e, %bb.d
  store i32 %i.ao, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 1, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 1, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bc, align 8
  %i.bd = load i32, ptr %i.am, align 8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.am, align 8
  br label %bb.k

bb.f:                                             ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre64 = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre66 = load i32, ptr %.phi.trans.insert65, align 8
  %i.bf = icmp slt i32 %.pre64, %.pre66
  br i1 %i.bf, label %.thread73, label %bb.j

.thread73:                                        ; preds = %bb.e, %bb.f
  %i.bg = phi i32 [ %.pre64, %bb.f ], [ %i.aq, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.i

bb.h:                                             ; preds = %.thread73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = sext i32 %i.bg to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.bl, %bb.g ], [ %i.bq, %bb.h ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0, ptr %i.br, align 8
  %i.bs = load i32, ptr %.0, align 8
  store i32 %i.bs, ptr %1, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.bv = load i8, ptr %i.bu, align 2, !range !6, !noundef !7
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.bh, align 8
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bh, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  store i32 -1, ptr %1, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j, %bb.i
  %.146 = phi i1 [ true, %bb.i ], [ false, %bb.j ], [ true, %.critedge ]
  ret i1 %.146
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @tbm_shared_iterate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %spec.select = select i1 %.not, ptr null, ptr %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.l = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.k, i32 noundef 0) #12 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %.promoted = load i32, ptr %i.m, align 4        ; 4 uses
  %i.p = icmp slt i32 %.promoted, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %.promoted80 = load i32, ptr %i.q, align 8
  %i.r = sext i32 %.promoted to i64
  %wide.trip.count = sext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tbm_advance_schunkbit.exit.thread
  %i.s = phi i32 [ %.promoted, %.lr.ph ], [ %i.aj, %tbm_advance_schunkbit.exit.thread ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %tbm_advance_schunkbit.exit.thread ] ; 2 uses
  %i.t = phi i32 [ %.promoted80, %.lr.ph ], [ 0, %tbm_advance_schunkbit.exit.thread ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 256)
  %exitcond.not.i96 = icmp sgt i32 %i.t, 255
  br i1 %exitcond.not.i96, label %tbm_advance_schunkbit.exit.thread, label %.lr.ph98

bb.c:                                             ; preds = %.lr.ph98
  %i.z = add nsw i32 %.010.i97, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, %smax.i
  br i1 %exitcond.not.i, label %tbm_advance_schunkbit.exit.thread, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b, %bb.c
  %.010.i97 = phi i32 [ %i.z, %bb.c ], [ %i.t, %bb.b ] ; 5 uses
  %i.aa = sdiv i32 %.010.i97, 64
  %i.ab = srem i32 %.010.i97, 64
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ae, %i.ag
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.c, label %tbm_advance_schunkbit.exit

tbm_advance_schunkbit.exit:                       ; preds = %.lr.ph98
  %i.ai = icmp slt i32 %.010.i97, 256
  br i1 %i.ai, label %.thread, label %tbm_advance_schunkbit.exit.thread

.thread:                                          ; preds = %tbm_advance_schunkbit.exit
  store i32 %.010.i97, ptr %i.q, align 8
  br label %.loopexit

tbm_advance_schunkbit.exit.thread:                ; preds = %bb.c, %bb.b, %tbm_advance_schunkbit.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv.next to i32   ; 3 uses
  store i32 %i.aj, ptr %i.m, align 4
  store i32 0, ptr %i.q, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tbm_advance_schunkbit.exit.thread, %bb.a, %.thread
  %2 = phi i32 [ %i.s, %.thread ], [ %.promoted, %bb.a ], [ %i.aj, %tbm_advance_schunkbit.exit.thread ] ; 2 uses
  %i.ak = icmp slt i32 %2, %i.o
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.loopexit
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.as, %i.aq                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.av = load i32, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %.not70 = icmp slt i32 %i.av, %i.ax
  br i1 %.not70, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp ult i32 %i.at, %i.bd
  br i1 %i.be, label %.critedge, label %.thread89

.critedge:                                        ; preds = %bb.e, %bb.d
  store i32 %i.at, ptr %1, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 1, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 1, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bh, align 8
  %i.bi = load i32, ptr %i.ar, align 8
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.ar, align 8
  tail call void @LWLockRelease(ptr noundef nonnull %i.k) #12
  br label %bb.h

bb.f:                                             ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre84 = load i32, ptr %.phi.trans.insert83, align 8
  %i.bk = icmp slt i32 %.pre, %.pre84
  br i1 %i.bk, label %.thread89, label %bb.g

.thread89:                                        ; preds = %bb.e, %bb.f
  %i.bl = phi i32 [ %.pre, %bb.f ], [ %i.av, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [48 x i8], ptr %spec.select, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = load i32, ptr %i.br, align 8
  store i32 %i.bt, ptr %1, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bw = load i8, ptr %i.bv, align 2, !range !6, !noundef !7
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.bm, align 8
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bm, align 8
  tail call void @LWLockRelease(ptr noundef nonnull %i.k) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @LWLockRelease(ptr noundef nonnull %i.k) #12
  store i32 -1, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %.thread89
  %.1 = phi i1 [ true, %.thread89 ], [ false, %bb.g ], [ true, %.critedge ]
  ret i1 %.1
}

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @tbm_end_private_iterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tbm_end_shared_iterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @tbm_attach_shared_iterate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 32) #12 ; 5 uses
  %i.b = tail call ptr @dsa_get_address(ptr noundef %0, i64 noundef %1) #12 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call ptr @dsa_get_address(ptr noundef %0, i64 noundef %i.d) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call ptr @dsa_get_address(ptr noundef %0, i64 noundef %i.j) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call ptr @dsa_get_address(ptr noundef %0, i64 noundef %i.p) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %i.a
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local { i8, ptr } @tbm_begin_iterate(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @palloc0(i64 noundef 32) #12 ; 6 uses
  %i.b = tail call ptr @dsa_get_address(ptr noundef %1, i64 noundef %2) #12 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call ptr @dsa_get_address(ptr noundef %1, i64 noundef %i.d) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call ptr @dsa_get_address(ptr noundef %1, i64 noundef %i.j) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %.not15.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i, label %tbm_attach_shared_iterate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call ptr @dsa_get_address(ptr noundef %1, i64 noundef %i.p) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.q, ptr %i.r, align 8
  br label %tbm_attach_shared_iterate.exit

bb.f:                                             ; preds = %bb.a
  %i.s = tail call ptr @tbm_begin_private_iterate(ptr noundef %0)
  br label %tbm_attach_shared_iterate.exit

tbm_attach_shared_iterate.exit:                   ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.43.0 = phi ptr [ %i.s, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ]
  %.sroa.0.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.d ], [ 1, %bb.e ]
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.43.0, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @tbm_end_iterate(ptr nofree noundef captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @pfree(ptr noundef %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @tbm_iterate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @tbm_shared_iterate(ptr noundef %i.d, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @tbm_private_iterate(ptr noundef %i.d, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tbm_create_pagetable(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call ptr @MemoryContextAllocZero(ptr noundef %i.c, i64 noundef 48) #12 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
