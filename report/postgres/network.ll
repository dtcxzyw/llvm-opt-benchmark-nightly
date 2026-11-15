Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/network?download=true
inline.NumInlined: 411
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@pg_getnameinfo_all
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

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
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

; Function Attrs: nounwind uwtable
define dso_local i64 @inet_server_port(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
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
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
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

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inetnot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
iter.check:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11 ; 7 uses
  %i.e = tail call ptr @palloc0(i64 noundef 22) #11 ; 5 uses
  %i.f = load i8, ptr %i.d, align 1
  %i.g = and i8 %i.f, 1
  %.not.i = icmp eq i8 %i.g, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 2                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1
  %i.m = and i8 %i.l, 1
  %.not.i18 = icmp eq i8 %i.m, 0
  %.v.i19 = select i1 %.not.i18, i64 4, i64 1     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.v.i19 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.p = select i1 %i.j, i64 4, i64 16            ; 5 uses
  %i.q = ptrtoaddr ptr %i.e to i64
  %i.r = ptrtoaddr ptr %i.d to i64
  %i.s = add i64 %.v.i19, %i.q
  %i.t = add i64 %.v.i, %i.r
  %i.u = sub i64 %i.s, %i.t
  %diff.check = icmp ugt i64 %i.u, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %i.j, label %vec.epilog.vector.body, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.p, 16
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %1 = xor i64 %index, -1
  %i.v = add i64 %i.p, %1                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -15
  %wide.load = load <16 x i8>, ptr %i.x, align 1
  %i.y = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  store <16 x i8> %i.y, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !29

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index33 = phi i64 [ %index.next35, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ac = xor i64 %index33, -1
  %i.ad = add i64 %i.p, %i.ac                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -3
  %wide.load34 = load <4 x i8>, ptr %i.af, align 1
  %i.ag = xor <4 x i8> %wide.load34, splat (i8 -1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -3
  store <4 x i8> %i.ag, ptr %i.ai, align 1
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next35, %i.p
  br i1 %i.aj, label %middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %vec.epilog.scalar.ph ], [ %i.p, %iter.check ] ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.a
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = xor i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.a
  store i8 %i.am, ptr %i.an, align 1
  %2 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %2, label %vec.epilog.scalar.ph, label %middle.block, !llvm.loop !31

middle.block:                                     ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph
  %i.ao = load i8, ptr %i.d, align 1
  %i.ap = and i8 %i.ao, 1
  %.not.i20 = icmp eq i8 %i.ap, 0
  %i.aq = select i1 %.not.i20, i64 5, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.as, ptr %i.at, align 1
  %i.au = load i8, ptr %i.d, align 1
  %i.av = and i8 %i.au, 1
  %.not.i24 = icmp eq i8 %i.av, 0
  %.v.i25 = select i1 %.not.i24, i64 4, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i25
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  store i8 %i.ax, ptr %i.n, align 1
  %i.ay = icmp eq i8 %i.ax, 2
  %i.az = select i1 %i.ay, i32 40, i32 88
  store i32 %i.az, ptr %i.e, align 4
  %i.ba = ptrtoint ptr %i.e to i64
  ret i64 %i.ba
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inetand(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #11 ; 4 uses
  %i.i = tail call ptr @palloc0(i64 noundef 22) #11 ; 4 uses
  %i.j = load i8, ptr %i.d, align 1
  %i.k = and i8 %i.j, 1
  %.not.i = icmp eq i8 %i.k, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 3 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = load i8, ptr %i.h, align 1
  %i.o = and i8 %i.n, 1
  %.not.i25 = icmp eq i8 %i.o, 0
  %.v.i26 = select i1 %.not.i25, i64 4, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i26 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not = icmp eq i8 %i.m, %i.q
  br i1 %.not, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.s = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1826, ptr noundef nonnull @__func__.inetand) #11
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.w = load i8, ptr %i.i, align 1
  %i.x = and i8 %i.w, 1
  %.not.i33 = icmp eq i8 %i.x, 0
  %.v.i34 = select i1 %.not.i33, i64 4, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.i34 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 3 uses
  %i.aa = icmp eq i8 %i.m, 2
  %i.ab = select i1 %i.aa, i64 3, i64 15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ] ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr i8, ptr %i.p, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.2
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not56.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not56.3, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph
  %.pre52 = load i8, ptr %i.h, align 1
  %.pre54 = and i8 %.pre52, 1
  %.pre = load i8, ptr %i.d, align 1
  %.pre53 = and i8 %.pre, 1
  %.not.i35 = icmp eq i8 %.pre53, 0
  %.v.i36 = select i1 %.not.i35, i64 4, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not.i37 = icmp eq i8 %.pre54, 0
  %.v.i38 = select i1 %.not.i37, i64 4, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i38 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp ugt i8 %i.bc, %i.bf
  %spec.select = select i1 %i.bg, ptr %i.ba, ptr %i.bd
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %.in = load i8, ptr %.in.in, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %.in, ptr %i.bh, align 1
  %i.bi = load i8, ptr %i.d, align 1
  %i.bj = and i8 %i.bi, 1
  %.not.i45 = icmp eq i8 %i.bj, 0
  %.v.i46 = select i1 %.not.i45, i64 4, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i46
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  store i8 %i.bl, ptr %i.y, align 1
  %i.bm = icmp eq i8 %i.bl, 2
  %i.bn = select i1 %i.bm, i32 40, i32 88
  store i32 %i.bn, ptr %i.i, align 4
  %i.bo = ptrtoint ptr %i.i to i64
  ret i64 %i.bo
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inetor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #11 ; 4 uses
  %i.i = tail call ptr @palloc0(i64 noundef 22) #11 ; 4 uses
  %i.j = load i8, ptr %i.d, align 1
  %i.k = and i8 %i.j, 1
  %.not.i = icmp eq i8 %i.k, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 3 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = load i8, ptr %i.h, align 1
  %i.o = and i8 %i.n, 1
  %.not.i25 = icmp eq i8 %i.o, 0
  %.v.i26 = select i1 %.not.i25, i64 4, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i26 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not = icmp eq i8 %i.m, %i.q
  br i1 %.not, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.s = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1858, ptr noundef nonnull @__func__.inetor) #11
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.w = load i8, ptr %i.i, align 1
  %i.x = and i8 %i.w, 1
  %.not.i33 = icmp eq i8 %i.x, 0
  %.v.i34 = select i1 %.not.i33, i64 4, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.i34 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 3 uses
  %i.aa = icmp eq i8 %i.m, 2
  %i.ab = select i1 %i.aa, i64 3, i64 15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ] ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = or i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = or i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr i8, ptr %i.p, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = or i8 %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = or i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.2
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not56.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not56.3, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph
  %.pre52 = load i8, ptr %i.h, align 1
  %.pre54 = and i8 %.pre52, 1
  %.pre = load i8, ptr %i.d, align 1
  %.pre53 = and i8 %.pre, 1
  %.not.i35 = icmp eq i8 %.pre53, 0
  %.v.i36 = select i1 %.not.i35, i64 4, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not.i37 = icmp eq i8 %.pre54, 0
  %.v.i38 = select i1 %.not.i37, i64 4, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i38 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp ugt i8 %i.bc, %i.bf
  %spec.select = select i1 %i.bg, ptr %i.ba, ptr %i.bd
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %.in = load i8, ptr %.in.in, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %.in, ptr %i.bh, align 1
  %i.bi = load i8, ptr %i.d, align 1
  %i.bj = and i8 %i.bi, 1
  %.not.i45 = icmp eq i8 %i.bj, 0
  %.v.i46 = select i1 %.not.i45, i64 4, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i46
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  store i8 %i.bl, ptr %i.y, align 1
  %i.bm = icmp eq i8 %i.bl, 2
  %i.bn = select i1 %i.bm, i32 40, i32 88
  store i32 %i.bn, ptr %i.i, align 4
  %i.bo = ptrtoint ptr %i.i to i64
  ret i64 %i.bo
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inetpl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc ptr @internal_inetpl(ptr noundef %i.d, i64 noundef %i.f)
  %i.h = ptrtoint ptr %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @internal_inetpl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 22) #11 ; 4 uses
  %i.b = load i8, ptr %0, align 1
  %i.c = and i8 %i.b, 1
  %.not.i = icmp eq i8 %i.c, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = load i8, ptr %i.a, align 1
  %i.i = and i8 %i.h, 1
  %.not.i32 = icmp eq i8 %i.i, 0
  %.v.i33 = select i1 %.not.i32, i64 4, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.v.i33 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.l = select i1 %i.f, i64 4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %i.l, %bb.a ], [ %indvars.iv.next.a, %bb.b ] ; 2 uses
  %.046 = phi i32 [ 0, %bb.a ], [ %i.v, %bb.b ]
  %.02844 = phi i64 [ %1, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next.a
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = trunc i64 %.02844 to i32
  %i.q = and i32 %i.p, 255
  %i.r = add nuw nsw i32 %.046, %i.q
  %i.s = add nuw nsw i32 %i.r, %i.o               ; 2 uses
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.a
  store i8 %i.t, ptr %i.u, align 1
  %i.v = lshr i32 %i.s, 8                         ; 3 uses
  %i.w = ashr i64 %.02844, 8                      ; 3 uses
  %2 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %2, label %bb.b, label %bb.c, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.w, 0
  %i.y = icmp eq i32 %i.v, 0
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.w, -1
  %i.aa = icmp eq i32 %i.v, 1
  %or.cond3 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ac = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1919, ptr noundef nonnull @__func__.internal_inetpl) #11
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ae = load i8, ptr %0, align 1
  %i.af = and i8 %i.ae, 1
  %.not.i34 = icmp eq i8 %i.af, 0
  %i.ag = select i1 %.not.i34, i64 5, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = load i8, ptr %0, align 1
  %i.al = and i8 %i.ak, 1
  %.not.i38 = icmp eq i8 %i.al, 0
  %.v.i39 = select i1 %.not.i38, i64 4, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i39
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  store i8 %i.an, ptr %i.j, align 1
  %i.ao = icmp eq i8 %i.an, 2
  %i.ap = select i1 %i.ao, i32 40, i32 88
  store i32 %i.ap, ptr %i.a, align 4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inetmi_int8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 0, %i.f
  %i.h = tail call fastcc ptr @internal_inetpl(ptr noundef %i.d, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inetmi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
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
!12 = distinct !{!12, i1 true, !"pq_writeint8"}
!13 = distinct !{!13, !12, !"pq_writeint8: argument 0"}
!14 = distinct !{!14, i1 true, !"pq_writeint8"}
!15 = distinct !{!15, !14, !"pq_writeint8: argument 0"}
!16 = distinct !{!16, i1 true, !"pq_writeint8"}
!17 = distinct !{!17, !16, !"pq_writeint8: argument 0"}
!18 = distinct !{!18, i1 true, !"pq_writeint8"}
!19 = distinct !{!19, !18, !"pq_writeint8: argument 0"}
!20 = distinct !{!20, i1 true, !"pq_writeint8"}
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
end_hunk_0
