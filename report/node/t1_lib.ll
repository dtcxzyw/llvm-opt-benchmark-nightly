inline.NumInlined: 100
inline.NumDeleted: 33
begin_hunk_0_@ssl_security_cert:bb.a
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %3, 0
  %spec.store.select = select i1 %.not, i32 0, i32 4096 ; 3 uses
  %.not14 = icmp eq i32 %4, 0
  %i.d = tail call ptr @X509_get0_pubkey(ptr noundef %2) #14 ; 3 uses
  %.not.i18 = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not14, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = or disjoint i32 %spec.store.select, 393232 ; 2 uses
  br i1 %.not.i18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@ssl_security_cert:bb.a
  br i1 %.not16, label %bb.t, label %bb.l

bb.g:                                             ; preds = %bb.a
  %6 = or disjoint i32 %spec.store.select, 393233 ; 2 uses
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@ssl_security_cert:bb.a
  br i1 %.not15, label %bb.t, label %bb.l

bb.l:                                             ; preds = %ssl_security_cert_key.exit22, %ssl_security_cert_key.exit
  %7 = or disjoint i32 %spec.store.select, 393234 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
end_hunk_2
