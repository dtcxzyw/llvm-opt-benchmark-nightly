Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bdcSpfd?download=true
inline.NumInlined: 142
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Bdc_SpfdDecompose:bb.a
bb.bd:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.afr) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.bd
  call void @free(ptr noundef nonnull %i.az) #21
  %i.afs = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %.not.i536 = icmp eq ptr %i.afs, null
  br i1 %.not.i536, label %Vec_IntFree.exit, label %bb.be

bb.be:                                            ; preds = %Vec_PtrFree.exit
  call void @free(ptr noundef nonnull %i.afs) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_PtrFree.exit, %bb.be
  call void @free(ptr noundef nonnull %i.bd) #21
  %i.aft = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %.not.i537 = icmp eq ptr %i.aft, null
  br i1 %.not.i537, label %Vec_IntFree.exit538, label %bb.bf

bb.bf:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.aft) #21
  br label %Vec_IntFree.exit538

Vec_IntFree.exit538:                              ; preds = %Vec_IntFree.exit, %bb.bf
  call void @free(ptr noundef nonnull %i.bh) #21
  br label %bb.bg

bb.bg:                                            ; preds = %Vec_IntFree.exit538, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @Abc_MergeSortCost(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @Bdc_SpfdDecomposeTest_() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Bdc_SpfdMark0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 536870911                  ; 2 uses
  %i.c = icmp ne i64 %i.b, 536870911
  %i.d = and i64 %i.a, 2147483648
  %.not11 = icmp eq i64 %i.d, 0
  %or.cond12 = and i1 %i.c, %.not11
  br i1 %or.cond12, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.e = phi i64 [ %i.s, %tailrecurse ], [ %i.b, %bb.a ]
  %i.f = phi i64 [ %i.r, %tailrecurse ], [ %i.a, %bb.a ] ; 2 uses
  %.tr1014 = phi ptr [ %i.o, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %accumulator.tr13 = phi i32 [ %i.q, %tailrecurse ], [ 0, %bb.a ]
  %i.g = or disjoint i64 %i.f, 2147483648
  store i64 %i.g, ptr %.tr1014, align 8
  %i.h = lshr i64 %i.f, 63
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.k = tail call i32 @Bdc_SpfdMark0(ptr noundef %0, ptr noundef %i.j)
  %i.l = load i64, ptr %.tr1014, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = and i64 %i.m, 536870911
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = add i32 %accumulator.tr13, %i.i
  %i.q = add i32 %i.p, %i.k                       ; 2 uses
  %i.r = load i64, ptr %i.o, align 8              ; 3 uses
  %i.s = and i64 %i.r, 536870911                  ; 2 uses
  %i.t = icmp ne i64 %i.s, 536870911
  %i.u = and i64 %i.r, 2147483648
  %.not = icmp eq i64 %i.u, 0
  %or.cond = and i1 %i.t, %.not
  br i1 %or.cond, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Bdc_SpfdMark1(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 536870911                  ; 2 uses
  %i.c = icmp ne i64 %i.b, 536870911
  %.not11 = icmp sgt i64 %i.a, -1
  %or.cond12 = and i1 %.not11, %i.c
  br i1 %or.cond12, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.d = phi i64 [ %i.r, %tailrecurse ], [ %i.b, %bb.a ]
  %i.e = phi i64 [ %i.q, %tailrecurse ], [ %i.a, %bb.a ] ; 2 uses
  %.tr1014 = phi ptr [ %i.n, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %accumulator.tr13 = phi i32 [ %i.p, %tailrecurse ], [ 0, %bb.a ]
  %i.f = or disjoint i64 %i.e, -9223372036854775808
  store i64 %i.f, ptr %.tr1014, align 8
  %i.g = trunc i64 %i.e to i32
  %i.h = lshr i32 %i.g, 31
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.j = tail call i32 @Bdc_SpfdMark1(ptr noundef %0, ptr noundef %i.i)
  %i.k = load i64, ptr %.tr1014, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = and i64 %i.l, 536870911
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = add i32 %i.h, %accumulator.tr13
  %i.p = add i32 %i.o, %i.j                       ; 2 uses
  %i.q = load i64, ptr %i.n, align 8              ; 3 uses
  %i.r = and i64 %i.q, 536870911                  ; 2 uses
  %i.s = icmp ne i64 %i.r, 536870911
  %.not = icmp sgt i64 %i.q, -1
  %or.cond = and i1 %.not, %i.s
  br i1 %or.cond, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Bdc_SpfdUnmark0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 536870911                  ; 2 uses
  %i.c = icmp eq i64 %i.b, 536870911
  br i1 %i.c, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.d = phi i64 [ %i.m, %tailrecurse ], [ %i.b, %bb.a ]
  %i.e = phi i64 [ %i.l, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr89 = phi ptr [ %i.k, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %i.f = and i64 %i.e, -2147483649
  store i64 %i.f, ptr %.tr89, align 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  tail call void @Bdc_SpfdUnmark0(ptr noundef %0, ptr noundef %i.g)
  %i.h = load i64, ptr %.tr89, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 536870911
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 536870911                  ; 2 uses
  %i.n = icmp eq i64 %i.m, 536870911
  br i1 %i.n, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Bdc_SpfdUnmark1(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 536870911                  ; 2 uses
  %i.c = icmp eq i64 %i.b, 536870911
  br i1 %i.c, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.d = phi i64 [ %i.m, %tailrecurse ], [ %i.b, %bb.a ]
  %i.e = phi i64 [ %i.l, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr89 = phi ptr [ %i.k, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %i.f = and i64 %i.e, 9223372036854775807
  store i64 %i.f, ptr %.tr89, align 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  tail call void @Bdc_SpfdUnmark1(ptr noundef %0, ptr noundef %i.g)
  %i.h = load i64, ptr %.tr89, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 536870911
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 536870911                  ; 2 uses
  %i.n = icmp eq i64 %i.m, 536870911
  br i1 %i.n, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Bdc_SpfdCheckOverlap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @Bdc_SpfdMark0(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = tail call i32 @Bdc_SpfdMark1(ptr noundef %0, ptr noundef %2)
  tail call void @Bdc_SpfdUnmark0(ptr noundef %0, ptr noundef %1)
  tail call void @Bdc_SpfdUnmark1(ptr noundef %0, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, -1) i32 @Bdc_SpfdHashValue(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = bitcast i64 %0 to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = zext <8 x i8> %3 to <8 x i32>
  %5 = mul <8 x i32> %4, <i32 25165843, i32 12582917, i32 50331653, i32 100663319, i32 201326611, i32 402653189, i32 805306457, i32 1610612741>
  %6 = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %5)
  %i.a = urem i32 %6, %1
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @Bdc_SpfdHashLookup(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %3 = bitcast i64 %2 to <8 x i8>
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 3, i32 0, i32 7, i32 1, i32 2, i32 4, i32 5, i32 6>
  %5 = zext <8 x i8> %4 to <8 x i32>
  %6 = mul <8 x i32> %5, <i32 100663319, i32 12582917, i32 1610612741, i32 25165843, i32 50331653, i32 201326611, i32 402653189, i32 805306457>
  %7 = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %6)
  %i.a = urem i32 %7, %1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [24 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.pn.in = phi i32 [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %.pn = sext i32 %.pn.in to i64
  %.0 = getelementptr inbounds [24 x i8], ptr %0, i64 %.pn ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, %2
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit, label %.preheader

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit.split.loop.exit, %bb.a
  %.013 = phi ptr [ %i.d, %bb.a ], [ %i.m, %.loopexit.loopexit.split.loop.exit ], [ null, %.preheader ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Bdc_SpfdDecomposeTest__(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #21
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !29
  %.neg247 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %.neg = sdiv i64 %i.e, -1000
  %.neg248 = add i64 %.neg, %.neg247
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg248, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef f0x40B65A0BC0000000) ; 0 uses
  %i.g = call noalias dereferenceable_or_null(6000000000) ptr @calloc(i64 noundef 250000000, i64 noundef 24) #23 ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 -1, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %Abc_Clock.exit
  %.0153.idx266 = phi i64 [ 0, %Abc_Clock.exit ], [ %.0153.add.9, %bb.c ] ; 12 uses
  %.0153.ptr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.i = getelementptr inbounds nuw i8, ptr %.0153.ptr, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 108
  store i32 0, ptr %i.q, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  store i32 0, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 156
  store i32 0, ptr %i.u, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 180
  store i32 0, ptr %i.w, align 4, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 204
  store i32 0, ptr %i.y, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0153.idx266
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 228
  store i32 0, ptr %i.aa, align 4, !tbaa !32
  %.0153.add.9 = add nuw nsw i64 %.0153.idx266, 240
  %i.ab = icmp samesign ult i64 %.0153.idx266, 5999999760
  br i1 %i.ab, label %bb.c, label %Vec_IntPush.exit, !llvm.loop !64

Vec_IntPush.exit:                                 ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.g to i64                ; 8 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ae = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 5 uses
  store i32 250000000, ptr %i.ae, align 8, !tbaa !37
  %calloc.i = call dereferenceable_or_null(2000000000) ptr @calloc(i64 1, i64 2000000000) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  store ptr %calloc.i, ptr %i.ag, align 8, !tbaa !38
  %i.ah = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 6 uses
  store i32 250000000, ptr %i.ah, align 8, !tbaa !22
  %calloc.i176 = call dereferenceable_or_null(1000000000) ptr @calloc(i64 1, i64 1000000000)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 9 uses
  store ptr %calloc.i176, ptr %i.aj, align 8, !tbaa !23
  store i32 0, ptr %i.af, align 4, !tbaa !39
  store i32 0, ptr %i.ai, align 4, !tbaa !24
  %i.ak = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 4 uses
  store i32 16, ptr %i.ak, align 8, !tbaa !22
  %i.am = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 9 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !23
  store i32 1, ptr %i.al, align 4, !tbaa !24
  store i32 1, ptr %i.am, align 4, !tbaa !27
  %.1274 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.d

bb.d:                                             ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit190
  %indvars.iv296 = phi i64 [ 0, %Vec_IntPush.exit ], [ %indvars.iv.next297, %Vec_IntPush.exit190 ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %Vec_IntPush.exit ], [ %indvars.iv.next, %Vec_IntPush.exit190 ] ; 3 uses
  %.1279 = phi ptr [ %.1274, %Vec_IntPush.exit ], [ %.1, %Vec_IntPush.exit190 ] ; 5 uses
  %.pn278 = phi ptr [ %i.g, %Vec_IntPush.exit ], [ %.1279, %Vec_IntPush.exit190 ]
  %spec.select.sink.i181270276 = phi i32 [ 250000000, %Vec_IntPush.exit ], [ %spec.select.sink.i181269, %Vec_IntPush.exit190 ] ; 3 uses
  %storemerge254272275 = phi ptr [ %calloc.i, %Vec_IntPush.exit ], [ %storemerge254273, %Vec_IntPush.exit190 ] ; 6 uses
  %i.ao = load i64, ptr %.1279, align 8
  %i.ap = shl nuw nsw i64 %indvars.iv, 32
  %i.aq = and i64 %i.ao, -2305843005455597568
  %i.ar = add nuw nsw i64 %i.aq, %i.ap
  %i.as = or disjoint i64 %i.ar, 536870911
  store i64 %i.as, ptr %.1279, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pn278, i64 40
  store i64 %i.au, ptr %i.av, align 8, !tbaa !33
  %5 = bitcast i64 %i.au to <8 x i8>
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 3, i32 0, i32 7, i32 1, i32 2, i32 4, i32 5, i32 6>
  %7 = zext <8 x i8> %6 to <8 x i32>
  %8 = mul <8 x i32> %7, <i32 100663319, i32 12582917, i32 1610612741, i32 25165843, i32 50331653, i32 201326611, i32 402653189, i32 805306457>
  %9 = call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %8)
  %i.aw = urem i32 %9, 201326611
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %Bdc_SpfdHashLookup.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.pn.in.i = phi i32 [ %i.bg, %.preheader.i ], [ %i.ba, %bb.d ]
  %.pn.i = sext i32 %.pn.in.i to i64
  %.0.i177 = getelementptr inbounds [24 x i8], ptr %i.g, i64 %.pn.i ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i177, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.be = icmp ne i64 %i.bd, %i.au
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i177, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !34 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %Bdc_SpfdHashLookup.exit.loopexit, label %.preheader.i

Bdc_SpfdHashLookup.exit.loopexit:                 ; preds = %.preheader.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i177, i64 8
  br label %Bdc_SpfdHashLookup.exit

Bdc_SpfdHashLookup.exit:                          ; preds = %Bdc_SpfdHashLookup.exit.loopexit, %bb.d
  %.013.i = phi ptr [ %i.az, %bb.d ], [ %i.bi, %Bdc_SpfdHashLookup.exit.loopexit ]
  %i.bj = ptrtoint ptr %.1279 to i64
  %i.bk = sub i64 %i.bj, %i.ac
  %i.bl = sdiv exact i64 %i.bk, 24
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %.013.i, align 4, !tbaa !27
  %i.bn = trunc nsw i64 %indvars.iv296 to i32
  %i.bo = icmp eq i32 %spec.select.sink.i181270276, %i.bn
  br i1 %i.bo, label %bb.e, label %Vec_WrdPush.exit

bb.e:                                             ; preds = %Bdc_SpfdHashLookup.exit
  %i.bp = icmp samesign ult i64 %indvars.iv296, 16
  br i1 %i.bp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i182 = icmp eq ptr %storemerge254272275, null
  br i1 %.not9.i.i182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge254272275, i64 noundef 128) #24
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.f
  %i.br = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.e
  %i.bs = icmp samesign ult i64 %indvars.iv296, 1073741823
  %indvars.iv296.tr = trunc nsw i64 %indvars.iv296 to i32
  %i.bt = shl nsw i32 %indvars.iv296.tr, 1
  %spec.select.i178 = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 4 uses
  %i.bu = sext i32 %spec.select.i178 to i64
  %.not.i9.i179 = icmp samesign ult i64 %indvars.iv296, %i.bu
  br i1 %.not.i9.i179, label %bb.j, label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i180 = icmp eq ptr %storemerge254272275, null
  %i.bv = zext nneg i32 %spec.select.i178 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  br i1 %.not9.i10.i180, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = call ptr @realloc(ptr noundef nonnull %storemerge254272275, i64 noundef %i.bw) #24
  br label %Vec_WrdPush.exit

bb.l:                                             ; preds = %bb.j
  %i.by = call noalias ptr @malloc(i64 noundef %i.bw) #22
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %Bdc_SpfdHashLookup.exit, %bb.i
  %storemerge254273 = phi ptr [ %storemerge254272275, %Bdc_SpfdHashLookup.exit ], [ %storemerge254272275, %bb.i ], [ %i.br, %bb.h ], [ %i.bq, %bb.g ], [ %i.bx, %bb.k ], [ %i.by, %bb.l ] ; 4 uses
  %spec.select.sink.i181269 = phi i32 [ %spec.select.sink.i181270276, %Bdc_SpfdHashLookup.exit ], [ %spec.select.sink.i181270276, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i178, %bb.k ], [ %spec.select.i178, %bb.l ] ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %storemerge254273, i64 %indvars.iv296
  store i64 %i.au, ptr %i.bz, align 8, !tbaa !16
  %i.ca = load i32, ptr %i.ai, align 4, !tbaa !24 ; 7 uses
  %i.cb = load i32, ptr %i.ah, align 8, !tbaa !22
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.m, label %Vec_WrdPush.exit.Vec_IntPush.exit190_crit_edge

Vec_WrdPush.exit.Vec_IntPush.exit190_crit_edge:   ; preds = %Vec_WrdPush.exit
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !23
  br label %Vec_IntPush.exit190

bb.m:                                             ; preds = %Vec_WrdPush.exit
  %i.cd = icmp slt i32 %i.ca, 16
  br i1 %i.cd, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i188 = icmp eq ptr %i.ce, null
  br i1 %.not9.i.i188, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ce, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i186

bb.p:                                             ; preds = %bb.n
  %i.cg = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i186

bb.q:                                             ; preds = %bb.m
  %i.ch = icmp samesign ult i32 %i.ca, 1073741823
  %i.ci = shl nuw nsw i32 %i.ca, 1
  %spec.select.i183 = select i1 %i.ch, i32 %i.ci, i32 2147483647 ; 4 uses
  %.not.i9.i184 = icmp samesign ult i32 %i.ca, %spec.select.i183
  %.pre314 = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i184, label %bb.r, label %Vec_IntPush.exit190

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i185 = icmp eq ptr %.pre314, null
  %i.cj = zext nneg i32 %spec.select.i183 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  br i1 %.not9.i10.i185, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = call ptr @realloc(ptr noundef nonnull %.pre314, i64 noundef %i.ck) #24
  br label %Vec_IntGrow.exit11.sink.split.i186

bb.t:                                             ; preds = %bb.r
  %i.cm = call noalias ptr @malloc(i64 noundef %i.ck) #22
  br label %Vec_IntGrow.exit11.sink.split.i186

Vec_IntGrow.exit11.sink.split.i186:               ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge255 = phi ptr [ %i.cg, %bb.p ], [ %i.cf, %bb.o ], [ %i.cl, %bb.s ], [ %i.cm, %bb.t ] ; 2 uses
  %spec.select.sink.i187 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i183, %bb.s ], [ %spec.select.i183, %bb.t ]
  store ptr %storemerge255, ptr %i.aj, align 8, !tbaa !23
  store i32 %spec.select.sink.i187, ptr %i.ah, align 8, !tbaa !22
  br label %Vec_IntPush.exit190

Vec_IntPush.exit190:                              ; preds = %Vec_WrdPush.exit.Vec_IntPush.exit190_crit_edge, %bb.q, %Vec_IntGrow.exit11.sink.split.i186
  %i.cn = phi ptr [ %.pre, %Vec_WrdPush.exit.Vec_IntPush.exit190_crit_edge ], [ %.pre314, %bb.q ], [ %storemerge255, %Vec_IntGrow.exit11.sink.split.i186 ] ; 2 uses
  %i.co = add nsw i32 %i.ca, 1
  store i32 %i.co, ptr %i.ai, align 4, !tbaa !24
  %i.cp = sext i32 %i.ca to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 0, ptr %i.cq, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.1279, i64 24 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.u, label %bb.d, !llvm.loop !65

bb.u:                                             ; preds = %Vec_IntPush.exit190
  %i.cr = trunc nsw i64 %indvars.iv.next297 to i32
  store i32 %i.cr, ptr %i.af, align 4, !tbaa !39
  store i32 %spec.select.sink.i181269, ptr %i.ae, align 8
  store ptr %storemerge254273, ptr %i.ag, align 8
  %i.cs = load i32, ptr %i.ak, align 8, !tbaa !22
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %Vec_IntGrow.exit11.sink.split.i194, label %.Vec_IntPush.exit198_crit_edge

.Vec_IntPush.exit198_crit_edge:                   ; preds = %bb.u
  %.pre315 = load ptr, ptr %i.an, align 8, !tbaa !23
  br label %Vec_IntPush.exit198

Vec_IntGrow.exit11.sink.split.i194:               ; preds = %bb.u
  %i.cu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #24 ; 2 uses
  store ptr %i.cu, ptr %i.an, align 8, !tbaa !23
  store i32 16, ptr %i.ak, align 8, !tbaa !22
  br label %Vec_IntPush.exit198

Vec_IntPush.exit198:                              ; preds = %.Vec_IntPush.exit198_crit_edge, %Vec_IntGrow.exit11.sink.split.i194
  %i.cv = phi ptr [ %.pre315, %.Vec_IntPush.exit198_crit_edge ], [ %i.cu, %Vec_IntGrow.exit11.sink.split.i194 ]
  store i32 2, ptr %i.al, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 7, ptr %i.cw, align 4, !tbaa !27
  %i.cx = ptrtoint ptr %.1 to i64
  %i.cy = sub i64 %i.cx, %i.ac
  %i.cz = sdiv exact i64 %i.cy, 24
  %i.da = trunc i64 %i.cz to i32
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.da) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.preheader259

.preheader259:                                    ; preds = %Vec_IntPush.exit198, %Vec_IntPush.exit242
  %.val172332 = phi ptr [ %i.cn, %Vec_IntPush.exit198 ], [ %.val172, %Vec_IntPush.exit242 ]
  %.val173322 = phi ptr [ %storemerge254273, %Vec_IntPush.exit198 ], [ %.val173, %Vec_IntPush.exit242 ]
  %indvars.iv310 = phi i64 [ 0, %Vec_IntPush.exit198 ], [ %indvars.iv.next311, %Vec_IntPush.exit242 ] ; 2 uses
  %.2293 = phi ptr [ %.1, %Vec_IntPush.exit198 ], [ %.10, %Vec_IntPush.exit242 ]
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 4 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next311 to i32
  %i.df = trunc nuw nsw i64 %indvars.iv.next311 to i32
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader259, %bb.au
  %.val172333 = phi ptr [ %.val172332, %.preheader259 ], [ %.val172, %bb.au ]
  %.val173323 = phi ptr [ %.val173322, %.preheader259 ], [ %.val173, %bb.au ]
  %indvars.iv306 = phi i64 [ 0, %.preheader259 ], [ %indvars.iv.next307, %bb.au ] ; 6 uses
  %.3291 = phi ptr [ %.2293, %.preheader259 ], [ %.10, %bb.au ]
  %i.dg = trunc nuw nsw i64 %indvars.iv306 to i32
  br label %bb.v

bb.v:                                             ; preds = %.preheader258, %bb.at
  %.val172334 = phi ptr [ %.val172333, %.preheader258 ], [ %.val172, %bb.at ] ; 4 uses
  %.val173324 = phi ptr [ %.val173323, %.preheader258 ], [ %.val173, %bb.at ] ; 4 uses
  %indvars.iv302 = phi i64 [ 0, %.preheader258 ], [ %indvars.iv.next303, %bb.at ] ; 6 uses
  %.4289 = phi ptr [ %.3291, %.preheader258 ], [ %.10, %bb.at ] ; 4 uses
  %i.dh = add nuw nsw i64 %indvars.iv302, %indvars.iv306
  %.not = icmp ne i64 %i.dh, %indvars.iv310
  %i.di = icmp samesign ugt i64 %indvars.iv306, %indvars.iv302
  %or.cond = select i1 %.not, i1 true, i1 %i.di
  br i1 %or.cond, label %bb.at, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val171 = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val171, i64 %indvars.iv306 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !27 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %.idx160 = mul nsw i64 %i.dl, 24                ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.g, i64 %.idx160
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %.idx = mul nsw i64 %i.dp, 24                   ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val171, i64 %indvars.iv302 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !27 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %.idx162 = mul nsw i64 %i.dt, 24                ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.g, i64 %.idx162
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !27 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx161 = mul nsw i64 %i.dx, 24                ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.g, i64 %.idx161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #21
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %Abc_Clock.exit200, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = load i64, ptr %3, align 8, !tbaa !29
  %.neg250 = mul i64 %i.eb, -1000000
  %i.ec = load i64, ptr %i.dc, align 8, !tbaa !30
  %.neg249 = sdiv i64 %i.ec, -1000
  %.neg251 = add i64 %.neg249, %.neg250
  br label %Abc_Clock.exit200

Abc_Clock.exit200:                                ; preds = %bb.w, %bb.x
  %.0.i199.neg = phi i64 [ %.neg251, %bb.x ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %gepdiff = sub nsw i64 %.idx, %.idx160
  %i.ed = sdiv exact i64 %gepdiff, 24
  %i.ee = trunc i64 %i.ed to i32
  %gepdiff163 = sub nsw i64 %.idx161, %.idx162
  %i.ef = sdiv exact i64 %gepdiff163, 24
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ee, i32 noundef %i.eg) ; 0 uses
  %i.ei = icmp slt i32 %i.dk, %i.do
  br i1 %i.ei, label %.preheader257.lr.ph, label %._crit_edge286

.preheader257.lr.ph:                              ; preds = %Abc_Clock.exit200
  %i.ej = icmp slt i32 %i.ds, %i.dw
  %i.ek = icmp samesign ult i64 %indvars.iv306, %indvars.iv302
  br i1 %i.ej, label %.preheader257.us, label %._crit_edge286

.preheader257.us:                                 ; preds = %.preheader257.lr.ph, %._crit_edge.us
  %.val172337 = phi ptr [ %.val172339, %._crit_edge.us ], [ %.val172334, %.preheader257.lr.ph ]
  %.val173327 = phi ptr [ %.val173329, %._crit_edge.us ], [ %.val173324, %.preheader257.lr.ph ]
  %.0152285.us = phi ptr [ %i.il, %._crit_edge.us ], [ %i.dm, %.preheader257.lr.ph ] ; 4 uses
  %.5284.us = phi ptr [ %.9.us, %._crit_edge.us ], [ %.4289, %.preheader257.lr.ph ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0152285.us, i64 16
  %i.em = ptrtoint ptr %.0152285.us to i64
  %i.en = sub i64 %i.em, %i.ac
  %i.eo = sdiv exact i64 %i.en, 24
  %i.ep = and i64 %i.eo, 536870911
  br label %bb.y

bb.y:                                             ; preds = %.preheader257.us, %.loopexit256.us
  %.val172338 = phi ptr [ %.val172337, %.preheader257.us ], [ %.val172339, %.loopexit256.us ] ; 2 uses
  %.val173328 = phi ptr [ %.val173327, %.preheader257.us ], [ %.val173329, %.loopexit256.us ] ; 2 uses
  %.0151283.us = phi ptr [ %i.du, %.preheader257.us ], [ %i.id, %.loopexit256.us ] ; 4 uses
  %.6282.us = phi ptr [ %.5284.us, %.preheader257.us ], [ %.9.us, %.loopexit256.us ] ; 2 uses
  %i.eq = icmp ugt ptr %.0151283.us, %.0152285.us
  %or.cond168.us = or i1 %i.ek, %i.eq
  br i1 %or.cond168.us, label %.preheader.us, label %.loopexit256.us

bb.z:                                             ; preds = %.preheader.us, %Bdc_SpfdHashLookup.exit216.us
  %.val172340 = phi ptr [ %.val172338, %.preheader.us ], [ %.val172341, %Bdc_SpfdHashLookup.exit216.us ] ; 2 uses
  %.val173330 = phi ptr [ %.val173328, %.preheader.us ], [ %.val173331, %Bdc_SpfdHashLookup.exit216.us ] ; 2 uses
  %.7281.us = phi ptr [ %.6282.us, %.preheader.us ], [ %.8.us, %Bdc_SpfdHashLookup.exit216.us ] ; 7 uses
  %.0154280.us = phi i32 [ 0, %.preheader.us ], [ %i.ic, %Bdc_SpfdHashLookup.exit216.us ] ; 5 uses
  %i.er = load i64, ptr %i.el, align 8, !tbaa !33
  %i.es = and i32 %.0154280.us, 1
  %sext = sub nsw i32 0, %i.es
  %i.et = sext i32 %sext to i64
  %i.eu = xor i64 %i.er, %i.et                    ; 2 uses
  %i.ev = lshr i32 %.0154280.us, 1                ; 2 uses
  %i.ew = and i32 %i.ev, 1
  %i.ex = load i64, ptr %i.if, align 8, !tbaa !33
  %i.ey = and i32 %i.ev, 1
  %sext362 = sub nsw i32 0, %i.ey
  %i.ez = sext i32 %sext362 to i64
  %i.fa = xor i64 %i.ex, %i.ez                    ; 2 uses
  %i.fb = lshr i32 %.0154280.us, 2                ; 2 uses
  %.not166.us = icmp eq i32 %i.fb, 0
  %i.fc = xor i64 %i.fa, %i.eu
  %i.fd = and i64 %i.fa, %i.eu
  %i.fe = select i1 %.not166.us, i64 %i.fd, i64 %i.fc ; 4 uses
  %i.ff = and i64 %i.fe, 1
  %sext.us = sub nsw i64 0, %i.ff                 ; 2 uses
  %.0.us = xor i64 %i.fe, %sext.us                ; 4 uses
  %i.fg = icmp eq i64 %i.fe, %sext.us
  br i1 %i.fg, label %Bdc_SpfdHashLookup.exit216.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %10 = bitcast i64 %.0.us to <8 x i8>
  %11 = shufflevector <8 x i8> %10, <8 x i8> poison, <8 x i32> <i32 3, i32 0, i32 7, i32 1, i32 2, i32 4, i32 5, i32 6>
  %12 = zext <8 x i8> %11 to <8 x i32>
  %13 = mul <8 x i32> %12, <i32 100663319, i32 12582917, i32 1610612741, i32 25165843, i32 50331653, i32 201326611, i32 402653189, i32 805306457>
  %14 = call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %13)
  %i.fh = urem i32 %14, 201326611
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !32 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.loopexit.us, label %.preheader.i210.us

.preheader.i210.us:                               ; preds = %bb.aa, %bb.ab
  %.pn.in.i211.us = phi i32 [ %i.fr, %bb.ab ], [ %i.fl, %bb.aa ]
  %.pn.i212.us = sext i32 %.pn.in.i211.us to i64
  %.0.i213.us = getelementptr inbounds [24 x i8], ptr %i.g, i64 %.pn.i212.us ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i213.us, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !33
  %i.fp = icmp eq i64 %i.fo, %.0.us
  br i1 %i.fp, label %Bdc_SpfdHashLookup.exit216.us, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i210.us
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i213.us, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !34 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.loopexit.us.loopexit, label %.preheader.i210.us

.loopexit.us.loopexit:                            ; preds = %bb.ab
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i213.us, i64 8
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %bb.aa
  %.013.i215.ph.us = phi ptr [ %i.fk, %bb.aa ], [ %i.ft, %.loopexit.us.loopexit ]
  %i.fu = load i64, ptr %.7281.us, align 8
  %i.fv = and i64 %i.fu, -9223372034707292160
  %i.fw = or disjoint i64 %i.fv, %i.ep
  %i.fx = shl i32 %.0154280.us, 29
  %i.fy = and i32 %i.fx, 536870912
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = zext nneg i32 %i.ew to i64
  %i.gb = shl nuw nsw i64 %i.ga, 61
  %i.gc = zext nneg i32 %i.fb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 62
  %i.ge = or disjoint i64 %i.ik, %i.fz
  %i.gf = or disjoint i64 %i.ge, %i.gd
  %i.gg = or disjoint i64 %i.gf, %i.gb
  %i.gh = getelementptr inbounds nuw i8, ptr %.7281.us, i64 16
  store i64 %.0.us, ptr %i.gh, align 8, !tbaa !33
  %i.gi = shl i64 %i.fe, 30
  %i.gj = and i64 %i.gi, 1073741824
  %i.gk = or disjoint i64 %i.gg, %i.fw
  %i.gl = or disjoint i64 %i.gk, %i.gj
  store i64 %i.gl, ptr %.7281.us, align 8
  %i.gm = ptrtoint ptr %.7281.us to i64
  %i.gn = sub i64 %i.gm, %i.ac
  %i.go = sdiv exact i64 %i.gn, 24
  %i.gp = trunc i64 %i.go to i32
  store i32 %i.gp, ptr %.013.i215.ph.us, align 4, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %.7281.us, i64 24 ; 2 uses
  %i.gr = load i32, ptr %i.af, align 4, !tbaa !39 ; 7 uses
  %i.gs = load i32, ptr %i.ae, align 8, !tbaa !37
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.ac, label %.Vec_WrdPush.exit224.us_crit_edge

.Vec_WrdPush.exit224.us_crit_edge:                ; preds = %.loopexit.us
  %.pre316 = load ptr, ptr %i.ag, align 8, !tbaa !38
  br label %Vec_WrdPush.exit224.us

bb.ac:                                            ; preds = %.loopexit.us
  %i.gu = icmp slt i32 %i.gr, 16
  br i1 %i.gu, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = icmp samesign ult i32 %i.gr, 1073741823
  %i.gw = shl nuw nsw i32 %i.gr, 1
  %spec.select.i217.us = select i1 %i.gv, i32 %i.gw, i32 2147483647 ; 4 uses
  %.not.i9.i218.us = icmp samesign ult i32 %i.gr, %spec.select.i217.us
  %.pre317 = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 3 uses
  br i1 %.not.i9.i218.us, label %bb.ae, label %Vec_WrdPush.exit224.us

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i219.us = icmp eq ptr %.pre317, null
  %i.gx = zext nneg i32 %spec.select.i217.us to i64
  %i.gy = shl nuw nsw i64 %i.gx, 3                ; 2 uses
  br i1 %.not9.i10.i219.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gz = call ptr @realloc(ptr noundef nonnull %.pre317, i64 noundef %i.gy) #24
  br label %Vec_WrdGrow.exit11.sink.split.i220.us

bb.ag:                                            ; preds = %bb.ae
  %i.ha = call noalias ptr @malloc(i64 noundef %i.gy) #22
  br label %Vec_WrdGrow.exit11.sink.split.i220.us

bb.ah:                                            ; preds = %bb.ac
  %i.hb = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i222.us = icmp eq ptr %i.hb, null
  br i1 %.not9.i.i222.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hc = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.hb, i64 noundef 128) #24
  br label %Vec_WrdGrow.exit11.sink.split.i220.us

bb.aj:                                            ; preds = %bb.ah
  %i.hd = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_WrdGrow.exit11.sink.split.i220.us

Vec_WrdGrow.exit11.sink.split.i220.us:            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af
  %storemerge252.us = phi ptr [ %i.hd, %bb.aj ], [ %i.hc, %bb.ai ], [ %i.gz, %bb.af ], [ %i.ha, %bb.ag ] ; 2 uses
  %spec.select.sink.i221.us = phi i32 [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i217.us, %bb.af ], [ %spec.select.i217.us, %bb.ag ]
  store ptr %storemerge252.us, ptr %i.ag, align 8, !tbaa !38
  store i32 %spec.select.sink.i221.us, ptr %i.ae, align 8, !tbaa !37
  br label %Vec_WrdPush.exit224.us

Vec_WrdPush.exit224.us:                           ; preds = %.Vec_WrdPush.exit224.us_crit_edge, %Vec_WrdGrow.exit11.sink.split.i220.us, %bb.ad
  %i.he = phi ptr [ %.pre316, %.Vec_WrdPush.exit224.us_crit_edge ], [ %storemerge252.us, %Vec_WrdGrow.exit11.sink.split.i220.us ], [ %.pre317, %bb.ad ] ; 2 uses
  %i.hf = add nsw i32 %i.gr, 1
  store i32 %i.hf, ptr %i.af, align 4, !tbaa !39
  %i.hg = sext i32 %i.gr to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hg
  store i64 %.0.us, ptr %i.hh, align 8, !tbaa !16
  %i.hi = load i32, ptr %i.ai, align 4, !tbaa !24 ; 7 uses
  %i.hj = load i32, ptr %i.ah, align 8, !tbaa !22
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ak, label %Vec_WrdPush.exit224.us.Vec_IntPush.exit232.us_crit_edge

Vec_WrdPush.exit224.us.Vec_IntPush.exit232.us_crit_edge: ; preds = %Vec_WrdPush.exit224.us
  %.pre318 = load ptr, ptr %i.aj, align 8, !tbaa !23
  br label %Vec_IntPush.exit232.us

bb.ak:                                            ; preds = %Vec_WrdPush.exit224.us
  %i.hl = icmp slt i32 %i.hi, 16
  br i1 %i.hl, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hm = icmp samesign ult i32 %i.hi, 1073741823
  %i.hn = shl nuw nsw i32 %i.hi, 1
  %spec.select.i225.us = select i1 %i.hm, i32 %i.hn, i32 2147483647 ; 4 uses
  %.not.i9.i226.us = icmp samesign ult i32 %i.hi, %spec.select.i225.us
  %.pre319 = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i226.us, label %bb.am, label %Vec_IntPush.exit232.us

bb.am:                                            ; preds = %bb.al
  %.not9.i10.i227.us = icmp eq ptr %.pre319, null
  %i.ho = zext nneg i32 %spec.select.i225.us to i64
  %i.hp = shl nuw nsw i64 %i.ho, 2                ; 2 uses
  br i1 %.not9.i10.i227.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = call ptr @realloc(ptr noundef nonnull %.pre319, i64 noundef %i.hp) #24
  br label %Vec_IntGrow.exit11.sink.split.i228.us

bb.ao:                                            ; preds = %bb.am
  %i.hr = call noalias ptr @malloc(i64 noundef %i.hp) #22
  br label %Vec_IntGrow.exit11.sink.split.i228.us

bb.ap:                                            ; preds = %bb.ak
  %i.hs = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i230.us = icmp eq ptr %i.hs, null
  br i1 %.not9.i.i230.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ht = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hs, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i228.us

bb.ar:                                            ; preds = %bb.ap
  %i.hu = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i228.us

Vec_IntGrow.exit11.sink.split.i228.us:            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  %storemerge253.us = phi ptr [ %i.hu, %bb.ar ], [ %i.ht, %bb.aq ], [ %i.hq, %bb.an ], [ %i.hr, %bb.ao ] ; 2 uses
  %spec.select.sink.i229.us = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i225.us, %bb.an ], [ %spec.select.i225.us, %bb.ao ]
  store ptr %storemerge253.us, ptr %i.aj, align 8, !tbaa !23
  store i32 %spec.select.sink.i229.us, ptr %i.ah, align 8, !tbaa !22
  br label %Vec_IntPush.exit232.us

Vec_IntPush.exit232.us:                           ; preds = %Vec_WrdPush.exit224.us.Vec_IntPush.exit232.us_crit_edge, %Vec_IntGrow.exit11.sink.split.i228.us, %bb.al
  %i.hv = phi ptr [ %.pre318, %Vec_WrdPush.exit224.us.Vec_IntPush.exit232.us_crit_edge ], [ %storemerge253.us, %Vec_IntGrow.exit11.sink.split.i228.us ], [ %.pre319, %bb.al ] ; 2 uses
  %i.hw = add nsw i32 %i.hi, 1
  store i32 %i.hw, ptr %i.ai, align 4, !tbaa !24
  %i.hx = sext i32 %i.hi to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hx
  store i32 %i.de, ptr %i.hy, align 4, !tbaa !27
  %i.hz = ptrtoint ptr %i.gq to i64
  %i.ia = sub i64 %i.hz, %i.ac
  %i.ib = icmp eq i64 %i.ia, 6000000000
  br i1 %i.ib, label %bb.bg, label %Bdc_SpfdHashLookup.exit216.us

Bdc_SpfdHashLookup.exit216.us:                    ; preds = %.preheader.i210.us, %Vec_IntPush.exit232.us, %bb.z
  %.val172341 = phi ptr [ %.val172340, %bb.z ], [ %i.hv, %Vec_IntPush.exit232.us ], [ %.val172340, %.preheader.i210.us ] ; 2 uses
  %.val173331 = phi ptr [ %.val173330, %bb.z ], [ %i.he, %Vec_IntPush.exit232.us ], [ %.val173330, %.preheader.i210.us ] ; 2 uses
  %.8.us = phi ptr [ %.7281.us, %bb.z ], [ %i.gq, %Vec_IntPush.exit232.us ], [ %.7281.us, %.preheader.i210.us ] ; 2 uses
  %i.ic = add nuw nsw i32 %.0154280.us, 1         ; 2 uses
  %exitcond301.not = icmp eq i32 %i.ic, 5
  br i1 %exitcond301.not, label %.loopexit256.us, label %bb.z, !llvm.loop !66

.loopexit256.us:                                  ; preds = %Bdc_SpfdHashLookup.exit216.us, %bb.y
  %.val172339 = phi ptr [ %.val172338, %bb.y ], [ %.val172341, %Bdc_SpfdHashLookup.exit216.us ] ; 3 uses
  %.val173329 = phi ptr [ %.val173328, %bb.y ], [ %.val173331, %Bdc_SpfdHashLookup.exit216.us ] ; 3 uses
  %.9.us = phi ptr [ %.6282.us, %bb.y ], [ %.8.us, %Bdc_SpfdHashLookup.exit216.us ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0151283.us, i64 24 ; 2 uses
  %i.ie = icmp ult ptr %i.id, %i.dy
  br i1 %i.ie, label %bb.y, label %._crit_edge.us, !llvm.loop !67

.preheader.us:                                    ; preds = %bb.y
end_hunk_0
begin_hunk_1_@Bdc_SpfdDecomposeTest:bb.a
bb.m:                                             ; preds = %Abc_Clock.exit69
  %i.co = load i64, ptr %1, align 8, !tbaa !29
  %.neg77 = mul i64 %i.co, -1000000
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !30
  %.neg76 = sdiv i64 %i.cq, -1000
  %.neg78 = add i64 %.neg76, %.neg77
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.m, %Abc_Clock.exit69
  %.0.i70.neg = phi i64 [ %.neg78, %bb.m ], [ 1, %Abc_Clock.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.au, label %.lr.ph94.split.us, label %.critedge4

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  %.val56.us = load ptr, ptr %i.e, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %.val55 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val55, 4
  %n.vec = and i64 %wide.trip.count113, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count113
  br label %.lr.ph.us96

.lr.ph.us96:                                      ; preds = %..critedge6_crit_edge.us, %.lr.ph94.split.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %..critedge6_crit_edge.us ], [ 0, %.lr.ph94.split.us ] ; 2 uses
  %.293.us = phi i32 [ %.lcssa, %..critedge6_crit_edge.us ], [ 0, %.lr.ph94.split.us ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv115
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !16 ; 3 uses
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.us96
  %i.cu = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.293.us, i64 0
  %broadcast.splatinsert133 = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat134 = shufflevector <2 x i64> %broadcast.splatinsert133, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert135 = insertelement <2 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat136 = shufflevector <2 x i32> %broadcast.splatinsert135, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph132
  %index138 = phi i64 [ 0, %vector.ph132 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %vec.phi139 = phi <2 x i32> [ %i.cu, %vector.ph132 ], [ %i.df, %vector.body137 ]
  %vec.phi140 = phi <2 x i32> [ zeroinitializer, %vector.ph132 ], [ %i.dg, %vector.body137 ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val56.us, i64 %index138 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load141 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !16
  %wide.load142 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !16
  %i.cx = and <2 x i64> %wide.load141, %broadcast.splat134
  %i.cy = and <2 x i64> %wide.load142, %broadcast.splat134
  %i.cz = trunc <2 x i64> %i.cx to <2 x i32>
  %i.da = trunc <2 x i64> %i.cy to <2 x i32>
  %i.db = icmp eq <2 x i32> %broadcast.splat136, %i.cz
  %i.dc = icmp eq <2 x i32> %broadcast.splat136, %i.da
  %i.dd = zext <2 x i1> %i.db to <2 x i32>
  %i.de = zext <2 x i1> %i.dc to <2 x i32>
  %i.df = add <2 x i32> %vec.phi139, %i.dd        ; 2 uses
  %i.dg = add <2 x i32> %vec.phi140, %i.de        ; 2 uses
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next143, %n.vec
  br i1 %i.dh, label %middle.block144, label %vector.body137, !llvm.loop !87

middle.block144:                                  ; preds = %vector.body137
  %bin.rdx = add <2 x i32> %i.dg, %i.df
  %i.di = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..critedge6_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us96, %middle.block144
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph.us96 ], [ %n.vec, %middle.block144 ]
  %.391.us.ph = phi i32 [ %.293.us, %.lr.ph.us96 ], [ %i.di, %middle.block144 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph ], [ %indvars.iv110.ph, %scalar.ph.preheader ] ; 2 uses
  %.391.us = phi i32 [ %i.dp, %scalar.ph ], [ %.391.us.ph, %scalar.ph.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val56.us, i64 %indvars.iv110
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.dl = and i64 %i.dk, %i.cs
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, %i.ct
  %i.do = zext i1 %i.dn to i32
  %i.dp = add nsw i32 %.391.us, %i.do             ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %..critedge6_crit_edge.us, label %scalar.ph, !llvm.loop !88

..critedge6_crit_edge.us:                         ; preds = %scalar.ph, %middle.block144
  %.lcssa = phi i32 [ %i.di, %middle.block144 ], [ %i.dp, %scalar.ph ] ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, 8
  br i1 %exitcond119.not, label %.critedge4, label %.lr.ph.us96, !llvm.loop !89

.critedge4:                                       ; preds = %..critedge6_crit_edge.us, %.lr.ph94
  %.2.lcssa = phi i32 [ 0, %.lr.ph94 ], [ %.lcssa, %..critedge6_crit_edge.us ]
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %.2.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.dr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #21
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %Abc_Clock.exit73, label %bb.n

bb.n:                                             ; preds = %.critedge4
  %i.dt = load i64, ptr %0, align 8, !tbaa !29
  %i.du = mul nsw i64 %i.dt, 1000000
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !30
  %i.dx = sdiv i64 %i.dw, 1000
  %i.dy = add nsw i64 %i.dx, %i.du
  br label %Abc_Clock.exit73

Abc_Clock.exit73:                                 ; preds = %.critedge4, %bb.n
  %.0.i72 = phi i64 [ %i.dy, %bb.n ], [ -1, %.critedge4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.dz = add i64 %.0.i72, %.0.i70.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.ea = sitofp i64 %i.dz to double
  %i.eb = fdiv double %i.ea, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.eb)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #21 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #21 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #21 ; 0 uses
  call void @free(ptr noundef %i.d) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !18, !noalias !93
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #21, !inline_history !92 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v8i32(<8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !9, i64 8}
!11 = !{!10, !9, i64 8}
!12 = !{!8, !8, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"Bdc_Nod_t_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!13, !13, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"p1 int", !8, i64 0}
!21 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !20, i64 8}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!21, !5, i64 4}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!5, !5, i64 0}
!28 = !{!"timespec", !13, i64 0, !13, i64 8}
!29 = !{!28, !13, i64 0}
!30 = !{!28, !13, i64 8}
!31 = !{!"Bdc_Ent_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8, !5, i64 12, !13, i64 16}
!32 = !{!31, !5, i64 12}
!33 = !{!31, !13, i64 16}
!34 = !{!31, !5, i64 8}
!35 = !{!"p1 long", !8, i64 0}
!36 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !35, i64 8}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!36, !5, i64 4}
!40 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !60}
!44 = distinct !{!44, !19, !25, !26}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19, !26, !25}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = !{!10, !5, i64 0}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!10, !5, i64 4}
!62 = !{!4, !4, i64 0}
!63 = !{i64 0, i64 8, !62, i64 8, i64 8, !16}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19, !25, !26}
!76 = distinct !{!76, !19, !25, !26}
!77 = distinct !{!77, !19, !25, !26}
!78 = distinct !{!78, !19, !25, !26}
!79 = distinct !{!79, !19, !25, !26}
!80 = distinct !{!80, !19, !25, !26}
!81 = distinct !{!81, !19, !25, !26}
!82 = distinct !{!82, !19, !25, !26}
!83 = distinct !{!83, !19, !25, !26}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19, !25, !26}
!88 = distinct !{!88, !19, !26, !25}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, i1 true, !"vprintf"}
!91 = distinct !{!91, !90, !"vprintf: argument 0"}
!92 = distinct !{null}
!93 = !{!91}
end_hunk_1
