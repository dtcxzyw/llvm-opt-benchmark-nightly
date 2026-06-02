inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0_@rb_require_string:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr %i.b, ptr %i.c, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #7, !srcloc !94
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  %i.i = call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = call i64 @rb_ractor_require(i64 noundef %i.d, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.k = call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.d, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.d:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @load_failed(i64 noundef %i.d) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.b, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_require_relative_entrypoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_current_realfilepath() #7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_loaderror(ptr noundef nonnull @.str.1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_file_dirname(i64 noundef %i.b) #7
  %i.e = tail call i64 @rb_file_absolute_path(i64 noundef %0, i64 noundef %i.d) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.i = tail call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = tail call i64 @rb_ractor_require(i64 noundef %i.e, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.c
  %i.k = tail call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.e, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.f:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @load_failed(i64 noundef %i.e) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.d, %bb.h
  %.0.i = phi i64 [ %i.u, %bb.h ], [ %i.j, %bb.d ]
  ret i64 %.0.i
}

declare i64 @rb_current_realfilepath() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_loaderror(ptr noundef, ...) local_unnamed_addr #11

declare i64 @rb_file_dirname(i64 noundef) local_unnamed_addr #1

declare i64 @rb_file_absolute_path(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_f_require_relative(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_require_relative_entrypoint(i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_resolve_feature_path(i64 %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr @rb_loading_box() #7
  %i.c = tail call i64 @rb_get_path(i64 noundef %1) #7
  %i.d = tail call i64 @rb_str_encode_ospath(i64 noundef %i.c) #7 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = call fastcc i32 @search_required(ptr noundef %i.b, i64 noundef %i.d, ptr noundef %i.a, ptr noundef nonnull @no_feature_p)
  switch i32 %i.e, label %bb.d [
    i32 114, label %bb.b
    i32 115, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 2) #7 ; 3 uses
  store i64 %i.f, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !96

bb.c:                                             ; preds = %bb.a
  %.pr.i8 = load i64, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20 ; 2 uses
  %.not4.i9 = icmp eq i64 %.pr.i8, 0
  br i1 %.not4.i9, label %.lr.ph.i11, label %rbimpl_intern_const.exit

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %i.g = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 2) #7 ; 3 uses
  store i64 %i.g, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20
  %.not.i12 = icmp eq i64 %i.g, 0
  br i1 %.not.i12, label %.lr.ph.i11, label %rbimpl_intern_const.exit, !llvm.loop !96

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i11, %.lr.ph.i, %bb.c, %bb.b
  %.lcssa.i10.sink = phi i64 [ %i.f, %.lr.ph.i ], [ %.pr.i, %bb.b ], [ %.pr.i8, %bb.c ], [ %i.g, %.lr.ph.i11 ]
  %i.h = call i64 @rb_id2sym(i64 noundef %.lcssa.i10.sink) #7
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %i.j = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.h, i64 noundef %i.i) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.j, %rbimpl_intern_const.exit ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

declare i64 @rb_str_encode_ospath(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @search_required(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store volatile i64 0, ptr %2, align 8, !tbaa !20
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.k = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 46) #22 ; 10 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 47) #22
  %.not97 = icmp eq ptr %i.l, null
  br i1 %.not97, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not101 = icmp eq i32 %i.o, 0
  br i1 %.not101, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not103 = icmp eq ptr %i.p, null
  br i1 %.not103, label %bb.ap, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.p) #7
  store volatile i64 %i.q, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  %i.r = call i64 @rb_find_file(i64 noundef %1) #7 ; 3 uses
  %.not102 = icmp eq i64 %i.r, 0
  br i1 %.not102, label %bb.ap, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 8192
  %.not.i112 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i112, label %RSTRING_PTR.exit113, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RSTRING_PTR.exit113

RSTRING_PTR.exit113:                              ; preds = %bb.i, %bb.j
  %i.x = phi ptr [ %i.w, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.y = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 46) #22
  %i.z = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.y, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %RSTRING_PTR.exit113
  store volatile i64 %i.r, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.l:                                             ; preds = %bb.d
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %sub_0

sub_0:                                            ; preds = %bb.l
  %i.af = load i8, ptr %i.k, align 1
  %.not127 = icmp eq i8 %i.af, 46
  br i1 %.not127, label %sub_1, label %.thread

sub_1:                                            ; preds = %sub_0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.not128 = icmp eq i8 %i.ah, 111
  br i1 %.not128, label %.tail, label %.thread

.tail:                                            ; preds = %sub_1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread

bb.m:                                             ; preds = %.tail, %bb.l
  %i.al = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not98 = icmp eq i32 %i.al, 0
  br i1 %.not98, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not100 = icmp eq ptr %i.am, null
  br i1 %.not100, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.am) #7
  store volatile i64 %i.an, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.p:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ap = and i64 %i.ao, 8192
  %.not.i114 = icmp eq i64 %i.ap, 0
  br i1 %.not.i114, label %RSTRING_PTR.exit115, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit115

RSTRING_PTR.exit115:                              ; preds = %bb.p, %bb.q
  %i.ar = phi ptr [ %i.aq, %bb.q ], [ %i.h, %bb.p ]
  %i.as = ptrtoint ptr %i.k to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call i64 @rb_str_subseq(i64 noundef %1, i64 noundef 0, i64 noundef %i.au) #7 ; 3 uses
  %i.aw = call i64 @rb_str_cat(i64 noundef %i.av, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.av) #7
  %i.ax = call i64 @rb_find_file(i64 noundef %i.av) #7 ; 3 uses
  %.not99 = icmp eq i64 %i.ax, 0
  br i1 %.not99, label %.thread, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit115
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = and i64 %i.az, 8192
  %.not.i116 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.ay, i64 24     ; 2 uses
  br i1 %.not.i116, label %RSTRING_PTR.exit117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  br label %RSTRING_PTR.exit117

RSTRING_PTR.exit117:                              ; preds = %bb.r, %bb.s
  %i.bd = phi ptr [ %i.bc, %bb.s ], [ %i.bb, %bb.r ] ; 2 uses
  %i.be = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bd, i32 noundef 46) #22
  %i.bf = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef %i.be, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load ptr, ptr %i.b, align 8
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond4 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond4, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %RSTRING_PTR.exit117
  store volatile i64 %i.ax, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.u:                                             ; preds = %bb.c, %RSTRING_PTR.exit
  %i.bj = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.fr = freeze i32 %i.bj                         ; 3 uses
  %i.bk = icmp eq i32 %.fr, 114
  br i1 %i.bk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not109 = icmp eq ptr %i.bl, null
  br i1 %.not109, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.bl) #7
  store volatile i64 %i.bm, ptr %2, align 8, !tbaa !20
  br label %bb.ap

.thread:                                          ; preds = %sub_1, %sub_0, %RSTRING_PTR.exit115, %.tail
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  %i.bn = icmp eq i32 %.fr, 115
  %spec.select = select i1 %i.bn, ptr @ruby_ext, ptr @loadable_ext
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %.087126 = phi i32 [ 0, %.thread ], [ %.fr, %bb.x ] ; 3 uses
  %i.bo = phi ptr [ @loadable_ext, %.thread ], [ %spec.select, %bb.x ]
  %i.bp = call i32 @rb_find_file_ext(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bo) #7 ; 4 uses
  %i.bq = icmp eq i32 %.087126, 0                 ; 3 uses
  %i.br = icmp ne i32 %i.bp, 1
  %or.cond8 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond8, label %bb.z, label %.critedge111

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !101
  %i.bt = getelementptr i8, ptr %i.bs, i64 584    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !102
  %.not104 = icmp eq ptr %i.bu, null
  br i1 %.not104, label %.critedge111, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !20
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call i64 @rb_str_dup(i64 noundef %i.bv) #7 ; 3 uses
  store i64 %i.bw, ptr %i.c, align 8, !tbaa !20
  %i.bx = call i64 @rb_str_cat(i64 noundef %i.bw, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = phi i64 [ %i.bw, %bb.ab ], [ %i.bv, %bb.aa ]
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !22
  %i.cb = and i64 %i.ca, 8192
  %.not.i118 = icmp eq i64 %i.cb, 0
  %i.cc = getelementptr i8, ptr %i.bz, i64 24     ; 2 uses
  br i1 %.not.i118, label %RSTRING_PTR.exit119, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  br label %RSTRING_PTR.exit119

RSTRING_PTR.exit119:                              ; preds = %bb.ac, %bb.ad
  %i.ce = phi ptr [ %i.cd, %bb.ad ], [ %i.cc, %bb.ac ] ; 2 uses
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !102
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = call i32 @rb_st_lookup(ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef null) #7
  %.not105 = icmp eq i32 %i.ch, 0
  br i1 %.not105, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit119
  %i.ci = call i64 @rb_filesystem_str_new_cstr(ptr noundef %i.ce) #7
  store volatile i64 %i.ci, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !103
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ck = load volatile i64, ptr %i.cj, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ap

.critedge:                                        ; preds = %RSTRING_PTR.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge111

.critedge111:                                     ; preds = %bb.z, %.critedge, %bb.y
  switch i32 %i.bp, label %bb.ai [
    i32 0, label %bb.af
    i32 1, label %bb.aj
  ]

bb.af:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = and i64 %i.cn, 8192
  %.not.i120 = icmp eq i64 %i.co, 0
  %i.cp = getelementptr i8, ptr %i.cm, i64 24     ; 2 uses
  br i1 %.not.i120, label %RSTRING_PTR.exit121, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  br label %RSTRING_PTR.exit121

RSTRING_PTR.exit121:                              ; preds = %bb.ag, %bb.ah
  %i.cr = phi ptr [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ]
  %i.cs = call i32 %3(ptr noundef %0, ptr noundef %i.cr, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef null) #7, !callees !98
  br label %bb.ap

bb.ai:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %.critedge111
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cw = and i64 %i.cv, 8192
  %.not.i122 = icmp eq i64 %i.cw, 0
  %i.cx = getelementptr i8, ptr %i.cu, i64 24     ; 2 uses
  br i1 %.not.i122, label %RSTRING_PTR.exit123, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  br label %RSTRING_PTR.exit123

RSTRING_PTR.exit123:                              ; preds = %bb.aj, %bb.ak
  %i.cz = phi ptr [ %i.cy, %bb.ak ], [ %i.cx, %bb.aj ] ; 2 uses
  %i.da = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cz, i32 noundef 46) #22
  %i.db = icmp eq i32 %i.bp, 1
  %i.dc = zext i1 %i.db to i32
  %i.dd = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef %i.da, i32 noundef %i.dc, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = icmp ne ptr %i.df, null
  %or.cond10 = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond10, label %bb.al, label %bb.am

bb.al:                                            ; preds = %RSTRING_PTR.exit123
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !20
  store volatile i64 %i.dh, ptr %2, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %RSTRING_PTR.exit123, %bb.al
  %i.di = icmp ugt i32 %i.bp, 1
  %i.dj = select i1 %i.di, i32 115, i32 114
  br label %bb.ap

bb.an:                                            ; preds = %bb.ai, %bb.af
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not108 = icmp eq ptr %i.dk, null
  br i1 %.not108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.dk) #7
  store volatile i64 %i.dl, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ae, %RSTRING_PTR.exit121, %bb.am, %bb.ao, %bb.an, %bb.v, %bb.w, %bb.t, %RSTRING_PTR.exit117, %bb.n, %bb.o, %bb.h, %bb.k, %RSTRING_PTR.exit113, %bb.f, %bb.g
  %.4 = phi i32 [ 115, %bb.t ], [ 114, %bb.v ], [ 115, %bb.n ], [ 114, %bb.f ], [ 114, %bb.k ], [ 0, %bb.h ], [ 114, %bb.g ], [ 114, %RSTRING_PTR.exit113 ], [ 115, %bb.o ], [ 115, %RSTRING_PTR.exit117 ], [ 114, %bb.w ], [ 115, %bb.ae ], [ %i.dj, %bb.am ], [ %i.cs, %RSTRING_PTR.exit121 ], [ %.087126, %bb.ao ], [ %.087126, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @no_feature_p(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i32 %3, i32 %4, ptr readnone captures(none) %5) #12 {
bb.a:
  ret i32 0
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @rb_ext_ractor_safe(i1 noundef zeroext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr i8, ptr %.val.i, i64 464
  store i8 %i.b, ptr %i.f, align 8, !tbaa !104
end_hunk_0
begin_hunk_1_@run_static_ext_init:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = getelementptr i8, ptr %i.c, i64 584
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.m = call i32 @rb_st_delete(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !20
  %i.o = inttoptr i64 %i.n to ptr
  call void %i.o() #7
  br label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit, %bb.c, %bb.d
  %.0 = phi i64 [ 20, %bb.d ], [ 0, %bb.c ], [ 0, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @load_ext(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 %0, ptr %i.b, align 8, !tbaa !20
  %i.f = tail call ptr @rb_loading_box() #7       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !191, !range !33, !noundef !34
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35
  %i.k = call i64 @rb_box_local_extension(i64 noundef %i.j, i64 noundef %1, i64 noundef %0, ptr noundef nonnull %i.c) #7 ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i64 [ %i.k, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  call void @rb_scope_visibility_set(i32 noundef 1) #7
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %i.s = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 8192
  %.not.i9 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i9, label %RSTRING_PTR.exit10, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RSTRING_PTR.exit10

RSTRING_PTR.exit10:                               ; preds = %RSTRING_PTR.exit, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.v, %RSTRING_PTR.exit ]
  %i.y = call ptr @dln_load_feature(ptr noundef %i.r, ptr noundef %i.x) #7
  %i.z = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not8 = icmp eq i64 %i.z, 0
  br i1 %.not8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit10
  call void @rb_box_cleanup_local_extension(i64 noundef %i.z) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RSTRING_PTR.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !192
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ab = load volatile i64, ptr %i.aa, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr %i.a, ptr %i.e, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #7, !srcloc !193
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !20 ; 0 uses
  %i.ae = ptrtoint ptr %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %i.ae
}

declare i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef, i64 noundef) local_unnamed_addr #1

declare noalias nonnull ptr @ruby_strdup(ptr noundef) local_unnamed_addr #1

declare i64 @rb_thread_shield_new() local_unnamed_addr #1

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_thread_shield_owned(i64 noundef) local_unnamed_addr #1

declare i64 @rb_warning_string(ptr noundef, ...) local_unnamed_addr #1

declare void @rb_backtrace_each(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) #1

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_thread_shield_wait(i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_box_local_extension(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_scope_visibility_set(i32 noundef) local_unnamed_addr #1

declare ptr @dln_load_feature(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_box_cleanup_local_extension(i64 noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @release_thread_shield(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @rb_thread_shield_destroy(i64 noundef %i.a) #7 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_thread_shield_release(i64 noundef %i.a) #7
  %.not7 = icmp eq i64 %i.c, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i64, ptr %0, align 8, !tbaa !20
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @ruby_xfree(ptr noundef %i.e) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 2, %bb.e ], [ 1, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i64 @rb_thread_shield_destroy(i64 noundef) local_unnamed_addr #1

declare i64 @rb_thread_shield_release(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #20

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #21

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @loaded_feature_path(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = add i64 %3, 1
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 46) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %1, %3                           ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef nonnull %2, i64 noundef %3) #22
  %.not64 = icmp eq i32 %i.g, 0
  br i1 %.not64, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %.not6580 = icmp eq i64 %1, 0
  br i1 %.not6580, label %.critedgethread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.05581 = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = load i8, ptr %.05581, align 1, !tbaa !21 ; 2 uses
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, 46
  br i1 %switch, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.05581, i64 -1    ; 2 uses
  %.not65 = icmp eq ptr %0, %i.k
  br i1 %.not65, label %.critedgethread-pre-split, label %.lr.ph, !llvm.loop !194

.critedgethread-pre-split:                        ; preds = %bb.e, %bb.d
  %.055.lcssa = phi ptr [ %i.h, %bb.d ], [ %0, %bb.e ] ; 2 uses
  %.pr = load i8, ptr %.055.lcssa, align 1, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedgethread-pre-split
  %.05578 = phi ptr [ %.055.lcssa, %.critedgethread-pre-split ], [ %.05581, %.lr.ph ] ; 2 uses
  %i.l = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.i, %.lr.ph ]
  %.not68 = icmp eq i8 %i.l, 46
  br i1 %.not68, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.m = ptrtoint ptr %.05578 to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, %3
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sub i64 0, %3
  %i.r = getelementptr i8, ptr %.05578, i64 %i.q
  %i.s = tail call i32 @strncmp(ptr noundef %i.r, ptr noundef nonnull %2, i64 noundef %3) #22
  %.not69 = icmp eq i32 %i.s, 0
  br i1 %.not69, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = sub i64 %i.o, %3
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.056 = phi i64 [ %i.t, %bb.h ], [ %i.e, %bb.c ] ; 5 uses
  %i.u = icmp sgt i64 %.056, 0                    ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %0, i64 %.056
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %.not70 = icmp eq i8 %i.x, 47
  br i1 %.not70, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %4, label %bb.n [
    i32 115, label %bb.l
    i32 114, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 %.056
  %i.z = getelementptr i8, ptr %i.y, i64 %3
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %0, i64 %.056
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %i.ag = sext i1 %i.u to i64
  %spec.select = add nsw i64 %.056, %i.ag         ; 3 uses
  %i.ah = inttoptr i64 %5 to ptr                  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %.not72 = icmp eq i64 %spec.select, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.053 = phi i64 [ 0, %bb.n ], [ %i.ba, %bb.t ]  ; 4 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.o
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.an = icmp slt i64 %.053, %i.am
  br i1 %i.an, label %bb.p, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.o
  %i.ao = lshr i64 %i.ak, 15
  %i.ap = and i64 %i.ao, 127
  %i.aq = icmp samesign ult i64 %.053, %i.ap
  br i1 %i.aq, label %.thread, label %.loopexit

.thread:                                          ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %RARRAY_AREF.exit

bb.p:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread, %bb.p
  %.0.i.i = phi ptr [ %i.ar, %bb.p ], [ %i.ai, %.thread ]
  %i.as = getelementptr [8 x i8], ptr %.0.i.i, i64 %.053
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20
  store i64 %i.at, ptr %i.a, align 8, !tbaa !20
  %i.au = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #7
  %i.av = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !122
  %.not71 = icmp eq i64 %i.ay, %spec.select
  br i1 %.not71, label %bb.q, label %bb.t

bb.q:                                             ; preds = %RARRAY_AREF.exit
  br i1 %.not72, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @strncmp(ptr noundef %0, ptr noundef %i.au, i64 noundef %spec.select) #22
  %.not73 = icmp eq i32 %i.az, 0
  br i1 %.not73, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.t:                                             ; preds = %RARRAY_AREF.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ba = add nuw nsw i64 %.053, 1
  br label %bb.o, !llvm.loop !195

.loopexit:                                        ; preds = %rb_array_len.exit, %rb_array_len.exit.thread, %bb.s, %bb.l, %bb.m, %bb.j, %.critedge, %bb.f, %bb.g, %bb.a
  %.2 = phi i64 [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %.critedge ], [ %i.av, %bb.s ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %rb_array_len.exit.thread ], [ 0, %rb_array_len.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @loaded_feature_path_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !130
  %i.k = tail call fastcc i64 @loaded_feature_path(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f, i32 noundef %i.h, i64 noundef %i.j)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.a, ptr %i.l, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @rb_st_get_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #1

end_hunk_1
