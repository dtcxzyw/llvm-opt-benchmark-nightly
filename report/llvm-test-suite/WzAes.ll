inline.NumInlined: 49
inline.NumDeleted: 14
begin_hunk_0_@_ZN7NCrypto6NWzAes10CBaseCoder17CryptoSetPasswordEPKhj:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, label %bb.c

end_hunk_0
begin_hunk_1_@_ZN7NCrypto6NWzAes10CBaseCoder17CryptoSetPasswordEPKhj:bb.a

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #16 ; 3 uses
  %.not10.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.f

end_hunk_1
begin_hunk_2_@_ZThn8_N7NCrypto6NWzAes10CBaseCoder17CryptoSetPasswordEPKhj:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i, label %bb.c

end_hunk_2
begin_hunk_3_@_ZThn8_N7NCrypto6NWzAes10CBaseCoder17CryptoSetPasswordEPKhj:bb.a

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #16 ; 3 uses
  %.not10.i.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.f

end_hunk_3
