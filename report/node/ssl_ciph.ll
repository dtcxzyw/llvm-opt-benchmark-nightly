inline.NumInlined: 82
inline.NumDeleted: 14
begin_hunk_0_@SSL_CIPHER_description:bb.a
bb.t:                                             ; preds = %bb.p
  br label %bb.z

bb.u:                                             ; preds = %bb.p
  br label %bb.z

bb.v:                                             ; preds = %bb.p
  br label %bb.z

bb.w:                                             ; preds = %bb.p
  br label %bb.z

bb.x:                                             ; preds = %bb.p
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  br label %bb.z

bb.z:                                             ; preds = %bb.p, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.027 = phi ptr [ @.str.25, %bb.y ], [ @.str.24, %bb.x ], [ @.str.26, %bb.q ], [ @.str.27, %bb.r ], [ @.str.3, %bb.s ], [ @.str.17, %bb.t ], [ @.str.21, %bb.u ], [ @.str.28, %bb.v ], [ @.str.29, %bb.w ], [ @.str.16, %bb.p ]
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.split, label %bb.aa

.split:                                           ; preds = %bb.z
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 true) ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 24
  br i1 %i.s, label %switch.lookup, label %bb.aa

switch.lookup:                                    ; preds = %.split
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SSL_CIPHER_description, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.split, %switch.lookup
  %.026 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %.split ], [ @.str.25, %bb.z ]
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %.split1, label %bb.ab

.split1:                                          ; preds = %bb.aa
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true) ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 10
  br i1 %i.x, label %switch.lookup34, label %bb.ab

switch.lookup34:                                  ; preds = %.split1
  %i.y = zext nneg i32 %i.w to i64
  %switch.gep35 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SSL_CIPHER_description.2, i64 %i.y
  %switch.load36 = load ptr, ptr %switch.gep35, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split1, %switch.lookup34
  %.025 = phi ptr [ %switch.load36, %switch.lookup34 ], [ @.str.25, %.split1 ], [ @.str.25, %bb.aa ]
  %i.z = zext nneg i32 %.023 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !163
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %.022, i64 noundef %i.z, ptr noundef nonnull @.str.15, ptr noundef %i.ab, ptr noundef %i.o, ptr noundef nonnull %.024, ptr noundef nonnull %.027, ptr noundef nonnull %.026, ptr noundef nonnull %.025) #12 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.c, %bb.b, %bb.ab
  %.0 = phi ptr [ null, %bb.b ], [ %.022, %bb.ab ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @ssl_protocol_to_string(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SSL_CIPHER_get_version(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !116  ; 2 uses
  %i.d = icmp eq i32 %i.c, 769
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @ssl_protocol_to_string(i32 noundef %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @.str.60, %bb.a ], [ @.str.61, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @SSL_CIPHER_get_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ @.str.60, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @SSL_CIPHER_standard_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ @.str.60, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_cipher_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SSL_CIPHER_get_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ssl3_get_cipher_by_std_name(ptr noundef nonnull %0) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %SSL_CIPHER_get_name.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163
  br label %SSL_CIPHER_get_name.exit

SSL_CIPHER_get_name.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @.str.60, %bb.a ], [ %i.d, %bb.c ], [ @.str.60, %bb.b ]
  ret ptr %.0
}

declare ptr @ssl3_get_cipher_by_std_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @SSL_CIPHER_get_bits(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169
  store i32 %i.b, ptr %1, align 4, !tbaa !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.d, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CIPHER_get_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !157
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @SSL_CIPHER_get_protocol_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !157
  %i.c = trunc i32 %i.b to i16
  ret i16 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ssl3_comp_find(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ssl_comp_st, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %2, align 8, !tbaa !170
  %i.c = call i32 @OPENSSL_sk_find(ptr noundef nonnull %0, ptr noundef nonnull %2) #12 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @SSL_COMP_set0_compression_methods(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @SSL_COMP_add_compression_method(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @SSL_COMP_get_name(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @SSL_COMP_get0_name(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @SSL_COMP_get_id(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ssl_get_cipher_by_char(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.e = tail call ptr %i.d(ptr noundef %1) #12   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !136
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SSL_CIPHER_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.e = tail call ptr %i.d(ptr noundef %1) #12
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CIPHER_get_cipher_nid(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ssl_cipher_info_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !64   ; 2 uses
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %ssl_cipher_info_find.exit.thread

.split:                                           ; preds = %bb.b
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true) ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 24
  br i1 %i.g, label %switch.lookup, label %ssl_cipher_info_find.exit.thread

switch.lookup:                                    ; preds = %.split
  %i.h = shl nuw nsw i32 %i.f, 3
  %switch.idx.mult = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr @ssl_cipher_table_cipher, i64 %switch.idx.mult
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  br label %ssl_cipher_info_find.exit.thread

ssl_cipher_info_find.exit.thread:                 ; preds = %.split, %bb.b, %bb.a, %switch.lookup
  %.0 = phi i32 [ %i.k, %switch.lookup ], [ 0, %bb.a ], [ 0, %.split ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CIPHER_get_digest_nid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  switch i32 %i.b, label %ssl_cipher_info_find.exit.thread [
    i32 1, label %ssl_cipher_info_find.exit
    i32 2, label %ssl_cipher_info_find.exit.fold.split
    i32 4, label %ssl_cipher_info_find.exit.fold.split9
    i32 8, label %ssl_cipher_info_find.exit.fold.split10
    i32 16, label %ssl_cipher_info_find.exit.fold.split11
    i32 32, label %ssl_cipher_info_find.exit.fold.split12
    i32 128, label %ssl_cipher_info_find.exit.fold.split13
    i32 256, label %ssl_cipher_info_find.exit.fold.split14
    i32 512, label %ssl_cipher_info_find.exit.fold.split15
    i32 0, label %ssl_cipher_info_find.exit.fold.split16
    i32 1024, label %ssl_cipher_info_find.exit.fold.split17
    i32 2048, label %ssl_cipher_info_find.exit.fold.split18
  ]

ssl_cipher_info_find.exit.fold.split:             ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split9:            ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split10:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split11:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split12:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split13:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split14:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split15:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split16:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split17:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit.fold.split18:           ; preds = %bb.a
  br label %ssl_cipher_info_find.exit

ssl_cipher_info_find.exit:                        ; preds = %bb.a, %ssl_cipher_info_find.exit.fold.split18, %ssl_cipher_info_find.exit.fold.split17, %ssl_cipher_info_find.exit.fold.split16, %ssl_cipher_info_find.exit.fold.split15, %ssl_cipher_info_find.exit.fold.split14, %ssl_cipher_info_find.exit.fold.split13, %ssl_cipher_info_find.exit.fold.split12, %ssl_cipher_info_find.exit.fold.split11, %ssl_cipher_info_find.exit.fold.split10, %ssl_cipher_info_find.exit.fold.split9, %ssl_cipher_info_find.exit.fold.split
  %.011.i.lcssa = phi i64 [ 0, %bb.a ], [ 72, %ssl_cipher_info_find.exit.fold.split16 ], [ 8, %ssl_cipher_info_find.exit.fold.split ], [ 16, %ssl_cipher_info_find.exit.fold.split9 ], [ 24, %ssl_cipher_info_find.exit.fold.split10 ], [ 32, %ssl_cipher_info_find.exit.fold.split11 ], [ 40, %ssl_cipher_info_find.exit.fold.split12 ], [ 48, %ssl_cipher_info_find.exit.fold.split13 ], [ 56, %ssl_cipher_info_find.exit.fold.split14 ], [ 64, %ssl_cipher_info_find.exit.fold.split15 ], [ 96, %ssl_cipher_info_find.exit.fold.split17 ], [ 104, %ssl_cipher_info_find.exit.fold.split18 ]
  %i.c = getelementptr inbounds nuw i8, ptr @ssl_cipher_table_mac, i64 %.011.i.lcssa
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  br label %ssl_cipher_info_find.exit.thread

ssl_cipher_info_find.exit.thread:                 ; preds = %bb.a, %ssl_cipher_info_find.exit
  %.0 = phi i32 [ %i.e, %ssl_cipher_info_find.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CIPHER_get_kx_nid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137
  switch i32 %i.b, label %ssl_cipher_info_find.exit.thread [
    i32 1, label %ssl_cipher_info_find.exit
    i32 4, label %ssl_cipher_info_find.exit.fold.split
    i32 2, label %ssl_cipher_info_find.exit.fold.split8
    i32 128, label %ssl_cipher_info_find.exit.fold.split9
    i32 256, label %ssl_cipher_info_find.exit.fold.split10
    i32 64, label %ssl_cipher_info_find.exit.fold.split11
    i32 8, label %ssl_cipher_info_find.exit.fold.split12
    i32 32, label %ssl_cipher_info_find.exit.fold.split13
    i32 16, label %ssl_cipher_info_find.exit.fold.split14
    i32 512, label %ssl_cipher_info_find.exit.fold.split15
    i32 0, label %ssl_cipher_info_find.exit.fold.split16
  ]

ssl_cipher_info_find.exit.fold.split:             ; preds = %bb.a
  br label %ssl_cipher_info_find.exit
end_hunk_0
