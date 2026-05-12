inline.NumInlined: 109
inline.NumDeleted: 67
begin_hunk_0_@_ZN4llvh3MD55finalERNS0_9MD5ResultE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = and i32 %i.b, 63                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 -128, ptr %i.g, align 1, !tbaa !16
  %2 = sub nuw nsw i64 63, %i.d                   ; 2 uses
  %3 = icmp samesign ugt i32 %i.c, 55
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4llvh3MD54hashENS_8ArrayRefIhEE:bb.a
  %.1.i = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 1 %.1.i, i64 %.128.i, i1 false)
  %i.m = and i32 %i.k, 63                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 -128, ptr %i.p, align 1, !tbaa !16
  %3 = sub nuw nsw i64 63, %i.n                   ; 2 uses
  %4 = icmp samesign ugt i32 %i.m, 55
  br i1 %4, label %bb.c, label %_ZN4llvh3MD55finalERNS0_9MD5ResultE.exit

bb.c:                                             ; preds = %_ZN4llvh3MD56updateENS_8ArrayRefIhEE.exit
end_hunk_1
