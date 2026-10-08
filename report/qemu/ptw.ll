Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ptw?download=true
inline.NumInlined: 386
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_S1prot_indirect:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 8) i32 @get_S1prot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 0, 4) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @arm_mmuidx_table, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4              ; 10 uses
  %i.d = and i32 %i.c, 256
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = icmp ult i32 %1, 136
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, 1024
  %.not89 = icmp eq i32 %i.f, 0
  br i1 %.not89, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str, i32 noundef 1526, ptr noundef nonnull @__PRETTY_FUNCTION__.get_S1prot) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not62 = icmp ne i32 %3, 0
  %i.g = and i32 %i.c, 128
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %or.cond86 = and i1 %.not62, %i.h
  br i1 %or.cond86, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 79880
  %.val76 = load i64, ptr %i.i, align 8
  %i.j = and i64 %.val76, 15728640
  %i.k = icmp samesign ugt i64 %i.j, 2097152
  %i.l = and i1 %i.h, %i.k
  %or.cond88 = and i1 %2, %i.l
  br i1 %or.cond88, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.n = and i32 %i.c, 32
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i32 %i.c, 3
  %i.q = and i32 %i.p, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 144115188075855872
  %i.v = icmp eq i64 %i.u, 0
  %i.w = icmp ne i32 %5, 0
  %or.cond3 = or i1 %i.w, %i.v
  %spec.select = select i1 %or.cond3, i32 %4, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c, %bb.e
  %.058 = phi i32 [ %4, %bb.e ], [ %3, %bb.c ], [ %spec.select, %bb.f ], [ 0, %bb.d ] ; 14 uses
  %.not63 = icmp eq i32 %7, %8
  br i1 %.not63, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %7, label %bb.k [
    i32 2, label %.thread
    i32 3, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %trunc = trunc nuw i32 %1 to i8
  switch i8 %trunc, label %bb.l [
    i8 42, label %.thread
    i8 37, label %.thread
    i8 39, label %.thread
    i8 40, label %.thread
  ]

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 512
  %.not64 = icmp eq i64 %i.z, 0
  br i1 %.not64, label %bb.l, label %.thread

bb.k:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1579, ptr noundef nonnull @__func__.get_S1prot, ptr noundef null) #11
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.aa = getelementptr i8, ptr %0, i64 78928
  %.val75 = load i64, ptr %i.aa, align 16         ; 2 uses
  %i.ab = and i64 %.val75, 8388608
  %.not65 = icmp eq i64 %i.ab, 0                  ; 2 uses
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ad = and i32 %i.c, 32
  %i.ae = icmp ne i32 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = lshr i32 %i.c, 3
  %i.ag = and i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 524288
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.059 = phi i32 [ %i.al, %bb.m ], [ 0, %bb.l ]
  br i1 %2, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = and i32 %i.c, 320
  %or.cond5.not = icmp eq i32 %i.am, 64
  br i1 %or.cond5.not, label %bb.p, label %select.unfold

bb.p:                                             ; preds = %bb.o
  %i.an = icmp ne i32 %6, 0
  %i.ao = icmp samesign ugt i32 %3, 1
  %i.ap = select i1 %i.an, i1 true, i1 %i.ao
  %i.aq = zext i1 %i.ap to i32
  br label %select.unfold

bb.q:                                             ; preds = %bb.n
  %i.ar = and i64 %.val75, 8
  %.not66 = icmp eq i64 %i.ar, 0
  br i1 %.not66, label %.thread80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = and i32 %i.c, 32
  %i.at = icmp ne i32 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = lshr i32 %i.c, 3
  %i.av = and i32 %i.au, 3                        ; 2 uses
  switch i32 %i.av, label %select.unfold [
    i32 1, label %bb.s
    i32 3, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not68 = icmp eq i32 %5, 0
  %i.aw = and i32 %3, 1
  %i.ax = xor i32 %i.aw, 1
  br i1 %.not68, label %select.unfold, label %.thread

bb.u:                                             ; preds = %bb.s
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 1048576
  %i.bd = icmp ne i64 %i.bc, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi i1 [ %i.bd, %bb.v ], [ false, %bb.u ]
  %.not67 = icmp eq i32 %5, 0
  br i1 %.not67, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.be = and i32 %.058, 1
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp ne i32 %6, 0
  %or.cond7 = or i1 %i.bg, %i.bf
  br i1 %or.cond7, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = icmp samesign ugt i32 %3, 1
  %i.bi = select i1 %.0, i1 %i.bh, i1 false
  %i.bj = zext i1 %i.bi to i32
  br label %select.unfold

select.unfold:                                    ; preds = %bb.t, %bb.y, %bb.r, %bb.o, %bb.p
  %.060 = phi i32 [ %5, %bb.o ], [ %i.aq, %bb.p ], [ %5, %bb.r ], [ %i.bj, %bb.y ], [ %i.ax, %bb.t ]
  %.not70 = icmp eq i32 %.060, 0
  br i1 %.not70, label %.thread80, label %.thread

.thread80:                                        ; preds = %bb.q, %select.unfold
  %.184 = phi i32 [ %.059, %select.unfold ], [ 0, %bb.q ]
  %.not71 = icmp eq i32 %.184, 0
  %.not72 = icmp samesign ult i32 %.058, 2
  %or.cond73 = select i1 %.not71, i1 true, i1 %.not72
  %i.bk = or disjoint i32 %.058, 4
  %spec.select74 = select i1 %or.cond73, i32 %i.bk, i32 %.058
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.w, %bb.t, %.thread80, %select.unfold, %bb.j, %bb.i, %bb.i, %bb.i, %bb.i, %bb.h
  %.057 = phi i32 [ %.058, %bb.i ], [ %.058, %bb.j ], [ %.058, %select.unfold ], [ %.058, %bb.h ], [ %.058, %bb.i ], [ %.058, %bb.i ], [ %.058, %bb.i ], [ %spec.select74, %.thread80 ], [ %.058, %bb.t ], [ %.058, %bb.w ], [ %.058, %bb.x ]
  ret i32 %.057
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @S2_security_space(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = icmp ult i32 %1, 136
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @arm_mmuidx_table, i64 %i.a
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 1024
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %0, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %1, 48
  %i.h = zext i1 %i.g to i32
  br label %arm_phys_to_space.exit

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %1, 48
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef 699, ptr noundef nonnull @__PRETTY_FUNCTION__.S2_security_space) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not9 = icmp eq i32 %0, 2
  br i1 %.not9, label %bb.g, label %arm_phys_to_space.exit

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @__PRETTY_FUNCTION__.S2_security_space) #11
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.i = add nsw i32 %1, -50                      ; 2 uses
  %or.cond.i = icmp ult i32 %i.i, 4
  br i1 %or.cond.i, label %arm_phys_to_space.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.16, i32 noundef 2415, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_phys_to_space) #11
  unreachable

arm_phys_to_space.exit:                           ; preds = %bb.h, %bb.f, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %0, %bb.f ], [ %i.i, %bb.h ]
  ret i32 %.0
}

declare i32 @probe_access_full_mmu(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @address_space_ldq_be(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

declare ptr @cpu_get_address_space(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i1 @bql_locked() local_unnamed_addr #6

declare void @bql_lock_impl(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @bql_unlock() local_unnamed_addr #6

declare void @address_space_stq_be(ptr noundef, i64 noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #6

declare void @address_space_stq_le(ptr noundef, i64 noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @arm_ldl_ptw(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.f = load i8, ptr %i.e, align 2, !range !8, !noundef !9
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %spec.select = select i1 %i.g, i32 %i.h, i32 %i.d
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, -3
  %i.m = icmp eq i32 %i.l, 0
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  %i.o = shl i32 %i.k, 1
  %i.p = and i32 %i.o, 6
  %i.q = or disjoint i32 %i.p, %i.n
  %.sroa.0.0.insert.ext = zext nneg i32 %i.q to i64 ; 2 uses
  %i.r = tail call ptr @cpu_get_address_space(ptr noundef nonnull %i.i, i32 noundef %i.n) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.t = load i8, ptr %i.s, align 2, !range !8, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = call i32 @address_space_ldl_be(ptr noundef %i.r, i64 noundef %i.w, i64 %.sroa.0.0.insert.ext, ptr noundef nonnull %i.a) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = call i32 @address_space_ldl_le(ptr noundef %i.r, i64 noundef %i.w, i64 %.sroa.0.0.insert.ext, ptr noundef nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.084 = phi i32 [ %i.x, %bb.d ], [ %i.y, %bb.e ]
  %i.z = load i32, ptr %i.a, align 4              ; 2 uses
  %.not87 = icmp eq i32 %i.z, 0
  br i1 %.not87, label %.critedge, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  store i32 9, ptr %2, align 8
  %i.aa = icmp ne i32 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 39
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %.critedge
  %.1 = phi i32 [ 0, %bb.g ], [ %spec.select, %bb.b ], [ %.084, %.critedge ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc range(i32 0, 4) i32 @ap_to_rw_prot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 8) %2, i32 noundef range(i32 1, 4) %3) unnamed_addr #9 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = icmp ult i32 %1, 136
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @arm_mmuidx_table, i64 %i.a
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 256                        ; 3 uses
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = icmp eq i32 %3, 3
  br i1 %i.f, label %ap_to_rw_prot_is_user.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %ap_to_rw_prot_is_user.exit
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 78928
  %.val13.i = load i64, ptr %i.g, align 16
  %i.h = and i64 %.val13.i, 8
  %.not10.i = icmp eq i64 %i.h, 0
  br i1 %.not10.i, label %bb.d, label %ap_to_rw_prot_is_user.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = and i32 %i.d, 32
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i32 %i.d, 3
  %i.m = and i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 768
  switch i64 %i.q, label %bb.h [
    i64 256, label %bb.e
    i64 512, label %ap_to_rw_prot_is_user.exit
  ]

bb.e:                                             ; preds = %bb.d
  %.lobit4 = lshr exact i32 %i.e, 8
  %i.r = xor i32 %.lobit4, 1
  br label %ap_to_rw_prot_is_user.exit

bb.f:                                             ; preds = %bb.b
  %i.s = select i1 %.not, i32 3, i32 0
  br label %ap_to_rw_prot_is_user.exit

bb.g:                                             ; preds = %bb.b
  %..i = select i1 %.not, i32 3, i32 1
  br label %ap_to_rw_prot_is_user.exit

end_hunk_0
