Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/stringio?download=true
inline.NumInlined: 271
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@strio_size:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit:                                   ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %rb_ulong2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %get_strio.exit
  %i.f = inttoptr i64 %i.d to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp ult i64 %i.h, 4611686018427387904
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i64 @rb_uint2big(i64 noundef %i.h) #15
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.e, %bb.d, %get_strio.exit
  %.0 = phi i64 [ 1, %get_strio.exit ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 2) i64 @strio_truncate(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @strio_data_type) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %get_strio.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit.i:                                 ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = and i64 %i.e, 131072
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_strio.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %i.k = and i32 %i.j, 2
  %.not3.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i, label %bb.d, label %writable.exit

bb.d:                                             ; preds = %bb.c, %get_strio.exit.i
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.100) #18
  unreachable

writable.exit:                                    ; preds = %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.n = trunc i64 %1 to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %writable.exit
  %i.o = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %writable.exit
  %i.p = tail call i64 @rb_num2long(i64 noundef %1) #15
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %i.q = icmp slt i64 %.0.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_num2long_inline.exit
  tail call void @rb_syserr_fail(i32 noundef 22, ptr noundef nonnull @.str.102) #18
  unreachable

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.r = icmp eq i64 %i.m, 4
  br i1 %i.r, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %i.v = tail call i64 @rb_str_resize(i64 noundef %i.m, i64 noundef %.0.i) #15 ; 0 uses
  %i.w = icmp slt i64 %i.u, %.0.i
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.s, align 8, !tbaa !21
  %i.y = and i64 %i.x, 8192
  %.not.i16 = icmp eq i64 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  br i1 %.not.i16, label %RSTRING_PTR.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.j, %bb.k
  %i.ab = phi ptr [ %i.aa, %bb.k ], [ %i.z, %bb.j ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.u
  %i.ad = sub nsw i64 %.0.i, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ad, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %RSTRING_PTR.exit, %bb.h
  %.0 = phi i64 [ 0, %bb.h ], [ 1, %RSTRING_PTR.exit ], [ 1, %bb.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @strio_external_encoding(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @strio_data_type) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_strio.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit:                                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %get_strio.exit
  %i.f = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @rb_enc_get(i64 noundef %i.f) #15
  br label %bb.e

bb.e:                                             ; preds = %get_strio.exit, %bb.d, %bb.c
  %i.i = phi ptr [ null, %bb.c ], [ %i.h, %bb.d ], [ %i.e, %get_strio.exit ]
  %i.j = tail call i64 @rb_enc_from_encoding(ptr noundef %i.i) #15
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @strio_internal_encoding(i64 %0) #4 {
bb.a:
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @strio_set_encoding(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %3 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = tail call i64 @rb_io_taint_check(i64 noundef %2) #15
  %i.e = tail call ptr @rb_check_typeddata(i64 noundef %i.d, ptr noundef nonnull @strio_data_type) #15 ; 3 uses
  %.not.i15 = icmp eq ptr %i.e, null
  br i1 %.not.i15, label %bb.b, label %rb_scan_args_n_opt.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.76) #18
  unreachable

rb_scan_args_n_opt.exit:                          ; preds = %bb.a
  %i.g = icmp sgt i32 %0, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr [8 x i8], ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %i.l = tail call i32 @rb_keyword_given_p() #15
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @rb_hash_dup(i64 noundef %i.k) #15 ; 0 uses
  %i.n = add nsw i32 %0, -1                       ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %.193.i35 = phi i32 [ %i.n, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.p = load i64, ptr %1, align 8, !tbaa !12     ; 3 uses
  %4 = icmp ult i32 %.193.i35, 3
  br i1 %4, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.d
  %.193.i18 = phi i32 [ 0, %bb.d ], [ %.193.i35, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i18, i32 noundef 1, i32 noundef 2) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.r = tail call ptr @rb_default_external_encoding() #15
  br label %bb.h

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.s = tail call ptr @rb_find_encoding(i64 noundef %i.p) #15 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.t = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.104, i64 noundef 2) #15
  %i.u = tail call i64 @rb_str_append(i64 noundef %i.t, i64 noundef %i.p) #15
  store i64 %i.u, ptr %i.c, align 8, !tbaa !12
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #15
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi ptr [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0, ptr %i.x, align 8, !tbaa !24
  %i.y = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.ac = and i64 %i.ab, 131072
  %.not13 = icmp eq i64 %i.ac, 0
  br i1 %.not13, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !22
  %i.ah = and i32 %i.ag, 2
  %.not14 = icmp eq i32 %i.ah, 0
  br i1 %.not14, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = inttoptr i64 %i.y to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = and i64 %i.aj, 49152
  %.not20 = icmp eq i64 %i.ak, 0
  br i1 %.not20, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call i64 @rb_enc_associate(i64 noundef %i.y, ptr noundef %.0) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @strio_set_encoding_by_bom(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @strio_data_type) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_strio.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit:                                   ; preds = %bb.a
  %i.d = tail call fastcc ptr @set_encoding_by_bom(ptr noundef %i.b)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_strio.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i64 @rb_enc_from_encoding(ptr noundef %i.f) #15
  br label %bb.d

bb.d:                                             ; preds = %get_strio.exit, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ 4, %get_strio.exit ]
  ret i64 %.0
}

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 5, 4) i64 @strio_readchar(i64 noundef %0) #0 {
bb.a:
  %.pr.i = load i64, ptr @strio_readchar.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 4) #15 ; 3 uses
  store i64 %i.a, ptr @strio_readchar.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 @rb_funcallv(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  tail call void @rb_eof_error() #18
  unreachable

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i64 5, 4) i64 @strio_readbyte(i64 noundef %0) #0 {
bb.a:
  %.pr.i = load i64, ptr @strio_readbyte.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.40, i64 noundef 7) #15 ; 3 uses
  store i64 %i.a, ptr @strio_readbyte.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 @rb_funcallv(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  tail call void @rb_eof_error() #18
  unreachable

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i64 5, 4) i64 @strio_readline(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %.pr.i = load i64, ptr @strio_readline.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.41, i64 noundef 4) #15 ; 3 uses
  store i64 %i.a, ptr @strio_readline.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i32 @rb_keyword_given_p() #15
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = tail call i64 @rb_funcallv_kw(i64 noundef %2, i64 noundef %.lcssa.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.d) #15 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  tail call void @rb_eof_error() #18
  unreachable

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define internal range(i64 5, 4) i64 @strio_sysread(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %.pr.i = load i64, ptr @strio_sysread.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.43, i64 noundef 4) #15 ; 3 uses
  store i64 %i.a, ptr @strio_sysread.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i32 @rb_keyword_given_p() #15
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = tail call i64 @rb_funcallv_kw(i64 noundef %2, i64 noundef %.lcssa.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.d) #15 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  tail call void @rb_eof_error() #18
  unreachable

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define internal i64 @strio_read_nonblock(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = tail call i32 @rb_keyword_given_p() #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_hash_dup(i64 noundef %i.e) #15
  %i.h = add nsw i32 %0, -1                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i22 = phi i64 [ %i.g, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %.193.i21 = phi i32 [ %i.h, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %3 = icmp ult i32 %.193.i21, 3
  br i1 %3, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.b
  %.193.i11 = phi i32 [ 0, %bb.b ], [ %.193.i21, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i11, i32 noundef 1, i32 noundef 2) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.j = icmp ne i64 %.1.i22, 4
  %i.k = sext i1 %i.j to i32
  %spec.select = add nsw i32 %0, %i.k
  %i.l = tail call i64 @strio_read(i32 noundef %spec.select, ptr noundef nonnull %1, i64 noundef %2) ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.n = icmp eq i64 %.1.i22, 4
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @sym_exception, align 8, !tbaa !12
  %i.p = tail call i64 @rb_hash_lookup2(i64 noundef %.1.i22, i64 noundef %i.o, i64 noundef 36) #15
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_eof_error() #18
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit, %bb.d
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_io_addstr(i64 noundef, i64 noundef) #1

declare i64 @rb_io_print(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @rb_io_printf(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @rb_io_puts(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @rb_io_write(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i64 @strio_syswrite_nonblock(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = tail call i32 @rb_keyword_given_p() #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_hash_dup(i64 noundef %i.e) #15 ; 0 uses
  %i.h = add nsw i32 %0, -1                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %.thread7

.thread7:                                         ; preds = %bb.a, %bb.b
  %.193.i9 = phi i32 [ %i.h, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.j = icmp eq i32 %.193.i9, 1
  br i1 %i.j, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.thread7, %bb.b
  %.193.i4 = phi i32 [ 0, %bb.b ], [ %.193.i9, %.thread7 ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i4, i32 noundef 1, i32 noundef 1) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread7
  %i.k = load i64, ptr %1, align 8, !tbaa !12
  %i.l = tail call i64 @rb_io_write(i64 noundef %2, i64 noundef %i.k) #15
  ret i64 %i.l
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @strio_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  tail call void @rb_gc_mark(i64 noundef %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strio_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = icmp slt i32 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @strio_memsize(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i64 40
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

declare i32 @rb_block_given_p() local_unnamed_addr #1

declare i64 @rb_obj_as_string(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #5

declare i64 @rb_class_new_instance_kw(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield(i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @strio_finalize(i64 noundef returned %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @strio_data_type) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_strio.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit:                                   ; preds = %bb.a
  store i64 4, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = and i32 %i.e, -4
  store i32 %i.f, ptr %i.d, align 8, !tbaa !22
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_strio(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @strio_data_type) #15
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.76) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_call_super(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @strio_init(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, i64 noundef returned %3) unnamed_addr #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
end_hunk_0
