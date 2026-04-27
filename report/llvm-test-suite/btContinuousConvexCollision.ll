inline.NumInlined: 355
inline.NumDeleted: 76
begin_hunk_0_@_ZNK11btMatrix3x311getRotationER12btQuaternion:bb.a
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = fcmp ogt float %i.h, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZNK11btMatrix3x311getRotationER12btQuaternion:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %2 = fcmp olt float %i.d, %i.g
  %3 = select i1 %2, i32 2, i32 1
  %i.aj = fcmp olt float %i.b, %i.g
  %4 = select i1 %i.aj, i32 2, i32 0
  %i.ak = select i1 %i.ai, i32 %3, i32 %4
  %.fr = freeze i32 %i.ak                         ; 3 uses
  %i.al = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
end_hunk_1
