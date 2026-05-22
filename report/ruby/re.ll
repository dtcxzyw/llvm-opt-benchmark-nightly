inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@rb_reg_check_preprocess:bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  %i.p = call ptr @rb_enc_get(i64 noundef %i.f) #28
  %i.q = call fastcc i64 @rb_reg_preprocess(ptr noundef %i.l, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.b, ptr noundef %i.c, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.a, ptr %i.d, align 8, !tbaa !66
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !77
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !19 ; 0 uses
  %i.t = icmp eq i64 %i.q, 4
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %i.x = and i64 %i.w, 8192
  %.not.i.i = icmp eq i64 %i.x, 0
  %i.y = getelementptr i8, ptr %i.v, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_reg_error_desc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  br label %rb_reg_error_desc.exit

rb_reg_error_desc.exit:                           ; preds = %bb.c, %bb.d
  %i.aa = phi ptr [ %i.z, %bb.d ], [ %i.y, %bb.c ]
  %i.ab = getelementptr i8, ptr %i.v, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.ad = call ptr @rb_enc_get(i64 noundef %i.u) #28
  %i.ae = call fastcc i64 @rb_enc_reg_error_desc(ptr noundef %i.aa, i64 noundef %i.ac, ptr noundef %i.ad, i32 noundef 0, ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit, %rb_reg_error_desc.exit
  %.0 = phi i64 [ %i.ae, %rb_reg_error_desc.exit ], [ 4, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %.0
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #4

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_reg_error_desc(i64 noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call ptr @rb_enc_get(i64 noundef %0) #28
  %i.j = tail call fastcc i64 @rb_enc_reg_error_desc(ptr noundef %i.f, i64 noundef %i.h, ptr noundef %i.i, i32 noundef %1, ptr noundef %2)
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_reg_alloc() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !44
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.b, i64 noundef 6, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_s_alloc(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !44
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef 6, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_reg_new_str(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [90 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !44
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.c, i64 noundef 6, i32 noundef 0, i64 noundef 40) #28 ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.a, i8 0, i64 90, i1 false)
  %i.i = call fastcc i32 @rb_reg_initialize_str(i64 noundef %i.f, i64 noundef %0, i32 noundef %1, ptr noundef %i.a, ptr noundef null, i32 noundef 0)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %rb_reg_init_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @rb_reg_raise_str(i64 noundef %0, i32 noundef %1, ptr noundef %i.a) #30
  unreachable

rb_reg_init_str.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_reg_init_str(i64 noundef returned %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [90 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.a, i8 0, i64 90, i1 false)
  %i.b = call fastcc i32 @rb_reg_initialize_str(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef null, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @rb_reg_raise_str(i64 noundef %1, i32 noundef %2, ptr noundef %i.a) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @rb_reg_initialize_str(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @rb_enc_get(i64 noundef %1) #28 ; 4 uses
  %i.b = and i32 %2, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull ptr @rb_ascii8bit_encoding() #28 ; 2 uses
  %.not28 = icmp eq ptr %i.a, %i.c
  br i1 %.not28, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %1 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 3145728                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %str_coderange.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @rb_enc_str_coderange(i64 noundef %1) #28
  br label %str_coderange.exit

str_coderange.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %.not29 = icmp eq i32 %.0.i, 1048576
  br i1 %.not29, label %.thread, label %bb.e

bb.e:                                             ; preds = %str_coderange.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %3, ptr noundef nonnull align 1 dereferenceable(70) @.str.95, i64 noundef 70, i1 false) #28
  br label %reg_set_source.exit

.thread:                                          ; preds = %str_coderange.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %i.a, %bb.a ], [ %i.c, %str_coderange.exit ], [ %i.a, %bb.b ]
  %i.j = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37
  %i.l = and i64 %i.k, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %.thread, %bb.f
  %i.o = phi ptr [ %i.n, %bb.f ], [ %i.m, %.thread ]
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38
  %i.r = tail call fastcc i32 @rb_reg_initialize(i64 noundef %0, ptr noundef %i.o, i64 noundef %i.q, ptr noundef %.2, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %reg_set_source.exit

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.t = tail call ptr @rb_enc_get(i64 noundef %0) #28 ; 2 uses
  %.not.i30 = icmp eq ptr %i.t, %i.a
  br i1 %.not.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @rb_str_dup(i64 noundef %1) #28
  %i.v = tail call i64 @rb_enc_associate(i64 noundef %i.u, ptr noundef %i.t) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i31 = phi i64 [ %i.v, %bb.h ], [ %1, %bb.g ]
  %i.w = tail call i64 @rb_fstring(i64 noundef %.0.i31) #28 ; 4 uses
  %i.x = inttoptr i64 %0 to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 24
  store i64 %i.w, ptr %i.y, align 8, !tbaa !19
  %i.z = icmp eq i64 %i.w, 0
  %i.aa = and i64 %i.w, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %reg_set_source.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.w) #28
  br label %reg_set_source.exit

reg_set_source.exit:                              ; preds = %bb.j, %bb.i, %RSTRING_PTR.exit, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %RSTRING_PTR.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.1
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_reg_raise_str(i64 noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call fastcc i64 @rb_reg_error_desc(i64 noundef %0, i32 noundef %1, ptr noundef %2)
  tail call void @rb_exc_raise(i64 noundef %i.a) #29
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_reg_new_ary(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [90 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [90 x i8], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr null, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.d, i8 0, i64 90, i1 false)
  %i.f = tail call nonnull ptr @rb_ascii8bit_encoding() #28 ; 2 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %i.i = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 15
  %i.k = and i64 %i.j, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = icmp eq i64 %.0.i.i, 0
  br i1 %i.n, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %rb_array_len.exit.i
  %i.o = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.p = getelementptr i8, ptr %i.g, i64 32
  %i.q = and i32 %1, 32
  %.not32.i = icmp eq i32 %i.q, 0
  br label %bb.e

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.96) #29
  unreachable

bb.e:                                             ; preds = %bb.s, %.preheader.i
  %i.s = phi i64 [ %.pre.i, %bb.s ], [ %i.h, %.preheader.i ] ; 2 uses
  %.026.i = phi i64 [ %.127.i, %bb.s ], [ 0, %.preheader.i ] ; 6 uses
  %.025.i = phi i32 [ %i.bh, %bb.s ], [ 0, %.preheader.i ] ; 2 uses
  %.024.i = phi ptr [ %.1.i, %bb.s ], [ null, %.preheader.i ] ; 6 uses
  %i.t = sext i32 %.025.i to i64                  ; 3 uses
  %i.u = and i64 %i.s, 8192
  %.not.i40.i = icmp eq i64 %i.u, 0
  br i1 %.not.i40.i, label %rb_array_len.exit42.i, label %rb_array_len.exit42.thread.i

rb_array_len.exit42.i:                            ; preds = %bb.e
  %i.v = load i64, ptr %i.o, align 8, !tbaa !13
  %i.w = icmp sgt i64 %i.v, %i.t
  br i1 %i.w, label %bb.f, label %bb.t

rb_array_len.exit42.thread.i:                     ; preds = %bb.e
  %i.x = lshr i64 %i.s, 15
  %i.y = and i64 %i.x, 127
  %i.z = icmp sgt i64 %i.y, %i.t
  br i1 %i.z, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %rb_array_len.exit42.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  br label %RARRAY_AREF.exit.i

bb.f:                                             ; preds = %rb_array_len.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !13
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.f, %.thread.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.o, %.thread.i ]
  %i.ab = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.t
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !19
  %i.ad = call ptr @rb_enc_get(i64 noundef %i.ac) #28 ; 2 uses
  %.not33.i = icmp eq ptr %i.ad, %i.f
  %or.cond.i = select i1 %.not32.i, i1 true, i1 %.not33.i
  br i1 %or.cond.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %RARRAY_AREF.exit.i
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3145728                  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %str_coderange.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @rb_enc_str_coderange(i64 noundef %i.ae) #28
  br label %str_coderange.exit.i

str_coderange.exit.i:                             ; preds = %bb.h, %bb.g
  %.0.i43.i = phi i32 [ %i.ak, %bb.h ], [ %i.ai, %bb.g ]
  %.not34.i = icmp eq i32 %.0.i43.i, 1048576
  br i1 %.not34.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %str_coderange.exit.i
  %i.al = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.95) #29
  unreachable

bb.j:                                             ; preds = %str_coderange.exit.i, %RARRAY_AREF.exit.i
  %.0.i = phi ptr [ %i.ad, %RARRAY_AREF.exit.i ], [ %i.f, %str_coderange.exit.i ]
  %i.am = call i64 @rb_string_value(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.an = load i64, ptr %i.e, align 8, !tbaa !19
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.aq = and i64 %i.ap, 8192
  %.not.i44.i = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  br i1 %.not.i44.i, label %RSTRING_PTR.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %i.as, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !38
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.av
  %i.ax = call fastcc i64 @rb_reg_preprocess(ptr noundef %i.at, ptr noundef %i.aw, ptr noundef %.0.i, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %1)
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %RSTRING_PTR.exit.i
  %i.az = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.d) #29
  unreachable

bb.m:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %.not35.i = icmp eq ptr %i.ba, null
  br i1 %.not35.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not36.i = icmp eq ptr %.024.i, null
  %.not37.i = icmp eq ptr %.024.i, %i.ba
  %or.cond39.i = or i1 %.not36.i, %.not37.i
  br i1 %or.cond39.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.bc = getelementptr i8, ptr %.024.i, i64 8
  %.024.val.i = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !69
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bb, ptr noundef nonnull @.str.98, ptr noundef %.024.val.i, ptr noundef %.val.i) #29
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %.1.i = phi ptr [ %.024.i, %bb.m ], [ %i.ba, %bb.n ]
  %.not38.i = icmp eq i64 %.026.i, 0
  %i.be = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = call i64 @rb_str_new_shared(i64 noundef %i.be) #28
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bg = call i64 @rb_str_buf_append(i64 noundef %.026.i, i64 noundef %i.be) #28 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.127.i = phi i64 [ %.026.i, %bb.r ], [ %i.bf, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.bh = add i32 %.025.i, 1
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !37
  br label %bb.e, !llvm.loop !78

bb.t:                                             ; preds = %rb_array_len.exit42.thread.i, %rb_array_len.exit42.i
  %.not.i = icmp eq ptr %.024.i, null
  br i1 %.not.i, label %rb_reg_preprocess_dregexp.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = call i64 @rb_enc_associate(i64 noundef %.026.i, ptr noundef nonnull %.024.i) #28 ; 0 uses
  br label %rb_reg_preprocess_dregexp.exit

rb_reg_preprocess_dregexp.exit:                   ; preds = %bb.t, %bb.u
end_hunk_0
