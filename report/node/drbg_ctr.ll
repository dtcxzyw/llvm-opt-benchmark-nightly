inline.NumInlined: 23
inline.NumDeleted: 10
begin_hunk_0_@ctr_BCC_update:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.688.0 = phi <16 x i8> [ undef, %.lr.ph ], [ %.sroa.688.1, %bb.i ]
  %.363 = phi i64 [ %.2, %.lr.ph ], [ %i.al, %bb.i ]
  %.33762 = phi ptr [ %.236, %.lr.ph ], [ %i.ak, %bb.i ] ; 3 uses
  %.sroa.086.0.copyload = load <16 x i8>, ptr %.33762, align 1 ; 2 uses
end_hunk_0
begin_hunk_1_@ctr_BCC_update:bb.a
  br label %vector.ph75

vector.ph75:                                      ; preds = %bb.h, %bb.g
  %.sroa.688.1 = phi <16 x i8> [ %.sroa.688.0, %bb.g ], [ %.sroa.688.32.copyload, %bb.h ] ; 2 uses
  %.0.i47 = phi i32 [ 32, %bb.g ], [ 48, %bb.h ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 16, ptr %i.a, align 4, !tbaa !5
end_hunk_1
