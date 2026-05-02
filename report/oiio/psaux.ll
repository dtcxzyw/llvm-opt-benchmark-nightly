inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_glyphpath_lineTo:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18657
  %i.g = load i8, ptr %i.f, align 1, !tbaa !592
  %.not41 = icmp eq i8 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %5 = phi i1 [ false, %bb.a ], [ %.not41, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18752 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !684  ; 2 uses
  %i.j = sext i32 %1 to i64                       ; 2 uses
end_hunk_0
begin_hunk_1_@cf2_glyphpath_lineTo:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %2 to i64
  %i.o = icmp ne i64 %i.m, %i.n
  %or.cond = select i1 %i.o, i1 true, i1 %5
  br i1 %or.cond, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.c, %bb.d
end_hunk_1
begin_hunk_2_@cf2_glyphpath_lineTo:bb.a
  store i64 %i.ae, ptr %i.dr, align 8, !tbaa !42
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 18832
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx4, align 8, !tbaa !42
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@cf2_hintmap_build:bb.a
  %14 = alloca %struct.CF2_HintRec_, align 8      ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !574    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.not = icmp ne i8 %5, 0                        ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@cf2_hintmap_build:bb.a

cf2_hintmap_adjustHints.exit:                     ; preds = %bb.cm, %._crit_edge.i163
  %.not219 = icmp eq i32 %i.ni, 0
  %or.cond290 = or i1 %.not, %.not219
  br i1 %or.cond290, label %.loopexit, label %.lr.ph216

.lr.ph216:                                        ; preds = %cf2_hintmap_adjustHints.exit
end_hunk_4
begin_hunk_5_@cf2_glyphpath_pushPrevElem:bb.a
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %cf2_glyphpath_computeIntersection.exit.thread
  %7 = icmp ne i8 %5, 0
  %or.cond = or i1 %7, %i.et
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
end_hunk_5
