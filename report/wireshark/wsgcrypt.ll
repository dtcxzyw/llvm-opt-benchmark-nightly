Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wsgcrypt?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hpke_extract:bb.a
  %i.b = icmp ult i16 %switch.tableidx, 3
  br i1 %i.b, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.c = or disjoint i16 %switch.tableidx, 8
  %switch.offset = zext nneg i16 %i.c to i32
  %i.d = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef %switch.offset, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = zext i32 %2 to i64
  %i.g = call i32 @gcry_md_setkey(ptr noundef %i.e, ptr noundef %1, i64 noundef %i.f) ; 2 uses
  %.not18 = icmp eq i32 %i.g, 0
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not18, label %switch.lookup22, label %.sink.split

switch.lookup22:                                  ; preds = %bb.b
  call void @gcry_md_write(ptr noundef %i.h, ptr noundef @.str.9, i64 noundef 7)
  %i.i = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.i, ptr noundef %3, i64 noundef 10)
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call i64 @strlen(ptr noundef %4) #13
  call void @gcry_md_write(ptr noundef %i.j, ptr noundef %4, i64 noundef %i.k)
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = zext i32 %6 to i64
  call void @gcry_md_write(ptr noundef %i.l, ptr noundef %5, i64 noundef %i.m)
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call ptr @gcry_md_read(ptr noundef %i.n, i32 noundef 0)
  %switch.tableidx21 = add nsw i16 %0, -1
  %switch.idx.cast23 = zext i16 %switch.tableidx21 to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast23, 4
  %switch.offset24 = add nuw nsw i64 %switch.idx.mult, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %7, ptr noundef align 1 %i.o, i64 noundef %switch.offset24, i1 noundef false) #10
  %i.p = load ptr, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %switch.lookup22
  %.sink = phi ptr [ %i.p, %switch.lookup22 ], [ %i.h, %bb.b ]
  %.1.ph = phi i32 [ 0, %switch.lookup22 ], [ %i.g, %bb.b ]
  call void @gcry_md_close(ptr noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %switch.lookup
  %.1 = phi i32 [ 5, %bb.a ], [ %i.d, %switch.lookup ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define zeroext range(i16 0, 65) i16 @hpke_hkdf_len(i16 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i16 %0, 4
  %switch.cast = zext i16 %0 to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 4
  %switch.downshift = lshr i64 18014604670009344, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %.0 = select i1 %i.a, i16 %switch.masked, i16 0
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define zeroext range(i16 0, 33) i16 @hpke_aead_key_len(i16 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i16 %0, 4
  %switch.cast = zext i16 %0 to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 4
  %switch.downshift = lshr i64 9007336694743040, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %.0 = select i1 %i.a, i16 %switch.masked, i16 0
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef zeroext range(i16 0, 13) i16 @hpke_aead_nonce_len(i16 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %.off = add i16 %0, -1
  %switch = icmp ult i16 %.off, 3
  %. = select i1 %switch, i16 12, i16 0
  ret i16 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef zeroext range(i16 0, 17) i16 @hpke_aead_auth_tag_len(i16 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %.off = add i16 %0, -1
  %switch = icmp ult i16 %.off, 3
  %. = select i1 %switch, i16 16, i16 0
  ret i16 %.
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define void @hpke_suite_id(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  store i32 1162563656, ptr %3, align 1
  %i.a = lshr i16 %0, 8
  %i.b = trunc nuw i16 %i.a to i8
  %i.c = getelementptr i8, ptr %3, i64 4
  store i8 %i.b, ptr %i.c, align 1
  %i.d = trunc i16 %0 to i8
  %i.e = getelementptr i8, ptr %3, i64 5
  store i8 %i.d, ptr %i.e, align 1
  %i.f = lshr i16 %1, 8
  %i.g = trunc nuw i16 %i.f to i8
  %i.h = getelementptr i8, ptr %3, i64 6
  store i8 %i.g, ptr %i.h, align 1
  %i.i = trunc i16 %1 to i8
  %i.j = getelementptr i8, ptr %3, i64 7
  store i8 %i.i, ptr %i.j, align 1
  %i.k = lshr i16 %2, 8
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = getelementptr i8, ptr %3, i64 8
  store i8 %i.l, ptr %i.m, align 1
  %i.n = trunc i16 %2 to i8
  %i.o = getelementptr i8, ptr %3, i64 9
  store i8 %i.n, ptr %i.o, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @hpke_key_schedule(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
hpke_hkdf_len.exit:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [129 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 %7, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = call i32 @hpke_extract(i16 noundef zeroext %0, ptr noundef null, i32 noundef 0, ptr noundef %4, ptr noundef @.str.11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.a, label %bb.d

bb.a:                                             ; preds = %hpke_hkdf_len.exit
  %switch.tableidx = add i16 %0, -1               ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 3
  %switch.idx.cast = zext i16 %switch.tableidx to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 4
  %switch.offset = add nuw nsw i64 %switch.idx.mult, 32
  %.0.i = select i1 %i.e, i64 %switch.offset, i64 0
  %i.f = getelementptr i8, ptr %i.c, i64 %.0.i
  %i.g = call i32 @hpke_extract(i16 noundef zeroext %0, ptr noundef null, i32 noundef 0, ptr noundef %4, ptr noundef @.str.12, ptr noundef %5, i32 noundef %6, ptr noundef %i.f) ; 2 uses
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @hpke_extract(i16 noundef zeroext %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef @.str.13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %hpke_aead_key_len.exit, label %bb.d

hpke_aead_key_len.exit:                           ; preds = %bb.b
  %i.i = icmp ult i16 %1, 4
  %switch.cast = zext i16 %1 to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 4
  %switch.downshift = lshr i64 9007336694743040, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %.0.i37 = select i1 %i.i, i16 %switch.masked, i16 0
  %i.j = call fastcc i32 @hpke_expand(i16 noundef zeroext %0, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef @.str.14, ptr noundef nonnull %i.b, ptr noundef %8, i16 noundef zeroext %.0.i37) ; 2 uses
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.c, label %bb.d

bb.c:                                             ; preds = %hpke_aead_key_len.exit
  %.off.i = add i16 %1, -1
  %switch.i = icmp ult i16 %.off.i, 3
  %..i = select i1 %switch.i, i16 12, i16 0
  %i.k = call fastcc i32 @hpke_expand(i16 noundef zeroext %0, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef @.str.15, ptr noundef nonnull %i.b, ptr noundef %9, i16 noundef zeroext %..i)
  br label %bb.d

bb.d:                                             ; preds = %hpke_aead_key_len.exit, %bb.b, %bb.a, %hpke_hkdf_len.exit, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.d, %hpke_hkdf_len.exit ], [ %i.g, %bb.a ], [ %i.h, %bb.b ], [ %i.j, %hpke_aead_key_len.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @hpke_expand(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef zeroext range(i16 0, 33) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = tail call ptr @g_byte_array_new()        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = shl nuw nsw i16 %6, 8
  store i16 %i.c, ptr %i.a, align 2
  %switch.tableidx = add i16 %0, -1               ; 2 uses
  %i.d = icmp ult i16 %switch.tableidx, 3
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i16 %6 to i32
  %i.f = or disjoint i16 %switch.tableidx, 8
  %switch.offset = zext nneg i16 %i.f to i32
  %i.g = call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 2) ; 0 uses
  %i.h = call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef @.str.9, i32 noundef 7) ; 0 uses
  %i.i = call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef %2, i32 noundef 10) ; 0 uses
  %i.j = call i64 @strlen(ptr noundef %3) #13
  %i.k = trunc i64 %i.j to i32
  %i.l = call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef %3, i32 noundef %i.k) ; 0 uses
  %switch.tableidx30 = add nsw i16 %0, -1         ; 2 uses
  %switch.idx.cast32 = zext i16 %switch.tableidx30 to i32
  %switch.idx.mult.a = shl nuw nsw i32 %switch.idx.cast32, 5
  %switch.offset33 = add nuw nsw i32 %switch.idx.mult.a, 65
  %switch.idx.cast34 = zext i16 %switch.tableidx30 to i32
  %switch.idx.mult35 = shl nuw nsw i32 %switch.idx.cast34, 4
  %switch.offset36 = add nuw nsw i32 %switch.idx.mult35, 32
  %7 = call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef %4, i32 noundef %switch.offset33) ; 0 uses
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = call i32 @hkdf_expand(i32 noundef %switch.offset, ptr noundef %1, i32 noundef %switch.offset36, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %5, i32 noundef %i.e)
  %i.q = call ptr @g_byte_array_free(ptr noundef %i.b, i32 noundef 1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.022 = phi i32 [ %i.p, %switch.lookup ], [ 5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.022
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @hpke_setup_aead(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i16 %1, label %bb.f [
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @gcry_cipher_open(ptr noundef %0, i32 noundef 7, i32 noundef 9, i32 noundef 0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @gcry_cipher_open(ptr noundef %0, i32 noundef 9, i32 noundef 9, i32 noundef 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @gcry_cipher_open(ptr noundef %0, i32 noundef 316, i32 noundef 10, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %hpke_aead_key_len.exit, label %bb.f

hpke_aead_key_len.exit:                           ; preds = %bb.e
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq i16 %1, 1
  %spec.select = select i1 %i.e, i64 16, i64 32
  %i.f = tail call i32 @gcry_cipher_setkey(ptr noundef %i.d, ptr noundef %2, i64 noundef %spec.select)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %hpke_aead_key_len.exit
  %.09 = phi i32 [ %i.f, %hpke_aead_key_len.exit ], [ 12, %bb.a ], [ %.0, %bb.e ]
  ret i32 %.09
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @hpke_set_nonce(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
.preheader:
  %i.a = tail call noalias ptr @wmem_alloc0(ptr noundef null, i64 noundef %3) #12 ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 %3
  %i.c = getelementptr i8, ptr %i.b, i64 -8
  %i.d = bitcast i64 %1 to <8 x i8>
  %i.e = shufflevector <8 x i8> %i.d, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.e, ptr %i.c, align 1
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %3, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %wide.load = load <16 x i8>, ptr %i.g, align 1
  %wide.load25 = load <16 x i8>, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.a, i64 %index   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %wide.load26 = load <16 x i8>, ptr %i.i, align 1
  %wide.load27 = load <16 x i8>, ptr %i.j, align 1
  %i.k = xor <16 x i8> %wide.load26, %wide.load
  %i.l = xor <16 x i8> %wide.load27, %wide.load25
  store <16 x i8> %i.k, ptr %i.i, align 1
  store <16 x i8> %i.l, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr i8, ptr %2, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %i.a, i64 %index29 ; 2 uses
  %wide.load31 = load <4 x i8>, ptr %i.o, align 1
  %i.p = xor <4 x i8> %wide.load31, %wide.load30
  store <4 x i8> %i.p, ptr %i.o, align 1
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %3, %n.vec28
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.123.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.123 = phi i64 [ %i.w, %.lr.ph ], [ %.123.ph, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr i8, ptr %2, i64 %.123
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %i.a, i64 %.123    ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = xor i8 %i.u, %i.s
  store i8 %i.v, ptr %i.t, align 1
  %i.w = add nuw i64 %.123, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.x = tail call i32 @gcry_cipher_setiv(ptr noundef %0, ptr noundef %i.a, i64 noundef %3)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.a)
  ret i32 %i.x
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setiv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_new() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }
attributes #12 = { allocsize(1) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
