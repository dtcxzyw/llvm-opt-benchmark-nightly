inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0_@copy:bb.a

bb.k:                                             ; preds = %bb.a
  %.sroa.039.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.g = icmp eq i8 %.sroa.039.0.copyload, 3
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.441.0.copyload, ptr noundef nonnull align 4 dereferenceable(32) %.8.val, i64 32, i1 false)
  br label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1221, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.n:                                             ; preds = %bb.a
  %.sroa.034.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.i = icmp eq i8 %.sroa.034.0.copyload, 4
  br i1 %i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.436.0.copyload, ptr noundef nonnull align 8 dereferenceable(64) %.8.val, i64 64, i1 false)
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1237, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.q:                                             ; preds = %bb.a
  %.sroa.029.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.k = icmp eq i8 %.sroa.029.0.copyload, 5
  br i1 %i.k, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.431.0.copyload = load ptr, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.431.0.copyload, ptr noundef nonnull align 8 dereferenceable(64) %.8.val, i64 64, i1 false)
  br label %bb.am

bb.s:                                             ; preds = %bb.q
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1253, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.t:                                             ; preds = %bb.a
  %.sroa.024.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.m = icmp eq i8 %.sroa.024.0.copyload, 6
  br i1 %i.m, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.426.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %.8.val, i64 200, i1 false)
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1269, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.w:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.o = icmp eq i8 %.sroa.019.0.copyload, 7
  br i1 %i.o, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %.8.val, i64 200, i1 false)
  br label %bb.am

bb.y:                                             ; preds = %bb.w
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1285, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.z:                                             ; preds = %bb.a
  %.sroa.014.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.q = icmp eq i8 %.sroa.014.0.copyload, 8
  br i1 %i.q, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.416.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %.8.val, i64 200, i1 false)
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1301, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.ac:                                            ; preds = %bb.a
  %.sroa.09.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.s = icmp eq i8 %.sroa.09.0.copyload, 9
  br i1 %i.s, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.411.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %.8.val, i64 200, i1 false)
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1317, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.af:                                            ; preds = %bb.a
  %.sroa.04.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.u = icmp eq i8 %.sroa.04.0.copyload, 10
  br i1 %i.u, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.46.0.copyload, ptr noundef nonnull align 4 dereferenceable(64) %.8.val, i64 64, i1 false)
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1333, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.ai:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %i.w = icmp eq i8 %.sroa.0.0.copyload, 12
  br i1 %i.w, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.41.0.copyload, ptr noundef nonnull align 8 dereferenceable(128) %.8.val, i64 128, i1 false)
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1372, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.al:                                            ; preds = %bb.a
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1402, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.am:                                            ; preds = %bb.a, %bb.a, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_last(i8 %.0.val, ptr %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef range(i32 0, 145) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i64], align 16              ; 4 uses
  switch i8 %.0.val, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.o
    i8 12, label %bb.m
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = add i64 %0, %i.c
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef %i.d, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = add i64 %0, %i.e
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef %i.f, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64
  %i.h = add i64 %0, %i.g                         ; 2 uses
  %add.overflow1 = icmp ult i64 %i.h, %0
  %3 = zext i1 %add.overflow1 to i64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 %i.h, i64 %3, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %2 to i64
  %i.j = add i64 %0, %i.i                         ; 2 uses
  %add.overflow = icmp ult i64 %i.j, %0
  %4 = zext i1 %add.overflow to i64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64 %i.j, i64 %4, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_Blake2s_update_last(i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %.8.val, i1 noundef zeroext false, i64 noundef %0, i32 noundef %2, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_Blake2b_update_last(i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.8.val, i1 noundef zeroext false, i64 %0, i64 0, i32 noundef %2, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 934, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Streaming_HMAC_free(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.val.i = load i8, ptr %.sroa.519.0.copyload, align 8
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %free_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit:                                       ; preds = %bb.a
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx20, align 8, !tbaa !25 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  %.sroa.1727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.519.0.copyload, i64 8
  %.sroa.1727.0.copyload.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i) #15
  tail call void @free(ptr noundef nonnull %.sroa.519.0.copyload) #15
  %.sroa.0.0.copyload.i9 = load i8, ptr %.sroa.5.0.copyload, align 8, !tbaa !18
  %switch.i10 = icmp ult i8 %.sroa.0.0.copyload.i9, 14
  br i1 %switch.i10, label %free_.exit13, label %bb.c

bb.c:                                             ; preds = %free_.exit
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit13:                                     ; preds = %free_.exit
  %.sroa.1727.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %.sroa.1727.0.copyload.i12 = load ptr, ptr %.sroa.1727.0..sroa_idx.i11, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i12) #15
  tail call void @free(ptr noundef nonnull %.sroa.5.0.copyload) #15
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #15
  tail call void @free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Streaming_HMAC_copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.065.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.065.sroa.4.0.copyload = load ptr, ptr %.sroa.065.sroa.4.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.065.sroa.5.0.copyload = load ptr, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !tbaa !19
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !21
  %.val.i = load i8, ptr %.sroa.065.sroa.4.0.copyload, align 8 ; 6 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.3.0.insert.ext.i = and i64 %.sroa.065.sroa.0.0.copyload, 4294967295
  %i.c = and i8 %.val.i, 14
  %switch = icmp eq i8 %i.c, 4
  br i1 %switch, label %block_len.exit84, label %switch.lookup

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %i.d = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %block_len.exit84

block_len.exit84:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, %switch.lookup
  %.0.i82 = phi i64 [ 128, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit ], [ %switch.load, %switch.lookup ]
  %i.e = tail call noalias ptr @calloc(i64 noundef %.0.i82, i64 noundef 1) #13 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %switch.lookup144

switch.lookup144:                                 ; preds = %block_len.exit84
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep145 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.g
  %switch.load146 = load i64, ptr %switch.gep145, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.466.0.copyload, i64 %switch.load146, i1 false)
  %i.h = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %switch.lookup144
  %i.j = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #15
  br label %.critedge

.critedge:                                        ; preds = %.thread, %switch.lookup144
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.copyload.val = load i8, ptr %.sroa.065.sroa.4.0.copyload, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %.sroa.065.sroa.4.0.copyload, i64 8
  %.sroa.3.0.copyload.val77 = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.3.0.copyload.val, ptr %.sroa.3.0.copyload.val77, ptr noundef nonnull %i.h)
  %.sroa.411.0.copyload.val = load i8, ptr %.sroa.065.sroa.5.0.copyload, align 8, !tbaa !18
  %i.m = getelementptr i8, ptr %.sroa.065.sroa.5.0.copyload, i64 8
  %.sroa.411.0.copyload.val76 = load ptr, ptr %i.m, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.411.0.copyload.val, ptr %.sroa.411.0.copyload.val76, ptr noundef nonnull %i.j)
  %i.n = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 7 uses
  %cond = icmp eq ptr %i.n, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.3.0.insert.ext.i, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.j, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.567.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i8, ptr %i.h, align 8, !tbaa !18
  %switch.i = icmp ult i8 %.sroa.0.0.copyload.i, 14
  br i1 %switch.i, label %free_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit:                                       ; preds = %bb.f
  %.sroa.1727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.1727.0.copyload.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i) #15
  tail call void @free(ptr noundef nonnull %i.h) #15
  %.sroa.0.0.copyload.i93 = load i8, ptr %i.j, align 8, !tbaa !18
  %switch.i94 = icmp ult i8 %.sroa.0.0.copyload.i93, 14
  br i1 %switch.i94, label %free_.exit97, label %bb.h

bb.h:                                             ; preds = %free_.exit
end_hunk_0
