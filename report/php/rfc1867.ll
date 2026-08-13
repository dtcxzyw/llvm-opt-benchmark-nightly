inline.NumInlined: 28
inline.NumDeleted: 15
begin_hunk_0_@php_free_hdr_entry:bb.a
}

declare void @zend_llist_clean(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @php_mime_get_hdr_value(ptr noundef byval(%struct._zend_llist) align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @zend_llist_get_first_ex(ptr noundef nonnull %0, ptr noundef null) #20 ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.011 = phi ptr [ %i.g, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %.011, align 8, !tbaa !86
  %i.d = call i32 @strcasecmp(ptr noundef %i.c, ptr noundef nonnull %1) #21
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.g = call ptr @zend_llist_get_next_ex(ptr noundef nonnull %0, ptr noundef null) #20 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !93

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.06 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.06
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i64 @zend_multibyte_encoding_converter(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare noalias ptr @_emalloc_40() local_unnamed_addr #4

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, 5120) i64 @multipart_buffer_read(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 5 uses
  %i.c = icmp ult i32 %i.b, 5120
  br i1 %i.c, label %bb.b, label %fill_buffer.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  %.pre38.i = load ptr, ptr %0, align 8, !tbaa !57 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.e, %.pre38.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %i.b to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.pre38.i, ptr align 1 %i.e, i64 %i.f, i1 false)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !57
  %.pre39.i = load i32, ptr %i.a, align 4, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = phi i32 [ %.pre39.i, %bb.d ], [ %i.b, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %.pre.i, %bb.d ], [ %.pre38.i, %bb.c ], [ %.pre38.i, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61
  %i.l = sub nsw i32 %i.k, %i.g                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %fill_buffer.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.n = phi i32 [ %i.w, %bb.f ], [ %i.g, %bb.e ]
  %.02435.i = phi i32 [ %i.aa, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !57
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_module, i64 112), align 8, !tbaa !69
  %i.s = zext nneg i32 %.02435.i to i64
  %i.t = tail call i64 %i.r(ptr noundef %i.q, i64 noundef %i.s) #20, !inline_history !138 ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !64 ; 2 uses
  br i1 %i.v, label %bb.f, label %fill_buffer.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = add nsw i32 %.pre.pre, %i.u              ; 3 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !64
  %i.x = and i64 %i.t, 2147483647
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 240), align 8, !tbaa !71
  %i.z = add nsw i64 %i.y, %i.x
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 240), align 8, !tbaa !71
  %i.aa = sub nsw i32 %.02435.i, %i.u             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %fill_buffer.exit

fill_buffer.exit:                                 ; preds = %bb.f, %.lr.ph.i, %bb.e, %bb.a
  %i.ac = phi i32 [ %i.b, %bb.a ], [ %i.g, %bb.e ], [ %i.w, %bb.f ], [ %.pre.pre, %.lr.ph.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !62 ; 3 uses
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ak = sext i8 %i.aj to i32                    ; 3 uses
  %i.al = sext i32 %i.ac to i64                   ; 3 uses
  %i.am = tail call ptr @memchr(ptr noundef %i.ae, i32 noundef %i.ak, i64 noundef %i.al) #21 ; 3 uses
  %.not23.i = icmp eq ptr %i.am, null
  br i1 %.not23.i, label %php_ap_memstr.exit50.thread, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %fill_buffer.exit
  %i.an = ptrtoint ptr %i.ae to i64               ; 3 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.g, %.lr.ph.i45
  %i.ao = phi ptr [ %i.ay, %bb.g ], [ %i.am, %.lr.ph.i45 ] ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %.neg.us.i = sub i64 %i.an, %i.ap
  %i.aq = trunc i64 %.neg.us.i to i32
  %i.ar = add i32 %i.ac, %i.aq                    ; 2 uses
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ar)
  %i.at = sext i32 %i.as to i64
  %bcmp.us.i = tail call i32 @bcmp(ptr nonnull readonly %i.ag, ptr nonnull %i.ao, i64 %i.at)
  %i.au = icmp eq i32 %bcmp.us.i, 0
  br i1 %i.au, label %php_ap_memstr.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aw = add nsw i32 %i.ar, -1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call ptr @memchr(ptr noundef nonnull %i.av, i32 noundef %i.ak, i64 noundef %i.ax) #21 ; 2 uses
  %.not.us.i = icmp eq ptr %i.ay, null
  br i1 %.not.us.i, label %php_ap_memstr.exit50.thread, label %.lr.ph.split.us.i, !llvm.loop !139

php_ap_memstr.exit:                               ; preds = %.lr.ph.split.us.i
  %i.az = sub i64 %i.ap, %i.an                    ; 3 uses
  %.not42 = icmp eq ptr %2, null
  br i1 %.not42, label %php_ap_memstr.exit50.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %php_ap_memstr.exit, %bb.h
  %i.ba = phi ptr [ %i.bk, %bb.h ], [ %i.am, %php_ap_memstr.exit ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %.neg.i = sub i64 %i.an, %i.bb
  %i.bc = trunc i64 %.neg.i to i32
  %i.bd = add i32 %i.ac, %i.bc                    ; 3 uses
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bd)
  %i.bf = sext i32 %i.be to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.ag, ptr nonnull %i.ba, i64 %i.bf)
  %i.bg = icmp ne i32 %bcmp.i, 0
  %.not22.i = icmp slt i32 %i.bd, %i.ai
  %or.cond.i = or i1 %i.bg, %.not22.i
  br i1 %or.cond.i, label %bb.h, label %php_ap_memstr.exit50

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bi = add nsw i32 %i.bd, -1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = tail call ptr @memchr(ptr noundef nonnull %i.bh, i32 noundef %i.ak, i64 noundef %i.bj) #21 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bk, null
  br i1 %.not.i49, label %php_ap_memstr.exit50.thread, label %.lr.ph.split.i, !llvm.loop !139

php_ap_memstr.exit50:                             ; preds = %.lr.ph.split.i
  store i32 1, ptr %2, align 4, !tbaa !94
  br label %php_ap_memstr.exit50.thread

php_ap_memstr.exit50.thread:                      ; preds = %bb.g, %bb.h, %php_ap_memstr.exit, %fill_buffer.exit, %php_ap_memstr.exit50
  %.not53 = phi i1 [ false, %php_ap_memstr.exit50 ], [ false, %bb.h ], [ false, %php_ap_memstr.exit ], [ true, %fill_buffer.exit ], [ true, %bb.g ]
  %.037 = phi i64 [ %i.az, %php_ap_memstr.exit50 ], [ %i.az, %bb.h ], [ %i.az, %php_ap_memstr.exit ], [ %i.al, %fill_buffer.exit ], [ %i.al, %bb.g ] ; 2 uses
  %i.bl = tail call i64 @llvm.umin.i64(i64 %.037, i64 5119) ; 5 uses
  %.not44 = icmp eq i64 %.037, 0
  br i1 %.not44, label %bb.m, label %bb.i

bb.i:                                             ; preds = %php_ap_memstr.exit50.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.ae, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl ; 2 uses
  store i8 0, ptr %i.bm, align 1, !tbaa !38
  br i1 %.not53, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1     ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !38
  %i.bp = icmp eq i8 %i.bo, 13
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = add nsw i64 %i.bl, -1
  store i8 0, ptr %i.bn, align 1, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0 = phi i64 [ %i.bq, %bb.k ], [ %i.bl, %bb.j ], [ %i.bl, %bb.i ] ; 3 uses
  %i.br = trunc nsw i64 %.0 to i32
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !64
  %i.bt = sub nsw i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !64
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.0
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %php_ap_memstr.exit50.thread
  %.1 = phi i64 [ %.0, %bb.l ], [ 0, %php_ap_memstr.exit50.thread ]
  ret i64 %.1
}

declare i32 @php_open_temporary_fd_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare ptr @_safe_erealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @zend_llist_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @php_rfc1867_set_multibyte_callbacks(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
bb.a:
  store ptr %0, ptr @php_rfc1867_encoding_translation, align 8, !tbaa !48
  store ptr %1, ptr @php_rfc1867_get_detect_order, align 8, !tbaa !48
  store ptr %3, ptr @php_rfc1867_getword, align 8, !tbaa !48
  store ptr %4, ptr @php_rfc1867_getword_conf, align 8, !tbaa !48
  store ptr %5, ptr @php_rfc1867_basename, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_encoding_translation() #12 {
bb.a:
  ret i32 0
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @get_line(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @memchr(ptr noundef %i.b, i32 noundef 10, i64 noundef %i.e) #21 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !38
  %i.m = icmp eq i8 %i.l, 13
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.k, align 1, !tbaa !38
  br label %next_line.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.f, align 1, !tbaa !38
  br label %next_line.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = icmp slt i32 %i.d, %i.o
  br i1 %i.p, label %next_line.exit.thread, label %next_line.exit.thread14

next_line.exit.thread14:                          ; preds = %bb.f
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !38
  br label %next_line.exit11.sink.split

next_line.exit:                                   ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !63
  %i.t = ptrtoint ptr %i.s to i64
  %.neg.i = sub i64 %i.h, %i.t
  %i.u = load i32, ptr %i.c, align 4, !tbaa !64
  %i.v = trunc i64 %.neg.i to i32
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !64
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %next_line.exit.thread, label %next_line.exit11

next_line.exit.thread:                            ; preds = %bb.f, %next_line.exit
  %i.x = phi ptr [ %i.s, %next_line.exit ], [ %i.b, %bb.f ] ; 2 uses
  %i.y = phi i32 [ %i.w, %next_line.exit ], [ %i.d, %bb.f ] ; 3 uses
  %i.z = icmp slt i32 %i.y, 1
  %.pre38.i = load ptr, ptr %0, align 8, !tbaa !57 ; 3 uses
  %.not.i6 = icmp eq ptr %i.x, %.pre38.i
  %or.cond = select i1 %i.z, i1 true, i1 %.not.i6
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %next_line.exit.thread
  %i.aa = zext nneg i32 %i.y to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.pre38.i, ptr align 1 %i.x, i64 %i.aa, i1 false)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !57
  %.pre39.i = load i32, ptr %i.c, align 4, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %next_line.exit.thread
  %i.ab = phi i32 [ %.pre39.i, %bb.g ], [ %i.y, %next_line.exit.thread ] ; 3 uses
  %i.ac = phi ptr [ %.pre.i, %bb.g ], [ %.pre38.i, %next_line.exit.thread ] ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61
  %i.af = sub nsw i32 %i.ae, %i.ab                ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %fill_buffer.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.aq, %bb.i ], [ %i.ab, %bb.h ]
  %.02435.i = phi i32 [ %i.au, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !57
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_module, i64 112), align 8, !tbaa !69
  %i.am = zext nneg i32 %.02435.i to i64
  %i.an = tail call i64 %i.al(ptr noundef %i.ak, i64 noundef %i.am) #20, !inline_history !138 ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %.pre17.pre = load i32, ptr %i.c, align 4, !tbaa !64 ; 2 uses
  br i1 %i.ap, label %bb.i, label %fill_buffer.exit.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add nsw i32 %.pre17.pre, %i.ao          ; 3 uses
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !64
  %i.ar = and i64 %i.an, 2147483647
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 240), align 8, !tbaa !71
  %i.at = add nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 240), align 8, !tbaa !71
  %i.au = sub nsw i32 %.02435.i, %i.ao            ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %fill_buffer.exit.loopexit

fill_buffer.exit.loopexit:                        ; preds = %bb.i, %.lr.ph.i
  %.pre17 = phi i32 [ %i.aq, %bb.i ], [ %.pre17.pre, %.lr.ph.i ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %fill_buffer.exit

fill_buffer.exit:                                 ; preds = %fill_buffer.exit.loopexit, %bb.h
  %i.aw = phi i32 [ %.pre17, %fill_buffer.exit.loopexit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ax = phi ptr [ %.pre, %fill_buffer.exit.loopexit ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = tail call ptr @memchr(ptr noundef %i.ax, i32 noundef 10, i64 noundef %i.ay) #21 ; 5 uses
  %.not.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i7, label %bb.o, label %bb.j

bb.j:                                             ; preds = %fill_buffer.exit
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 -1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bg = icmp eq i8 %i.bf, 13
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.be, align 1, !tbaa !38
  br label %bb.n
end_hunk_0
