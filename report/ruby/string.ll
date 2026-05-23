inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@rb_str_rpartition:bb.a
bb.i:                                             ; preds = %rb_str_sublen.exit, %bb.c
  %i.bp = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.bq = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.br = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.bp, ptr noundef readonly null, i64 noundef 0, ptr noundef nonnull %i.bq) ; 2 uses
  tail call void @rb_enc_copy(i64 noundef %i.br, i64 noundef %0) #28
  %i.bs = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.bt = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.bu = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.bs, ptr noundef readonly null, i64 noundef 0, ptr noundef nonnull %i.bt) ; 2 uses
  tail call void @rb_enc_copy(i64 noundef %i.bu, i64 noundef %0) #28
  %i.bv = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.bw = tail call fastcc i64 @str_duplicate(i64 noundef %i.bv, i64 noundef %0)
  %i.bx = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.br, i64 noundef %i.bu, i64 noundef %i.bw) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.bx, %bb.i ], [ %i.bo, %bb.h ]
  ret i64 %.0
}

declare i64 @rb_obj_encoding(i64 noundef) #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_force_encoding(i64 noundef returned %0, i64 noundef %1) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = and i64 %i.b, 575488
  %.not8.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i, label %str_modifiable.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not11.i = and i1 %i.d, %i.f
  %i.g = and i64 %i.b, 31
  %i.h = icmp eq i64 %i.g, 5
  %or.cond.i = and i1 %.not11.i, %i.h
  %i.i = and i64 %i.b, 49152
  %i.j = icmp ne i64 %i.i, 0
  %or.cond7.i = and i1 %i.j, %or.cond.i
  br i1 %or.cond7.i, label %bb.c, label %CHILLED_STRING_P.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @CHILLED_STRING_MUTATED(i64 noundef %0), !inline_history !91
  br label %CHILLED_STRING_P.exit.thread.i

CHILLED_STRING_P.exit.thread.i:                   ; preds = %bb.c, %bb.b
  tail call fastcc void @rb_check_lockedtmp(i64 noundef %0), !inline_history !91
  tail call fastcc void @rb_check_frozen_inline(i64 noundef %0) #34, !inline_history !91
  br label %str_modifiable.exit

str_modifiable.exit:                              ; preds = %bb.a, %CHILLED_STRING_P.exit.thread.i
  %i.k = tail call ptr @rb_to_encoding(i64 noundef %1) #28 ; 4 uses
  %i.l = tail call i32 @rb_enc_to_index(ptr noundef %i.k) #32 ; 2 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, 22
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i32 %i.p, 127
  br i1 %i.q, label %bb.d, label %RB_ENCODING_GET.exit

bb.d:                                             ; preds = %str_modifiable.exit
  %i.r = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %str_modifiable.exit, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.p, %str_modifiable.exit ]
  %i.s = icmp eq i32 %.0.i, %i.l
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %RB_ENCODING_GET.exit
  %i.t = tail call i64 @rb_enc_associate_index(i64 noundef %0, i32 noundef %i.l) #28 ; 0 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.v = and i64 %i.u, 3145728
  %i.w = icmp eq i64 %i.v, 1048576
  %i.x = icmp ne ptr %i.k, null
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.f, label %rb_enc_asciicompat.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.k, i64 20
  %.val.i = load i32, ptr %i.y, align 4, !tbaa !16
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.f
  %i.z = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.k) #32
  %.not3.i = icmp eq i32 %i.z, 0
  br i1 %.not3.i, label %bb.g, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.f, %rb_enc_asciicompat.exit, %bb.e
  %i.aa = and i64 %i.u, -3145729
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %rb_enc_asciicompat.exit, %RB_ENCODING_GET.exit, %rb_enc_asciicompat.exit.thread
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_b(i64 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = load i64, ptr @rb_cString, align 8, !tbaa !27 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = and i64 %i.d, 532676608
  %switch.i.i = icmp samesign ult i64 %i.i, 12582912
  br i1 %switch.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 22
  %i.l = and i32 %i.k, 127                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 127
  br i1 %i.m, label %bb.d, label %RB_ENCODING_GET.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  %i.o = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28
  %i.p = getelementptr i8, ptr %i.o, i64 20
  %.val = load i32, ptr %i.p, align 4, !tbaa !16
  %i.q = sext i32 %.val to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %RB_ENCODING_GET.exit
  %i.r = phi i64 [ %i.q, %RB_ENCODING_GET.exit ], [ 1, %bb.b ]
  %i.s = add i64 %i.h, 24
  %i.t = add i64 %i.s, %i.r
  %spec.store.select.i.i = tail call noundef range(i64 40, 0) i64 @llvm.umax.i64(i64 %i.t, i64 40)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  store volatile ptr %i.v, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.f, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i) #28 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr i8, ptr %i.x, i64 24
  store i8 0, ptr %i.z, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  store volatile ptr %i.ab, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..i.i13 = load volatile ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i13, i64 noundef %i.f, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.w, %bb.e ], [ %i.ac, %bb.f ] ; 3 uses
  %i.af = tail call fastcc i64 @str_replace_shared_without_enc(i64 noundef %.0, i64 noundef %0) ; 0 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = lshr i32 %i.ah, 22
  %i.aj = and i32 %i.ai, 127                      ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 127
  br i1 %i.ak, label %bb.h, label %get_encoding.exit

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.al, %bb.h ], [ %i.aj, %bb.g ]
  %i.am = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 20
  %.val.i = load i32, ptr %i.an, align 4, !tbaa !16
  %.not.i14 = icmp eq i32 %.val.i, 1
  br i1 %.not.i14, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %get_encoding.exit
  %i.ao = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.am) #32
  %.not3.i = icmp eq i32 %i.ao, 0
  br i1 %.not3.i, label %bb.i, label %rb_enc_asciicompat.exit.thread

bb.i:                                             ; preds = %rb_enc_asciicompat.exit
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !11
  %i.aq = trunc i64 %i.ap to i32
  %1 = inttoptr i64 %.0 to ptr                    ; 2 uses
  %2 = load i64, ptr %1, align 8, !tbaa !11
  %3 = and i64 %2, -3145729                       ; 3 uses
  %4 = and i32 %i.aq, 3145728
  %5 = sub i32 %4, 0                              ; 2 uses
  %6 = call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 12)
  switch i32 %6, label %default.unreachable [
    i32 1, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.k
    i32 0, label %rb_enc_asciicompat.exit.thread.sink.split
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = or disjoint i64 %3, 1048576
  br label %rb_enc_asciicompat.exit.thread.sink.split

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.as = or disjoint i64 %3, 2097152
  br label %rb_enc_asciicompat.exit.thread.sink.split

default.unreachable:                              ; preds = %bb.i
  unreachable

rb_enc_asciicompat.exit.thread.sink.split:        ; preds = %bb.i, %bb.k, %bb.j
  %.sink = phi i64 [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %3, %bb.i ]
  store i64 %.sink, ptr %1, align 8, !tbaa !11
  br label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %rb_enc_asciicompat.exit.thread.sink.split, %get_encoding.exit, %rb_enc_asciicompat.exit
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_str_valid_encoding_p(i64 noundef %0) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = and i32 %i.c, 3145728                    ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %rb_enc_str_coderange.exit

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.c, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.c, label %get_encoding.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11
  %i.l = and i64 %i.k, 8192
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.d, %get_encoding.exit.i
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %get_encoding.exit.i ]
  %i.p = getelementptr i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.o, i64 noundef %i.q, ptr noundef %i.j) ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11
  %i.t = and i64 %i.s, -3145729
  %i.u = zext nneg i32 %i.r to i64
  %i.v = or i64 %i.t, %i.u
  store i64 %i.v, ptr %i.a, align 8, !tbaa !11
  br label %rb_enc_str_coderange.exit

rb_enc_str_coderange.exit:                        ; preds = %bb.a, %enc_coderange_scan.exit.i
  %.0.i = phi i32 [ %i.r, %enc_coderange_scan.exit.i ], [ %i.d, %bb.a ]
  %.not = icmp eq i32 %.0.i, 3145728
  %i.w = select i1 %.not, i64 0, i64 20
  ret i64 %i.w
}

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_unicode_normalize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = load i64, ptr @id_normalize, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.b.i = load i1, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br i1 %.b.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_require(ptr noundef nonnull @.str.258) #28 ; 0 uses
  store i1 true, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %2, ptr %i.a, align 16, !tbaa !27
  %or.cond.not.i = icmp ult i32 %0, 2
  br i1 %or.cond.not.i, label %rb_check_arity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.c
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %unicode_normalize_common.exit, label %bb.e

bb.e:                                             ; preds = %rb_check_arity.exit.i
  %i.d = load i64, ptr %1, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !27
  br label %unicode_normalize_common.exit

unicode_normalize_common.exit:                    ; preds = %rb_check_arity.exit.i, %bb.e
  %i.f = load i64, ptr @mUnicodeNormalize, align 8, !tbaa !27
  %i.g = add nuw nsw i32 %0, 1
  %i.h = call i64 @rb_funcallv(i64 noundef %i.f, i64 noundef %i.b, i32 noundef %i.g, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_unicode_normalize_bang(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = load i64, ptr @id_normalize, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.b.i = load i1, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br i1 %.b.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_require(ptr noundef nonnull @.str.258) #28 ; 0 uses
  store i1 true, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %2, ptr %i.a, align 16, !tbaa !27
  %or.cond.not.i = icmp ult i32 %0, 2
  br i1 %or.cond.not.i, label %rb_check_arity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.c
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %unicode_normalize_common.exit, label %bb.e

bb.e:                                             ; preds = %rb_check_arity.exit.i
  %i.d = load i64, ptr %1, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !27
  br label %unicode_normalize_common.exit

unicode_normalize_common.exit:                    ; preds = %rb_check_arity.exit.i, %bb.e
  %i.f = load i64, ptr @mUnicodeNormalize, align 8, !tbaa !27
  %i.g = add nuw nsw i32 %0, 1
  %i.h = call i64 @rb_funcallv(i64 noundef %i.f, i64 noundef %i.b, i32 noundef %i.g, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.i = call i64 @rb_str_replace(i64 noundef %2, i64 noundef %i.h) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_unicode_normalized_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = load i64, ptr @id_normalized_p, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.b.i = load i1, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br i1 %.b.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_require(ptr noundef nonnull @.str.258) #28 ; 0 uses
  store i1 true, ptr @unicode_normalize_common.UnicodeNormalizeRequired, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %2, ptr %i.a, align 16, !tbaa !27
  %or.cond.not.i = icmp ult i32 %0, 2
  br i1 %or.cond.not.i, label %rb_check_arity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.c
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %unicode_normalize_common.exit, label %bb.e

bb.e:                                             ; preds = %rb_check_arity.exit.i
  %i.d = load i64, ptr %1, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !27
  br label %unicode_normalize_common.exit

unicode_normalize_common.exit:                    ; preds = %rb_check_arity.exit.i, %bb.e
  %i.f = load i64, ptr @mUnicodeNormalize, align 8, !tbaa !27
  %i.g = add nuw nsw i32 %0, 1
  %i.h = call i64 @rb_funcallv(i64 noundef %i.f, i64 noundef %i.b, i32 noundef %i.g, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.h
}

declare void @rb_define_hooked_variable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @rb_fs_setter(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit9.i

rbimpl_RB_TYPE_P_fastpath.exit9.i:                ; preds = %bb.b
end_hunk_0
begin_hunk_1_@rb_str_each_grapheme_cluster_size:bb.a
  %i.l = icmp eq i32 %i.k, 127
  br i1 %i.l, label %bb.b, label %get_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ %i.k, %bb.a ]
  %i.n = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 5 uses
  %i.o = tail call i32 @rb_enc_unicode_p(ptr noundef %i.n) #32
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %get_encoding.exit
  %i.p = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null) ; 3 uses
  %i.q = add i64 %i.p, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.q, -1
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl nsw i64 %i.p, 1
  %i.s = or disjoint i64 %i.r, 1
  br label %rb_str_length.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i64 @rb_int2big(i64 noundef %i.p) #28
  br label %rb_str_length.exit

bb.f:                                             ; preds = %get_encoding.exit
  %i.u = tail call i32 @rb_enc_to_index(ptr noundef %i.n) #32
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %get_cached_reg_grapheme_cluster.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @get_cached_reg_grapheme_cluster.reg_grapheme_cluster_utf8, align 8, !tbaa !255 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.h, label %get_cached_reg_grapheme_cluster.exit.thread42

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @__const.get_reg_grapheme_cluster.source_ascii, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.y = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !242
  %i.z = call i32 @onig_new(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.x, i32 noundef 0, ptr noundef %i.n, ptr noundef %i.y, ptr noundef nonnull %4) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %get_cached_reg_grapheme_cluster.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.aa = sext i32 %i.z to i64
  %i.ab = call i32 (ptr, i64, ...) @onig_error_code_to_str(ptr noundef nonnull %i.f, i64 noundef %i.aa, ptr noundef nonnull %4) #28 ; 0 uses
  call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.f) #30
  unreachable

get_cached_reg_grapheme_cluster.exit:             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !255 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  store ptr %i.ac, ptr @get_cached_reg_grapheme_cluster.reg_grapheme_cluster_utf8, align 8, !tbaa !255
  %.not31.not = icmp eq ptr %i.ac, null
  br i1 %.not31.not, label %get_cached_reg_grapheme_cluster.exit.thread, label %get_cached_reg_grapheme_cluster.exit.thread42

get_cached_reg_grapheme_cluster.exit.thread:      ; preds = %bb.f, %get_cached_reg_grapheme_cluster.exit
  %i.ad = call i32 @rb_enc_to_index(ptr noundef %i.n) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.get_reg_grapheme_cluster.source_ascii, i64 3, i1 false)
  %switch.tableidx = add i32 %i.ad, -3            ; 3 uses
  %i.ae = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ae, label %switch.lookup, label %bb.j

switch.lookup:                                    ; preds = %get_cached_reg_grapheme_cluster.exit.thread
  %i.af = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_str_each_grapheme_cluster_size, i64 %i.af
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep51 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_str_each_grapheme_cluster_size.10, i64 %i.ag
  %switch.load52 = load ptr, ptr %switch.gep51, align 8
  br label %bb.j

bb.j:                                             ; preds = %switch.lookup, %get_cached_reg_grapheme_cluster.exit.thread
  %.07.i = phi i64 [ 2, %get_cached_reg_grapheme_cluster.exit.thread ], [ %switch.load, %switch.lookup ]
  %.0.i33 = phi ptr [ %i.a, %get_cached_reg_grapheme_cluster.exit.thread ], [ %switch.load52, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ah = getelementptr i8, ptr %.0.i33, i64 %.07.i
  %i.ai = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !242
  %i.aj = call i32 @onig_new(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i33, ptr noundef %i.ah, i32 noundef 0, ptr noundef %i.n, ptr noundef %i.ai, ptr noundef nonnull %3) #28 ; 2 uses
  %.not.i34 = icmp eq i32 %i.aj, 0
  br i1 %.not.i34, label %get_reg_grapheme_cluster.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ak = sext i32 %i.aj to i64
  %i.al = call i32 (ptr, i64, ...) @onig_error_code_to_str(ptr noundef nonnull %i.c, i64 noundef %i.ak, ptr noundef nonnull %3) #28 ; 0 uses
  call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.c) #30
  unreachable

get_reg_grapheme_cluster.exit:                    ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %get_cached_reg_grapheme_cluster.exit.thread42

get_cached_reg_grapheme_cluster.exit.thread42:    ; preds = %bb.g, %get_reg_grapheme_cluster.exit, %get_cached_reg_grapheme_cluster.exit
  %.not31.not40 = phi i1 [ false, %get_cached_reg_grapheme_cluster.exit ], [ true, %get_reg_grapheme_cluster.exit ], [ false, %bb.g ]
  %.022 = phi ptr [ %i.ac, %get_cached_reg_grapheme_cluster.exit ], [ %i.am, %get_reg_grapheme_cluster.exit ], [ %i.w, %bb.g ] ; 2 uses
  %i.an = load i64, ptr %i.g, align 8, !tbaa !11
  %i.ao = and i64 %i.an, 8192
  %.not.i35 = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr i8, ptr %i.g, i64 24      ; 2 uses
  br i1 %.not.i35, label %RSTRING_END.exit, label %bb.l

bb.l:                                             ; preds = %get_cached_reg_grapheme_cluster.exit.thread42
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %get_cached_reg_grapheme_cluster.exit.thread42, %bb.l
  %i.ar = phi ptr [ %i.aq, %bb.l ], [ %i.ap, %get_cached_reg_grapheme_cluster.exit.thread42 ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.g, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %RSTRING_END.exit
  %.026 = phi ptr [ %i.ar, %RSTRING_END.exit ], [ %i.az, %bb.n ] ; 4 uses
  %.025 = phi i64 [ 0, %RSTRING_END.exit ], [ %i.ay, %bb.n ] ; 4 uses
  %i.av = icmp ult ptr %.026, %i.au
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = call i64 @onig_match(ptr noundef %.022, ptr noundef %.026, ptr noundef nonnull %i.au, ptr noundef %.026, ptr noundef null, i32 noundef 0) #28 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 1
  %i.ay = add i64 %.025, 1
  %i.az = getelementptr i8, ptr %.026, i64 %i.aw
  br i1 %i.ax, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not31.not40, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @onig_free(ptr noundef %.022) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = icmp ult i64 %.025, 4611686018427387904
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = shl nuw nsw i64 %.025, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %rb_str_length.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = call i64 @rb_ull2inum(i64 noundef %.025) #28
  br label %rb_str_length.exit

rb_str_length.exit:                               ; preds = %bb.s, %bb.r, %bb.e, %bb.d
  %.0 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.d ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ]
  ret i64 %.0
}

declare i64 @rb_require(ptr noundef) local_unnamed_addr #3

declare i64 @rb_sym_all_symbols() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind allocsize(1,2) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { "function-inline-cost-multiplier"="2" }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { cold nounwind }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!15, !13, i64 16}
!15 = !{!"RString", !12, i64 0, !13, i64 16, !9, i64 24}
!16 = !{!17, !8, i64 20}
!17 = !{!"OnigEncodingTypeST", !18, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !8, i64 128, !8, i64 132}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!24 = !{!"branch_weights", i32 1073205, i32 2146410443}
!25 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!26 = !{!12, !13, i64 8}
!27 = !{!13, !13, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"fstr_create_arg", !30, i64 0, !30, i64 1}
!30 = !{!"_Bool", !9, i64 0}
!31 = !{!29, !30, i64 1}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = distinct !{null}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{ptr @rb_str_new_frozen}
!36 = distinct !{null, ptr @rb_str_new_frozen}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS27rb_execution_context_struct", !18, i64 0}
!42 = !{!17, !19, i64 8}
!43 = !{!44, !18, i64 32}
!44 = !{!"RData", !12, i64 0, !18, i64 16, !18, i64 24, !18, i64 32}
!45 = !{!19, !19, i64 0}
!46 = distinct !{!46, !38}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 long", !18, i64 0}
!49 = !{i64 2156127293}
!50 = distinct !{null}
!51 = distinct !{null, null}
!52 = distinct !{null}
!53 = !{!"branch_weights", i32 2146410443, i32 1073205}
!54 = !{!"branch_weights", i32 -100663296, i32 2097152}
!55 = distinct !{null, null}
!56 = !{!17, !8, i64 16}
!57 = distinct !{!57, !38, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !38, !58, !59}
!61 = distinct !{!61, !38, !59, !58}
!62 = distinct !{!62, !38, !59, !58}
!63 = distinct !{!63, !38, !58, !59}
!64 = distinct !{!64, !38, !59, !58}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !38}
!70 = !{i64 2156167730}
!71 = !{i64 2156167895}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = !{i64 2156181108}
!78 = !{i64 2156182129}
!79 = distinct !{null}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = !{i64 2156182910}
!83 = distinct !{!83, !38, !58, !59}
!84 = distinct !{!84, !38, !59, !58}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38, !58, !59}
!88 = distinct !{!88, !38, !59, !58}
!89 = !{ptr @rb_check_frozen_inline}
!90 = !{!"branch_weights", i32 4001, i32 1}
!91 = !{ptr @str_modifiable}
!92 = distinct !{!92, !38}
!93 = !{!17, !18, i64 48}
!94 = distinct !{null}
!95 = distinct !{!95, !38}
!96 = !{i64 2156198350}
!97 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!98 = !{i64 2156198977}
!99 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = !{i64 2156201933}
!109 = distinct !{!109, !38}
!110 = !{!17, !18, i64 32}
!111 = distinct !{null, null}
!112 = !{!17, !18, i64 88}
!113 = distinct !{null, null}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"memcpy.inline: argument 0"}
!116 = distinct !{!116, !"memcpy.inline"}
!117 = distinct !{!117, !116, !"memcpy.inline: argument 1"}
!118 = !{!119, !121}
!119 = distinct !{!119, !120, !"memcpy.inline: argument 0"}
!120 = distinct !{!120, !"memcpy.inline"}
!121 = distinct !{!121, !120, !"memcpy.inline: argument 1"}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{null, null, null}
!125 = !{!17, !18, i64 40}
!126 = distinct !{null, null, null}
!127 = distinct !{null, null, null}
!128 = distinct !{!128, !38}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"memcpy.inline: argument 0"}
!131 = distinct !{!131, !"memcpy.inline"}
!132 = distinct !{!132, !131, !"memcpy.inline: argument 1"}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"memcpy.inline: argument 0"}
!135 = distinct !{!135, !"memcpy.inline"}
!136 = distinct !{!136, !135, !"memcpy.inline: argument 1"}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{ptr @rb_str_new_frozen, null}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{null}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{null}
!149 = distinct !{!149, !38}
!150 = !{!151, !13, i64 24}
!151 = !{!"RRegexp", !12, i64 0, !152, i64 16, !13, i64 24, !13, i64 32}
!152 = !{!"p1 _ZTS17re_pattern_buffer", !18, i64 0}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
end_hunk_1
