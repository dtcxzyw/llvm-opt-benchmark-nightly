inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl19ExpandResponseFilesERNS_11StringSaverEPFvNS_9StringRefES2_RNS_15SmallVectorImplIPKcEEbES8_bb:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.an, %bb.o ] ; 2 uses
  %i.g = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.o ] ; 3 uses
  %.02747 = phi i32 [ 0, %.lr.ph ], [ %.229, %bb.o ] ; 4 uses
  %.03046 = phi i1 [ true, %.lr.ph ], [ %.232, %bb.o ] ; 3 uses
  %.03445 = phi i32 [ 0, %.lr.ph ], [ %.135, %bb.o ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl19ExpandResponseFilesERNS_11StringSaverEPFvNS_9StringRefES2_RNS_15SmallVectorImplIPKcEEbES8_bb:bb.a

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %2, align 8, !tbaa !178    ; 3 uses
  %.idx43 = shl nuw nsw i64 %i.g, 3               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx43 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %i.y = zext i32 %i.x to i64
  %.idx = shl nuw nsw i64 %i.y, 3
  %.neg = xor i64 %.idx43, -8
  %gepdiff = add nsw i64 %.neg, %.idx             ; 3 uses
  %i.z = icmp sgt i64 %gepdiff, 8
  br i1 %i.z, label %bb.j, label %bb.k, !prof !181

bb.j:                                             ; preds = %bb.i
end_hunk_1
