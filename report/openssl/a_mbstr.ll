Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_mbstr?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@ASN1_mbstring_ncopy:bb.a
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not96.not.not.not.not.not, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void @ASN1_STRING_free(ptr noundef nonnull %.069) #6
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  store i32 %i.bc, ptr %.069, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.069, i64 8
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !22
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !16
  %i.bg = call fastcc i32 @traverse_string(ptr noundef %1, i32 noundef %.175, i32 noundef %3, ptr noundef nonnull %.068, ptr noundef %i.d) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.c, %bb.bd, %bb.be, %bb.ba, %bb.bb, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.al, %bb.ae, %bb.bf, %bb.ao, %bb.ai, %bb.x, %bb.v, %bb.t, %bb.r, %in_utf8.exit.thread, %bb.m, %bb.j, %bb.g
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %bb.r ], [ -1, %bb.j ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.x ], [ %.072, %bb.ae ], [ -1, %bb.ao ], [ -1, %bb.ba ], [ %.072, %bb.bf ], [ %.072, %bb.al ], [ -1, %bb.as ], [ -1, %bb.aw ], [ -1, %bb.ai ], [ -1, %bb.c ], [ -1, %bb.m ], [ -1, %in_utf8.exit.thread ], [ -1, %bb.at ], [ -1, %bb.ax ], [ -1, %bb.bb ], [ -1, %bb.be ], [ -1, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @traverse_string(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not34 = icmp eq i32 %1, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not33 = icmp eq ptr %3, null                  ; 4 uses
  switch i32 %2, label %.lr.ph.split [
    i32 4097, label %.lr.ph.split.us
    i32 4098, label %.lr.ph.split.us42
    i32 4100, label %.lr.ph.split.us52
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not33, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.b
  %.02636.us = phi ptr [ %i.g, %bb.b ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.02735.us = phi i32 [ %i.f, %bb.b ], [ %1, %.lr.ph.split.us ]
  %i.b = load i8, ptr %.02636.us, align 1, !tbaa !16
  %i.c = zext i8 %i.b to i64
  %i.d = tail call i32 %3(i64 noundef %i.c, ptr noundef nonnull %4) #6 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.f = add nsw i32 %.02735.us, -1               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02636.us, i64 1
  %.not.us = icmp eq i32 %i.f, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !0

.lr.ph.split.us42:                                ; preds = %.lr.ph
  br i1 %.not33, label %._crit_edge, label %.lr.ph.split.us42.split

.lr.ph.split.us42.split:                          ; preds = %.lr.ph.split.us42, %bb.c
  %.02636.us43 = phi ptr [ %i.r, %bb.c ], [ %0, %.lr.ph.split.us42 ] ; 3 uses
  %.02735.us44 = phi i32 [ %i.q, %bb.c ], [ %1, %.lr.ph.split.us42 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.02636.us43, i64 1
  %i.i = load i8, ptr %.02636.us43, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 8
  %i.l = load i8, ptr %i.h, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.k, %i.m
  %i.o = tail call i32 %3(i64 noundef %i.n, ptr noundef nonnull %4) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us42.split
  %i.q = add nsw i32 %.02735.us44, -2             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02636.us43, i64 2
  %.not.us47 = icmp eq i32 %i.q, 0
  br i1 %.not.us47, label %._crit_edge, label %.lr.ph.split.us42.split, !llvm.loop !0

.lr.ph.split.us52:                                ; preds = %.lr.ph, %bb.e
  %.02636.us53 = phi ptr [ %i.s, %bb.e ], [ %0, %.lr.ph ] ; 2 uses
  %.02735.us54 = phi i32 [ %i.t, %bb.e ], [ %1, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %.02636.us53, i64 4
  %i.t = add nsw i32 %.02735.us54, -4             ; 2 uses
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us52
  %i.u = load i32, ptr %.02636.us53, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = zext i32 %i.v to i64
  %i.x = tail call i32 %3(i64 noundef %i.w, ptr noundef nonnull %4) #6 ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us52
  %.not.us57 = icmp eq i32 %i.t, 0
  br i1 %.not.us57, label %._crit_edge, label %.lr.ph.split.us52, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not33, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.f
  %.02636.us62 = phi ptr [ %i.ad, %bb.f ], [ %0, %.lr.ph.split ] ; 2 uses
  %.02735.us63 = phi i32 [ %i.ab, %bb.f ], [ %1, %.lr.ph.split ] ; 2 uses
  %i.z = call i32 @UTF8_getc(ptr noundef %.02636.us62, i32 noundef %.02735.us63, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.ab = sub nsw i32 %.02735.us63, %i.z          ; 2 uses
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.02636.us62, i64 %i.ac
  %.not.us64 = icmp eq i32 %i.ab, 0
  br i1 %.not.us64, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !0

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.h
  %.02636 = phi ptr [ %i.ak, %bb.h ], [ %0, %.lr.ph.split ] ; 2 uses
  %.02735 = phi i32 [ %i.al, %bb.h ], [ %1, %.lr.ph.split ] ; 2 uses
  %i.ae = call i32 @UTF8_getc(ptr noundef %.02636, i32 noundef %.02735, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ah = call i32 %3(i64 noundef %i.ag, ptr noundef nonnull %4) #6 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.02636, i64 %i.aj
  %i.al = sub nsw i32 %.02735, %i.ae              ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %bb.e, %.lr.ph.split.us42.split, %bb.c, %.lr.ph.split.us.split, %bb.b, %.lr.ph.split.split, %bb.g, %bb.h, %.lr.ph.split.split.us, %bb.f, %.lr.ph.split.us42, %.lr.ph.split.us, %bb.a
  %.0 = phi i32 [ %i.ah, %bb.g ], [ 1, %.lr.ph.split.us42 ], [ 1, %bb.a ], [ 1, %bb.b ], [ %i.o, %.lr.ph.split.us42.split ], [ 1, %bb.f ], [ 1, %.lr.ph.split.us ], [ -1, %.lr.ph.split.split.us ], [ 1, %bb.h ], [ -1, %.lr.ph.split.split ], [ %i.d, %.lr.ph.split.us.split ], [ 1, %bb.c ], [ %i.x, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @type_str(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %0, i64 2147483647)
  %i.c = trunc nuw nsw i64 %i.b to i32            ; 2 uses
  %i.d = and i64 %i.a, 10519                      ; 3 uses
  %.not = icmp eq i64 %i.d, %i.a
  %i.e = or i64 %i.d, 8192
  %spec.select = select i1 %.not, i64 %i.d, i64 %i.e ; 4 uses
  %i.f = and i64 %spec.select, 1
  %.not38 = icmp eq i64 %i.f, 0
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ossl_isdigit(i32 noundef %i.c) #6
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq i64 %0, 32
  %or.cond = or i1 %i.i, %i.h
  %i.j = and i64 %spec.select, 10518
  %spec.select45 = select i1 %or.cond, i64 %spec.select, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select45, %bb.b ], [ %spec.select, %bb.a ] ; 4 uses
  %i.k = and i64 %.1, 2
  %.not39 = icmp eq i64 %i.k, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @ossl_ctype_check(i32 noundef %i.c, i32 noundef 2048) #6
  %.not40 = icmp eq i32 %i.l, 0
  %i.m = and i64 %.1, -3
  %spec.select46 = select i1 %.not40, i64 %i.m, i64 %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i64 [ %spec.select46, %bb.d ], [ %.1, %bb.c ] ; 3 uses
  %i.n = icmp ult i64 %0, 128
  %i.o = and i64 %.2, -17
  %.3 = select i1 %i.n, i64 %.2, i64 %i.o         ; 2 uses
  %2 = and i64 %.3, 4
  %3 = icmp ne i64 %2, 0
  %i.p = icmp ugt i64 %0, 255
  %or.cond3 = and i1 %i.p, %3
  %i.q = and i64 %.2, -21
  %.4 = select i1 %or.cond3, i64 %i.q, i64 %.3    ; 2 uses
  %i.r = icmp ugt i64 %0, 65535
  %i.s = and i64 %.4, -2049
  %.5 = select i1 %i.r, i64 %i.s, i64 %.4         ; 4 uses
  %i.t = and i64 %.5, 8192
  %.not42 = icmp eq i64 %i.t, 0
  br i1 %.not42, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ugt i64 %0, 1114111
  %i.v = and i64 %0, 2095104
  %i.w = icmp eq i64 %i.v, 55296
  %narrow.i.not = or i1 %i.u, %i.w
  %i.x = and i64 %.5, -8193
  br i1 %narrow.i.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.f, %bb.e
  %.6 = phi i64 [ %.5, %bb.e ], [ %i.x, %bb.f ]   ; 2 uses
  %.not44 = icmp eq i64 %.6, 0
  br i1 %.not44, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f, %select.unfold
  %.651 = phi i64 [ %.6, %select.unfold ], [ %.5, %bb.f ]
  store i64 %.651, ptr %1, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %select.unfold, %.thread
  %.035 = phi i32 [ 1, %.thread ], [ -1, %select.unfold ]
  ret i32 %.035
}

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_STRING_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cpy_asc(i64 noundef %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = trunc i64 %0 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !16
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %1, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cpy_bmp(i64 noundef %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.b = lshr i64 %0, 8
  %i.c = trunc i64 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.a, align 1, !tbaa !16
  %i.e = trunc i64 %0 to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !16
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.g, ptr %1, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cpy_univ(i64 noundef %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 4 uses
  %i.b = lshr i64 %0, 24
  %i.c = trunc i64 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.a, align 1, !tbaa !16
  %i.e = lshr i64 %0, 16
  %i.f = trunc i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.d, align 1, !tbaa !16
  %i.h = lshr i64 %0, 8
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.i, ptr %i.g, align 1, !tbaa !16
  %i.k = trunc i64 %0 to i8
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %1, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @out_utf8(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @UTF8_putc(ptr noundef null, i32 noundef -1, i64 noundef %0) #6 ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @__func__.out_utf8) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 134, ptr noundef null) #6
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !14     ; 2 uses
  %i.d = sub nuw nsw i32 2147483647, %i.a
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 309, ptr noundef nonnull @__func__.out_utf8) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 151, ptr noundef null) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.c, %i.a
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ -1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @cpy_utf8(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = tail call i32 @UTF8_putc(ptr noundef %i.a, i32 noundef 255, i64 noundef %0) #6 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %1, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @UTF8_putc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_isdigit(i32 noundef) local_unnamed_addr #3

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"p1 _ZTS14asn1_string_st", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !13, i64 8, !9, i64 16}
!20 = !{!19, !6, i64 4}
!21 = !{!19, !6, i64 0}
!22 = !{!19, !13, i64 8}
end_hunk_0
