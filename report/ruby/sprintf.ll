inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@rb_Float
; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_catf(i64 noundef %0, ptr noundef nonnull %1, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_str_modify(i64 noundef %i.c) #20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 8192
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_str_vcatf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %rb_str_vcatf.exit

rb_str_vcatf.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  call fastcc void @ruby_vsprintf0(i64 noundef %i.d, ptr noundef %i.m, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #6

declare void @rb_str_tmp_frozen_release(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_ruby_debug_ptr() local_unnamed_addr #3

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ruby_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_printf_sfile, align 8    ; 11 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp slt i64 %1, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 520, ptr %i.c, align 8, !tbaa !63
  store ptr %0, ptr %4, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !68
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.e = add i64 %1, -1
  %i.f = select i1 %.not.i, i64 0, i64 %i.e       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.f, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @BSD__sfvwrite, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !72
  %i.k = call fastcc i64 @BSD_vfprintf(ptr noundef %4, ptr noundef nonnull %2, ptr noundef %3)
  br i1 %.not.i, label %ruby_do_vsnprintf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !67
  store i8 0, ptr %i.l, align 1, !tbaa !15
  br label %ruby_do_vsnprintf.exit

ruby_do_vsnprintf.exit:                           ; preds = %bb.b, %bb.c
  %i.m = icmp ugt i64 %1, 2147483647
  %i.n = trunc i64 %i.k to i32
  %.0.i = select i1 %i.m, i32 2147483647, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ruby_do_vsnprintf.exit
  %.0 = phi i32 [ %.0.i, %ruby_do_vsnprintf.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ruby_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_printf_sfile, align 8    ; 11 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = icmp ne ptr %0, null
  %i.b = icmp slt i64 %1, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 520, ptr %i.c, align 8, !tbaa !63
  store ptr %0, ptr %3, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !68
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.e = add i64 %1, -1
  %i.f = select i1 %.not.i, i64 0, i64 %i.e       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.f, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @BSD__sfvwrite, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !72
  %i.k = call fastcc i64 @BSD_vfprintf(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %4)
  br i1 %.not.i, label %ruby_do_vsnprintf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !67
  store i8 0, ptr %i.l, align 1, !tbaa !15
  br label %ruby_do_vsnprintf.exit

ruby_do_vsnprintf.exit:                           ; preds = %bb.b, %bb.c
  %i.m = icmp ugt i64 %1, 2147483647
  %i.n = trunc i64 %i.k to i32
  %.0.i = select i1 %i.m, i32 2147483647, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.va_end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ruby_do_vsnprintf.exit
  %.0 = phi i32 [ %.0.i, %ruby_do_vsnprintf.exit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_enc_vsprintf(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !61
  %i.c = icmp sgt i32 %.val, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !62
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.33, ptr noundef %.val9) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_enc_associate(i64 noundef %i.a, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.g = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.l = phi ptr [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  tail call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.l, ptr noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ruby_vsprintf0(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_printf_buffer_extra, align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %5 = and i64 %i.e, 3145728
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  br label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit, %bb.a
  %.0 = phi i64 [ %i.l, %RSTRING_PTR.exit ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 520, ptr %i.m, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.o, align 8, !tbaa !76
  %i.p = tail call i64 @rb_str_capacity(i64 noundef %0) #22
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !77
  store ptr %i.b, ptr %i.n, align 8, !tbaa !78
  store ptr %1, ptr %4, align 8, !tbaa !79
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @ruby__sfvwrite, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @ruby__sfvextra, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store volatile i64 0, ptr %i.t, align 8, !tbaa !82
  %i.u = call fastcc i64 @BSD_vfprintf(ptr noundef %4, ptr noundef %2, ptr noundef %3) ; 0 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !11
  %i.v = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.w = and i64 %i.v, 8192
  %.not.i26 = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  br label %RSTRING_PTR.exit27

RSTRING_PTR.exit27:                               ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !79
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = trunc i64 %i.v to i32
  %i.af = and i32 %i.ae, 3145728                  ; 2 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !7
  %.not25 = icmp ne i32 %i.af, 0
  %i.ag = icmp slt i64 %.0, %i.ad
  %or.cond = select i1 %.not25, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit27
  %i.ah = getelementptr i8, ptr %i.z, i64 %.0
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ad
  %i.aj = call ptr @rb_enc_get(i64 noundef %0) #20
  %i.ak = call i64 @rb_str_coderange_scan_restartable(ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !7
  %i.am = load i64, ptr %i.b, align 8, !tbaa !13
  %i.an = and i64 %i.am, -3145729
  %i.ao = zext i32 %i.al to i64
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit27
  %i.aq = call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.ad) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_vsprintf(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_enc_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_enc_vsprintf.exit

rb_enc_vsprintf.exit:                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  tail call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sprintf(ptr noundef nonnull %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %rb_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_vsprintf.exit

rb_vsprintf.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_vcatf(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_str_modify(i64 noundef %i.c) #20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  call fastcc void @ruby_vsprintf0(i64 noundef %i.d, ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  ret i64 %i.n
}

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @onigenc_get_right_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_check_hash_type(i64 noundef) local_unnamed_addr #3

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #12

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @BSD__sfvwrite(ptr noundef captures(none) %0, ptr noundef captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = and i16 %i.e, 3
  %or.cond = icmp eq i16 %i.f, 0
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
end_hunk_0
