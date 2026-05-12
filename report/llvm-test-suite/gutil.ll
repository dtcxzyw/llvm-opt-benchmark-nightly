inline.NumInlined: 191
inline.NumDeleted: 98
begin_hunk_0_@_ZN2kc10f_mkselvarEPKci:bb.a
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 2 uses
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8192
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN2kc10f_mkselvarEPKci:bb.a
  %.011 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.011, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 %i.b
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1) #13 ; 0 uses
  %i.i = call noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef nonnull %.011, i32 noundef -1)
  %i.j = call noundef ptr @_ZN2kc3StrEPNS_20impl_casestring__StrE(ptr noundef %i.i)
end_hunk_1
begin_hunk_2_@_ZN2kc11f_mkselvar2EPKcii:bb.a
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 2 uses
  %i.c = add i64 %i.b, 62                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8192
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_2
begin_hunk_3_@_ZN2kc11f_mkselvar2EPKcii:bb.a
  %.014 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.014, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014, i64 %i.b
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1, i32 noundef %2) #13 ; 0 uses
  %i.i = call noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef nonnull %.014, i32 noundef -1)
  %i.j = call noundef ptr @_ZN2kc3StrEPNS_20impl_casestring__StrE(ptr noundef %i.i)
end_hunk_3
