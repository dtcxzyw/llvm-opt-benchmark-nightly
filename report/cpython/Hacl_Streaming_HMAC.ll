inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
    i8 7, label %bb.ah
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 10, label %alg_of_impl.exit378.thread
    i8 11, label %alg_of_impl.exit378.thread
    i8 12, label %block_len.exit381
    i8 13, label %block_len.exit381
  ]

bb.ag:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.ah:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.ai:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.aj:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

alg_of_impl.exit378.thread:                       ; preds = %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375
  br label %block_len.exit381

block_len.exit381:                                ; preds = %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375.thread939, %bb.aj, %block_len.exit375.thread935, %bb.ai, %block_len.exit375.thread931, %bb.ah, %bb.ag, %block_len.exit375.thread927, %block_len.exit375.thread923, %block_len.exit375.thread, %alg_of_impl.exit378.thread
  %i.ew = phi i32 [ %i.ev, %alg_of_impl.exit378.thread ], [ %i.ev, %bb.ai ], [ %i.ev, %bb.ah ], [ %i.er, %block_len.exit375.thread927 ], [ %i.ev, %block_len.exit375 ], [ %i.eq, %block_len.exit375.thread923 ], [ %i.ep, %block_len.exit375.thread ], [ %i.ev, %block_len.exit375 ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ag ], [ %i.es, %block_len.exit375.thread931 ], [ %i.et, %block_len.exit375.thread935 ], [ %i.eu, %block_len.exit375.thread939 ], [ %i.ev, %block_len.exit375 ], [ %i.ev, %block_len.exit375 ]
  %.0.i379 = phi i32 [ 64, %alg_of_impl.exit378.thread ], [ 104, %bb.ai ], [ 136, %bb.ah ], [ 144, %block_len.exit375.thread927 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375.thread923 ], [ 128, %block_len.exit375.thread ], [ 128, %block_len.exit375 ], [ 72, %bb.aj ], [ 144, %bb.ag ], [ 136, %block_len.exit375.thread931 ], [ 104, %block_len.exit375.thread935 ], [ 72, %block_len.exit375.thread939 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375 ]
  %i.ex = mul i32 %.0.i379, %i.ew                 ; 3 uses
  %i.ey = sub i32 %i.eb, %i.ex
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr i8, ptr %i.cj, i64 %i.ez
  %i.fb = extractelement <2 x ptr> %i.dk, i64 0   ; 2 uses
  %.sroa.439.0.copyload.val = load i8, ptr %i.fb, align 8, !tbaa !18
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
  %.sroa.439.0.copyload.val202 = load ptr, ptr %i.fc, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val, ptr %.sroa.439.0.copyload.val202, i64 noundef %i.dj, ptr noundef %i.cj, i32 noundef %i.ex)
  %i.fd = zext i32 %i.ey to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload644667, ptr align 1 %i.fa, i64 %i.fd, i1 false)
  %i.fe = add i64 %i.dj, %i.ec
  store i64 %.sroa.0.0.copyload728779, ptr %0, align 8
  store <2 x ptr> %i.dk, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.fe, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ak

bb.ak:                                            ; preds = %block_len.exit243, %block_len.exit381, %block_len.exit303, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %.0 = phi i8 [ 3, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit ], [ 0, %block_len.exit303 ], [ 0, %block_len.exit381 ], [ 0, %block_len.exit243 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_multi(i8 %.0.val, ptr %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
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
  %i.c = lshr i32 %2, 6
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.c) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %2, 6
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.d) #15
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.e = and i32 %2, -64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %i.e, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.f = and i32 %2, -64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %i.f, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.g = and i32 %2, -128
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %i.g, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.h = and i32 %2, -128
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef %i.h, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.i = udiv i32 %2, 144
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.i) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.j = udiv i32 %2, 136
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.j) #15
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.k = udiv i32 %2, 104
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.k) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.l = udiv i32 %2, 72
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.l) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.m = lshr i32 %2, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.n = and i32 %2, -64
  call void @_Py_LibHacl_Hacl_Hash_Blake2s_update_multi(i32 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.o = lshr i32 %2, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.p = and i32 %2, -128
  call void @_Py_LibHacl_Hacl_Hash_Blake2b_update_multi(i32 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef %.8.val, i64 %0, i64 0, ptr noundef %1, i32 noundef %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 810, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 5) i8 @_Py_LibHacl_Hacl_Streaming_HMAC_digest(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5142.0.copyload = load ptr, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.val.i = load i8, ptr %.sroa.5142.0.copyload, align 8 ; 7 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.570.0.copyload = load ptr, ptr %.sroa.6143.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.671.0.copyload = load ptr, ptr %.sroa.671.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.772.0.copyload = load i64, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !21 ; 4 uses
  %i.c = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = urem i64 %.sroa.772.0.copyload, %switch.load
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.772.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e
  %i.g = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond, label %switch.lookup, label %switch.lookup242

default.unreachable239:                           ; preds = %impl_of_state.exit.i
  unreachable

switch.lookup242:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %switch.gep243 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.g
  %switch.load244 = load i64, ptr %switch.gep243, align 8
  %i.h = urem i64 %.sroa.772.0.copyload, %switch.load244
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %block_len.exit103

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %switch.gep240 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.init0, i64 %i.g
  %switch.load241 = load i32, ptr %switch.gep240, align 4
  br label %block_len.exit103

block_len.exit103:                                ; preds = %switch.lookup, %switch.lookup242
  %.086 = phi i32 [ %i.i, %switch.lookup242 ], [ %switch.load241, %switch.lookup ] ; 4 uses
  %i.j = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %block_len.exit103
  %i.l = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge.sink.split, label %switch.lookup245

switch.lookup245:                                 ; preds = %bb.c
  %.sroa.469.0.copyload.val = load i8, ptr %.sroa.5142.0.copyload, align 8, !tbaa !18
  %i.n = getelementptr i8, ptr %.sroa.5142.0.copyload, i64 8
  %.sroa.469.0.copyload.val93 = load ptr, ptr %i.n, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.469.0.copyload.val, ptr %.sroa.469.0.copyload.val93, ptr noundef nonnull %i.j)
  %.sroa.570.0.copyload.val = load i8, ptr %.sroa.570.0.copyload, align 8, !tbaa !18
  %i.o = getelementptr i8, ptr %.sroa.570.0.copyload, i64 8
  %.sroa.570.0.copyload.val92 = load ptr, ptr %i.o, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.570.0.copyload.val, ptr %.sroa.570.0.copyload.val92, ptr noundef nonnull %i.l)
  %i.p = zext nneg i32 %.086 to i64               ; 2 uses
  %i.q = sub i64 %.sroa.772.0.copyload, %i.p      ; 2 uses
  %i.r = zext nneg i8 %.val.i to i64
  %switch.gep246 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_digest.27, i64 %i.r
  %switch.load247 = load i8, ptr %switch.gep246, align 1
  %.lhs.trunc = trunc nuw i32 %.086 to i8         ; 2 uses
  %i.s = urem i8 %.lhs.trunc, %switch.load247
  %i.t = icmp eq i8 %i.s, 0
  %i.u = icmp ne i32 %.086, 0
  %or.cond3 = and i1 %i.u, %i.t
  %i.v = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond3, label %switch.lookup248, label %switch.lookup251

switch.lookup251:                                 ; preds = %switch.lookup245
  %switch.gep252 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_digest.27, i64 %i.v
  %switch.load253 = load i8, ptr %switch.gep252, align 1
  %i.w = urem i8 %.lhs.trunc, %switch.load253
  %i.x = zext i8 %i.w to i64
  br label %block_len.exit123

switch.lookup248:                                 ; preds = %switch.lookup245
  %switch.gep249 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.v
  %switch.load250 = load i64, ptr %switch.gep249, align 8
  br label %block_len.exit123

block_len.exit123:                                ; preds = %switch.lookup248, %switch.lookup251
  %.087 = phi i64 [ %i.x, %switch.lookup251 ], [ %switch.load250, %switch.lookup248 ]
  %i.y = getelementptr i8, ptr %.sroa.671.0.copyload, i64 %i.p
  %i.z = sub nsw i64 0, %.087
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %.sroa.11.1.val = load i8, ptr %i.j, align 8, !tbaa !18 ; 6 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 8
  %.sroa.11.1.val91 = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 13 uses
  tail call fastcc void @update_multi(i8 %.sroa.11.1.val, ptr %.sroa.11.1.val91, i64 noundef %i.q, ptr noundef %.sroa.671.0.copyload, i32 noundef 0)
  tail call fastcc void @update_last(i8 %.sroa.11.1.val, ptr %.sroa.11.1.val91, i64 noundef %i.q, ptr noundef %i.aa, i32 noundef %.086)
  %switch.i.i.i131 = icmp ult i8 %.sroa.11.1.val, 14
  br i1 %switch.i.i.i131, label %impl_of_state.exit.i, label %bb.d

bb.d:                                             ; preds = %block_len.exit123
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

impl_of_state.exit.i:                             ; preds = %block_len.exit123
  switch i8 %.sroa.11.1.val, label %default.unreachable239 [
    i8 0, label %block_len.exit.i.thread216
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %block_len.exit.thread.i
    i8 7, label %block_len.exit.thread26.i
    i8 8, label %block_len.exit.thread29.i
    i8 9, label %block_len.exit.thread32.i
    i8 10, label %bb.g
    i8 11, label %bb.g
    i8 12, label %bb.i
    i8 13, label %bb.i
  ]

block_len.exit.i.thread216:                       ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 0, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

block_len.exit.thread.i:                          ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.1.val91, i64 28, i1 false)
  br label %free_.exit.a

block_len.exit.thread26.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.1.val91, i64 32, i1 false)
  br label %free_.exit.a

block_len.exit.thread29.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.1.val91, i64 48, i1 false)
  br label %free_.exit.a

block_len.exit.thread32.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.1.val91, i64 64, i1 false)
  br label %free_.exit.a

bb.e:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 1, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

bb.f:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 2, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

bb.g:                                             ; preds = %impl_of_state.exit.i, %impl_of_state.exit.i, %impl_of_state.exit.i
  tail call fastcc void @finish(i8 %.sroa.11.1.val, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

bb.h:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 4, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

bb.i:                                             ; preds = %impl_of_state.exit.i, %impl_of_state.exit.i, %impl_of_state.exit.i
  tail call fastcc void @finish(i8 %.sroa.11.1.val, ptr %.sroa.11.1.val91, ptr noundef %1)
  br label %free_.exit.a

free_.exit.a:                                     ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %block_len.exit.thread32.i, %block_len.exit.thread29.i, %block_len.exit.thread26.i, %block_len.exit.thread.i, %block_len.exit.i.thread216
  %i.ae = phi i64 [ 64, %block_len.exit.i.thread216 ], [ 64, %bb.e ], [ 128, %bb.h ], [ 64, %bb.f ], [ 64, %bb.g ], [ 144, %block_len.exit.thread.i ], [ 136, %block_len.exit.thread26.i ], [ 104, %block_len.exit.thread29.i ], [ 72, %block_len.exit.thread32.i ], [ 128, %bb.i ]
  %.0.i16.i = phi i32 [ 16, %block_len.exit.i.thread216 ], [ 20, %bb.e ], [ 48, %bb.h ], [ 28, %bb.f ], [ 32, %bb.g ], [ 28, %block_len.exit.thread.i ], [ 32, %block_len.exit.thread26.i ], [ 48, %block_len.exit.thread29.i ], [ 64, %block_len.exit.thread32.i ], [ 64, %bb.i ]
  %.val9.i = load i8, ptr %i.l, align 8, !tbaa !18 ; 3 uses
  %i.af = getelementptr i8, ptr %i.l, i64 8
  %.val10.i = load ptr, ptr %i.af, align 8, !tbaa !18 ; 3 uses
  tail call fastcc void @update_last(i8 %.val9.i, ptr %.val10.i, i64 noundef %i.ae, ptr noundef %1, i32 noundef %.0.i16.i)
  tail call fastcc void @finish(i8 %.val9.i, ptr %.val10.i, ptr noundef %1)
  tail call void @free(ptr noundef %.sroa.11.1.val91) #15
  tail call void @free(ptr noundef nonnull %i.j) #15
  %switch.i133.a = icmp ult i8 %.val9.i, 14
  br i1 %switch.i133.a, label %free_.exit136, label %bb.j

bb.j:                                             ; preds = %free_.exit.a
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit136:                                    ; preds = %free_.exit.a
  tail call void @free(ptr noundef %.val10.i) #15
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.c, %free_.exit136
  %.sink = phi ptr [ %i.l, %free_.exit136 ], [ %i.j, %bb.c ]
  %.0.ph = phi i8 [ 0, %free_.exit136 ], [ 4, %bb.c ]
  tail call void @free(ptr noundef nonnull %.sink) #15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %block_len.exit103
  %.0 = phi i8 [ 4, %block_len.exit103 ], [ %.0.ph, %.critedge.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @malloc_(i8 noundef zeroext %0) unnamed_addr #4 {
bb.a:
  switch i8 %0, label %bb.az [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.j
    i8 3, label %bb.n
    i8 4, label %bb.r
    i8 5, label %bb.v
    i8 6, label %bb.z
    i8 7, label %bb.ad
    i8 8, label %bb.ah
    i8 9, label %bb.al
    i8 10, label %bb.ap
    i8 11, label %bb.at
    i8 12, label %bb.au
    i8 13, label %bb.ay
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %cond = icmp eq ptr %i.c, null
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr %i.a, ptr %.sroa.3120.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.ba

bb.f:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(20) ptr @calloc(i64 noundef 5, i64 noundef 4) #13 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond188 = icmp eq ptr %i.f, null
  br i1 %cond188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2108.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !18
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.ba

bb.j:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #13 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ba, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond189 = icmp eq ptr %i.i, null
  br i1 %cond189, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.297.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 2, ptr %i.i, align 8, !tbaa !18
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %.sroa.398.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %bb.ba

bb.n:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #13 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ba, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond190 = icmp eq ptr %i.l, null
  br i1 %cond190, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.286.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 3, ptr %i.l, align 8, !tbaa !18
  %.sroa.387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %.sroa.387.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.q:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.j) #15
  br label %bb.ba

bb.r:                                             ; preds = %bb.a
  %i.m = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #13 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.ba, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond191 = icmp eq ptr %i.o, null
  br i1 %cond191, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.275.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 4, ptr %i.o, align 8, !tbaa !18
  %.sroa.376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %.sroa.376.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.u:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.m) #15
  br label %bb.ba

bb.v:                                             ; preds = %bb.a
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #13 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.ba, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond192 = icmp eq ptr %i.r, null
  br i1 %cond192, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.264.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 5, ptr %i.r, align 8, !tbaa !18
  %.sroa.365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %.sroa.365.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.y:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.p) #15
  br label %bb.ba

bb.z:                                             ; preds = %bb.a
  %i.s = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #13 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.ba, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond193 = icmp eq ptr %i.u, null
  br i1 %cond193, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.253.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 6, ptr %i.u, align 8, !tbaa !18
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %.sroa.354.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.ac:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.s) #15
  br label %bb.ba

bb.ad:                                            ; preds = %bb.a
  %i.v = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #13 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.ba, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond194 = icmp eq ptr %i.x, null
  br i1 %cond194, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.242.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 7, ptr %i.x, align 8, !tbaa !18
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %.sroa.343.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.v) #15
  br label %bb.ba

bb.ah:                                            ; preds = %bb.a
  %i.y = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #13 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.ba, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond195 = icmp eq ptr %i.aa, null
end_hunk_0
begin_hunk_1_@copy:bb.a
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
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %0, %i.i
  %i.k = lshr i64 %i.j, 63
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 %i.h, i64 %i.k, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64
  %i.m = add i64 %0, %i.l                         ; 2 uses
  %i.n = xor i64 %i.m, -1
  %i.o = and i64 %0, %i.n
  %i.p = lshr i64 %i.o, 63
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64 %i.m, i64 %i.p, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
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
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 934, ptr noundef nonnull @.str.2) #11 ; 0 uses
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
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit97:                                     ; preds = %free_.exit
  %.sroa.1727.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1727.0.copyload.i96 = load ptr, ptr %.sroa.1727.0..sroa_idx.i95, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i96) #15
  tail call void @free(ptr noundef nonnull %i.j) #15
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.critedge, %free_.exit97, %block_len.exit84
  %.3 = phi ptr [ null, %block_len.exit84 ], [ null, %.critedge ], [ null, %free_.exit97 ], [ %i.n, %bb.e ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @init0(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 30 uses
  %i.b = alloca [168 x i8], align 16              ; 4 uses
  %i.c = alloca [168 x i8], align 16              ; 5 uses
  %i.d = load i32, ptr %2, align 8, !tbaa !17     ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 3 uses
  %.val35 = load i8, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call fastcc void @init(i8 %.val35, ptr %.val36)
  %.val33 = load i8, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val34 = load ptr, ptr %i.j, align 8, !tbaa !18
  tail call fastcc void @init(i8 %.val33, ptr %.val34)
  %.val = load i8, ptr %i.f, align 8              ; 6 uses
  %switch.i.i = icmp ult i8 %.val, 14
  br i1 %switch.i.i, label %impl_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

impl_of_state.exit:                               ; preds = %bb.a
  switch i8 %.val, label %default.unreachable69 [
    i8 0, label %alg_of_impl.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %alg_of_impl.exit.thread51
    i8 5, label %bb.f
    i8 6, label %alg_of_impl.exit.thread54
    i8 7, label %alg_of_impl.exit.thread56
    i8 8, label %alg_of_impl.exit.thread59
    i8 9, label %alg_of_impl.exit.thread62
    i8 10, label %alg_of_impl.exit
    i8 11, label %alg_of_impl.exit
    i8 12, label %bb.g
    i8 13, label %bb.g
  ]

bb.c:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.d:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.e:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.f:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread51

alg_of_impl.exit.thread54:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit.thread56:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
end_hunk_1
