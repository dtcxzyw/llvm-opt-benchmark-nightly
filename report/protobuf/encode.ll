inline.NumInlined: 202
inline.NumDeleted: 88
begin_hunk_0_@encode_message:bb.a
.critedge.preheader.i.lr.ph:                      ; preds = %.preheader154
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !3    ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.not375 = icmp eq i32 %i.o, 0
  br i1 %.not375, label %.loopexit153, label %.lr.ph368

.lr.ph368:                                        ; preds = %.critedge.preheader.i.lr.ph, %.critedge.preheader.i
  %.0108182371 = phi i64 [ %i.r, %.critedge.preheader.i ], [ 0, %.critedge.preheader.i.lr.ph ]
  %.041183370 = phi i64 [ %i.z, %.critedge.preheader.i ], [ 0, %.critedge.preheader.i.lr.ph ] ; 2 uses
  br label %bb.f

.critedge.i:                                      ; preds = %bb.f
  %8 = icmp ult i64 %i.r, %i.p
  br i1 %8, label %bb.f, label %.loopexit153

bb.f:                                             ; preds = %.lr.ph368, %.critedge.i
  %.017.i367 = phi i64 [ %.0108182371, %.lr.ph368 ], [ %i.r, %.critedge.i ] ; 2 uses
  %i.r = add nuw nsw i64 %.017.i367, 1            ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.017.i367
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !27 ; 3 uses
  %i.t = icmp ne i64 %.sroa.0.0.copyload.i, 0
end_hunk_0
begin_hunk_1_@encode_message:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !27
  %i.z = add i64 %.sroa.7.0.copyload, %.041183370 ; 2 uses
  %i.aa = icmp ult i64 %i.r, %i.p
  br i1 %i.aa, label %.lr.ph368, label %.loopexit153

end_hunk_1
begin_hunk_2_@encode_message:bb.a
.critedge.preheader.i51:                          ; preds = %encode_reserve.exit, %bb.j
  %i.ak = phi i64 [ %i.az, %bb.j ], [ %.pre-phi, %encode_reserve.exit ]
  %.040188 = phi ptr [ %i.ay, %bb.j ], [ %.0.i, %encode_reserve.exit ] ; 2 uses
  %.1109187 = phi i64 [ %i.aq, %bb.j ], [ 0, %encode_reserve.exit ] ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = icmp ult i64 %.1109187, %i.an
  br i1 %i.ap, label %.lr.ph374, label %upb_Message_NextUnknown.exit60.thread

.critedge.i53:                                    ; preds = %.lr.ph374
  %9 = icmp ult i64 %i.aq, %i.an
  br i1 %9, label %.lr.ph374, label %upb_Message_NextUnknown.exit60.thread

.lr.ph374:                                        ; preds = %.critedge.preheader.i51, %.critedge.i53
  %.017.i54373 = phi i64 [ %i.aq, %.critedge.i53 ], [ %.1109187, %.critedge.preheader.i51 ] ; 2 uses
  %i.aq = add nuw nsw i64 %.017.i54373, 1         ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.017.i54373
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.ar, align 8, !tbaa !27 ; 3 uses
  %i.as = icmp ne i64 %.sroa.0.0.copyload.i59, 0
end_hunk_2
begin_hunk_3_@llvm.umin.i64
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
