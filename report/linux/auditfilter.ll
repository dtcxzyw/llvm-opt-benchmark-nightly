Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/auditfilter?download=true
inline.NumInlined: 144
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@audit_comparator:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.p, %bb.i ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 0, 2) i32 @audit_uid_comparator(i32 %0, i32 noundef %1, i32 %2) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 7, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %0, %2
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %0, %2
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, %2
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = icmp ule i32 %0, %2
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %0, %2
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.f = icmp uge i32 %0, %2
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %i.f, %bb.g ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 0, 2) i32 @audit_gid_comparator(i32 %0, i32 noundef %1, i32 %2) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 7, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %0, %2
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %0, %2
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, %2
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = icmp ule i32 %0, %2
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %0, %2
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.f = icmp uge i32 %0, %2
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %i.f, %bb.g ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i32 @parent_len(ptr noundef %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #13 ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn = phi ptr [ %i.e, %bb.b ], [ %.0, %bb.c ]
  %.0 = getelementptr i8, ptr %.pn, i64 -1        ; 4 uses
  %i.f = load i8, ptr %.0, align 1
  %i.g = icmp eq i8 %i.f, 47
  %i.h = icmp ugt ptr %.0, %0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.preheader, !llvm.loop !44

.preheader:                                       ; preds = %bb.c, %.preheader
  %.1 = phi ptr [ %i.n, %.preheader ], [ %.0, %bb.c ] ; 4 uses
  %i.j = load i8, ptr %.1, align 1                ; 2 uses
  %i.k = icmp ne i8 %i.j, 47
  %i.l = icmp ugt ptr %.1, %0
  %i.m = and i1 %i.l, %i.k
  %i.n = getelementptr i8, ptr %.1, i64 -1
  br i1 %i.m, label %.preheader, label %bb.d, !llvm.loop !45

bb.d:                                             ; preds = %.preheader
  %i.o = icmp eq i8 %i.j, 47
  %spec.select.idx = zext i1 %i.o to i64
  %spec.select = getelementptr i8, ptr %.1, i64 %spec.select.idx
  %i.p = ptrtoint ptr %spec.select to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.017 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.a ]
  ret i32 %.017
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @audit_compare_dname_path(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = tail call i64 @strlen(ptr noundef %1) #13 ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.c, label %parent_len.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.c, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %parent_len.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sext.i = shl i64 %i.c, 32
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi ptr [ %i.j, %bb.d ], [ %.0.i, %bb.e ]
  %.0.i = getelementptr i8, ptr %.pn.i, i64 -1    ; 4 uses
  %i.k = load i8, ptr %.0.i, align 1
  %i.l = icmp eq i8 %i.k, 47
  %i.m = icmp ugt ptr %.0.i, %1
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %.preheader.i, !llvm.loop !44

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.1.i = phi ptr [ %i.s, %.preheader.i ], [ %.0.i, %bb.e ] ; 4 uses
  %i.o = load i8, ptr %.1.i, align 1              ; 2 uses
  %i.p = icmp ne i8 %i.o, 47
  %i.q = icmp ugt ptr %.1.i, %1
  %i.r = and i1 %i.q, %i.p
  %i.s = getelementptr i8, ptr %.1.i, i64 -1
  br i1 %i.r, label %.preheader.i, label %bb.f, !llvm.loop !45

bb.f:                                             ; preds = %.preheader.i
  %i.t = icmp eq i8 %i.o, 47
  %spec.select.idx.i = zext i1 %i.t to i64
  %spec.select.i = getelementptr i8, ptr %.1.i, i64 %spec.select.idx.i
  %i.u = ptrtoint ptr %spec.select.i to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  br label %parent_len.exit

parent_len.exit:                                  ; preds = %bb.f, %bb.c, %bb.b
  %.019 = phi i32 [ %2, %bb.b ], [ %i.x, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.y = sext i32 %.019 to i64
  %i.z = getelementptr i8, ptr %1, i64 %i.y       ; 2 uses
  %i.aa = sub i32 %i.d, %.019                     ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %parent_len.exit
  %3 = zext nneg i32 %i.aa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %indvars.iv
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 47
  br i1 %i.af, label %bb.g, label %.critedge.loopexit.split.loop.exit31

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ag, label %.lr.ph, label %.critedge, !llvm.loop !46

.critedge.loopexit.split.loop.exit31:             ; preds = %.lr.ph
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit31, %parent_len.exit
  %.0.lcssa = phi i32 [ %i.aa, %parent_len.exit ], [ %4, %.critedge.loopexit.split.loop.exit31 ], [ 0, %bb.g ]
  %.not = icmp eq i32 %.0.lcssa, %i.b
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.ah = getelementptr i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sext i32 %i.b to i64
  %i.ak = tail call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.ai, i64 noundef %i.aj) #17
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.a, %bb.h
  %.020 = phi i32 [ %i.ak, %bb.h ], [ 1, %bb.a ], [ 1, %.critedge ]
  ret i32 %.020
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @audit_filter(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.lsm_prop, align 4           ; 7 uses
  tail call void @__rcu_read_lock() #13
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr [16 x i8], ptr @audit_filter_list, i64 %i.a ; 3 uses
  %i.c = load volatile ptr, ptr %i.b, align 16    ; 2 uses
  %.not99 = icmp eq ptr %i.c, %i.b
  br i1 %.not99, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge.thread
  %.050100 = phi ptr [ %i.eo, %._crit_edge.thread ], [ %i.c, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %.050100, i64 308  ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr i8, ptr %.050100, i64 320
  %i.g = getelementptr i8, ptr %.050100, i64 360
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bc
  %.05498 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %bb.bc ] ; 2 uses
  %.05597 = phi i32 [ 0, %.lr.ph ], [ %.15675, %bb.bc ]
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = sext i32 %.05498 to i64
  %i.j = getelementptr [32 x i8], ptr %i.h, i64 %i.i ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i32 0, ptr %2, align 4
  %i.k = load i32, ptr %i.j, align 8
  switch i32 %i.k, label %.thread [
    i32 0, label %bb.c
    i32 1, label %bb.l
    i32 5, label %bb.s
    i32 9, label %bb.z
    i32 24, label %bb.ag
    i32 12, label %bb.ap
    i32 13, label %bb.ay
    i32 14, label %bb.ay
    i32 15, label %bb.ay
    i32 16, label %bb.ay
    i32 17, label %bb.ay
    i32 112, label %bb.ba
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !37
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 1532
  %.val = load i32, ptr %i.n, align 4             ; 8 uses
  %i.o = getelementptr i8, ptr %i.j, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.j, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 9 uses
  switch i32 %i.p, label %.thread82 [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 4, label %bb.f
    i32 6, label %bb.g
    i32 5, label %bb.h
    i32 7, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %.val, %i.r
  %i.t = zext i1 %i.s to i32
  br label %audit_comparator.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ne i32 %.val, %i.r
  %i.v = zext i1 %i.u to i32
  br label %audit_comparator.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.w = icmp ult i32 %.val, %i.r
  %i.x = zext i1 %i.w to i32
  br label %audit_comparator.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.y = icmp ule i32 %.val, %i.r
  %i.z = zext i1 %i.y to i32
  br label %audit_comparator.exit.thread

bb.h:                                             ; preds = %bb.c
  %i.aa = icmp ugt i32 %.val, %i.r
  %i.ab = zext i1 %i.aa to i32
  br label %audit_comparator.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.ac = icmp uge i32 %.val, %i.r
  %i.ad = zext i1 %i.ac to i32
  br label %audit_comparator.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.ae = and i32 %i.r, %.val
  br label %audit_comparator.exit

bb.k:                                             ; preds = %bb.c
  %i.af = and i32 %i.r, %.val
  %i.ag = icmp eq i32 %i.af, %i.r
  %i.ah = zext i1 %i.ag to i32
  br label %audit_comparator.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.ai = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !37
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 1992
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.sroa.08.0.copyload = load i32, ptr %i.am, align 8 ; 6 uses
  %i.an = getelementptr i8, ptr %i.j, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.j, i64 8
  %i.aq = load i32, ptr %i.ap, align 8            ; 6 uses
  switch i32 %i.ao, label %audit_uid_comparator.exit [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 4, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 7, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = icmp eq i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

bb.n:                                             ; preds = %bb.l
  %i.as = icmp ne i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

bb.o:                                             ; preds = %bb.l
  %i.at = icmp ult i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

bb.p:                                             ; preds = %bb.l
  %i.au = icmp ule i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

bb.q:                                             ; preds = %bb.l
  %i.av = icmp ugt i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

bb.r:                                             ; preds = %bb.l
  %i.aw = icmp uge i32 %.sroa.08.0.copyload, %i.aq
  br label %audit_uid_comparator.exit

audit_uid_comparator.exit:                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.shrunk.i = phi i1 [ %i.aw, %bb.r ], [ %i.ar, %bb.m ], [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.au, %bb.p ], [ %i.av, %bb.q ], [ false, %bb.l ]
  %.0.i64 = zext i1 %.0.shrunk.i to i32
  br label %audit_comparator.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.ax = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !37
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 1992
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 12
  %.sroa.06.0.copyload = load i32, ptr %i.bb, align 4 ; 6 uses
  %i.bc = getelementptr i8, ptr %i.j, i64 24
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.j, i64 8
  %i.bf = load i32, ptr %i.be, align 8            ; 6 uses
  switch i32 %i.bd, label %audit_gid_comparator.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 4, label %bb.v
    i32 6, label %bb.w
    i32 5, label %bb.x
    i32 7, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp eq i32 %.sroa.06.0.copyload, %i.bf
  br label %audit_gid_comparator.exit

bb.u:                                             ; preds = %bb.s
  %i.bh = icmp ne i32 %.sroa.06.0.copyload, %i.bf
end_hunk_0
