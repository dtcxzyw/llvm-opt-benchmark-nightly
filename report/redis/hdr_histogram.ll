Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hdr_histogram?download=true
inline.NumInlined: 94
inline.NumDeleted: 27
begin_hunk_0_@hdr_reset_internal_counters:bb.a
  %i.z = add nsw i32 %spec.select.i, %i.x
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl i64 %i.y, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = or i64 %i.ab, %i.ad
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = add i32 %i.o, %i.ag
  %i.ai = sub i32 63, %i.ah                       ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = ashr i64 %i.ab, %i.aj                   ; 2 uses
  %sext.i.i.i = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext.i.i.i, 32
  %i.am = shl i64 %i.al, %i.aj
  %i.an = trunc i64 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i = icmp sle i32 %i.ap, %i.an
  %i.aq = zext i1 %.not.i.i.i to i32
  %i.ar = add i32 %i.ai, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = add i64 %i.am, -1
  %i.av = add i64 %i.au, %i.at
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink = phi i64 [ %i.av, %bb.e ], [ 0, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink, ptr %i.aw, align 8, !tbaa !22
  %i.ax = icmp eq i32 %.1, -1
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !18
  %i.ba = ashr i32 %.1, %i.az                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19 ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = and i32 %i.bd, %.1
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %spec.select.i31 = add nsw i32 %i.bf, -1
  %.inv.i32 = icmp sgt i32 %i.ba, 0
  %i.bg = select i1 %.inv.i32, i32 %i.bc, i32 0
  %spec.select12.i33 = add nsw i32 %i.be, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !17
  %i.bj = sext i32 %spec.select12.i33 to i64
  %i.bk = add nsw i32 %spec.select.i31, %i.bi
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 %i.bj, %i.bl
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread, %bb.g
  %.026.lcssa4855 = phi i64 [ %.127, %bb.g ], [ 0, %.thread ], [ %.127, %bb.f ]
  %.sink43 = phi i64 [ %i.bm, %bb.g ], [ 9223372036854775807, %.thread ], [ 9223372036854775807, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink43, ptr %i.bn, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.026.lcssa4855, ptr %i.bo, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite, errnomem: write) uwtable
define dso_local range(i32 0, 23) i32 @hdr_calculate_bucket_config(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  %i.b = add i32 %2, -6
  %i.c = icmp ult i32 %i.b, -5
  %or.cond3 = or i1 %i.a, %i.c
  %i.d = shl nuw nsw i64 %0, 1
  %i.e = icmp sgt i64 %i.d, %1
  %or.cond = select i1 %or.cond3, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %3, align 8, !tbaa !27
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.h, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ 1, %bb.b ], [ %i.i, %bb.c ]  ; 2 uses
  %.056.i = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.i = mul nuw nsw i64 %.07.i, 10
  %i.j = add nsw i64 %.056.i, -1                  ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %power.exit, label %bb.c

power.exit:                                       ; preds = %bb.c
  %i.k = mul i64 %.07.i, 20
  %i.l = uitofp nneg i64 %i.k to double
  %i.m = tail call double @log(double noundef %i.l) #21, !tbaa !7
  %i.n = fdiv double %i.m, f0x3FE62E42FEFA39EF
  %i.o = tail call double @llvm.ceil.f64(double %i.n)
  %i.p = fptosi double %i.o to i32
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.r = add nsw i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = uitofp nneg i64 %0 to double
  %i.u = tail call double @log(double noundef %i.t) #21, !tbaa !7
  %i.v = fdiv double %i.u, f0x3FE62E42FEFA39EF    ; 2 uses
  %i.w = fcmp ogt double %i.v, f0x41DFFFFFFFC00000
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %power.exit
  %i.x = fptosi double %i.v to i32                ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !31
  %i.ab = add nsw i32 %i.aa, 1
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.ab)
  %i.ac = fptosi double %ldexp to i32             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !33
  %i.ae = sdiv i32 %i.ac, 2                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !34
  %i.ag = sext i32 %i.ac to i64                   ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = shl i64 %i.ah, %i.y
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = load i32, ptr %i.s, align 8, !tbaa !31
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, %i.y
  %i.an = icmp sgt i64 %i.am, 61
  br i1 %i.an, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = zext nneg i32 %i.x to i64
  %i.ap = shl i64 %i.ag, %i.ao                    ; 2 uses
  %.not13.i = icmp sgt i64 %i.ap, %1
  br i1 %.not13.i, label %buckets_needed_to_cover_value.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.015.i = phi i32 [ %i.at, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.01014.i = phi i64 [ %i.as, %bb.g ], [ %i.ap, %bb.e ] ; 2 uses
  %i.aq = icmp sgt i64 %.01014.i, 4611686018427387903
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ar = add nuw nsw i32 %.015.i, 1
  br label %buckets_needed_to_cover_value.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.as = shl i64 %.01014.i, 1                    ; 2 uses
  %i.at = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %.not.i44 = icmp sgt i64 %i.as, %1
  br i1 %.not.i44, label %buckets_needed_to_cover_value.exit, label %.lr.ph.i

buckets_needed_to_cover_value.exit:               ; preds = %bb.g, %bb.e, %bb.f
  %.011.i = phi i32 [ %i.ar, %bb.f ], [ 1, %bb.e ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %.011.i, ptr %i.au, align 4, !tbaa !36
  %i.av = add nsw i32 %.011.i, 1
  %i.aw = mul nsw i32 %i.av, %i.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %buckets_needed_to_cover_value.exit, %power.exit, %bb.d, %bb.a
  %.1 = phi i32 [ 22, %bb.a ], [ 0, %buckets_needed_to_cover_value.exit ], [ 22, %power.exit ], [ 22, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @hdr_init_preallocated(ptr nofree noundef writeonly captures(none) initializes((0, 68), (72, 84), (88, 96)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !24
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !24
  %i.e = trunc <2 x i64> %i.d to <2 x i32>
  store <2 x i32> %i.e, ptr %i.c, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load <2 x i32>, ptr %i.f, align 8, !tbaa !7
  store <2 x i32> %i.h, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> <i64 9223372036854775807, i64 0>, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !39
  %i.q = load <2 x i32>, ptr %i.l, align 8, !tbaa !7
  store <2 x i32> %i.q, ptr %i.m, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.s, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i32 0, 23) i32 @hdr_init(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.hdr_histogram_bucket_config, align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = call i32 @hdr_calculate_bucket_config(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #23 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @zcalloc_num(i64 noundef %i.d, i64 noundef 8) #21 ; 3 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @zcalloc_num(i64 noundef 1, i64 noundef 104) #21 ; 13 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @zfree(ptr noundef nonnull %i.e) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.e, ptr %i.g, align 8, !tbaa !23
  %i.h = load <2 x i64>, ptr %4, align 16, !tbaa !24
  store <2 x i64> %i.h, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !24
  %i.l = trunc <2 x i64> %i.k to <2 x i32>
  store <2 x i32> %i.l, ptr %i.j, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load <2 x i32>, ptr %i.m, align 16, !tbaa !7
  store <2 x i32> %i.o, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <2 x i64> <i64 9223372036854775807, i64 0>, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 0, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !39
  %i.x = load <2 x i32>, ptr %i.s, align 16, !tbaa !7
  store <2 x i32> %i.x, ptr %i.t, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 %i.c, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !26
  store ptr %i.f, ptr %3, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.e ], [ 12, %bb.d ], [ 12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.0
}

; Function Attrs: optsize
declare ptr @zcalloc_num(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @zfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define dso_local void @hdr_close(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  tail call void @zfree(ptr noundef %i.b) #21
  tail call void @zfree(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i32 0, 23) i32 @hdr_alloc(i64 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @hdr_init(i64 noundef 1, i64 noundef %0, i32 noundef %1, ptr noundef %2) #23
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hdr_reset(ptr nofree noundef captures(none) initializes((48, 64), (88, 96)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> <i64 9223372036854775807, i64 0>, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.h, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local range(i64 -17179869080, 17179869281) i64 @hdr_get_memory_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 104
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @hdr_record_value(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call zeroext i1 @hdr_record_values(ptr noundef %0, i64 noundef %1, i64 noundef 1) #23
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @hdr_record_values(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = or i64 %i.c, %1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = add i32 %i.j, %i.h
  %i.l = add i32 %i.k, %i.f                       ; 2 uses
  %reass.sub.i = add i32 %i.h, 63
  %i.m = sub i32 %reass.sub.i, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %1, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 28
  %.val7.i = load i32, ptr %i.q, align 4, !tbaa !19
  %i.r = sub i32 64, %i.l
  %i.s = shl i32 %i.r, %i.j
  %i.t = sub i32 %i.s, %.val7.i
  %i.u = add i32 %i.t, %i.p                       ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  %.not = icmp sgt i32 %i.x, %i.u
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %counts_inc_normalised.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 %i.u, %i.z                  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %.not.i.i = icmp slt i32 %i.ab, %i.x
  %i.ad = sub nsw i32 0, %i.x
  %spec.select.i.i = select i1 %.not.i.i, i32 0, i32 %i.ad
  %.0.i.i = select i1 %i.ac, i32 %i.x, i32 %spec.select.i.i
  %i.ae = add nsw i32 %.0.i.i, %i.ab
  br label %counts_inc_normalised.exit

counts_inc_normalised.exit:                       ; preds = %bb.d, %bb.e
  %.011.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.u, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = sext i32 %.011.i.i to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.ak = add nsw i64 %i.aj, %2
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = add nsw i64 %i.am, %2
  store i64 %i.an, ptr %i.al, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  %i.aq = tail call i64 @llvm.smin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 %i.ap)
  %..i = select i1 %.not.i, i64 %i.ap, i64 %i.aq
  store i64 %..i, ptr %i.ao, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.at = tail call i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %1, i64 %i.as)
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.a, %counts_inc_normalised.exit
  %.0 = phi i1 [ true, %counts_inc_normalised.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: norecurse nounwind optsize uwtable
define dso_local noundef zeroext i1 @hdr_record_value_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call zeroext i1 @hdr_record_values_atomic(ptr noundef %0, i64 noundef %1, i64 noundef 1) #23
  ret i1 %i.a
}

; Function Attrs: norecurse nounwind optsize uwtable
define dso_local noundef zeroext i1 @hdr_record_values_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %update_min_max_atomic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = or i64 %i.c, %1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = add i32 %i.j, %i.h
  %i.l = add i32 %i.k, %i.f                       ; 2 uses
  %reass.sub.i = add i32 %i.h, 63
  %i.m = sub i32 %reass.sub.i, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %1, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 28
  %.val7.i = load i32, ptr %i.q, align 4, !tbaa !19
  %i.r = sub i32 64, %i.l
  %i.s = shl i32 %i.r, %i.j
  %i.t = sub i32 %i.s, %.val7.i
  %i.u = add i32 %i.t, %i.p                       ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %update_min_max_atomic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  %.not = icmp sgt i32 %i.x, %i.u
  br i1 %.not, label %bb.d, label %update_min_max_atomic.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %counts_inc_normalised_atomic.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 %i.u, %i.z                  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %.not.i.i = icmp slt i32 %i.ab, %i.x
  %i.ad = sub nsw i32 0, %i.x
  %spec.select.i.i = select i1 %.not.i.i, i32 0, i32 %i.ad
  %.0.i.i = select i1 %i.ac, i32 %i.x, i32 %spec.select.i.i
  %i.ae = add nsw i32 %.0.i.i, %i.ab
  br label %counts_inc_normalised_atomic.exit

counts_inc_normalised_atomic.exit:                ; preds = %bb.d, %bb.e
  %.011.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.u, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = sext i32 %.011.i.i to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = atomicrmw add ptr %i.ai, i64 %2 seq_cst, align 8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = atomicrmw add ptr %i.ak, i64 %2 seq_cst, align 8 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = icmp ne i64 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %counts_inc_normalised_atomic.exit
  %i.ao = load atomic i64, ptr %i.am seq_cst, align 8 ; 2 uses
  %.not.i = icmp sgt i64 %i.ao, %1
  %or.cond.i = select i1 %i.an, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = cmpxchg ptr %i.am, i64 %i.ao, i64 %1 seq_cst seq_cst, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.f

end_hunk_0
