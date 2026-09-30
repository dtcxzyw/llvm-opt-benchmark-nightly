Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/network?download=true
inline.NumInlined: 411
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@inet_merge:bb.a

.thread.loopexit.i:                               ; preds = %.lr.ph.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %._crit_edge..thread_crit_edge.i
  %i.aj = phi i8 [ %.pre31.i, %._crit_edge..thread_crit_edge.i ], [ %i.ah, %.thread.loopexit.i ]
  %i.ak = phi i8 [ %.pre.i, %._crit_edge..thread_crit_edge.i ], [ %i.af, %.thread.loopexit.i ]
  %.01724.i = phi i32 [ %.017.lcssa.i, %._crit_edge..thread_crit_edge.i ], [ %i.ai, %.thread.loopexit.i ]
  %.022.i = phi i32 [ %.zext, %._crit_edge..thread_crit_edge.i ], [ 7, %.thread.loopexit.i ]
  %i.al = xor i8 %i.ak, %i.aj
  %i.am = zext i8 %i.al to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.thread.i
  %.1.i = phi i32 [ %.022.i, %.thread.i ], [ %i.ap, %bb.e ] ; 3 uses
  %i.an = sub i32 8, %.1.i
  %i.ao = lshr i32 %i.am, %i.an
  %.not19.i = icmp eq i32 %i.ao, 0
  %i.ap = add i32 %.1.i, -1
  br i1 %.not19.i, label %bitncommon.exit, label %bb.e, !llvm.loop !2

bitncommon.exit:                                  ; preds = %bb.e, %._crit_edge.i
  %.01725.i = phi i32 [ %.017.lcssa.i, %._crit_edge.i ], [ %.01724.i, %bb.e ]
  %.2.i = phi i32 [ 0, %._crit_edge.i ], [ %.1.i, %bb.e ] ; 2 uses
  %i.aq = shl i32 %.01725.i, 3
  %i.ar = add i32 %.2.i, %i.aq                    ; 4 uses
  %i.as = tail call ptr @palloc0(i64 noundef 22) #11 ; 4 uses
  %i.at = load i8, ptr %i.d, align 1
  %i.au = and i8 %i.at, 1
  %.not.i.i = icmp eq i8 %i.au, 0
  %.v.i.i = select i1 %.not.i.i, i64 4, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i.i
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = load i8, ptr %i.as, align 1
  %i.ay = and i8 %i.ax, 1
  %.not.i15.i = icmp eq i8 %i.ay, 0
  %.v.i16.i = select i1 %.not.i15.i, i64 4, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %.v.i16.i ; 3 uses
  store i8 %i.aw, ptr %i.az, align 1
  %i.ba = trunc i32 %i.ar to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = icmp sgt i32 %i.ar, 0
  br i1 %i.bc, label %bb.f, label %cidr_set_masklen_internal.exit

bb.f:                                             ; preds = %bitncommon.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.d, align 1
  %i.bf = and i8 %i.be, 1
  %.not.i21.i = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not.i21.i, i64 6, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bg
  %i.bi = add nuw i32 %i.ar, 7
  %i.bj = sdiv i32 %i.bi, 8
  %i.bk = sext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.bh, i64 %i.bk, i1 false)
  %i.bl = and i32 %.2.i, 7                        ; 2 uses
  %.not.i26 = icmp eq i32 %i.bl, 0
  br i1 %.not.i26, label %cidr_set_masklen_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = ashr exact i32 -256, %i.bl
  %i.bn = lshr i32 %i.ar, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = trunc nsw i32 %i.bm to i8
  %i.bs = and i8 %i.bq, %i.br
  store i8 %i.bs, ptr %i.bp, align 1
  br label %cidr_set_masklen_internal.exit

cidr_set_masklen_internal.exit:                   ; preds = %bitncommon.exit, %bb.f, %bb.g
  %i.bt = icmp eq i8 %i.aw, 2
  %i.bu = select i1 %i.bt, i32 40, i32 88
  store i32 %i.bu, ptr %i.as, align 4
  %i.bv = ptrtoint ptr %i.as to i64
  ret i64 %i.bv
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bitncommon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = srem i32 %2, 8                           ; 2 uses
  %i.b = icmp sgt i32 %2, 7
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = lshr i32 %2, 3                           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %bb.b, label %.thread.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %.loopexit, label %._crit_edge..thread_crit_edge

._crit_edge..thread_crit_edge:                    ; preds = %._crit_edge
  %.phi.trans.insert = zext nneg i32 %.017.lcssa to i64 ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %0, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert29, align 1
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %1, i64 %.phi.trans.insert
  %.pre31 = load i8, ptr %.phi.trans.insert30, align 1
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %.thread.loopexit
  %i.i = phi i8 [ %.pre31, %._crit_edge..thread_crit_edge ], [ %i.g, %.thread.loopexit ]
  %i.j = phi i8 [ %.pre, %._crit_edge..thread_crit_edge ], [ %i.e, %.thread.loopexit ]
  %.01724 = phi i32 [ %.017.lcssa, %._crit_edge..thread_crit_edge ], [ %i.h, %.thread.loopexit ]
  %.022 = phi i32 [ %i.a, %._crit_edge..thread_crit_edge ], [ 7, %.thread.loopexit ]
  %i.k = xor i8 %i.i, %i.j
  %i.l = zext i8 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.thread
  %.1 = phi i32 [ %.022, %.thread ], [ %i.o, %bb.c ] ; 3 uses
  %i.m = sub i32 8, %.1
  %i.n = lshr i32 %i.l, %i.m
  %.not19 = icmp eq i32 %i.n, 0
  %i.o = add i32 %.1, -1
  br i1 %.not19, label %.loopexit, label %bb.c, !llvm.loop !2

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.01725 = phi i32 [ %.017.lcssa, %._crit_edge ], [ %.01724, %bb.c ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %.1, %bb.c ]
  %i.p = shl i32 %.01725, 3
  %i.q = add i32 %.2, %i.p
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define dso_local double @convert_network_to_scalar(i64 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 869, label %bb.b
    i32 650, label %bb.b
    i32 829, label %bb.d
    i32 774, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.a) #11 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %.not.i = icmp eq i8 %i.d, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 6 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.i = uitofp i8 %i.f to double
  %i.j = fmul nnan double %i.i, 2.560000e+02
  %i.k = load i8, ptr %i.h, align 1
  %i.l = uitofp i8 %i.k to double
  %i.m = fadd nnan double %i.j, %i.l
  %i.n = fmul nnan double %i.m, 2.560000e+02
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = uitofp i8 %i.p to double
  %i.r = fadd nnan double %i.n, %i.q
  %i.s = fmul nnan double %i.r, 2.560000e+02
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.u = load i8, ptr %i.t, align 1
  %i.v = uitofp i8 %i.u to double
  %i.w = fadd nnan double %i.s, %i.v
  %i.x = fmul nnan double %i.w, 2.560000e+02
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = uitofp i8 %i.z to double
  %i.ab = fadd double %i.x, %i.aa                 ; 2 uses
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = fmul nnan double %i.ab, 2.560000e+02
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = uitofp i8 %i.ae to double
  %i.ag = fadd double %i.ac, %i.af
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ah = inttoptr i64 %0 to ptr                  ; 4 uses
  %3 = load i16, ptr %i.ah, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.ai = zext i16 %4 to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = fmul nnan double %i.ao, f0x4170000000000000
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %5 = load i16, ptr %i.aq, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.ar = zext i16 %6 to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fadd double %i.ap, %i.ax
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.az = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fmul nnan double %i.bc, f0x41F0000000000000
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fadd double %i.bd, %i.bh
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi double [ 0.000000e+00, %bb.f ], [ %i.bi, %bb.e ], [ %i.ay, %bb.d ], [ %i.ag, %bb.c ], [ %i.ab, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @network_scan_first(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @network_network, i32 noundef 0, i64 noundef %0) #11
  ret i64 %i.a
}

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @network_scan_last(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @network_broadcast, i32 noundef 0, i64 noundef %0) #11
  %i.b = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @inet_set_masklen, i32 noundef 0, i64 noundef %i.a, i64 noundef -1) #11
  ret i64 %i.b
}

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inet_client_addr(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 6 uses
  %i.b = load ptr, ptr @MyProcPort, align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8
  switch i16 %i.f, label %bb.d [
    i16 2, label %bb.e
    i16 10, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.g, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.c
  store i8 0, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.i = load i32, ptr %i.h, align 8
  %i.j = call i32 @pg_getnameinfo_all(ptr noundef nonnull %i.e, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1025, ptr noundef null, i32 noundef 0, i32 noundef 3) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.k, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = load i16, ptr %i.e, align 8
  %i.m = icmp eq i16 %i.l, 10
  br i1 %i.m, label %bb.h, label %clean_ipv6_addr.exit

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 37) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %clean_ipv6_addr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.n, align 1
  br label %clean_ipv6_addr.exit

clean_ipv6_addr.exit:                             ; preds = %bb.g, %bb.h, %bb.i
  %i.o = call fastcc ptr @network_in(ptr noundef nonnull %i.a, i1 noundef zeroext false, ptr noundef null)
  %i.p = ptrtoint ptr %i.o to i64
  br label %bb.j

bb.j:                                             ; preds = %clean_ipv6_addr.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.p, %clean_ipv6_addr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

declare i32 @pg_getnameinfo_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @clean_ipv6_addr(i32 noundef %0, ptr nofree noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %0, 10
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 37) #12 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inet_client_port(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = load ptr, ptr @MyProcPort, align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  switch i16 %i.f, label %bb.d [
    i16 2, label %bb.e
    i16 10, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.g, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.c
  store i8 0, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.i = load i32, ptr %i.h, align 8
  %i.j = call i32 @pg_getnameinfo_all(ptr noundef nonnull %i.e, i32 noundef %i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 32, i32 noundef 3) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.k, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @int4in, i32 noundef 0, i64 noundef %i.l) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

declare i64 @int4in(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inet_server_addr(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 6 uses
  %i.b = load ptr, ptr @MyProcPort, align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.j
end_hunk_0
begin_hunk_1_@inetmi:bb.a
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #11 ; 2 uses
  %i.i = load i8, ptr %i.d, align 1
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = load i8, ptr %i.h, align 1
  %i.n = and i8 %i.m, 1
  %.not.i35 = icmp eq i8 %i.n, 0
  %.v.i36 = select i1 %.not.i35, i64 4, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i36 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not = icmp eq i8 %i.l, %i.p
  br i1 %.not, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.r = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1960, ptr noundef nonnull @__func__.inetmi) #11
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.v = icmp eq i8 %i.l, 2                       ; 2 uses
  %i.w = select i1 %i.v, i32 3, i32 15            ; 3 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add nuw nsw i32 %i.w, 1
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv52 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next53, %bb.h ] ; 3 uses
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.048 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.as, %bb.h ]
  %.03146 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = xor i8 %i.ad, -1
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %.048, %i.ab
  %i.ah = add nuw nsw i32 %i.ag, %i.af            ; 2 uses
  %i.ai = and i32 %i.ah, 255                      ; 3 uses
  %i.aj = icmp samesign ult i64 %indvars.iv52, 8
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %indvars.iv52, 3
  %i.am = shl nuw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.03146
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ao = icmp slt i64 %.03146, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i32 %i.ai, 255
  br i1 %.not34, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.aq = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1995, ptr noundef nonnull @__func__.inetmi) #11
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.1 = phi i64 [ %i.an, %bb.c ], [ %.03146, %bb.e ], [ %.03146, %bb.f ] ; 2 uses
  %i.as = lshr i32 %i.ah, 8                       ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.h
  %i.at = icmp eq i32 %i.as, 0
  %or.cond = and i1 %i.at, %i.v
  %i.au = shl nuw nsw i32 %i.w, 3
  %i.av = add nuw nsw i32 %i.au, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nsw i64 -1, %i.aw
  %i.ay = select i1 %or.cond, i64 %i.ax, i64 0
  %.2 = or i64 %i.ay, %.1
  ret i64 %.2
}

declare i32 @pg_inet_net_pton(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #3

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #3

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #3

declare i32 @pq_getmsgbyte(ptr noundef) local_unnamed_addr #3

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #3

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

declare double @estimateHyperLogLog(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

declare void @addHyperLogLog(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_bytes_uint32(i32 noundef) local_unnamed_addr #3

declare i32 @hash_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @hash_bytes_extended(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match_network_subset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %2, i32 4, i32 5
  %i.i = tail call i32 @get_opfamily_member_for_cmptype(i32 noundef %3, i32 noundef 869, i32 noundef 869, i32 noundef %i.h) #11 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @network_network, i32 noundef 0, i64 noundef %i.g) #11
  %i.l = tail call ptr @makeConst(i32 noundef 869, i32 noundef -1, i32 noundef 0, i32 noundef -1, i64 noundef %i.k, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %i.m = tail call ptr @make_opclause(i32 noundef %i.i, i32 noundef 16, i1 noundef zeroext false, ptr noundef %0, ptr noundef %i.l, i32 noundef 0, i32 noundef 0) #11
  %i.n = tail call ptr @list_make1_impl(i32 noundef 1, ptr %i.m) #11
  %i.o = tail call i32 @get_opfamily_member_for_cmptype(i32 noundef %3, i32 noundef 869, i32 noundef 869, i32 noundef 2) #11 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @network_broadcast, i32 noundef 0, i64 noundef %i.g) #11
  %i.r = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @inet_set_masklen, i32 noundef 0, i64 noundef %i.q, i64 noundef -1) #11
  %i.s = tail call ptr @makeConst(i32 noundef 869, i32 noundef -1, i32 noundef 0, i32 noundef -1, i64 noundef %i.r, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %i.t = tail call ptr @make_opclause(i32 noundef %i.o, i32 noundef 16, i1 noundef zeroext false, ptr noundef %0, ptr noundef %i.s, i32 noundef 0, i32 noundef 0) #11
  %i.u = tail call ptr @lappend(ptr noundef %i.n, ptr noundef %i.t) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_opclause(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #3

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7, !8}
!1 = distinct !{!1, !7}
!2 = distinct !{!2, !7}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !"pq_writeint8"}
!13 = distinct !{!13, !12, !"pq_writeint8: argument 0"}
!14 = distinct !{!14, !"pq_writeint8"}
!15 = distinct !{!15, !14, !"pq_writeint8: argument 0"}
!16 = distinct !{!16, !"pq_writeint8"}
!17 = distinct !{!17, !16, !"pq_writeint8: argument 0"}
!18 = distinct !{!18, !"pq_writeint8"}
!19 = distinct !{!19, !18, !"pq_writeint8: argument 0"}
!20 = distinct !{!20, !"pq_writeint8"}
!21 = distinct !{!21, !20, !"pq_writeint8: argument 0"}
!22 = distinct !{!22, !7}
!23 = !{!13}
!24 = !{!15}
!25 = !{!17}
!26 = !{!19}
!27 = !{!21}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7, !32, !33}
!30 = distinct !{!30, !7, !32, !33}
!31 = distinct !{!31, !7, !32}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
end_hunk_1
