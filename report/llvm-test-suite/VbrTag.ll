inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@PutVbrTag:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %3 = trunc i64 %index to i32                    ; 4 uses
  %4 = or disjoint i32 %3, 1
  %5 = or disjoint i32 %3, 2
  %i.y = or disjoint i32 %3, 3
  %i.z = add i32 %3, 4
  %i.aa = uitofp nneg i32 %4 to double
  %i.ab = uitofp nneg i32 %5 to double
  %i.ac = uitofp nneg i32 %i.y to double
end_hunk_0
begin_hunk_1_@PutVbrTag:bb.a
  %i.bn = fcmp ogt <4 x float> %i.bm, splat (float 2.550000e+02)
  %i.bo = select <4 x i1> %i.bn, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bm
  %i.bp = fptoui <4 x float> %i.bo to <4 x i8>
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 1
  store <4 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, 96
end_hunk_1
