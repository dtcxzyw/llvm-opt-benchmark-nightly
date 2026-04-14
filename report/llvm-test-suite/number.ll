inline.NumInlined: 80
inline.NumDeleted: 2
begin_hunk_0_@bc_divide:bb.a
  %i.bn = add i32 %i.bm, %.0197.lcssa             ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.bq = sub i32 %i.bp, %.0197.lcssa
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bq)
  %i.br = sub nsw i32 %3, %4                      ; 2 uses
  %i.bs = add nsw i32 %i.bp, %i.bm
  %i.bt = add i32 %i.bs, %i.br                    ; 5 uses
  %i.bu = add i32 %i.bt, 2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #22 ; 9 uses
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bz = add nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = add nuw i32 %i.br, 2
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = zext i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.cc, i1 false)
end_hunk_0
