inline.NumInlined: 138
inline.NumDeleted: 52
begin_hunk_0_@signal_exec:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  store volatile ptr %i.g, ptr %i.b, align 8, !tbaa !20
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36 ; 2 uses
end_hunk_0
begin_hunk_1_@signal_exec:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.l, align 8, !tbaa !74
  store i64 36, ptr %2, align 8, !tbaa !76
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !78
end_hunk_1
begin_hunk_2_@signal_exec:bb.a
bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !20
  %i.ae = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %.0..0..0..0.4.pre = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.af = sext i32 %1 to i64
  %i.ag = shl nsw i64 %i.af, 1
end_hunk_2
begin_hunk_3_@signal_exec:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0..0..0.4 = phi ptr [ %.0..0..0..0..0..0..i, %bb.f ], [ %.0..0..0..0.4.pre, %bb.e ]
  %i.aj = phi i32 [ 0, %bb.f ], [ %i.ae, %bb.e ]
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.al = getelementptr i8, ptr %.0..0..0.4, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_3
