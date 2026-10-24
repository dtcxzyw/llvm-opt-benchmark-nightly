Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ruby_scan_oct:bb.a
  ret i64 %.029.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local i64 @ruby_scan_digits(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 4 uses
  store i32 0, ptr %4, align 4, !tbaa !11
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %.critedge.outer.preheader

.critedge.outer.preheader:                        ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %1
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %.critedge.outer.preheader, %bb.e
  %.032.ph = phi i64 [ %i.ah, %bb.e ], [ %1, %.critedge.outer.preheader ] ; 2 uses
  %.030.ph = phi ptr [ %i.v, %bb.e ], [ %0, %.critedge.outer.preheader ] ; 6 uses
  %.028.ph = phi i64 [ %i.ae, %bb.e ], [ 0, %.critedge.outer.preheader ] ; 5 uses
  %i.b = icmp slt i64 %.032.ph, 0
  br i1 %i.b, label %.critedge.us.preheader, label %.critedge.outer.split

.critedge.us.preheader:                           ; preds = %.critedge.outer
  %i.c = load i8, ptr %.030.ph, align 1, !tbaa !12
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 3 uses
  %i.g = icmp ne i8 %i.f, -1
  %i.h = sext i8 %i.f to i32
  %.not36.us67 = icmp sgt i32 %2, %i.h
  %or.cond.us68 = and i1 %i.g, %.not36.us67
  br i1 %or.cond.us68, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge.us.preheader, %.critedge.us
  %i.i = phi i8 [ %i.s, %.critedge.us ], [ %i.f, %.critedge.us.preheader ]
  %.030.ph.pn = phi ptr [ %i.j, %.critedge.us ], [ %.030.ph, %.critedge.us.preheader ]
  %.028.us69 = phi i64 [ %i.m, %.critedge.us ], [ %.028.ph, %.critedge.us.preheader ] ; 2 uses
  %i.j = getelementptr i8, ptr %.030.ph.pn, i64 1 ; 3 uses
  %mul.us = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 %.028.us69)
  %mul.ov.us = extractvalue { i64, i1 } %mul.us, 1
  %i.k = mul i64 %.028.us69, %i.a                 ; 2 uses
  %i.l = sext i8 %i.i to i64
  %i.m = add i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = or i1 %mul.ov.us, %i.n
  br i1 %i.o, label %bb.b, label %.critedge.us

bb.b:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4, !tbaa !11
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.b, %.lr.ph
  %i.p = load i8, ptr %i.j, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12    ; 3 uses
  %i.t = icmp ne i8 %i.s, -1
  %i.u = sext i8 %i.s to i32
  %.not36.us = icmp sgt i32 %2, %i.u
  %or.cond.us = and i1 %i.t, %.not36.us
  br i1 %or.cond.us, label %.lr.ph, label %.loopexit

.critedge.outer.split:                            ; preds = %.critedge.outer
  %i.v = getelementptr i8, ptr %.030.ph, i64 1
  %i.w = load i8, ptr %.030.ph, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12    ; 3 uses
  %i.aa = icmp ne i8 %i.z, -1
  %i.ab = sext i8 %i.z to i32
  %.not36 = icmp sgt i32 %2, %i.ab
  %or.cond = and i1 %i.aa, %.not36
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.critedge.outer.split
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 %.028.ph)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.ac = mul i64 %.028.ph, %i.a                  ; 2 uses
  %i.ad = sext i8 %i.z to i64
  %i.ae = add i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = or i1 %mul.ov, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ah = add nsw i64 %.032.ph, -1                ; 2 uses
  %.not37 = icmp eq i64 %i.ah, 0
  br i1 %.not37, label %.loopexit, label %.critedge.outer, !llvm.loop !0

.loopexit:                                        ; preds = %bb.e, %.critedge.outer.split, %.critedge.us, %.critedge.us.preheader
  %.144 = phi i64 [ %i.m, %.critedge.us ], [ %.028.ph, %.critedge.us.preheader ], [ %i.ae, %bb.e ], [ %.028.ph, %.critedge.outer.split ]
  %.13142 = phi ptr [ %i.j, %.critedge.us ], [ %.030.ph, %.critedge.us.preheader ], [ %scevgep, %bb.e ], [ %.030.ph, %.critedge.outer.split ]
  %i.ai = ptrtoint ptr %.13142 to i64
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %storemerge = phi i64 [ %i.ak, %.loopexit ], [ 0, %bb.a ]
  %.029 = phi i64 [ %.144, %.loopexit ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !15
  ret i64 %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local i64 @ruby_scan_hex(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ruby_scan_digits.exit, label %.critedge.outer.preheader.i

.critedge.outer.preheader.i:                      ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %0, i64 %1
  br label %.critedge.outer.i

.critedge.outer.i:                                ; preds = %bb.b, %.critedge.outer.preheader.i
  %.032.ph.i = phi i64 [ %i.u, %bb.b ], [ %1, %.critedge.outer.preheader.i ] ; 2 uses
  %.030.ph.i = phi ptr [ %i.q, %bb.b ], [ %0, %.critedge.outer.preheader.i ] ; 5 uses
  %.028.ph.i = phi i64 [ %i.t, %bb.b ], [ 0, %.critedge.outer.preheader.i ] ; 4 uses
  %i.a = icmp slt i64 %.032.ph.i, 0
  %i.b = load i8, ptr %.030.ph.i, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12    ; 4 uses
  %i.f = icmp ne i8 %i.e, -1
  %.not36.us.i6 = icmp slt i8 %i.e, 16
  %or.cond.us.i7 = and i1 %i.f, %.not36.us.i6     ; 2 uses
  br i1 %i.a, label %.critedge.us.i.preheader, label %.critedge.outer.split.i

.critedge.us.i.preheader:                         ; preds = %.critedge.outer.i
  br i1 %or.cond.us.i7, label %.critedge.us.i, label %.loopexit.i

.critedge.us.i:                                   ; preds = %.critedge.us.i.preheader, %.critedge.us.i
  %i.g = phi i8 [ %i.o, %.critedge.us.i ], [ %i.e, %.critedge.us.i.preheader ]
  %.028.us.i9 = phi i64 [ %i.k, %.critedge.us.i ], [ %.028.ph.i, %.critedge.us.i.preheader ]
  %.030.us.i8 = phi ptr [ %i.h, %.critedge.us.i ], [ %.030.ph.i, %.critedge.us.i.preheader ]
  %i.h = getelementptr i8, ptr %.030.us.i8, i64 1 ; 3 uses
  %i.i = shl i64 %.028.us.i9, 4
  %i.j = sext i8 %i.g to i64
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = load i8, ptr %i.h, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12    ; 3 uses
  %i.p = icmp ne i8 %i.o, -1
  %.not36.us.i = icmp slt i8 %i.o, 16
  %or.cond.us.i = and i1 %i.p, %.not36.us.i
  br i1 %or.cond.us.i, label %.critedge.us.i, label %.loopexit.i

.critedge.outer.split.i:                          ; preds = %.critedge.outer.i
  br i1 %or.cond.us.i7, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.critedge.outer.split.i
  %i.q = getelementptr i8, ptr %.030.ph.i, i64 1
  %i.r = shl i64 %.028.ph.i, 4
  %i.s = sext i8 %i.e to i64
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = add nsw i64 %.032.ph.i, -1               ; 2 uses
  %.not37.i = icmp eq i64 %i.u, 0
  br i1 %.not37.i, label %.loopexit.i, label %.critedge.outer.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.b, %.critedge.outer.split.i, %.critedge.us.i, %.critedge.us.i.preheader
  %.144.i = phi i64 [ %i.k, %.critedge.us.i ], [ %.028.ph.i, %.critedge.us.i.preheader ], [ %i.t, %bb.b ], [ %.028.ph.i, %.critedge.outer.split.i ]
  %.13142.i = phi ptr [ %i.h, %.critedge.us.i ], [ %.030.ph.i, %.critedge.us.i.preheader ], [ %scevgep.i, %bb.b ], [ %.030.ph.i, %.critedge.outer.split.i ]
  %i.v = ptrtoint ptr %.13142.i to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %ruby_scan_digits.exit

ruby_scan_digits.exit:                            ; preds = %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %i.x, %.loopexit.i ], [ 0, %bb.a ]
  %.029.i = phi i64 [ %.144.i, %.loopexit.i ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %2, align 8, !tbaa !15
  ret i64 %.029.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @ruby_strtoul(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @rb_errno_ptr() #24
  store i32 22, ptr %i.b, align 4, !tbaa !11
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 1
  %i.d = icmp samesign ugt i32 %2, 36
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @rb_errno_ptr() #24
  store i32 22, ptr %i.e, align 4, !tbaa !11
  br label %bb.r

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.04062 = phi ptr [ %i.f, %bb.e ], [ %0, %bb.c ] ; 5 uses
  %3 = load i8, ptr %.04062, align 1, !tbaa !12   ; 2 uses
  switch i8 %3, label %bb.h [
    i8 0, label %.thread
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 12, label %bb.e
    i8 11, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 43, label %bb.g
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr i8, ptr %.04062, i64 1
  br label %.lr.ph, !llvm.loop !28

bb.f:                                             ; preds = %.lr.ph
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.ph.ph = phi i1 [ true, %bb.f ], [ false, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.04062, i64 1     ; 2 uses
  %.pr.pr = load i8, ptr %i.g, align 1, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.pr = phi i8 [ %.pr.pr, %bb.g ], [ %3, %.lr.ph ]
  %.141.ph = phi ptr [ %i.g, %bb.g ], [ %.04062, %.lr.ph ] ; 3 uses
  %.ph = phi i1 [ %.ph.ph, %bb.g ], [ false, %.lr.ph ] ; 4 uses
  %i.h = icmp eq i8 %.pr, 48
  br i1 %i.h, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr i8, ptr %.141.ph, i64 1    ; 6 uses
  %i.j = icmp eq i32 %2, 0
  switch i32 %2, label %bb.m [
    i32 16, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.k = load i8, ptr %i.i, align 1, !tbaa !12
  switch i8 %i.k, label %bb.l [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.l = getelementptr i8, ptr %.141.ph, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.m = select i1 %i.j, i32 8, i32 16
  br label %bb.m

.thread:                                          ; preds = %.lr.ph, %bb.h
  %4 = phi i1 [ %.ph, %bb.h ], [ false, %.lr.ph ]
  %.14156 = phi ptr [ %.141.ph, %bb.h ], [ %.04062, %.lr.ph ]
  %i.n = icmp eq i32 %2, 0
  %i.o = select i1 %i.n, i32 10, i32 %2
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %.thread
  %i.p = phi i1 [ %.ph, %bb.k ], [ %.ph, %bb.l ], [ %4, %.thread ], [ %.ph, %bb.i ]
  %.2 = phi ptr [ %i.l, %bb.k ], [ %i.i, %bb.l ], [ %.14156, %.thread ], [ %i.i, %bb.i ] ; 6 uses
  %.038 = phi i32 [ 16, %bb.k ], [ %i.m, %bb.l ], [ %i.o, %.thread ], [ %2, %bb.i ] ; 3 uses
  %.0 = phi ptr [ %i.i, %bb.k ], [ %i.i, %bb.l ], [ %0, %.thread ], [ %i.i, %bb.i ]
  %i.q = zext nneg i32 %.038 to i64               ; 2 uses
  %i.r = load i8, ptr %.2, align 1, !tbaa !12
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12    ; 3 uses
  %i.v = icmp ne i8 %i.u, -1
  %i.w = sext i8 %i.u to i32
  %.not36.us.i63 = icmp sgt i32 %.038, %i.w
  %or.cond.us.i64 = and i1 %i.v, %.not36.us.i63
  br i1 %or.cond.us.i64, label %.critedge.us.i, label %ruby_scan_digits.exit

.critedge.us.i:                                   ; preds = %bb.m, %.critedge.us.i
  %i.x = phi i8 [ %i.ah, %.critedge.us.i ], [ %i.u, %bb.m ]
  %.028.us.i67 = phi i64 [ %i.ab, %.critedge.us.i ], [ 0, %bb.m ] ; 2 uses
  %.030.us.i66 = phi ptr [ %i.y, %.critedge.us.i ], [ %.2, %bb.m ]
  %.05465 = phi i32 [ %spec.select57, %.critedge.us.i ], [ 0, %bb.m ]
  %i.y = getelementptr i8, ptr %.030.us.i66, i64 1 ; 3 uses
  %mul.us.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.q, i64 %.028.us.i67)
  %mul.ov.us.i = extractvalue { i64, i1 } %mul.us.i, 1
  %i.z = mul i64 %.028.us.i67, %i.q               ; 2 uses
  %i.aa = sext i8 %i.x to i64
  %i.ab = add i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  %i.ad = or i1 %mul.ov.us.i, %i.ac
  %spec.select57 = select i1 %i.ad, i32 1, i32 %.05465 ; 2 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12  ; 3 uses
  %i.ai = icmp ne i8 %i.ah, -1
  %i.aj = sext i8 %i.ah to i32
  %.not36.us.i = icmp sgt i32 %.038, %i.aj
  %or.cond.us.i = and i1 %i.ai, %.not36.us.i
  br i1 %or.cond.us.i, label %.critedge.us.i, label %ruby_scan_digits.exit.loopexit

ruby_scan_digits.exit.loopexit:                   ; preds = %.critedge.us.i
  %i.ak = icmp eq i32 %spec.select57, 0
  br label %ruby_scan_digits.exit

ruby_scan_digits.exit:                            ; preds = %ruby_scan_digits.exit.loopexit, %bb.m
  %.054.lcssa = phi i1 [ true, %bb.m ], [ %i.ak, %ruby_scan_digits.exit.loopexit ]
  %.030.us.i.lcssa = phi ptr [ %.2, %bb.m ], [ %i.y, %ruby_scan_digits.exit.loopexit ] ; 2 uses
  %.028.us.i.lcssa = phi i64 [ 0, %bb.m ], [ %i.ab, %ruby_scan_digits.exit.loopexit ] ; 2 uses
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ruby_scan_digits.exit
  %.not49 = icmp eq ptr %.030.us.i.lcssa, %.2
  %i.al = ptrtoint ptr %.030.us.i.lcssa to i64
  %i.am = ptrtoint ptr %.2 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr i8, ptr %.2, i64 %i.an
  %spec.select = select i1 %.not49, ptr %.0, ptr %i.ao
  store ptr %spec.select, ptr %1, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ruby_scan_digits.exit
  br i1 %.054.lcssa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.ap, align 4, !tbaa !11
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aq = sub i64 0, %.028.us.i.lcssa
  %spec.select52 = select i1 %i.p, i64 %i.aq, i64 %.028.us.i.lcssa
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.d, %bb.b
  %.039 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ -1, %bb.p ], [ %spec.select52, %bb.q ]
  ret i64 %.039
}

declare ptr @rb_errno_ptr() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias nonnull ptr @ruby_strdup(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.b = add i64 %i.a, 1                          ; 3 uses
  %i.c = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.b) #26 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.c, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %i.b, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias nonnull ptr @ruby_getcwd() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @getcwd_buffer_guard_type) #24 ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #24 ; 5 uses
  %i.e = inttoptr i64 %i.c to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 32
  store ptr %i.d, ptr %i.f, align 8, !tbaa !31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_sys_fail(ptr noundef nonnull @.str) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #25
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.h) #26 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %ruby_strdup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull readonly align 1 %i.d, i64 noundef range(i64 1, 0) %i.h, i1 noundef false) #24
  br label %ruby_strdup.exit

ruby_strdup.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !33
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #24, !srcloc !34
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !15
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 32
  store ptr null, ptr %i.m, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.i
}

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @rb_sys_fail(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_each_words(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %.not2236 = icmp eq i8 %i.a, 0
  br i1 %.not2236, label %.loopexit, label %.preheader32

.preheader32:                                     ; preds = %.preheader33, %.preheader32.backedge
  %i.b = phi i8 [ %.be, %.preheader32.backedge ], [ %i.a, %.preheader33 ]
  %.1 = phi ptr [ %.1.be, %.preheader32.backedge ], [ %0, %.preheader33 ] ; 4 uses
  %.fr = freeze i8 %i.b                           ; 2 uses
  switch i8 %.fr, label %.preheader [
    i8 44, label %.critedge
    i8 32, label %.critedge
    i8 13, label %.critedge
    i8 12, label %.critedge
    i8 11, label %.critedge
    i8 10, label %.critedge
    i8 9, label %.critedge
    i8 0, label %.loopexit
  ]

.critedge:                                        ; preds = %.preheader32, %.preheader32, %.preheader32, %.preheader32, %.preheader32, %.preheader32, %.preheader32
  %i.c = getelementptr i8, ptr %.1, i64 1         ; 2 uses
  %.pr = load i8, ptr %i.c, align 1, !tbaa !12
  br label %.preheader32.backedge

.preheader32.backedge:                            ; preds = %.critedge, %.critedge2
  %.be = phi i8 [ %.pr, %.critedge ], [ %i.j, %.critedge2 ]
  %.1.be = phi ptr [ %i.c, %.critedge ], [ %.0, %.critedge2 ]
  br label %.preheader32, !llvm.loop !35

.preheader:                                       ; preds = %.preheader32, %bb.b
  %i.d = phi i8 [ %.pre, %bb.b ], [ %.fr, %.preheader32 ]
  %.0 = phi ptr [ %i.e, %bb.b ], [ %.1, %.preheader32 ] ; 4 uses
  %.fr31 = freeze i8 %i.d
  switch i8 %.fr31, label %bb.b [
    i8 0, label %.critedge2
end_hunk_0
begin_hunk_1_@ruby_strtod:bb.a
    i8 88, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr i8, ptr %.1529, i64 2      ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12    ; 5 uses
  %.not688 = icmp eq i8 %i.m, 0
  br i1 %.not688, label %Bclear.exit750, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i8 %i.m to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.n, i64 33) ; 2 uses
  %.not689 = icmp ne ptr %memchr, null
  %.not690 = icmp eq i8 %i.m, 46
  %or.cond708 = or i1 %.not690, %.not689
  br i1 %or.cond708, label %bb.g, label %Bclear.exit750

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %.preheader960, label %bb.i

.preheader960:                                    ; preds = %bb.g, %.preheader960
  %.2530 = phi ptr [ %i.p, %.preheader960 ], [ %i.l, %bb.g ]
  %i.p = getelementptr i8, ptr %.2530, i64 1      ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 3 uses
  switch i8 %i.q, label %bb.h [
    i8 48, label %.preheader960
    i8 0, label %Bclear.exit750
  ]

bb.h:                                             ; preds = %.preheader960
  %i.r = sext i8 %i.q to i32
  %memchr692 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.r, i64 33)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pr1272 = phi i8 [ %i.q, %bb.h ], [ %i.m, %bb.g ]
  %.3531 = phi ptr [ %i.p, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  %.0523 = phi ptr [ %memchr692, %bb.h ], [ %memchr, %bb.g ] ; 2 uses
  %.not693 = icmp eq ptr %.0523, null
  br i1 %.not693, label %.critedge, label %.preheader958

.preheader958:                                    ; preds = %bb.i, %bb.j
  %.0550 = phi i32 [ %i.w, %bb.j ], [ -4, %bb.i ]
  %.4532 = phi ptr [ %i.x, %bb.j ], [ %.3531, %bb.i ]
  %.1524 = phi ptr [ %memchr695, %bb.j ], [ %.0523, %bb.i ]
  %.0515 = phi double [ %i.z, %bb.j ], [ 1.000000e+00, %bb.i ] ; 2 uses
  %.0511 = phi double [ %i.v, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.s = ptrtoint ptr %.1524 to i64
  %i.t = and i64 %i.s, 15
  %i.u = uitofp nneg i64 %i.t to double
  %i.v = tail call double @llvm.fmuladd.f64(double %.0515, double %i.u, double %.0511) ; 3 uses
  %i.w = add i32 %.0550, 4                        ; 3 uses
  %i.x = getelementptr i8, ptr %.4532, i64 1      ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 3 uses
  %.not694 = icmp eq i8 %i.y, 0
  br i1 %.not694, label %.critedge4.thread, label %bb.j

bb.j:                                             ; preds = %.preheader958
  %i.z = fmul double %.0515, 6.250000e-02         ; 2 uses
  %i.aa = sext i8 %i.y to i32
  %memchr695 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.aa, i64 33) ; 2 uses
  %.not696 = icmp eq ptr %memchr695, null
  br i1 %.not696, label %.critedge, label %.preheader958, !llvm.loop !37

.critedge:                                        ; preds = %bb.j, %bb.i
  %.pr = phi i8 [ %.pr1272, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %.1551.ph = phi i32 [ -4, %bb.i ], [ %i.w, %bb.j ] ; 6 uses
  %.5533.ph = phi ptr [ %.3531, %bb.i ], [ %i.x, %bb.j ] ; 2 uses
  %.1516.ph = phi double [ 1.000000e+00, %bb.i ], [ %i.z, %bb.j ]
  %.1512.ph = phi double [ 0.000000e+00, %bb.i ], [ %i.v, %bb.j ] ; 5 uses
  %i.ab = icmp eq i8 %.pr, 46
  br i1 %i.ab, label %bb.k, label %.critedge4

bb.k:                                             ; preds = %.critedge
  %i.ac = getelementptr i8, ptr %.5533.ph, i64 1  ; 5 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12  ; 5 uses
  %.not697 = icmp eq i8 %i.ad, 0
  br i1 %.not697, label %.critedge4.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = sext i8 %i.ad to i32
  %memchr698 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.ae, i64 33)
  %.not699 = icmp eq ptr %memchr698, null
  br i1 %.not699, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp slt i32 %.1551.ph, 0
  %i.ag = icmp eq i8 %i.ad, 48
  %or.cond1535 = and i1 %i.af, %i.ag
  br i1 %or.cond1535, label %.lr.ph, label %.lr.ph1073.preheader

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.65341067 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ac, %bb.m ]
  %.25521066 = phi i32 [ %i.ai, %.lr.ph ], [ %.1551.ph, %bb.m ]
  %i.ah = getelementptr i8, ptr %.65341067, i64 1 ; 4 uses
  %i.ai = add i32 %.25521066, -4                  ; 3 uses
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.aj, label %.lr.ph1073.preheader [
    i8 48, label %.lr.ph
    i8 0, label %.critedge4.thread
  ]

.lr.ph1073.preheader:                             ; preds = %.lr.ph, %bb.m
  %.75351349 = phi ptr [ %i.ac, %bb.m ], [ %i.ah, %.lr.ph ]
  %.35531348 = phi i32 [ %.1551.ph, %bb.m ], [ %i.ai, %.lr.ph ] ; 4 uses
  %i.ak = phi i8 [ %i.ad, %bb.m ], [ %i.aj, %.lr.ph ]
  br label %.lr.ph1073

.lr.ph1073:                                       ; preds = %.lr.ph1073.preheader, %bb.p
  %i.al = phi i8 [ %i.ax, %bb.p ], [ %i.ak, %.lr.ph1073.preheader ] ; 2 uses
  %.25131072 = phi double [ %i.aq, %bb.p ], [ %.1512.ph, %.lr.ph1073.preheader ] ; 2 uses
  %.25171071 = phi double [ %i.ar, %bb.p ], [ %.1516.ph, %.lr.ph1073.preheader ] ; 2 uses
  %.85361070 = phi ptr [ %i.aw, %bb.p ], [ %.75351349, %.lr.ph1073.preheader ] ; 3 uses
  %i.am = sext i8 %i.al to i32
  %memchr701 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.am, i64 33) ; 2 uses
  %.not702 = icmp eq ptr %memchr701, null
  br i1 %.not702, label %.critedge4, label %bb.n

bb.n:                                             ; preds = %.lr.ph1073
  %i.an = ptrtoint ptr %memchr701 to i64
  %i.ao = and i64 %i.an, 15
  %i.ap = uitofp nneg i64 %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %.25171071, double %i.ap, double %.25131072) ; 4 uses
  %i.ar = fmul double %.25171071, 6.250000e-02    ; 2 uses
  %i.as = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.as, label %.preheader953, label %bb.p

.preheader953:                                    ; preds = %bb.n, %bb.o
  %.9 = phi ptr [ %i.at, %bb.o ], [ %.85361070, %bb.n ]
  %i.at = getelementptr i8, ptr %.9, i64 1        ; 4 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12  ; 3 uses
  %.not703 = icmp eq i8 %i.au, 0
  br i1 %.not703, label %.critedge4.thread, label %bb.o

bb.o:                                             ; preds = %.preheader953
  %i.av = sext i8 %i.au to i32
  %memchr704 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ruby_hexdigits, i32 %i.av, i64 33)
  %.not705 = icmp eq ptr %memchr704, null
  br i1 %.not705, label %.critedge4, label %.preheader953, !llvm.loop !38

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr i8, ptr %.85361070, i64 1 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12  ; 2 uses
  %.not700 = icmp eq i8 %i.ax, 0
  br i1 %.not700, label %.critedge4.thread, label %.lr.ph1073, !llvm.loop !39

.critedge4:                                       ; preds = %.lr.ph1073, %bb.o, %bb.l, %.critedge
  %i.ay = phi i8 [ %.pr, %.critedge ], [ %i.ad, %bb.l ], [ %i.au, %bb.o ], [ %i.al, %.lr.ph1073 ]
  %.4554 = phi i32 [ %.1551.ph, %.critedge ], [ %.1551.ph, %bb.l ], [ %.35531348, %bb.o ], [ %.35531348, %.lr.ph1073 ] ; 3 uses
  %.10 = phi ptr [ %.5533.ph, %.critedge ], [ %i.ac, %bb.l ], [ %i.at, %bb.o ], [ %.85361070, %.lr.ph1073 ] ; 3 uses
  %.3514 = phi double [ %.1512.ph, %.critedge ], [ %.1512.ph, %bb.l ], [ %i.aq, %bb.o ], [ %.25131072, %.lr.ph1073 ] ; 2 uses
  switch i8 %i.ay, label %.critedge4.thread [
    i8 80, label %bb.q
    i8 112, label %bb.q
  ]

bb.q:                                             ; preds = %.critedge4, %.critedge4
  %i.az = getelementptr i8, ptr %.10, i64 1       ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = sext i8 %i.ba to i32
  %i.bc = sub nsw i32 44, %i.bb                   ; 2 uses
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true)
  %i.be = icmp eq i32 %i.bd, 1                    ; 2 uses
  %i.bf = getelementptr i8, ptr %.10, i64 2
  %.0575 = select i1 %i.be, i32 %i.bc, i32 1      ; 2 uses
  %.11 = select i1 %i.be, ptr %i.bf, ptr %i.az    ; 2 uses
  %i.bg = load i8, ptr %.11, align 1, !tbaa !12   ; 2 uses
  %i.bh = add i8 %i.bg, -58
  %or.cond = icmp ult i8 %i.bh, -10
  br i1 %or.cond, label %Bclear.exit750, label %.preheader951

.preheader951:                                    ; preds = %bb.q
  %i.bi = zext nneg i8 %i.bg to i32
  %i.bj = mul i32 %.0575, %.4554
  br label %bb.r

bb.r:                                             ; preds = %.preheader951, %bb.s
  %.0576 = phi i32 [ %i.bp, %bb.s ], [ %i.bi, %.preheader951 ]
  %.0557 = phi i32 [ %i.bm, %bb.s ], [ 0, %.preheader951 ]
  %.12 = phi ptr [ %i.bn, %bb.s ], [ %.11, %.preheader951 ]
  %i.bk = mul i32 %.0557, 10
  %i.bl = add nsw i32 %.0576, -48
  %i.bm = add i32 %i.bl, %i.bk                    ; 3 uses
  %i.bn = getelementptr i8, ptr %.12, i64 1       ; 5 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12  ; 2 uses
  %i.bp = sext i8 %i.bo to i32                    ; 2 uses
  %i.bq = add i32 %i.bm, %i.bj
  %i.br = icmp sgt i32 %i.bq, 2095
  br i1 %i.br, label %.preheader949, label %bb.s

.preheader949:                                    ; preds = %bb.r
  %i.bs = add nsw i32 %i.bp, -48
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %.lr.ph1077, label %.loopexit950

.lr.ph1077:                                       ; preds = %.preheader949, %.lr.ph1077
  %.131076 = phi ptr [ %i.bu, %.lr.ph1077 ], [ %i.bn, %.preheader949 ]
  %i.bu = getelementptr i8, ptr %.131076, i64 1   ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %2 = add i8 %i.bv, -48
  %i.bw = icmp ult i8 %2, 10
  br i1 %i.bw, label %.lr.ph1077, label %.loopexit950, !llvm.loop !40

bb.s:                                             ; preds = %bb.r
  %i.bx = add i8 %i.bo, -48
  %i.by = icmp ult i8 %i.bx, 10
  br i1 %i.by, label %bb.r, label %.loopexit950, !llvm.loop !41

.loopexit950:                                     ; preds = %bb.s, %.lr.ph1077, %.preheader949
  %.14 = phi ptr [ %i.bu, %.lr.ph1077 ], [ %i.bn, %.preheader949 ], [ %i.bn, %bb.s ]
  %i.bz = mul i32 %i.bm, %.0575
  %i.ca = add i32 %i.bz, %.4554
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.preheader958, %.lr.ph, %bb.p, %.preheader953, %bb.k, %.critedge4, %.loopexit950
  %.3514816 = phi double [ %.3514, %.loopexit950 ], [ %.3514, %.critedge4 ], [ %.1512.ph, %bb.k ], [ %.1512.ph, %.lr.ph ], [ %i.aq, %bb.p ], [ %i.aq, %.preheader953 ], [ %i.v, %.preheader958 ]
  %.5555 = phi i32 [ %i.ca, %.loopexit950 ], [ %.4554, %.critedge4 ], [ %.1551.ph, %bb.k ], [ %i.ai, %.lr.ph ], [ %.35531348, %bb.p ], [ %.35531348, %.preheader953 ], [ %i.w, %.preheader958 ]
  %.15 = phi ptr [ %.14, %.loopexit950 ], [ %.10, %.critedge4 ], [ %i.ac, %bb.k ], [ %i.ah, %.lr.ph ], [ %i.aw, %bb.p ], [ %i.at, %.preheader953 ], [ %i.x, %.preheader958 ]
  %i.cb = tail call double @ldexp(double noundef %.3514816, i32 noundef %.5555) #24, !tbaa !11
  br label %Bclear.exit750

.preheader946:                                    ; preds = %bb.d, %.preheader946
  %.16 = phi ptr [ %i.cc, %.preheader946 ], [ %.1529, %bb.d ]
  %i.cc = getelementptr i8, ptr %.16, i64 1       ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.cd, label %.loopexit947 [
    i8 48, label %.preheader946
    i8 0, label %Bclear.exit750
  ]

.loopexit947:                                     ; preds = %.preheader946, %.loopexit962
  %i.ce = phi i8 [ %i.h, %.loopexit962 ], [ %i.cd, %.preheader946 ] ; 3 uses
  %.17 = phi ptr [ %.1529, %.loopexit962 ], [ %i.cc, %.preheader946 ] ; 6 uses
  %i.cf = sext i8 %i.ce to i32                    ; 2 uses
  %i.cg = add i8 %i.ce, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %.lr.ph1083, label %._crit_edge

.lr.ph1083:                                       ; preds = %.loopexit947, %bb.w
  %i.ci = phi i32 [ %i.cu, %bb.w ], [ %i.cf, %.loopexit947 ] ; 2 uses
  %.01082 = phi i32 [ %.1, %bb.w ], [ 0, %.loopexit947 ] ; 3 uses
  %.05011081 = phi i32 [ %.1502, %bb.w ], [ 0, %.loopexit947 ] ; 3 uses
  %.181080 = phi ptr [ %i.cs, %bb.w ], [ %.17, %.loopexit947 ]
  %.15581079 = phi i32 [ %i.cr, %bb.w ], [ 0, %.loopexit947 ] ; 3 uses
  %i.cj = icmp slt i32 %.15581079, 9
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph1083
  %i.ck = mul i32 %.05011081, 10
  %i.cl = add i32 %i.ck, -48
  %i.cm = add i32 %i.cl, %i.ci
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph1083
  %i.cn = icmp samesign ult i32 %.15581079, 17
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = mul i32 %.01082, 10
  %i.cp = add i32 %i.co, -48
  %i.cq = add i32 %i.cp, %i.ci
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u
  %.1502 = phi i32 [ %i.cm, %bb.t ], [ %.05011081, %bb.v ], [ %.05011081, %bb.u ] ; 2 uses
  %.1 = phi i32 [ %.01082, %bb.t ], [ %i.cq, %bb.v ], [ %.01082, %bb.u ] ; 2 uses
  %i.cr = add i32 %.15581079, 1                   ; 2 uses
  %i.cs = getelementptr i8, ptr %.181080, i64 1   ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12  ; 3 uses
  %i.cu = sext i8 %i.ct to i32                    ; 2 uses
  %i.cv = add i8 %i.ct, -48
  %i.cw = icmp ult i8 %i.cv, 10
  br i1 %i.cw, label %.lr.ph1083, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.w, %.loopexit947
  %.1558.lcssa = phi i32 [ 0, %.loopexit947 ], [ %i.cr, %bb.w ] ; 6 uses
  %.18.lcssa = phi ptr [ %.17, %.loopexit947 ], [ %i.cs, %bb.w ] ; 2 uses
  %.0501.lcssa = phi i32 [ 0, %.loopexit947 ], [ %.1502, %bb.w ] ; 5 uses
  %.0.lcssa = phi i32 [ 0, %.loopexit947 ], [ %.1, %bb.w ] ; 5 uses
  %.lcssa1031 = phi i8 [ %i.ce, %.loopexit947 ], [ %i.ct, %bb.w ]
  %.lcssa1030 = phi i32 [ %i.cf, %.loopexit947 ], [ %i.cu, %bb.w ]
  %i.cx = icmp eq i8 %.lcssa1031, 46
  br i1 %i.cx, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %._crit_edge
  %i.cy = getelementptr i8, ptr %.18.lcssa, i64 1 ; 5 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12  ; 2 uses
  %i.da = sext i8 %i.cz to i32                    ; 4 uses
  %i.db = add nsw i32 %i.da, -58
  %i.dc = icmp ult i32 %i.db, -10
  br i1 %i.dc, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not643 = icmp eq i32 %.1558.lcssa, 0
  br i1 %.not643, label %.preheader945, label %bb.z

.preheader945:                                    ; preds = %bb.y
  %i.dd = icmp eq i8 %i.cz, 48
  br i1 %i.dd, label %.lr.ph1092, label %._crit_edge1093

.lr.ph1092:                                       ; preds = %.preheader945, %.lr.ph1092
  %.191091 = phi ptr [ %i.df, %.lr.ph1092 ], [ %i.cy, %.preheader945 ]
  %.05411090 = phi i32 [ %i.de, %.lr.ph1092 ], [ 0, %.preheader945 ]
  %i.de = add i32 %.05411090, 1                   ; 2 uses
  %i.df = getelementptr i8, ptr %.191091, i64 1   ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !12  ; 2 uses
  %i.dh = icmp eq i8 %i.dg, 48
  br i1 %i.dh, label %.lr.ph1092, label %._crit_edge1093.loopexit, !llvm.loop !43

._crit_edge1093.loopexit:                         ; preds = %.lr.ph1092
  %i.di = sext i8 %i.dg to i32
  br label %._crit_edge1093

._crit_edge1093:                                  ; preds = %._crit_edge1093.loopexit, %.preheader945
  %.2578.lcssa = phi i32 [ %i.da, %.preheader945 ], [ %i.di, %._crit_edge1093.loopexit ] ; 3 uses
  %.0541.lcssa = phi i32 [ 0, %.preheader945 ], [ %i.de, %._crit_edge1093.loopexit ] ; 2 uses
  %.19.lcssa = phi ptr [ %i.cy, %.preheader945 ], [ %i.df, %._crit_edge1093.loopexit ] ; 3 uses
  %i.dj = add nsw i32 %.2578.lcssa, -49
  %or.cond7 = icmp ult i32 %i.dj, 9
  br i1 %or.cond7, label %bb.aa, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.ag
  %.3579 = phi i32 [ %i.da, %bb.y ], [ %i.eu, %bb.ag ] ; 3 uses
  %.2559 = phi i32 [ %.1558.lcssa, %bb.y ], [ %.5562, %bb.ag ] ; 2 uses
  %.0546 = phi i32 [ 0, %bb.y ], [ %.2548, %bb.ag ] ; 2 uses
  %.1542 = phi i32 [ 0, %bb.y ], [ %.3544, %bb.ag ] ; 2 uses
  %.20 = phi ptr [ %i.cy, %bb.y ], [ %i.es, %bb.ag ] ; 2 uses
  %.0525 = phi ptr [ %.17, %bb.y ], [ %.1526, %bb.ag ] ; 2 uses
  %.2503 = phi i32 [ %.0501.lcssa, %bb.y ], [ %.7508, %bb.ag ] ; 2 uses
  %.2 = phi i32 [ %.0.lcssa, %bb.y ], [ %.7, %bb.ag ] ; 2 uses
  %i.dk = add nsw i32 %.3579, -48
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %._crit_edge1093, %bb.z
  %.4580 = phi i32 [ %.3579, %bb.z ], [ %.2578.lcssa, %._crit_edge1093 ]
  %.3560 = phi i32 [ %.2559, %bb.z ], [ 0, %._crit_edge1093 ] ; 7 uses
  %.1547 = phi i32 [ %.0546, %bb.z ], [ %.0541.lcssa, %._crit_edge1093 ] ; 3 uses
  %.2543 = phi i32 [ %.1542, %bb.z ], [ 0, %._crit_edge1093 ] ; 6 uses
  %.21 = phi ptr [ %.20, %bb.z ], [ %.19.lcssa, %._crit_edge1093 ]
  %.1526 = phi ptr [ %.0525, %bb.z ], [ %.19.lcssa, %._crit_edge1093 ]
  %.3504 = phi i32 [ %.2503, %bb.z ], [ %.0501.lcssa, %._crit_edge1093 ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.z ], [ %.0.lcssa, %._crit_edge1093 ] ; 5 uses
  %i.dm = add i32 %.2543, 1                       ; 4 uses
  %i.dn = icmp sgt i32 %.3560, 60
  br i1 %i.dn, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = add nsw i32 %.4580, -48                 ; 3 uses
  %.not687 = icmp eq i32 %i.do, 0
  br i1 %.not687, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = add i32 %i.dm, %.1547                   ; 3 uses
  %i.dq = icmp sgt i32 %i.dm, 1
  br i1 %i.dq, label %.lr.ph1102.preheader, label %._crit_edge1103

.lr.ph1102.preheader:                             ; preds = %bb.ac
  %xtraiter = and i32 %.2543, 1
  %i.dr = icmp eq i32 %.2543, 1
  br i1 %i.dr, label %.lr.ph1102.epil.preheader, label %.lr.ph1102.preheader.new

.lr.ph1102.preheader.new:                         ; preds = %.lr.ph1102.preheader
  %unroll_iter = and i32 %.2543, 2147483646
  br label %.lr.ph1102

.lr.ph1102:                                       ; preds = %.lr.ph1102, %.lr.ph1102.preheader.new
  %.41100 = phi i32 [ %.3, %.lr.ph1102.preheader.new ], [ %.5.1, %.lr.ph1102 ] ; 2 uses
  %.45051099 = phi i32 [ %.3504, %.lr.ph1102.preheader.new ], [ %.5506.1, %.lr.ph1102 ] ; 2 uses
  %.45611098 = phi i32 [ %.3560, %.lr.ph1102.preheader.new ], [ %i.dy, %.lr.ph1102 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph1102.preheader.new ], [ %niter.next.1, %.lr.ph1102 ]
  %i.ds = add i32 %.45611098, 1                   ; 2 uses
  %i.dt = icmp slt i32 %.45611098, 9              ; 2 uses
  %i.du = mul i32 %.45051099, 10
  %i.dv = icmp sgt i32 %i.ds, 17
  %i.dw = mul i32 %.41100, 10
  %.5506 = select i1 %i.dt, i32 %i.du, i32 %.45051099 ; 2 uses
  %i.dx = or i1 %i.dt, %i.dv
  %.5 = select i1 %i.dx, i32 %.41100, i32 %i.dw   ; 2 uses
  %i.dy = add i32 %.45611098, 2                   ; 3 uses
  %i.dz = icmp slt i32 %i.ds, 9                   ; 2 uses
  %i.ea = mul i32 %.5506, 10
  %i.eb = icmp sgt i32 %i.dy, 17
  %i.ec = mul i32 %.5, 10
  %.5506.1 = select i1 %i.dz, i32 %i.ea, i32 %.5506 ; 3 uses
  %i.ed = or i1 %i.dz, %i.eb
  %.5.1 = select i1 %i.ed, i32 %.5, i32 %i.ec     ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1103.loopexit.unr-lcssa, label %.lr.ph1102, !llvm.loop !44

._crit_edge1103.loopexit.unr-lcssa:               ; preds = %.lr.ph1102
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1103.loopexit, label %.lr.ph1102.epil.preheader

.lr.ph1102.epil.preheader:                        ; preds = %._crit_edge1103.loopexit.unr-lcssa, %.lr.ph1102.preheader
  %.41100.epil.init = phi i32 [ %.3, %.lr.ph1102.preheader ], [ %.5.1, %._crit_edge1103.loopexit.unr-lcssa ] ; 2 uses
  %.45051099.epil.init = phi i32 [ %.3504, %.lr.ph1102.preheader ], [ %.5506.1, %._crit_edge1103.loopexit.unr-lcssa ] ; 2 uses
  %.45611098.epil.init = phi i32 [ %.3560, %.lr.ph1102.preheader ], [ %i.dy, %._crit_edge1103.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1822 = trunc i32 %.2543 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1822)
end_hunk_1
