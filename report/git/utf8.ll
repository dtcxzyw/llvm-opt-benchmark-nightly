Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/utf8?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@strbuf_utf8_replace:bb.a
  call void @strbuf_release(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

declare void @strbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @strbuf_release(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @is_encoding_utf8(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 0, 2) i32 @same_utf_encoding(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  %scevgep.i = getelementptr i8, ptr %0, i64 3    ; 2 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = shl i8 %i.d, 3
  %i.f = and i8 %i.e, 32
  %spec.select.i1.i = or i8 %i.f, %i.a
  %i.g = icmp eq i8 %spec.select.i1.i, 117
  br i1 %i.g, label %bb.b, label %skip_iprefix_impl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = shl i8 %i.l, 3
  %i.n = and i8 %i.m, 32
  %spec.select.i1.1.i = or i8 %i.n, %i.i
  %i.o = icmp eq i8 %spec.select.i1.1.i, 116
  br i1 %i.o, label %bb.c, label %skip_iprefix_impl.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = shl i8 %i.t, 3
  %i.v = and i8 %i.u, 32
  %spec.select.i1.2.i = or i8 %i.v, %i.q
  %i.w = icmp eq i8 %spec.select.i1.2.i, 102
  br i1 %i.w, label %skip_iprefix_impl.exit, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit:                           ; preds = %bb.c
  %scevgep.i1 = getelementptr i8, ptr %1, i64 3   ; 2 uses
  %i.x = load i8, ptr %1, align 1, !tbaa !12      ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ab = shl i8 %i.aa, 3
  %i.ac = and i8 %i.ab, 32
  %spec.select.i1.i2 = or i8 %i.ac, %i.x
  %i.ad = icmp eq i8 %spec.select.i1.i2, 117
  br i1 %i.ad, label %bb.d, label %skip_iprefix_impl.exit.thread

bb.d:                                             ; preds = %skip_iprefix_impl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12  ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = shl i8 %i.ai, 3
  %i.ak = and i8 %i.aj, 32
  %spec.select.i1.1.i4 = or i8 %i.ak, %i.af
  %i.al = icmp eq i8 %spec.select.i1.1.i4, 116
  br i1 %i.al, label %bb.e, label %skip_iprefix_impl.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12  ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = shl i8 %i.aq, 3
  %i.as = and i8 %i.ar, 32
  %spec.select.i1.2.i5 = or i8 %i.as, %i.an
  %i.at = icmp eq i8 %spec.select.i1.2.i5, 102
  br i1 %i.at, label %skip_iprefix_impl.exit6, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit6:                          ; preds = %bb.e
  %i.au = load i8, ptr %scevgep.i, align 1, !tbaa !12
  %i.av = icmp eq i8 %i.au, 45
  %scevgep.i7 = getelementptr i8, ptr %0, i64 4
  %spec.select = select i1 %i.av, ptr %scevgep.i7, ptr %scevgep.i
  %i.aw = load i8, ptr %scevgep.i1, align 1, !tbaa !12
  %i.ax = icmp eq i8 %i.aw, 45
  %scevgep.i8 = getelementptr i8, ptr %1, i64 4
  %.1 = select i1 %i.ax, ptr %scevgep.i8, ptr %scevgep.i1
  %i.ay = tail call i32 @strcasecmp(ptr noundef %spec.select, ptr noundef %.1) #21
  %.not = icmp eq i32 %i.ay, 0
  %i.az = zext i1 %.not to i32
  br label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit.thread:                    ; preds = %skip_iprefix_impl.exit, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %skip_iprefix_impl.exit6
  %.0 = phi i32 [ %i.az, %skip_iprefix_impl.exit6 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %skip_iprefix_impl.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @same_encoding(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.26, ptr %0 ; 2 uses
  %.not7 = icmp eq ptr %1, null
  %spec.store.select1 = select i1 %.not7, ptr @.str.26, ptr %1 ; 2 uses
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select1)
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcasecmp(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select1) #21
  %.not9 = icmp eq i32 %i.b, 0
  %i.c = zext i1 %.not9 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @utf8_fprintf(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.utf8_fprintf.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @strbuf_vaddf(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3) #22
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = call i32 @fputs(ptr noundef %i.b, ptr noundef %0) ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21
  %i.g = call range(i32 0, -2147483648) i32 @utf8_strnwidth(ptr noundef nonnull %i.e, i64 noundef %i.f, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  call void @strbuf_release(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

declare void @strbuf_vaddf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @reencode_string_iconv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %3, 1                            ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.b, label %st_add.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.24, i64 noundef %1, i64 noundef %i.e) #20
  unreachable

st_add.exit:                                      ; preds = %bb.a
  %5 = extractvalue { i64, i1 } %i.f, 0
  %i.h = tail call ptr @xmalloc(i64 noundef %5) #22 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %3
  store ptr %i.i, ptr %i.c, align 8, !tbaa !15
  store ptr %0, ptr %i.d, align 8, !tbaa !15
  %i.j = call i64 @iconv(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #22
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %st_add.exit
  %i.l = tail call ptr @__errno_location() #23
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.02249 = phi ptr [ %i.h, %.lr.ph ], [ %i.aa, %bb.i ] ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34
  %.not28 = icmp eq i32 %i.m, 7
  br i1 %.not28, label %bb.d, label %.thread34

.thread34:                                        ; preds = %bb.c
  call void @free(ptr noundef %.02249) #22
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.02249 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %mul.ov.i = icmp slt i64 %i.r, 0
  br i1 %mul.ov.i, label %bb.e, label %st_mult.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @die(ptr noundef nonnull @.str.25, i64 noundef %i.r, i64 noundef 2) #20
  unreachable

st_mult.exit:                                     ; preds = %bb.d
  %i.s = shl nuw i64 %i.r, 1                      ; 2 uses
  %i.t = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.f, label %st_add.exit29

bb.f:                                             ; preds = %st_mult.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.24, i64 noundef %i.q, i64 noundef %i.s) #20
  unreachable

st_add.exit29:                                    ; preds = %st_mult.exit
  %6 = extractvalue { i64, i1 } %i.t, 0           ; 2 uses
  %7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 32) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %bb.g, label %bb.i

bb.g:                                             ; preds = %st_add.exit29
  call void (ptr, ...) @die(ptr noundef nonnull @.str.24, i64 noundef %6, i64 noundef 32) #20
  unreachable

._crit_edge:                                      ; preds = %bb.i, %st_add.exit
  %.022.lcssa = phi ptr [ %i.h, %st_add.exit ], [ %i.aa, %bb.i ] ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !15
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.022.lcssa to i64
  %i.z = sub i64 %i.x, %i.y
  store i64 %i.z, ptr %4, align 8, !tbaa !22
  br label %bb.j

bb.i:                                             ; preds = %st_add.exit29
  %9 = extractvalue { i64, i1 } %7, 0             ; 2 uses
  %i.aa = call ptr @xrealloc(ptr noundef %.02249, i64 noundef %9) #22 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !15
  %i.ac = xor i64 %i.q, -1
  %i.ad = add i64 %9, %i.ac
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !22
  %i.ae = call i64 @iconv(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #22
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.c, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge, %bb.h, %.thread34
  %.3 = phi ptr [ null, %.thread34 ], [ %.022.lcssa, %bb.h ], [ %.022.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret ptr %.3
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #7

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @reencode_string_len(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.1, ptr noundef nonnull %3)
  %.not37 = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not37, ptr %3, ptr @.str.2 ; 4 uses
  %i.b = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.1, ptr noundef %2)
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.4, ptr noundef %2)
  %.not39 = icmp eq i32 %i.c, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.032 = phi ptr [ %2, %bb.c ], [ @.str.5, %bb.d ], [ @.str.3, %bb.b ] ; 5 uses
  %i.d = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.b ]
  %.028 = phi ptr [ null, %bb.c ], [ @utf16_be_bom, %bb.d ], [ @utf16_le_bom, %bb.b ]
  %.0 = phi i64 [ 0, %bb.c ], [ 2, %bb.d ], [ 2, %bb.b ] ; 2 uses
  %i.e = tail call noalias ptr @iconv_open(ptr noundef %.032, ptr noundef nonnull %spec.select) #22 ; 2 uses
  %i.f = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %is_encoding_utf8.exit.i, label %bb.h

is_encoding_utf8.exit.i:                          ; preds = %bb.e
  %i.g = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str, ptr noundef nonnull readonly %spec.select)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %fallback_encoding.exit

bb.f:                                             ; preds = %is_encoding_utf8.exit.i
  %i.h = tail call i32 @strcasecmp(ptr noundef nonnull readonly %spec.select, ptr noundef nonnull @.str.27) #21
  %.not4.i = icmp eq i32 %i.h, 0
  %.str.28..i = select i1 %.not4.i, ptr @.str.28, ptr %spec.select
  br label %fallback_encoding.exit

fallback_encoding.exit:                           ; preds = %is_encoding_utf8.exit.i, %bb.f
  %.0.i = phi ptr [ %.str.28..i, %bb.f ], [ @.str.26, %is_encoding_utf8.exit.i ]
  %.not.i.i40 = icmp eq ptr %.032, null
  br i1 %.not.i.i40, label %fallback_encoding.exit46, label %is_encoding_utf8.exit.i41

is_encoding_utf8.exit.i41:                        ; preds = %fallback_encoding.exit
  %i.i = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str, ptr noundef nonnull readonly %.032)
  %.not.i42 = icmp eq i32 %i.i, 0
  br i1 %.not.i42, label %bb.g, label %fallback_encoding.exit46

bb.g:                                             ; preds = %is_encoding_utf8.exit.i41
  %i.j = tail call i32 @strcasecmp(ptr noundef nonnull readonly %.032, ptr noundef nonnull @.str.27) #21
  %.not4.i44 = icmp eq i32 %i.j, 0
  %.str.28..i45 = select i1 %.not4.i44, ptr @.str.28, ptr %.032
  br label %fallback_encoding.exit46

fallback_encoding.exit46:                         ; preds = %fallback_encoding.exit, %is_encoding_utf8.exit.i41, %bb.g
  %.0.i43 = phi ptr [ %.str.28..i45, %bb.g ], [ @.str.26, %is_encoding_utf8.exit.i41 ], [ @.str.26, %fallback_encoding.exit ]
  %i.k = tail call noalias ptr @iconv_open(ptr noundef %.0.i43, ptr noundef %.0.i) #22 ; 2 uses
  %i.l = icmp eq ptr %i.k, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %bb.j, label %bb.h

bb.h:                                             ; preds = %fallback_encoding.exit46, %bb.e
  %.029 = phi ptr [ %i.k, %fallback_encoding.exit46 ], [ %i.e, %bb.e ] ; 2 uses
  %i.m = tail call ptr @reencode_string_iconv(ptr noundef %0, i64 noundef %1, ptr noundef %.029, i64 noundef %.0, ptr noundef %4) ; 4 uses
  %i.n = tail call i32 @iconv_close(ptr noundef %.029) #22 ; 0 uses
  %i.o = icmp ne ptr %i.m, null
  %or.cond = and i1 %i.d, %i.o
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %.028, i64 %.0, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %fallback_encoding.exit46, %bb.a
  %.030 = phi ptr [ null, %bb.a ], [ null, %fallback_encoding.exit46 ], [ %i.m, %bb.i ], [ %i.m, %bb.h ]
  ret ptr %.030
}

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @has_prohibited_utf_bom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.5, ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.3, ptr noundef %0)
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %has_bom_prefix.exit21.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  %.not.i = icmp ult i64 %2, 2
  %or.cond10.i = or i1 %i.c, %.not.i
  br i1 %or.cond10.i, label %has_bom_prefix.exit21.thread, label %has_bom_prefix.exit

has_bom_prefix.exit:                              ; preds = %bb.c
  %i.d = load i16, ptr %1, align 1
  %i.e = icmp ne i16 %i.d, -2
  %i.f = zext i1 %i.e to i32
  %.not9.i.not = icmp eq i32 %i.f, 0
  br i1 %.not9.i.not, label %has_bom_prefix.exit31, label %has_bom_prefix.exit21

has_bom_prefix.exit21:                            ; preds = %has_bom_prefix.exit
  %i.g = load i16, ptr %1, align 1
  %i.h = icmp ne i16 %i.g, -257
  %i.i = zext i1 %i.h to i32
  %.not9.i20.not = icmp eq i32 %i.i, 0
  br i1 %.not9.i20.not, label %has_bom_prefix.exit31, label %has_bom_prefix.exit21.thread

has_bom_prefix.exit21.thread:                     ; preds = %bb.c, %has_bom_prefix.exit21, %bb.b
  %i.j = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.6, ptr noundef %0)
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %has_bom_prefix.exit21.thread
  %i.k = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str.7, ptr noundef %0)
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %has_bom_prefix.exit31, label %bb.e

bb.e:                                             ; preds = %bb.d, %has_bom_prefix.exit21.thread
  %i.l = icmp eq ptr %1, null
  %.not.i22 = icmp ult i64 %2, 4
  %or.cond10.i23 = or i1 %i.l, %.not.i22
  br i1 %or.cond10.i23, label %has_bom_prefix.exit31, label %has_bom_prefix.exit26

has_bom_prefix.exit26:                            ; preds = %bb.e
  %i.m = load i32, ptr %1, align 1
  %i.n = icmp ne i32 %i.m, -131072
  %i.o = zext i1 %i.n to i32
  %.not9.i25.not = icmp eq i32 %i.o, 0
  br i1 %.not9.i25.not, label %has_bom_prefix.exit31, label %bb.f

bb.f:                                             ; preds = %has_bom_prefix.exit26
  %i.p = load i32, ptr %1, align 1
  %i.q = icmp ne i32 %i.p, 65279
  %i.r = zext i1 %i.q to i32
  %.not9.i30 = icmp eq i32 %i.r, 0
  %i.s = zext i1 %.not9.i30 to i32
  br label %has_bom_prefix.exit31

has_bom_prefix.exit31:                            ; preds = %bb.e, %bb.f, %bb.d, %has_bom_prefix.exit26, %has_bom_prefix.exit21, %has_bom_prefix.exit
  %i.t = phi i32 [ 1, %has_bom_prefix.exit21 ], [ 1, %has_bom_prefix.exit ], [ 0, %bb.d ], [ 1, %has_bom_prefix.exit26 ], [ %i.s, %bb.f ], [ 0, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @is_missing_required_utf_bom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef %0, ptr noundef nonnull @.str.2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  %.not.i = icmp ult i64 %2, 2
  %or.cond10.i = or i1 %i.b, %.not.i
  br i1 %or.cond10.i, label %has_bom_prefix.exit17.thread, label %has_bom_prefix.exit

has_bom_prefix.exit:                              ; preds = %bb.b
  %i.c = load i16, ptr %1, align 1
  %i.d = icmp ne i16 %i.c, -2
  %i.e = zext i1 %i.d to i32
  %.not9.i.not = icmp eq i32 %i.e, 0
  br i1 %.not9.i.not, label %bb.c, label %has_bom_prefix.exit17

has_bom_prefix.exit17:                            ; preds = %has_bom_prefix.exit
  %i.f = load i16, ptr %1, align 1
  %i.g = icmp ne i16 %i.f, -257
  %i.h = zext i1 %i.g to i32
  %.not9.i16.not = icmp eq i32 %i.h, 0
end_hunk_0
