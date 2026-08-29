Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/transcode?download=true
inline.NumInlined: 403
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@econv_equal:bb.a

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.bh = getelementptr [48 x i8], ptr %i.be, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62
  %i.bk = getelementptr [48 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !60
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  %.not57 = icmp eq ptr %i.bj, %i.bm
  br i1 %.not57, label %bb.r, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.r, %.preheader, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %check_econv.exit
  %.034 = phi i64 [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.q ], [ 4, %check_econv.exit ], [ 20, %.preheader ], [ 0, %bb.s ], [ 20, %bb.r ]
  ret i64 %.034
}

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_source_encoding_name(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_source_encoding_name, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_destination_encoding_name(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_destination_encoding_name, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_source_encoding(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_source_encoding, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_destination_encoding(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_destination_encoding, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_error_char(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_error_char, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_error_bytes(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_error_bytes, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_readagain_bytes(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_readagain_bytes, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ecerr_incomplete_input(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_incomplete_input, align 8, !tbaa !25
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #19
  ret i64 %i.b
}

declare void @Init_newline() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_inner_transcode_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #19
  ret i32 2
}

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @trans_open_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %2, 1
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = add i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.h, i64 noundef 8) #23
  store ptr %i.i, ptr %3, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.j = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %bb.c
  %i.k = ptrtoint ptr %0 to i64
  %i.l = load ptr, ptr @transcoder_table, align 8, !tbaa !11
  %i.m = call i32 @rb_st_lookup(ptr noundef %i.l, i64 noundef %i.k, ptr noundef nonnull %i.a) #19
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.n = ptrtoint ptr %1 to i64
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = call i32 @rb_st_lookup(ptr noundef %i.p, i64 noundef %i.n, ptr noundef nonnull %i.a) #19
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %rb_vm_lock_enter.exit.i
  %i.r = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i5.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i5.i, label %bb.h, label %get_transcoder_entry.exit

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #19
  br label %get_transcoder_entry.exit

get_transcoder_entry.exit:                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.s = load i64, ptr %i.a, align 8, !tbaa !25
  %i.t = inttoptr i64 %i.s to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.u = load ptr, ptr %3, align 8, !tbaa !31
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !35
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_econv_add_transcoder_at(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.b, 1                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = sext i32 %i.f to i64
  %i.j = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.h, i64 noundef %i.i, i64 noundef 48) #26
  store ptr %i.j, ptr %i.g, align 8, !tbaa !49
  store i32 %i.f, ptr %i.c, align 4, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call noalias nonnull dereferenceable(4096) ptr @ruby_xmalloc(i64 noundef 4096) #21 ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %i.n = load i32, ptr %i.a, align 8, !tbaa !48
  %i.o = sub i32 %i.n, %2
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 range(i64 1, 49) 48) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %bb.d, label %rbimpl_size_mul_or_raise.exit, !prof !182

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef 48, i64 noundef %i.p) #20
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.r = getelementptr [48 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %5 = extractvalue { i64, i1 } %3, 0
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %i.r, i64 noundef %5, i1 noundef false) #19
  %i.t = tail call noalias nonnull dereferenceable(96) ptr @ruby_xmalloc(i64 noundef 96) #21 ; 10 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !183
  %i.v = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %i.x = icmp ugt i64 %i.w, 8
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.y = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.w) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store ptr %i.y, ptr %i.z, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_size_mul_or_raise.exit
  %i.aa = getelementptr i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !67
  %i.ad = icmp ult i64 %i.ac, 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.af, %bb.h ], [ %i.ae, %bb.g ]
  %i.ah = tail call i32 %i.ab(ptr noundef %i.ag) #19, !inline_history !185 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.al = getelementptr i8, ptr %1, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load i32, ptr %i.al, align 4, !tbaa !69 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 8
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ao) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr i8, ptr %1, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !70 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 8
  br i1 %i.at, label %bb.m, label %rb_transcoding_open_by_transcoder.exit

bb.m:                                             ; preds = %bb.l
  %i.au = zext nneg i32 %i.as to i64
  %i.av = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.au) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !30
  br label %rb_transcoding_open_by_transcoder.exit

rb_transcoding_open_by_transcoder.exit:           ; preds = %bb.l, %bb.m
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %i.ay = getelementptr [48 x i8], ptr %i.ax, i64 %i.m ; 6 uses
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !60
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  store ptr %i.k, ptr %i.az, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 4096
  %i.bb = getelementptr i8, ptr %i.ay, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !90
  %i.bc = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.k, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr i8, ptr %i.ay, i64 24
  store ptr %i.k, ptr %i.bd, align 8, !tbaa !77
  %i.be = getelementptr i8, ptr %i.ay, i64 40
  store i32 3, ptr %i.be, align 8, !tbaa !187
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !48
  %i.bh = load ptr, ptr %1, align 8, !tbaa !14
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = icmp eq i8 %i.bi, 0
  %.not48 = icmp sgt i32 %2, %i.bf
  %or.cond = select i1 %i.bj, i1 true, i1 %.not48
  br i1 %or.cond, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bk = add i32 %.04549, -1                     ; 2 uses
  %.not = icmp sgt i32 %2, %i.bk
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !188

.lr.ph:                                           ; preds = %rb_transcoding_open_by_transcoder.exit, %bb.n
  %.04549 = phi i32 [ %i.bk, %bb.n ], [ %i.bf, %rb_transcoding_open_by_transcoder.exit ] ; 2 uses
  %i.bl = sext i32 %.04549 to i64
  %i.bm = getelementptr [48 x i8], ptr %i.ax, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bs = getelementptr i8, ptr %0, i64 104
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !51
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o, %rb_transcoding_open_by_transcoder.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #1

declare i32 @rb_require_internal_silent(i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_trans_conv(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !29
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %2
  %spec.select74 = select i1 %.not, ptr %i.b, ptr %1
  %i.c = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !187
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.e, align 8, !tbaa !187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48   ; 3 uses
  %.05592 = add i32 %i.i, -1                      ; 3 uses
  %i.j = icmp sgt i32 %.05592, -1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = zext nneg i32 %.05592 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.055.in93 = phi i32 [ %i.i, %.lr.ph.preheader ], [ %i.p, %bb.e ] ; 5 uses
  %i.l = getelementptr [48 x i8], ptr %i.d, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187
  switch i32 %i.n, label %bb.d [
    i32 0, label %.loopexit78
    i32 6, label %.loopexit78
    i32 1, label %.loopexit78
    i32 5, label %.loopexit78
    i32 4, label %.loopexit78
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.79) #25
  unreachable

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.o = icmp sgt i64 %indvars.iv, 0
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.q = sext i32 %.05592 to i64
  %i.r = getelementptr [48 x i8], ptr %i.d, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !187
  %i.u = icmp ne i32 %i.t, 2
  %i.v = and i32 %5, 262144
  %.not70 = icmp eq i32 %i.v, 0
  %or.cond = or i1 %.not70, %i.u
end_hunk_0
begin_hunk_1_@transcode_restartable0:bb.a
  store ptr %.331125, ptr %0, align 8, !tbaa !29
  store ptr %.34, ptr %1, align 8, !tbaa !29
  br label %bb.ma

bb.la:                                            ; preds = %bb.a
  br label %bb.ky, !llvm.loop !238

bb.lb:                                            ; preds = %bb.ky
  %i.anx = getelementptr i8, ptr %i.a, i64 64
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !70
  %i.anz = sext i32 %i.any to i64
  %.not1232 = icmp slt i64 %i.anv, %i.anz
  %i.aoa = getelementptr i8, ptr %i.a, i64 128
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !237 ; 2 uses
  %i.aoc = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %i.aod = getelementptr i8, ptr %i.aoc, i64 72
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !67
  %i.aof = icmp ult i64 %i.aoe, 9                 ; 2 uses
  %i.aog = getelementptr i8, ptr %4, i64 88       ; 4 uses
  br i1 %.not1232, label %bb.lf, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  br i1 %i.aof, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !30
  br label %bb.le

bb.le:                                            ; preds = %bb.lc, %bb.ld
  %i.aoi = phi ptr [ %i.aoh, %bb.ld ], [ %i.aog, %bb.lc ]
  %i.aoj = tail call i64 %i.aob(ptr noundef %i.aoi, ptr noundef %.34, i64 noundef %i.anv) #19
  %i.aok = getelementptr i8, ptr %.34, i64 %i.aoj
  br label %bb.lv

bb.lf:                                            ; preds = %bb.lb
  br i1 %i.aof, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aol = load ptr, ptr %i.aog, align 8, !tbaa !30
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lf, %bb.lg
  %i.aom = phi ptr [ %i.aol, %bb.lg ], [ %i.aog, %bb.lf ]
  %i.aon = getelementptr i8, ptr %i.aoc, i64 64
  %i.aoo = load i32, ptr %i.aon, align 8, !tbaa !70 ; 2 uses
  %i.aop = icmp slt i32 %i.aoo, 9
  %i.aoq = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.aop, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !30
  %i.aos = zext nneg i32 %i.aoo to i64
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lh, %bb.li
  %narrow = phi i64 [ %i.aos, %bb.li ], [ 8, %bb.lh ]
  %i.aot = phi ptr [ %i.aor, %bb.li ], [ %i.aoq, %bb.lh ]
  %i.aou = tail call i64 %i.aob(ptr noundef %i.aom, ptr noundef %i.aot, i64 noundef %narrow) #19 ; 2 uses
  %i.aov = getelementptr i8, ptr %4, i64 72
  store i64 %i.aou, ptr %i.aov, align 8, !tbaa !202
  %i.aow = getelementptr i8, ptr %4, i64 64
  store i64 0, ptr %i.aow, align 8, !tbaa !200
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lu, %bb.lj
  %i.aox = phi i64 [ %i.aou, %bb.lj ], [ %.pre1290, %bb.lu ]
  %i.aoy = phi i64 [ 0, %bb.lj ], [ %.pre, %bb.lu ]
  %.331162 = phi ptr [ %.331125, %bb.lj ], [ %.341163, %bb.lu ] ; 2 uses
  %.341126 = phi ptr [ %.331125, %bb.lj ], [ %.351127, %bb.lu ] ; 2 uses
  %.35 = phi ptr [ %.34, %bb.lj ], [ %i.aqh, %bb.lu ] ; 2 uses
  %i.aoz = icmp slt i64 %i.aoy, %i.aox
  br i1 %i.aoz, label %bb.ll, label %bb.lv

bb.ll:                                            ; preds = %bb.lk, %bb.lr
  %.341163 = phi ptr [ %.331162, %bb.lk ], [ %i.d, %bb.lr ] ; 3 uses
  %.351127 = phi ptr [ %.341126, %bb.lk ], [ %i.d, %bb.lr ] ; 3 uses
  %.36 = phi ptr [ %.35, %bb.lk ], [ %i.e, %bb.lr ] ; 4 uses
  %i.apa = ptrtoint ptr %3 to i64
  %i.apb = ptrtoint ptr %.36 to i64
  %i.apc = sub i64 %i.apa, %i.apb
  %i.apd = icmp slt i64 %i.apc, 1
  br i1 %i.apd, label %bb.lm, label %bb.ls

bb.lm:                                            ; preds = %bb.ll
  store i32 23, ptr %i.f, align 4, !tbaa !186
  %i.ape = ptrtoint ptr %.351127 to i64
  %i.apf = ptrtoint ptr %.341163 to i64
  %i.apg = sub i64 %i.ape, %i.apf                 ; 3 uses
  %i.aph = icmp sgt i64 %i.apg, 0
  br i1 %i.aph, label %bb.ln, label %bb.lq

bb.ln:                                            ; preds = %bb.lm
  %i.api = load ptr, ptr %4, align 8, !tbaa !62
  %i.apj = getelementptr i8, ptr %i.api, i64 60
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !69
  %i.apl = icmp slt i32 %i.apk, 9
  %i.apm = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.apl, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !30
  br label %bb.lp

bb.lp:                                            ; preds = %bb.ln, %bb.lo
  %i.apo = phi ptr [ %i.apn, %bb.lo ], [ %i.apm, %bb.ln ]
  %i.app = getelementptr i8, ptr %4, i64 40
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !88
  %i.apr = getelementptr i8, ptr %i.apo, i64 %i.apq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.apr, ptr noundef nonnull align 1 %.341163, i64 noundef %i.apg, i1 noundef false) #19
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lm
  store ptr %.351127, ptr %0, align 8, !tbaa !29
  store ptr %.36, ptr %1, align 8, !tbaa !29
  %i.aps = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !88
  %i.apu = add i64 %i.apt, %i.apg
  store i64 %i.apu, ptr %i.aps, align 8, !tbaa !88
  br label %bb.ma

bb.lr:                                            ; preds = %bb.a
  br label %bb.ll, !llvm.loop !239

bb.ls:                                            ; preds = %bb.ll
  %i.apv = load ptr, ptr %4, align 8, !tbaa !62
  %i.apw = getelementptr i8, ptr %i.apv, i64 64
  %i.apx = load i32, ptr %i.apw, align 8, !tbaa !70
  %i.apy = icmp slt i32 %i.apx, 9
  %i.apz = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.apy, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !30
  br label %bb.lu

bb.lu:                                            ; preds = %bb.ls, %bb.lt
  %i.aqb = phi ptr [ %i.aqa, %bb.lt ], [ %i.apz, %bb.ls ]
  %i.aqc = getelementptr i8, ptr %4, i64 64       ; 3 uses
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !200 ; 2 uses
  %i.aqe = add i64 %i.aqd, 1
  store i64 %i.aqe, ptr %i.aqc, align 8, !tbaa !200
  %i.aqf = getelementptr i8, ptr %i.aqb, i64 %i.aqd
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !30
  %i.aqh = getelementptr i8, ptr %.36, i64 1
  store i8 %i.aqg, ptr %.36, align 1, !tbaa !30
  %.pre = load i64, ptr %i.aqc, align 8, !tbaa !200
  %.phi.trans.insert1289 = getelementptr i8, ptr %4, i64 72
  %.pre1290 = load i64, ptr %.phi.trans.insert1289, align 8, !tbaa !202
  br label %bb.lk, !llvm.loop !240

bb.lv:                                            ; preds = %bb.a, %bb.kx, %bb.lk, %bb.le
  %.351164 = phi ptr [ %.331125, %bb.le ], [ %.331162, %bb.lk ], [ %.11093, %bb.kx ], [ %i.d, %bb.a ] ; 2 uses
  %.361128 = phi ptr [ %.331125, %bb.le ], [ %.341126, %bb.lk ], [ %.11093, %bb.kx ], [ %i.d, %bb.a ] ; 2 uses
  %.37 = phi ptr [ %i.aok, %bb.le ], [ %.35, %bb.lk ], [ %.1, %bb.kx ], [ %i.e, %bb.a ]
  store i32 6, ptr %i.f, align 4, !tbaa !186
  %i.aqi = ptrtoint ptr %.361128 to i64
  %i.aqj = ptrtoint ptr %.351164 to i64
  %i.aqk = sub i64 %i.aqi, %i.aqj                 ; 3 uses
  %i.aql = icmp sgt i64 %i.aqk, 0
  br i1 %i.aql, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  %i.aqm = load ptr, ptr %4, align 8, !tbaa !62
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 60
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !69
  %i.aqp = icmp slt i32 %i.aqo, 9
  %i.aqq = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.aqp, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !30
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lw, %bb.lx
  %i.aqs = phi ptr [ %i.aqr, %bb.lx ], [ %i.aqq, %bb.lw ]
  %i.aqt = getelementptr i8, ptr %4, i64 40
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !88
  %i.aqv = getelementptr i8, ptr %i.aqs, i64 %i.aqu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aqv, ptr noundef nonnull align 1 %.351164, i64 noundef %i.aqk, i1 noundef false) #19
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lv
  store ptr %.361128, ptr %0, align 8, !tbaa !29
  store ptr %.37, ptr %1, align 8, !tbaa !29
  %i.aqw = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !88
  %i.aqy = add i64 %i.aqx, %i.aqk
  store i64 %i.aqy, ptr %i.aqw, align 8, !tbaa !88
  br label %bb.ma

bb.ma:                                            ; preds = %bb.kl, %bb.km, %bb.lz, %bb.lq, %bb.kz, %bb.kw, %bb.kr, %bb.kc, %bb.jw, %bb.jk, %bb.ih, %bb.hy, %bb.gv, %bb.gm, %bb.fv, %bb.fc, %bb.es, %bb.ek, %bb.ec, %bb.du, %bb.dn, %bb.df, %bb.cx, %bb.cp, %bb.ci, %bb.ca, %bb.bs, %bb.bl, %bb.bd, %bb.aw, %bb.ap, %bb.ai, %bb.y, %bb.f, %bb.c
  %.0 = phi i32 [ 5, %bb.c ], [ 3, %bb.f ], [ 2, %bb.kz ], [ 4, %bb.lz ], [ 2, %bb.lq ], [ 2, %bb.y ], [ 5, %bb.ai ], [ 3, %bb.ap ], [ 6, %bb.kr ], [ 2, %bb.aw ], [ 2, %bb.bd ], [ 2, %bb.bl ], [ 2, %bb.bs ], [ 2, %bb.ca ], [ 2, %bb.ci ], [ 2, %bb.cp ], [ 2, %bb.cx ], [ 2, %bb.df ], [ 2, %bb.dn ], [ 2, %bb.du ], [ 2, %bb.ec ], [ 2, %bb.ek ], [ 2, %bb.es ], [ 2, %bb.fc ], [ 2, %bb.fv ], [ 2, %bb.gm ], [ 2, %bb.gv ], [ 2, %bb.hy ], [ 2, %bb.ih ], [ 2, %bb.jk ], [ 5, %bb.jw ], [ 3, %bb.kc ], [ 1, %bb.kw ], [ 0, %bb.km ], [ 0, %bb.kl ]
  ret i32 %.0
}

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_enc_find(ptr noundef) local_unnamed_addr #1

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_enc_default_internal() local_unnamed_addr #1

declare i64 @rb_obj_encoding(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_str_scrub(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare nonnull ptr @rb_utf8_encoding() local_unnamed_addr #1

declare i64 @rb_str_conv_enc(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #1

declare i32 @rb_define_dummy_encoding(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #1

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #1

declare i32 @rb_to_encoding_index(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_fallback(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  %i.b = call i64 @rb_ary_new_from_values(i64 noundef 1, ptr noundef nonnull %i.a) #19
  %i.c = call i64 @rb_proc_call(i64 noundef %0, i64 noundef %i.b) #19
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @method_fallback(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  %i.b = call i64 @rb_method_call(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0) #19
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @aref_fallback(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  %i.b = call i64 @rb_funcallv_public(i64 noundef %0, i64 noundef 145, i32 noundef 1, ptr noundef nonnull %i.a) #19
  ret i64 %i.b
}

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @transcode_loop_fallback_try(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = tail call i64 %i.c(i64 noundef %i.e, i64 noundef %i.g) #19 ; 4 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !25
  switch i64 %i.h, label %bb.b [
    i64 36, label %bb.c
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @rb_string_value(ptr noundef nonnull %i.a) #19 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %i.j = phi i64 [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %i.j
}

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #3

declare i64 @rb_proc_call(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_method_call(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv_public(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_associate_index(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @transcode_search_path_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  %i.b = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = call i32 @rb_st_lookup(ptr noundef %i.c, i64 noundef %0, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #21 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !120
  store ptr null, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  store ptr %i.f, ptr %i.i, align 8, !tbaa !241
  store ptr %i.f, ptr %i.h, align 8, !tbaa !124
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130
  %i.m = ptrtoint ptr %i.l to i64
  call void @rb_st_add_direct(ptr noundef %i.j, i64 noundef %0, i64 noundef %i.m) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_encobj(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @rb_enc_find(ptr noundef %0) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %make_encoding.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_vm_lock_enter.exit.i

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #19
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.c, %bb.b
  %i.d = call i32 @rb_enc_registered(ptr noundef %0) #19
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.e = call i32 @rb_define_dummy_encoding(ptr noundef %0) #19
  %i.f = call ptr @rb_enc_from_index(i32 noundef %i.e) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_vm_lock_enter.exit.i
  %.1.i = phi ptr [ %i.f, %bb.d ], [ null, %rb_vm_lock_enter.exit.i ]
  %i.g = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i10.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i10.i, label %bb.f, label %rb_vm_lock_leave.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #19
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %make_encoding.exit

make_encoding.exit:                               ; preds = %bb.a, %rb_vm_lock_leave.exit.i
  %.2.i = phi ptr [ %i.b, %bb.a ], [ %.1.i, %rb_vm_lock_leave.exit.i ]
  %i.h = call i64 @rb_enc_from_encoding(ptr noundef %.2.i) #19
  ret i64 %i.h
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_from_encoding(ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_registered(ptr noundef) local_unnamed_addr #1

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @str_transcode(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 4, ptr %i.a, align 8, !tbaa !25
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = tail call i32 @rb_keyword_given_p() #19
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader.1, label %.preheader.preheader

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.h = icmp slt i32 %0, 0
  br i1 %i.h, label %bb.c, label %.preheader.1

.preheader.preheader:                             ; preds = %bb.a
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.f) #19
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %.not14 = icmp ne i32 %i.j, 0
  %spec.select33 = zext i1 %.not14 to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.b, %bb.a
  %.193.i1725 = phi i32 [ %i.j, %.preheader.preheader ], [ 0, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.1.i1923 = phi i64 [ %i.i, %.preheader.preheader ], [ 4, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %.286.i = phi i32 [ %spec.select33, %.preheader.preheader ], [ 0, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.k = icmp samesign ult i32 %.286.i, %.193.i1725
  %i.l = zext i1 %i.k to i32
  %spec.select34 = add nuw nsw i32 %.286.i, %i.l
  %i.m = icmp eq i32 %spec.select34, %.193.i1725
  br i1 %i.m, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.1, %bb.b
  %.193.i18 = phi i32 [ %.193.i1725, %.preheader.1 ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.193.i18, i32 noundef 0, i32 noundef 2) #20
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader.1
  %i.n = icmp eq i64 %.1.i1923, 4
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.o = call i32 @rb_econv_prepare_options(i64 noundef %.1.i1923, ptr noundef nonnull %i.a, i32 noundef 0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_scan_args_set.exit
  %i.p = phi i64 [ 4, %rb_scan_args_set.exit ], [ %.pre, %bb.d ]
  %.0 = phi i32 [ 0, %rb_scan_args_set.exit ], [ %i.o, %bb.d ]
  %i.q = tail call fastcc i32 @str_transcode0(i32 noundef %.193.i1725, ptr noundef %1, ptr noundef %2, i32 noundef %.0, i64 noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.q
}

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #1

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

declare void @rb_str_shared_replace(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @econv_free(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_econv_close(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @econv_memsize(ptr nofree readnone captures(none) %0) #16 {
bb.a:
  ret i64 184
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @econv_args(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9) unnamed_addr #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = tail call i32 @rb_keyword_given_p() #19
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #19
  %i.i = add nsw i32 %0, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.193.i = phi i32 [ %0, %bb.a ], [ %i.i, %bb.b ] ; 6 uses
  %.1.i = phi i64 [ 4, %bb.a ], [ %i.h, %bb.b ]   ; 2 uses
  %i.j = icmp samesign ult i32 %.193.i, 2
  br i1 %i.j, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8, !tbaa !25
  store i64 %i.k, ptr %2, align 8, !tbaa !25
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  store i64 %i.m, ptr %3, align 8, !tbaa !25
  %.not57 = icmp eq i32 %.193.i, 2
  br i1 %.not57, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = icmp eq i32 %.193.i, 3
  br i1 %i.p, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.d, %bb.c
  %.193.i36 = phi i32 [ %.193.i, %bb.c ], [ %.193.i, %bb.d ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i36, i32 noundef 2, i32 noundef 3) #20
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %bb.d
  %.059 = phi i64 [ %i.o, %bb.d ], [ 4, %.preheader ] ; 2 uses
  %i.q = icmp eq i64 %.059, 4
  %i.r = icmp eq i64 %.1.i, 4                     ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %.193.i, 1
  tail call void @rb_error_arity(i32 noundef %i.s, i32 noundef 2, i32 noundef 3) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i64 @rb_to_int(i64 noundef %.059) #19 ; 3 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i64 @rb_fix2int(i64 noundef %i.t) #19
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.w = tail call i64 @rb_num2int(i64 noundef %i.t) #19
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.v, %bb.h ], [ %i.w, %bb.i ]
  %i.x = trunc i64 %.0.i to i32
  store i64 4, ptr %i.a, align 8, !tbaa !25
  br label %bb.m

bb.j:                                             ; preds = %rb_scan_args_set.exit
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @rb_econv_prepare_options(i64 noundef %.1.i, ptr noundef nonnull %i.a, i32 noundef 0)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 4, ptr %i.a, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %rb_num2int_inline.exit
  %.0 = phi i32 [ 0, %bb.l ], [ %i.y, %bb.k ], [ %i.x, %rb_num2int_inline.exit ]
  %i.z = load i64, ptr %2, align 8, !tbaa !25
  %i.aa = tail call i32 @rb_to_encoding_index(i64 noundef %i.z) #19 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @rb_enc_from_index(i32 noundef %i.aa) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ad = tail call i64 @rb_string_value(ptr noundef nonnull %2) #19 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.030 = phi ptr [ %i.ac, %bb.n ], [ null, %bb.o ] ; 3 uses
  %i.ae = load i64, ptr %3, align 8, !tbaa !25
  %i.af = tail call i32 @rb_to_encoding_index(i64 noundef %i.ae) #19 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call ptr @rb_enc_from_index(i32 noundef %i.af) #19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ai = tail call i64 @rb_string_value(ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.029 = phi ptr [ %i.ah, %bb.q ], [ null, %bb.r ] ; 3 uses
  %.not = icmp eq ptr %.030, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr i8, ptr %.030, i64 8
  %.030.val = load ptr, ptr %i.aj, align 8, !tbaa !111
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ak = tail call ptr @rb_string_value_cstr(ptr noundef nonnull %2) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.al = phi ptr [ %.030.val, %bb.t ], [ %i.ak, %bb.u ]
  %.not33 = icmp eq ptr %.029, null
  br i1 %.not33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr i8, ptr %.029, i64 8
  %.029.val = load ptr, ptr %i.am, align 8, !tbaa !111
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.an = tail call ptr @rb_string_value_cstr(ptr noundef nonnull %3) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ao = phi ptr [ %.029.val, %bb.w ], [ %i.an, %bb.x ]
  store ptr %i.al, ptr %4, align 8, !tbaa !29
  store ptr %i.ao, ptr %5, align 8, !tbaa !29
  store ptr %.030, ptr %6, align 8, !tbaa !160
  store ptr %.029, ptr %7, align 8, !tbaa !160
  store i32 %.0, ptr %8, align 4, !tbaa !7
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ap, ptr %9, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i64 @rb_to_int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #11

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @rb_econv_init_by_convpath_i(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !157
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %rb_econv_add_converter.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_enter.exit.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %bb.d, %bb.c
  %i.l = ptrtoint ptr %0 to i64
  %i.m = load ptr, ptr @transcoder_table, align 8, !tbaa !11
  %i.n = call i32 @rb_st_lookup(ptr noundef %i.m, i64 noundef %i.l, ptr noundef nonnull %i.a) #19
  %.not3.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i.i
  %i.o = ptrtoint ptr %1 to i64
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call i32 @rb_st_lookup(ptr noundef %i.q, i64 noundef %i.o, ptr noundef nonnull %i.a) #19
  %.not4.i.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %rb_vm_lock_enter.exit.i.i
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i5.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i5.i.i, label %bb.h, label %get_transcoder_entry.exit.i

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #19
  br label %get_transcoder_entry.exit.i

get_transcoder_entry.exit.i:                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.t = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not11.i = icmp eq i64 %i.t, 0
  br i1 %.not11.i, label %rb_econv_add_converter.exit, label %bb.i

bb.i:                                             ; preds = %get_transcoder_entry.exit.i
  %i.v = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.j, label %load_transcoder_entry.exit.thread15.i

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 3 uses
  %.not22.i.i = icmp eq ptr %i.y, null
  br i1 %.not22.i.i, label %rb_econv_add_converter.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #22 ; 3 uses
  %i.aa = add i64 %i.z, 10                        ; 2 uses
  %i.ab = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.aa) #19, !callees !36, !inline_history !242 ; 4 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ae = and i64 %i.ad, 8192
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.l, %bb.k
  %i.ah = phi ptr [ %i.ag, %bb.l ], [ %i.af, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ah, ptr noundef nonnull align 1 dereferenceable(10) @transcoder_lib_prefix, i64 noundef range(i64 1, 0) 10, i1 noundef false) #19
  %.not.i24.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i24.i.i, label %load_transcoder_entry.exit.i, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %i.y, i64 noundef range(i64 1, 0) %i.z, i1 noundef false) #19
  br label %load_transcoder_entry.exit.i

load_transcoder_entry.exit.i:                     ; preds = %bb.m, %RSTRING_PTR.exit.i.i
  call void @rb_str_set_len(i64 noundef %i.ab, i64 noundef %i.aa) #19
  call void @rb_obj_freeze_inline(i64 noundef %i.ab) #19
  %i.aj = call i32 @rb_require_internal_silent(i64 noundef %i.ab) #19 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %.not12.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not12.i, label %rb_econv_add_converter.exit, label %load_transcoder_entry.exit.thread15.i

load_transcoder_entry.exit.thread15.i:            ; preds = %load_transcoder_entry.exit.i, %bb.i
  %.018.i = phi ptr [ %.pre.i.i, %load_transcoder_entry.exit.i ], [ %i.w, %bb.i ]
  call fastcc void @rb_econv_add_transcoder_at(ptr noundef nonnull %i.f, ptr noundef nonnull %.018.i, i32 noundef %i.h)
  br label %rb_econv_add_converter.exit

rb_econv_add_converter.exit:                      ; preds = %bb.b, %get_transcoder_entry.exit.i, %bb.j, %load_transcoder_entry.exit.i, %load_transcoder_entry.exit.thread15.i
  %.09.i = phi i32 [ -1, %bb.b ], [ 0, %load_transcoder_entry.exit.thread15.i ], [ -1, %load_transcoder_entry.exit.i ], [ -1, %get_transcoder_entry.exit.i ], [ -1, %bb.j ]
  store i32 %.09.i, ptr %i.c, align 4, !tbaa !157
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %rb_econv_add_converter.exit
  ret void
}

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_drop_bytes(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind allocsize(1,2) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8st_table", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"rb_transcoder", !16, i64 0, !16, i64 8, !8, i64 16, !16, i64 24, !8, i64 32, !17, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !18, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 int", !13, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!15, !16, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS16rb_ractor_struct", !13, i64 0}
!22 = !{!23, !24, i64 24}
!23 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !24, i64 24}
!24 = !{!"p1 _ZTS13rb_transcoder", !13, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!23, !16, i64 0}
!27 = !{!23, !16, i64 8}
!28 = !{!23, !16, i64 16}
!29 = !{!16, !16, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"trans_open_t", !33, i64 0, !8, i64 8}
!33 = !{!"any p2 pointer", !13, i64 0}
!34 = !{!32, !8, i64 8}
!35 = !{!13, !13, i64 0}
!36 = !{ptr @rb_str_new, ptr @rb_str_new_static}
!37 = distinct !{null, null, null}
!38 = !{!39, !18, i64 0}
!39 = !{!"RBasic", !18, i64 0, !18, i64 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !8, i64 88}
!43 = !{!"rb_econv_t", !8, i64 0, !8, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !18, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !13, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !44, i64 104, !45, i64 112, !46, i64 168, !46, i64 176}
!44 = !{!"p1 _ZTS14rb_transcoding", !13, i64 0}
!45 = !{!"", !8, i64 0, !44, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !18, i64 40, !18, i64 48}
!46 = !{!"p1 _ZTS18OnigEncodingTypeST", !13, i64 0}
!47 = !{!43, !8, i64 92}
!48 = !{!43, !8, i64 96}
!49 = !{!43, !13, i64 80}
!50 = !{!43, !8, i64 100}
!51 = !{!43, !44, i64 104}
!52 = !{!43, !8, i64 112}
!53 = distinct !{!53, !41}
!54 = !{!43, !8, i64 0}
!55 = !{!43, !16, i64 8}
!56 = !{!43, !16, i64 16}
!57 = distinct !{!57, !41}
!58 = !{!43, !8, i64 4}
!59 = distinct !{null, null, null}
!60 = !{!61, !44, i64 0}
!61 = !{!"", !44, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !8, i64 40}
!62 = !{!63, !24, i64 0}
!63 = !{!"rb_transcoding", !24, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !18, i64 24, !9, i64 32, !8, i64 36, !18, i64 40, !18, i64 48, !9, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 88}
!64 = !{!15, !8, i64 68}
!65 = !{!43, !16, i64 24}
!66 = !{!15, !13, i64 88}
!67 = !{!15, !18, i64 72}
!68 = distinct !{null}
!69 = !{!15, !8, i64 60}
!70 = !{!15, !8, i64 64}
!71 = !{!61, !16, i64 8}
!72 = distinct !{!72, !41}
!73 = !{!43, !16, i64 48}
!74 = !{!43, !16, i64 56}
!75 = !{!43, !16, i64 64}
!76 = !{!61, !16, i64 16}
!77 = !{!61, !16, i64 24}
!78 = distinct !{!78, !41}
!79 = !{!43, !44, i64 120}
!80 = !{!43, !16, i64 144}
!81 = !{!43, !18, i64 32}
!82 = !{!43, !16, i64 40}
!83 = distinct !{null}
!84 = !{!43, !16, i64 128}
!85 = distinct !{null}
!86 = !{!43, !18, i64 152}
!87 = !{!63, !18, i64 48}
!88 = !{!63, !18, i64 40}
!89 = distinct !{!89, !41}
!90 = !{!61, !16, i64 32}
!91 = distinct !{!91, !41}
!92 = !{!43, !16, i64 72}
!93 = !{!94, !18, i64 16}
!94 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !95, i64 8, !18, i64 16, !96, i64 24, !18, i64 32, !18, i64 40, !97, i64 48}
!95 = !{!"p1 _ZTS12st_hash_type", !13, i64 0}
!96 = !{!"p1 long", !13, i64 0}
!97 = !{!"p1 _ZTS14st_table_entry", !13, i64 0}
!98 = !{!99, !16, i64 8}
!99 = !{!"asciicompat_encoding_t", !16, i64 0, !16, i64 8}
!100 = !{!99, !16, i64 0}
!101 = distinct !{null}
!102 = !{!43, !46, i64 176}
!103 = !{!104, !18, i64 16}
!104 = !{!"RString", !39, i64 0, !18, i64 16, !9, i64 24}
!105 = distinct !{!105, !41}
!106 = !{!96, !96, i64 0}
!107 = !{i64 2151170494}
!108 = !{i64 0, i64 8, !109, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 8, !29, i64 32, i64 8, !29, i64 40, i64 4, !7}
!109 = !{!44, !44, i64 0}
!110 = distinct !{!110, !41}
!111 = !{!112, !16, i64 8}
!112 = !{!"OnigEncodingTypeST", !13, i64 0, !16, i64 8, !8, i64 16, !8, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !8, i64 128, !8, i64 132}
!113 = !{!112, !8, i64 20}
!114 = !{!115, !13, i64 0}
!115 = !{!"transcode_loop_fallback_args", !13, i64 0, !18, i64 8, !18, i64 16}
!116 = !{!115, !18, i64 8}
!117 = !{!115, !18, i64 16}
!118 = !{i64 2151182609}
!119 = !{i64 2151182774}
!120 = !{!121, !16, i64 8}
!121 = !{!"search_path_queue_tag", !122, i64 0, !16, i64 8}
!122 = !{!"p1 _ZTS21search_path_queue_tag", !13, i64 0}
!123 = !{!121, !122, i64 0}
!124 = !{!125, !126, i64 16}
!125 = !{!"", !12, i64 0, !122, i64 8, !126, i64 16, !16, i64 24}
!126 = !{!"p2 _ZTS21search_path_queue_tag", !33, i64 0}
!127 = !{!125, !12, i64 0}
!128 = !{!125, !122, i64 8}
!129 = distinct !{!129, !41}
!130 = !{!125, !16, i64 24}
!131 = distinct !{!131, !41}
!132 = !{ptr @rb_econv_init_by_convpath_i, ptr @search_convpath_i, ptr @trans_open_i}
!133 = !{!43, !18, i64 160}
!134 = !{!112, !13, i64 32}
!135 = distinct !{null}
!136 = !{!43, !16, i64 136}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = !{!"branch_weights", i32 2146410443, i32 1073205}
!140 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!141 = !{!"branch_weights", i32 4001, i32 1}
!142 = !{i64 2151187600}
!143 = !{i64 2151187767}
!144 = distinct !{null, null}
!145 = distinct !{!145, !41}
!146 = !{i64 2151187934}
!147 = !{i64 2151188101}
!148 = !{!149, !13, i64 32}
!149 = !{!"RData", !39, i64 0, !13, i64 16, !13, i64 24, !13, i64 32}
!150 = distinct !{null, null, null}
!151 = !{i64 2151188556}
!152 = !{i64 2151188723}
!153 = !{!154, !155, i64 0}
!154 = !{!"rb_econv_init_by_convpath_t", !155, i64 0, !8, i64 8, !8, i64 12}
!155 = !{!"p1 _ZTS10rb_econv_t", !13, i64 0}
!156 = !{!154, !8, i64 8}
!157 = !{!154, !8, i64 12}
!158 = !{i64 2151188890}
!159 = !{i64 2151189057}
!160 = !{!46, !46, i64 0}
!161 = distinct !{!161, !41}
!162 = !{i64 2151189328}
!163 = !{i64 2151189495}
!164 = !{i64 2151189687}
!165 = !{i64 2151189854}
!166 = !{!43, !46, i64 168}
!167 = !{!"branch_weights", i32 1073205, i32 2146410443}
!168 = !{!"branch_weights", i32 -100663296, i32 2097152}
!169 = !{!170, !18, i64 24}
!170 = !{!"RTypedData", !39, i64 0, !18, i64 16, !18, i64 24, !13, i64 32}
!171 = !{!170, !13, i64 32}
!172 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!173 = !{!174, !176, i64 48}
!174 = !{!"rb_data_type_struct", !16, i64 0, !175, i64 8, !176, i64 48, !13, i64 56, !18, i64 64}
!175 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !9, i64 32}
!176 = !{!"p1 _ZTS19rb_data_type_struct", !13, i64 0}
!177 = distinct !{!177, !41}
!178 = distinct !{!178, !41}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.peeled.count", i32 1}
!181 = distinct !{!181, !41}
!182 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!183 = !{!63, !8, i64 8}
!184 = !{!15, !13, i64 80}
end_hunk_1
