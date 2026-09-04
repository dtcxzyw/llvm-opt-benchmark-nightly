Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/dh?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@GeneratePublicDh:bb.a

bb.e:                                             ; preds = %.thread
  %i.i = call i32 @sp_unsigned_bin_size(ptr noundef nonnull %6) #12
  store i32 %i.i, ptr %4, align 4, !tbaa !14
  br label %.thread22

.thread22:                                        ; preds = %bb.c, %bb.d, %.thread, %bb.e
  %.224 = phi i32 [ -112, %bb.d ], [ 0, %bb.e ], [ -113, %.thread ], [ -111, %bb.c ]
  call void @sp_clear(ptr noundef nonnull %6) #12
  call void @sp_forcezero(ptr noundef nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.thread22
  %.012 = phi i32 [ %.224, %.thread22 ], [ -234, %bb.a ], [ -110, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wc_DhCheckPubKey_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @_ffc_validate_public_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -173, 1) i32 @_ffc_validate_public_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca [1 x %struct.sp_int], align 16      ; 10 uses
  %7 = alloca [1 x %struct.sp_int], align 16      ; 10 uses
  %8 = alloca [1 x %struct.sp_int], align 16      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @sp_init_multi(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %2) #12 ; 2 uses
  %.not30 = icmp eq i32 %i.d, 0                   ; 3 uses
  %spec.select = select i1 %.not30, i32 0, i32 -111
  %i.e = icmp ne ptr %3, null                     ; 2 uses
  %or.cond3 = and i1 %i.e, %.not30
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %8, ptr noundef nonnull %3, i32 noundef %4) #12
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %.thread53, label %.thread69.thread

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !15
  %.not31 = icmp eq i16 %i.h, 0
  br i1 %.not31, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call i32 @sp_copy(ptr noundef nonnull %i.g, ptr noundef nonnull %8) #12 ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  %i.j = or i32 %i.i, %i.d
  %brmerge.not = icmp eq i32 %i.j, 0
  %.mux = select i1 %.not32, i32 %spec.select, i32 -110
  br i1 %brmerge.not, label %.thread53, label %.thread69

select.unfold:                                    ; preds = %bb.e
  br i1 %.not30, label %.thread53, label %.thread69

.thread53:                                        ; preds = %bb.f, %bb.d, %select.unfold
  %i.k = call i32 @sp_cmp_d(ptr noundef nonnull %6, i64 noundef 2) #12
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.thread69.thread, label %bb.g

bb.g:                                             ; preds = %.thread53
  %i.m = call i32 @sp_copy(ptr noundef nonnull %0, ptr noundef nonnull %7) #12
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.h, label %.thread69.thread

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @sp_sub_d(ptr noundef nonnull %7, i64 noundef 2, ptr noundef nonnull %7) #12
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.i, label %.thread69.thread

bb.i:                                             ; preds = %bb.h
  %i.o = call i32 @sp_cmp(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %i.p = icmp eq i32 %i.o, 1
  %spec.select47 = select i1 %i.p, i32 -120, i32 0
  br label %.thread69

.thread69:                                        ; preds = %bb.f, %select.unfold, %bb.i
  %.5 = phi i32 [ -111, %select.unfold ], [ %spec.select47, %bb.i ], [ %.mux, %bb.f ] ; 2 uses
  %.not36 = icmp eq i32 %5, 0
  %i.q = icmp eq i32 %.5, 0
  %or.cond77 = select i1 %.not36, i1 %i.q, i1 false
  br i1 %or.cond77, label %bb.j, label %.thread69.thread

bb.j:                                             ; preds = %.thread69
  br i1 %i.e, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.s = load i16, ptr %i.r, align 8, !tbaa !15
  %.not37 = icmp eq i16 %i.s, 0
  br i1 %.not37, label %select.unfold73, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = call i32 @sp_copy(ptr noundef nonnull %0, ptr noundef nonnull %7) #12
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %select.unfold73, label %.thread69.thread

select.unfold73:                                  ; preds = %bb.l, %bb.k
  %i.u = load i16, ptr %8, align 16, !tbaa !16
  %.not39 = icmp eq i16 %i.u, 0
  br i1 %.not39, label %.thread69.thread, label %bb.m

bb.m:                                             ; preds = %select.unfold73
  %i.v = call i32 @sp_exptmod(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %bb.n, label %.thread69.thread

bb.n:                                             ; preds = %bb.m
  %i.w = call i32 @sp_cmp_d(ptr noundef nonnull %6, i64 noundef 1) #12
  %.not41 = icmp eq i32 %i.w, 0
  %spec.select50 = select i1 %.not41, i32 0, i32 -120
  br label %.thread69.thread

.thread69.thread:                                 ; preds = %.thread53, %bb.d, %bb.g, %bb.h, %bb.l, %bb.n, %select.unfold73, %bb.m, %.thread69
  %.8 = phi i32 [ %.5, %.thread69 ], [ 0, %select.unfold73 ], [ %spec.select50, %bb.n ], [ -112, %bb.m ], [ -110, %bb.l ], [ -120, %.thread53 ], [ -111, %bb.d ], [ -110, %bb.g ], [ -114, %bb.h ]
  call void @sp_clear(ptr noundef nonnull %6) #12
  call void @sp_clear(ptr noundef nonnull %7) #12
  call void @sp_clear(ptr noundef nonnull %8) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %.thread69.thread
  %.026 = phi i32 [ %.8, %.thread69.thread ], [ -173, %bb.a ], [ -110, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wc_DhCheckPubKey(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @_ffc_validate_public_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -98, 1) i32 @wc_DhCheckPubValue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !22

.critedge:                                        ; preds = %.lr.ph
  %i.d = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.e = sub i32 %3, %i.d                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 4 uses
  %i.g = icmp eq i32 %3, %i.d
  br i1 %i.g, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.h = icmp eq i32 %i.e, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !tbaa !17
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp eq i32 %i.e, %1
  br i1 %i.k, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.e
  %i.l = add i32 %1, -1                           ; 5 uses
  %.not58 = icmp eq i32 %i.l, 0
  br i1 %.not58, label %.critedge2.thread, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.preheader
  %wide.trip.count63 = zext i32 %i.l to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.f
  %indvars.iv60 = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next61, %bb.f ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv60
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv60
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.lr.ph52
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.critedge2.thread, label %.lr.ph52, !llvm.loop !23

.critedge2:                                       ; preds = %.lr.ph52
  %4 = trunc nuw i64 %indvars.iv60 to i32         ; 3 uses
  %i.r = icmp eq i32 %i.l, %4
  br i1 %i.r, label %.critedge2.thread, label %bb.g

.critedge2.thread:                                ; preds = %bb.f, %.preheader, %.critedge2
  %.1.lcssa72 = phi i32 [ %4, %.critedge2 ], [ 0, %.preheader ], [ %i.l, %bb.f ]
  %i.s = zext i32 %i.l to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17    ; 2 uses
  %i.x = icmp eq i8 %i.u, %i.w
  %i.y = zext i8 %i.w to i32
  %i.z = zext i8 %i.u to i32
  %i.aa = add nsw i32 %i.y, -1
  %i.ab = icmp eq i32 %i.aa, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %i.ab
  br i1 %or.cond, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge2.thread, %.critedge2
  %.1.lcssa71 = phi i32 [ %.1.lcssa72, %.critedge2.thread ], [ %4, %.critedge2 ]
  %i.ac = zext i32 %.1.lcssa71 to i64             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp ugt i8 %i.ae, %i.ag
  %spec.select = select i1 %i.ah, i32 -98, i32 0
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.e
  %i.ai = icmp ugt i32 %i.e, %1
  %spec.select47 = select i1 %i.ai, i32 -98, i32 0
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %bb.h, %bb.g, %.critedge2.thread, %.critedge, %bb.d
  %.039 = phi i32 [ -98, %bb.d ], [ -98, %.critedge ], [ -98, %.critedge2.thread ], [ %spec.select47, %bb.h ], [ %spec.select, %bb.g ], [ -98, %bb.a ], [ -98, %bb.b ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define range(i32 -263, 1) i32 @wc_DhCheckPrivKey_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca [1 x %struct.sp_int], align 16      ; 7 uses
  %6 = alloca [1 x %struct.sp_int], align 16      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @sp_init_multi(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %2) #12
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %bb.d, label %.thread42

bb.d:                                             ; preds = %bb.c
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %4) #12
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %.thread, label %.thread42

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !15
  %.not23 = icmp eq i16 %i.g, 0
  br i1 %.not23, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @sp_copy(ptr noundef nonnull %i.f, ptr noundef nonnull %6) #12
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %.thread, label %.thread42

.thread:                                          ; preds = %bb.g, %bb.e, %bb.f
  %i.i = call i32 @sp_cmp_d(ptr noundef nonnull %5, i64 noundef 0) #12
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread42, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.k = load i16, ptr %6, align 16, !tbaa !16
  %.not26 = icmp eq i16 %i.k, 0
  br i1 %.not26, label %.thread42, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.m = call i32 @sp_copy(ptr noundef nonnull %i.l, ptr noundef nonnull %6) #12
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.j, label %.thread42

bb.j:                                             ; preds = %bb.i
  %i.n = call i32 @sp_sub_d(ptr noundef nonnull %6, i64 noundef 1, ptr noundef nonnull %6) #12
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %.thread47, label %.thread42

.thread47:                                        ; preds = %bb.j
  %i.o = call i32 @sp_cmp(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %i.p = icmp eq i32 %i.o, 1
  %spec.select34 = select i1 %i.p, i32 -263, i32 0
  br label %.thread42

.thread42:                                        ; preds = %bb.i, %bb.c, %bb.j, %.thread, %bb.e, %bb.g, %.thread47, %bb.h
  %.5 = phi i32 [ -120, %.thread ], [ %spec.select34, %.thread47 ], [ -111, %bb.c ], [ 0, %bb.h ], [ -114, %bb.j ], [ -110, %bb.g ], [ -111, %bb.e ], [ -110, %bb.i ]
  call void @sp_forcezero(ptr noundef nonnull %5) #12
  call void @sp_clear(ptr noundef nonnull %6) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %.thread42
  %.017 = phi i32 [ %.5, %.thread42 ], [ -173, %bb.a ], [ -110, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.017
}

declare i32 @sp_read_unsigned_bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sp_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sp_cmp_d(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @sp_sub_d(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sp_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sp_forcezero(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -263, 1) i32 @wc_DhCheckPrivKey(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @wc_DhCheckPrivKey_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wc_DhCheckKeyPair(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca [1 x %struct.sp_int], align 16      ; 6 uses
  %6 = alloca [1 x %struct.sp_int], align 16      ; 6 uses
  %7 = alloca [1 x %struct.sp_int], align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %_ffc_pairwise_consistency_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !19
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ffc_pairwise_consistency_test.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.i = call i32 @sp_init_multi(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %.not21.i = icmp eq i32 %i.i, 0
  br i1 %.not21.i, label %bb.d, label %_ffc_pairwise_consistency_test.exit

bb.d:                                             ; preds = %.critedge.i
  %i.j = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %2) #12
  %.not22.i = icmp eq i32 %i.j, 0
  br i1 %.not22.i, label %bb.e, label %.thread28.i

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @sp_read_unsigned_bin(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %4) #12
  %.not23.i = icmp eq i32 %i.k, 0
  br i1 %.not23.i, label %bb.f, label %.thread28.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.m = call i32 @sp_exptmod(ptr noundef nonnull %i.l, ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %7) #12
  %.not24.i = icmp eq i32 %i.m, 0
  br i1 %.not24.i, label %bb.g, label %.thread28.i

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @sp_cmp(ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %.not25.i = icmp eq i32 %i.n, 0
  %spec.select26.i = select i1 %.not25.i, i32 0, i32 -120
  br label %.thread28.i

.thread28.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.2.i = phi i32 [ %spec.select26.i, %bb.g ], [ -111, %bb.e ], [ -111, %bb.d ], [ -112, %bb.f ]
  call void @sp_forcezero(ptr noundef nonnull %6) #12
  call void @sp_clear(ptr noundef nonnull %5) #12
  call void @sp_clear(ptr noundef nonnull %7) #12
  br label %_ffc_pairwise_consistency_test.exit

_ffc_pairwise_consistency_test.exit:              ; preds = %bb.a, %bb.c, %.critedge.i, %.thread28.i
  %.017.i = phi i32 [ %.2.i, %.thread28.i ], [ -173, %bb.a ], [ -98, %bb.c ], [ -110, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.017.i
}

; Function Attrs: nounwind uwtable
define i32 @wc_DhGenerateKeyPair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca [1 x %struct.sp_int], align 16      ; 12 uses
  %7 = alloca [1 x %struct.sp_int], align 16      ; 14 uses
  %i.b = alloca [4104 x i8], align 16             ; 11 uses
  %i.c = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.d = insertelement <4 x ptr> %i.c, ptr %1, i64 1
  %i.e = insertelement <4 x ptr> %i.d, ptr %2, i64 2
end_hunk_0
