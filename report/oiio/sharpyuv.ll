inline.NumInlined: 53
inline.NumDeleted: 15
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  br i1 %i.uw, label %.split115.us.us.i.i.preheader, label %.split115.preheader.i.i

.split115.us.us.i.i.preheader:                    ; preds = %.preheader.i.i
  %16 = zext nneg i32 %smax148.i.i to i64
  %17 = add nsw i64 %16, -1                       ; 2 uses
  %i.zz = mul nsw i64 %17, %i.zx
  %i.aaa = getelementptr i8, ptr %8, i64 %i.zz
  %scevgep218 = getelementptr i8, ptr %i.aaa, i64 %wide.trip.count146.i.i
  %i.aab = mul nsw i64 %17, %i.zy
  %i.aac = getelementptr i8, ptr %10, i64 %i.aab
  %scevgep219 = getelementptr i8, ptr %i.aac, i64 %wide.trip.count146.i.i
  %min.iters.check226 = icmp ult i32 %13, 15
end_hunk_0
begin_hunk_1_@SharpYuvConvertWithOptions:bb.a
.split115.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.aam = add i32 %i.de, %i.uv                   ; 2 uses
  %i.aan = add i32 %i.dj, %i.uv                   ; 2 uses
  %18 = zext nneg i32 %smax148.i.i to i64
  %19 = add nsw i64 %18, -1                       ; 2 uses
  %i.aao = mul nsw i64 %19, %i.zx
  %i.aap = shl nuw nsw i64 %wide.trip.count146.i.i, 1 ; 2 uses
  %i.aaq = getelementptr i8, ptr %8, i64 %i.aao
  %scevgep = getelementptr i8, ptr %i.aaq, i64 %i.aap
  %i.aar = mul nsw i64 %19, %i.zy
  %i.aas = getelementptr i8, ptr %10, i64 %i.aar
  %scevgep181 = getelementptr i8, ptr %i.aas, i64 %i.aap
  %min.iters.check184 = icmp ult i32 %13, 15
end_hunk_1
