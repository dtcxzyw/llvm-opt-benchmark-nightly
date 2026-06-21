inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@match_backref_number:bb.a
  %.0.i10 = phi i64 [ %i.w, %bb.d ], [ %i.x, %bb.e ]
  %i.y = trunc i64 %.0.i10 to i32
  br label %bb.g

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %RB_SYMBOL_P.exit.thread
  %i.z = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.aa = icmp eq i64 %i.e, 4
  br i1 %i.aa, label %name_to_backref_number.exit.thread, label %name_to_backref_number.exit

name_to_backref_number.exit:                      ; preds = %bb.f
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr i8, ptr %i.z, i64 %i.ae
  %i.ag = inttoptr i64 %i.e to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = call i32 @onig_name_to_backref_number(ptr noundef %i.ai, ptr noundef %i.z, ptr noundef %i.af, ptr noundef %i.c) #28 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %name_to_backref_number.exit.thread, label %bb.g

name_to_backref_number.exit.thread:               ; preds = %bb.f, %name_to_backref_number.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !19
  call fastcc void @name_to_backref_error(i64 noundef %i.al) #30
  unreachable

bb.g:                                             ; preds = %name_to_backref_number.exit, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.y, %rb_num2int_inline.exit ], [ %i.aj, %name_to_backref_number.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_match_busy(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.a, %i.c
  br i1 %.not4.i, label %bb.b, label %RB_FL_SET.exit

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = or i64 %i.e, 16384
  store i64 %i.f, ptr %i.d, align 8, !tbaa !37
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_match_unbusy(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.a, %i.c
  br i1 %.not4.i, label %bb.b, label %RB_FL_UNSET.exit

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = and i64 %i.e, -16385
  store i64 %i.f, ptr %i.d, align 8, !tbaa !37
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_match_count(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_backref_set_string(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_backref_get() #28      ; 6 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.b, 0
  %i.e = and i64 %i.b, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not5.i = and i1 %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  br i1 %.not5.i, label %RB_FL_TEST.exit, label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit:                                  ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = and i64 %i.h, 16384
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %RB_FL_TEST.exit.thread, label %bb.c

bb.c:                                             ; preds = %RB_FL_TEST.exit, %bb.a
  %i.j = load i64, ptr @rb_cMatch, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !44
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.j, i64 noundef 13, i32 noundef 0, i64 noundef 72) #28 ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = getelementptr i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.p, i8 noundef 0, i64 noundef 40, i1 noundef false) #28
  br label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit.thread:                           ; preds = %bb.b, %bb.c, %RB_FL_TEST.exit
  %.pre-phi = phi ptr [ %i.g, %RB_FL_TEST.exit ], [ %i.n, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %.0 = phi i64 [ %i.b, %RB_FL_TEST.exit ], [ %i.m, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.q = getelementptr i8, ptr %.pre-phi, i64 32
  %i.r = getelementptr i8, ptr %.pre-phi, i64 16
  store i64 %0, ptr %i.r, align 8, !tbaa !19
  %i.s = icmp eq i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit.i, label %bb.d

bb.d:                                             ; preds = %RB_FL_TEST.exit.thread
  tail call void @rb_gc_writebarrier(i64 noundef %.0, i64 noundef %0) #28
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.d, %RB_FL_TEST.exit.thread
  %i.w = getelementptr i8, ptr %.pre-phi, i64 24
  store i64 4, ptr %i.w, align 8, !tbaa !19
  %i.x = tail call i32 @onig_region_resize(ptr noundef %i.q, i32 noundef 1) #28
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %match_set_string.exit, label %bb.e

bb.e:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_memerror() #31
  unreachable

match_set_string.exit:                            ; preds = %rb_obj_write.exit.i
  %i.y = getelementptr i8, ptr %.pre-phi, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  store i64 %1, ptr %i.z, align 8, !tbaa !19
  %i.aa = add i64 %2, %1
  %i.ab = getelementptr i8, ptr %.pre-phi, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !19
  tail call void @rb_backref_set(i64 noundef %.0) #28
  ret i64 %.0
}

declare i64 @rb_backref_get() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @match_alloc(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !44
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef 13, i32 noundef 0, i64 noundef 72) #28 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = getelementptr i8, ptr %i.e, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.g, i8 noundef 0, i64 noundef 40, i1 noundef false) #28
  ret i64 %i.d
}

declare void @rb_backref_set(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_reg_prepare_re(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.OnigErrorInfo, align 8      ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [90 x i8], align 16               ; 7 uses
  %3 = alloca %struct.re_pattern_buffer, align 8  ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.h = tail call fastcc ptr @rb_reg_prepare_enc(i64 noundef %0, i64 noundef %1, i32 noundef 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.i = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 3 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !50
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !55   ; 4 uses
  %.not3.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = and i64 %i.r, 8192
  %.not.i.i.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.q, i64 24       ; 4 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %RREGEXP_SRC_PTR.exit.i.thread

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.c
  %.not4.i = icmp eq ptr %i.t, null
  br i1 %.not4.i, label %bb.d, label %rb_reg_check.exit

RREGEXP_SRC_PTR.exit.i.thread:                    ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %.not4.i35 = icmp eq ptr %i.u, null
  br i1 %.not4.i35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RREGEXP_SRC_PTR.exit.i.thread, %RREGEXP_SRC_PTR.exit.i, %bb.b
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.p, ptr %i.d, align 8, !tbaa !19
  br label %RSTRING_PTR.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.p, ptr %i.d, align 8, !tbaa !19
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_reg_check.exit, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.t, %rb_reg_check.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.e, i8 0, i64 90, i1 false)
  %i.y = getelementptr i8, ptr %i.q, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = call fastcc i64 @rb_reg_preprocess(ptr noundef %i.x, ptr noundef %i.aa, ptr noundef %i.h, ptr noundef %i.b, ptr noundef %i.e, i32 noundef 0) ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !19
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str, ptr noundef nonnull %i.e) #29
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %4 = load ptr, ptr %i.c, align 8, !tbaa !50     ; 3 uses
  %i.ae = getelementptr i8, ptr %4, i64 440
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !56
  %i.ag = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.ai = and i64 %i.ah, 8192
  %.not.i30 = icmp eq i64 %i.ai, 0
  %i.aj = getelementptr i8, ptr %i.ag, i64 24     ; 2 uses
  br i1 %.not.i30, label %RSTRING_PTR.exit31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  br label %RSTRING_PTR.exit31

RSTRING_PTR.exit31:                               ; preds = %bb.g, %bb.h
  %i.al = phi ptr [ %i.ak, %bb.h ], [ %i.aj, %bb.g ] ; 4 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !57
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit31
  %i.ap = getelementptr i8, ptr %i.i, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.as = getelementptr i8, ptr %i.al, i64 %i.an
  %i.at = getelementptr i8, ptr %4, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !60
  %i.av = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !61
  %i.aw = call i32 @onig_new_without_alloc(ptr noundef nonnull %3, ptr noundef %i.al, ptr noundef %i.as, i32 noundef %i.au, ptr noundef %i.h, ptr noundef %i.av, ptr noundef nonnull %2) #28 ; 2 uses
  %.not27 = icmp eq i32 %i.aw, 0
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @onig_free_body(ptr noundef nonnull %3) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %5 = load ptr, ptr %i.c, align 8, !tbaa !50     ; 2 uses
  call void @onig_free_body(ptr noundef %5) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %5, ptr noundef nonnull align 8 dereferenceable(456) %3, i64 456, i1 false), !tbaa.struct !62
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %RSTRING_PTR.exit31
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ay = getelementptr i8, ptr %4, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !60
  %i.ba = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !61
  %i.bb = call i32 @onig_new(ptr noundef nonnull %i.c, ptr noundef %i.al, ptr noundef %i.ax, i32 noundef %i.az, ptr noundef %i.h, ptr noundef %i.ba, ptr noundef nonnull %2) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.025 = phi i32 [ %i.aw, %bb.m ], [ %i.bb, %bb.n ] ; 2 uses
  %.not28 = icmp eq i32 %.025, 0
  br i1 %.not28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = sext i32 %.025 to i64
  %i.bd = call i32 (ptr, i64, ...) @onig_error_code_to_str(ptr noundef nonnull %i.e, i64 noundef %i.bc, ptr noundef nonnull %2) #28 ; 0 uses
  call fastcc void @rb_reg_raise(ptr noundef %i.e, i64 noundef %0) #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.bf = getelementptr i8, ptr %i.be, i64 440
  store i64 %i.af, ptr %i.bf, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr %i.a, ptr %i.f, align 8, !tbaa !66
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #28, !srcloc !67
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.bh = load volatile i64, ptr %i.bg, align 8, !tbaa !19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr %i.d, ptr %i.g, align 8, !tbaa !66
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #28, !srcloc !68
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.bj = load volatile i64, ptr %i.bi, align 8, !tbaa !19 ; 0 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.0 = phi ptr [ %i.bk, %bb.q ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @rb_reg_prepare_enc(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 3145728                    ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %str_coderange.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @rb_enc_str_coderange(i64 noundef %1) #28
  br label %str_coderange.exit

str_coderange.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = icmp eq i32 %.0.i, 3145728
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %str_coderange.exit
  %i.h = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  %i.i = tail call ptr @rb_enc_get(i64 noundef %1) #28
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val34 = load ptr, ptr %i.j, align 8, !tbaa !69
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.68, ptr noundef %.val34) #29
  unreachable

bb.d:                                             ; preds = %str_coderange.exit
  %i.k = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.o, 0
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = and i64 %i.q, 8192
  %.not.i.i.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.t, %bb.g ], [ %i.s, %bb.f ]
  %.not4.i = icmp eq ptr %i.u, null
  br i1 %.not4.i, label %bb.h, label %rb_reg_check.exit

bb.h:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.e, %bb.d
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.w = tail call ptr @rb_enc_get(i64 noundef %1) #28 ; 10 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %bb.r, label %bb.i

bb.i:                                             ; preds = %rb_reg_check.exit
  %i.ab = icmp eq i32 %.0.i, 1048576              ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call nonnull ptr @rb_usascii_encoding() #28
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.af = getelementptr i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  br label %bb.r

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ah = getelementptr i8, ptr %i.w, i64 20
  %.val.i = load i32, ptr %i.ah, align 4, !tbaa !14
  %.not.i35 = icmp eq i32 %.val.i, 1
  br i1 %.not.i35, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.l
  %i.ai = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.w) #27
  %.not3.i37 = icmp eq i32 %i.ai, 0
  br i1 %.not3.i37, label %bb.m, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.l, %rb_enc_asciicompat.exit
  tail call fastcc void @reg_enc_error(i64 noundef %0, i64 noundef %1) #30
  unreachable

bb.m:                                             ; preds = %rb_enc_asciicompat.exit
  %i.aj = icmp ne i64 %0, 0
  %i.ak = and i64 %0, 7
  %i.al = icmp eq i64 %i.ak, 0
  %.not5.i.i = and i1 %i.aj, %i.al
  br i1 %.not5.i.i, label %RB_FL_TEST.exit.i, label %bb.n

RB_FL_TEST.exit.i:                                ; preds = %bb.m
  %i.am = load i64, ptr %i.k, align 8, !tbaa !37
  %.fr4.i = freeze i64 %i.am
  %i.an = and i64 %.fr4.i, 65536
  %.not.i38 = icmp eq i64 %i.an, 0
  br i1 %.not.i38, label %bb.n, label %rb_reg_fixed_encoding_p.exit

rb_reg_fixed_encoding_p.exit:                     ; preds = %RB_FL_TEST.exit.i
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.ap = getelementptr i8, ptr %i.ao, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 20
  %.val.i39 = load i32, ptr %i.ar, align 4, !tbaa !14
  %.not.i40 = icmp eq i32 %.val.i39, 1
  br i1 %.not.i40, label %rb_enc_asciicompat.exit43, label %rb_enc_asciicompat.exit43.thread

rb_enc_asciicompat.exit43:                        ; preds = %rb_reg_fixed_encoding_p.exit
  %i.as = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.aq) #27
  %.not3.i42 = icmp eq i32 %i.as, 0
  %or.cond.not = and i1 %i.ab, %.not3.i42
  br i1 %or.cond.not, label %bb.r, label %rb_enc_asciicompat.exit43.thread

rb_enc_asciicompat.exit43.thread:                 ; preds = %rb_reg_fixed_encoding_p.exit, %rb_enc_asciicompat.exit43
  tail call fastcc void @reg_enc_error(i64 noundef %0, i64 noundef %1) #30
  unreachable

bb.n:                                             ; preds = %bb.m, %RB_FL_TEST.exit.i
  %.not31 = icmp eq i32 %2, 0
  br i1 %.not31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr %i.k, align 8, !tbaa !37
  %i.au = and i64 %i.at, 262144
  %.not32 = icmp eq i64 %i.au, 0
  br i1 %.not32, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.aw = icmp ne ptr %i.w, %i.av
  %i.ax = icmp ne i32 %.0.i, 1048576
  %or.cond3 = and i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %i.w, i64 8
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !69
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.69, ptr noundef %.val) #32
end_hunk_0
