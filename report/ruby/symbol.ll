Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/symbol?download=true
inline.NumInlined: 215
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sym_check_asciionly:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 8192
  %.not.i10 = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i10, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = tail call ptr @rb_enc_get(i64 noundef %0) #20
  %i.n = tail call i64 @rb_enc_str_new(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %i.m) #20
  br label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit, %bb.c
  %.09 = phi i64 [ %i.n, %RSTRING_PTR.exit ], [ %0, %bb.c ] ; 2 uses
  %i.o = load i64, ptr @rb_eEncodingError, align 8, !tbaa !20
  %i.p = tail call ptr @rb_enc_get(i64 noundef %.09) #20
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.114, ptr noundef %.val, i64 noundef %.09) #21
  unreachable

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.b, %bb.a, %rb_enc_asciicompat.exit
  ret void
}

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #2

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sym2id(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = and i64 %0, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %0, 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RB_DYNAMIC_SYM_P.exit.thread, label %RB_DYNAMIC_SYM_P.exit

RB_DYNAMIC_SYM_P.exit:                            ; preds = %bb.c
  %i.i = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %.preheader, label %RB_DYNAMIC_SYM_P.exit.thread

.preheader:                                       ; preds = %RB_DYNAMIC_SYM_P.exit
  %i.m = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %.preheader
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.d, %.preheader
  %i.p = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.q = and i64 %i.p, -15
  %.not17 = icmp eq i64 %i.q, 0
  br i1 %.not17, label %bb.e, label %bb.j, !prof !37

bb.e:                                             ; preds = %rb_vm_lock_enter.exit
  %i.r = load i64, ptr %i.n, align 8, !tbaa !38
  %i.s = atomicrmw volatile add ptr @ruby_global_symbols, i32 1 seq_cst, align 4 ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 4                  ; 2 uses
  %i.v = or disjoint i64 %i.u, %i.p               ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !tbaa !36
  %i.w = icmp ugt i32 %i.s, 10
  %i.x = trunc i64 %i.u to i32
  %.0.i18 = select i1 %i.w, i32 %i.s, i32 %i.x    ; 2 uses
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16), align 8, !tbaa !17 ; 3 uses
  %i.y = lshr i32 %.0.i18, 9
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = inttoptr i64 %.val to ptr               ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = and i64 %i.ab, 8192
  %.not.i.i19 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr i64 %i.ab, 15
  %i.ae = and i64 %i.ad, 127
  br label %rb_array_len.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.aa, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ]
  %.not.i = icmp ugt i64 %.0.i.i, %i.z
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_array_len.exit.i
  %i.ah = call i64 @rb_ary_entry(i64 noundef %.val, i64 noundef %i.z) #22 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %bb.i, label %set_id_entry.exit

bb.i:                                             ; preds = %bb.h, %rb_array_len.exit.i
  %i.aj = call i64 @rb_ary_hidden_new(i64 noundef 1024) #20 ; 2 uses
  call void @rb_ary_store(i64 noundef %.val, i64 noundef %i.z, i64 noundef %i.aj) #20
  br label %set_id_entry.exit

set_id_entry.exit:                                ; preds = %bb.h, %bb.i
  %.0.i20 = phi i64 [ %i.aj, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ak = shl i32 %.0.i18, 1
  %i.al = and i32 %i.ak, 1022
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  call void @rb_ary_store(i64 noundef %.0.i20, i64 noundef %i.am, i64 noundef %i.r) #20
  %i.an = or disjoint i64 %i.am, 1
  call void @rb_ary_store(i64 noundef %.0.i20, i64 noundef %i.an, i64 noundef %0) #20
  br label %bb.j

bb.j:                                             ; preds = %rb_vm_lock_enter.exit, %set_id_entry.exit
  %.2 = phi i64 [ %i.v, %set_id_entry.exit ], [ %i.p, %rb_vm_lock_enter.exit ]
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i21 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i21, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %bb.j
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

RB_DYNAMIC_SYM_P.exit.thread:                     ; preds = %bb.c, %RB_DYNAMIC_SYM_P.exit
  %i.ap = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  %i.aq = tail call ptr @rb_builtin_class_name(i64 noundef %0) #20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.6, ptr noundef %i.aq) #21
  unreachable

bb.l:                                             ; preds = %rb_vm_lock_leave.exit, %bb.b
  %.3 = phi i64 [ %i.d, %bb.b ], [ %.2, %rb_vm_lock_leave.exit ]
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_symname_p(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_ascii8bit_encoding() #20
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.c = tail call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 1025)
  %i.d = icmp ne i32 %i.c, -1
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_enc_symname_p(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = tail call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %1, i32 noundef 1025)
  %i.c = icmp ne i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_enc_symname2_p(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_symname_type(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 1025)
  %i.b = icmp ne i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 15) i32 @rb_enc_symname_type(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 %1         ; 14 uses
  %i.d = getelementptr i8, ptr %2, i64 20
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %enc_synmane_type_leading_chars.exit.thread91

rb_enc_asciicompat.exit.i:                        ; preds = %bb.a
  %i.e = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #22
  %.not3.i.i = icmp ne i32 %i.e, 0
  %.not.i = icmp eq ptr %0, null
  %or.cond.i = or i1 %.not.i, %.not3.i.i
  %i.f = icmp slt i64 %1, 1
  %or.cond47.i = or i1 %i.f, %or.cond.i
  br i1 %or.cond47.i, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.b

bb.b:                                             ; preds = %rb_enc_asciicompat.exit.i
  %i.g = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  switch i8 %i.g, label %bb.w [
    i8 0, label %enc_synmane_type_leading_chars.exit.thread91
    i8 36, label %bb.c
    i8 64, label %bb.j
    i8 60, label %bb.k
    i8 62, label %bb.m
    i8 61, label %bb.n
    i8 42, label %bb.q
    i8 43, label %bb.r
    i8 45, label %bb.r
    i8 124, label %enc_synmane_type_leading_chars.exit.thread
    i8 94, label %enc_synmane_type_leading_chars.exit.thread
    i8 38, label %enc_synmane_type_leading_chars.exit.thread
    i8 47, label %enc_synmane_type_leading_chars.exit.thread
    i8 37, label %enc_synmane_type_leading_chars.exit.thread
    i8 126, label %enc_synmane_type_leading_chars.exit.thread
    i8 96, label %enc_synmane_type_leading_chars.exit.thread
    i8 91, label %bb.s
    i8 33, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1          ; 5 uses
  %4 = ptrtoaddr ptr %i.h to i64
  %5 = ptrtoaddr ptr %i.c to i64
  %.not.i48.i = icmp ult ptr %i.h, %i.c
  br i1 %.not.i48.i, label %bb.d, label %enc_synmane_type_leading_chars.exit.thread78

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18    ; 2 uses
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -127
  %or.cond.i.i.i = icmp ult i32 %i.k, -94
  br i1 %or.cond.i.i.i, label %is_global_name_punct.exit.thread.i.i, label %is_global_name_punct.exit.i.i

is_global_name_punct.exit.i.i:                    ; preds = %bb.d
  %i.l = add nsw i32 %i.j, -32
  %i.m = lshr i32 %i.l, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr @ruby_global_name_punct_bits, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = and i32 %i.j, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %.not34.i.i = icmp eq i32 %i.s, 0
  br i1 %.not34.i.i, label %is_global_name_punct.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %is_global_name_punct.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 2
  br label %is_special_global_name.exit.i

is_global_name_punct.exit.thread.i.i:             ; preds = %is_global_name_punct.exit.i.i, %bb.d
  %i.u = icmp eq i8 %i.i, 45
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.v = getelementptr i8, ptr %0, i64 2          ; 5 uses
  %.not38.i.i = icmp ult ptr %i.v, %i.c
  br i1 %.not38.i.i, label %bb.g, label %enc_synmane_type_leading_chars.exit.thread78

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18    ; 4 uses
  %i.x = and i8 %i.w, -33
  %i.y = add i8 %i.x, -65
  %narrow.i.i.i.i = icmp ult i8 %i.y, 26
  %i.z = add i8 %i.w, -48
  %i.aa = icmp ult i8 %i.z, 10
  %narrow.i.i.i = or i1 %i.aa, %narrow.i.i.i.i
  %i.ab = icmp eq i8 %i.w, 95
  %or.cond.i.i = or i1 %i.ab, %narrow.i.i.i
  %i.ac = icmp slt i8 %i.w, 0
  %or.cond45.i.i = or i1 %i.ac, %or.cond.i.i
  br i1 %or.cond45.i.i, label %bb.h, label %is_special_global_name.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %.fr131 = freeze i32 %i.ad
  %i.ae = sext i32 %.fr131 to i64
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  br label %is_special_global_name.exit.i

bb.i:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.ag = add nsw i32 %i.j, -58
  %i.ah = icmp ult i32 %i.ag, -10
  br i1 %i.ah, label %enc_synmane_type_leading_chars.exit.thread78, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %6 = xor i64 %4, -1
  %7 = add i64 %6, %5                             ; 2 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %7
  %exitcond.not.i.i128 = icmp eq i64 %7, 0
  br i1 %exitcond.not.i.i128, label %enc_synmane_type_leading_chars.exit.thread, label %.lr.ph129

.preheader.i.i:                                   ; preds = %.lr.ph129
  %exitcond.not.i.i = icmp eq ptr %8, %i.ai
  br i1 %exitcond.not.i.i, label %enc_synmane_type_leading_chars.exit.thread, label %.lr.ph129, !llvm.loop !61

.lr.ph129:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.aj = phi ptr [ %8, %.preheader.i.i ], [ %i.h, %.preheader.i.i.preheader ]
  %8 = getelementptr i8, ptr %i.aj, i64 1         ; 4 uses
  %i.ak = load i8, ptr %8, align 1, !tbaa !18
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -58
  %i.an = icmp ult i32 %i.am, -10
  br i1 %i.an, label %is_special_global_name.exit.i, label %.preheader.i.i, !llvm.loop !61

is_special_global_name.exit.i:                    ; preds = %.lr.ph129, %bb.h, %bb.g, %bb.e
  %.126.i.i = phi ptr [ %i.t, %bb.e ], [ %i.af, %bb.h ], [ %i.v, %bb.g ], [ %8, %.lr.ph129 ]
  %.not83.i = icmp eq ptr %.126.i.i, %i.c
  br i1 %.not83.i, label %enc_synmane_type_leading_chars.exit.thread, label %enc_synmane_type_leading_chars.exit.thread78

bb.j:                                             ; preds = %bb.b
  %i.ao = getelementptr i8, ptr %0, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %cond6.i = icmp eq i8 %i.ap, 64                 ; 2 uses
  %.36.i = select i1 %cond6.i, i64 51539607554, i64 8589934594
  %.37.i = select i1 %cond6.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit

bb.k:                                             ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  switch i8 %i.ar, label %enc_synmane_type_leading_chars.exit.thread [
    i8 60, label %bb.o
    i8 61, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %0, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %cond5.i = icmp eq i8 %i.at, 62
  %.38.i = select i1 %cond5.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.au = getelementptr i8, ptr %0, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %.off.i = add i8 %i.av, -61
  %switch.i = icmp ult i8 %.off.i, 2
  %.39.i = select i1 %switch.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.aw = getelementptr i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  switch i8 %i.ax, label %enc_synmane_type_leading_chars.exit.thread91 [
    i8 126, label %bb.o
    i8 61, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.k
  br label %enc_synmane_type_leading_chars.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %0, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %cond4.i = icmp eq i8 %i.az, 61
  %.40.i = select i1 %cond4.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.ba = getelementptr i8, ptr %0, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %cond3.i = icmp eq i8 %i.bb, 42
  %.41.i = select i1 %cond3.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.bc = getelementptr i8, ptr %0, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %cond2.i = icmp eq i8 %i.bd, 64
  %.42.i = select i1 %cond2.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.be = getelementptr i8, ptr %0, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18
  %cond.i = icmp eq i8 %i.bf, 93
  br i1 %cond.i, label %bb.t, label %enc_synmane_type_leading_chars.exit.thread78

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr i8, ptr %0, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %cond1.i = icmp eq i8 %i.bh, 61
  %.43.i = select i1 %cond1.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.u:                                             ; preds = %bb.b
  %i.bi = getelementptr i8, ptr %0, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  switch i8 %i.bj, label %bb.v [
    i8 61, label %enc_synmane_type_leading_chars.exit.thread
    i8 126, label %enc_synmane_type_leading_chars.exit.thread
  ]

bb.v:                                             ; preds = %bb.u
  %i.bk = and i32 %3, 16384
  %.not32.i = icmp eq i32 %i.bk, 0
  %.44.i = select i1 %.not32.i, i64 60129542145, i64 60129542146
  br label %enc_synmane_type_leading_chars.exit

bb.w:                                             ; preds = %bb.b
  %i.bl = icmp slt i8 %i.g, 0
  br i1 %i.bl, label %bb.x, label %rb_sym_constant_char_p.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bm = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.y, label %rb_sym_constant_char_p.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20, !inline_history !62 ; 3 uses
  %i.br = getelementptr i8, ptr %2, i64 88        ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !69
  %i.bt = tail call i32 %i.bs(i32 noundef %i.bq, i32 noundef 10, ptr noundef nonnull %2) #20, !inline_history !63
  %.not.i50.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i50.i, label %bb.z, label %enc_synmane_type_leading_chars.exit.thread78

bb.z:                                             ; preds = %bb.y
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !69
  %i.bv = tail call i32 %i.bu(i32 noundef %i.bq, i32 noundef 6, ptr noundef nonnull %2) #20, !inline_history !64
  %.not39.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not39.i.i, label %bb.aa, label %rb_sym_constant_char_p.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %2, i64 132
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !70
  %i.by = and i32 %i.bx, 1
  %.not35.i.i = icmp eq i32 %i.by, 0
  br i1 %.not35.i.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load i32, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !13 ; 2 uses
  %.not38.i51.i = icmp eq i32 %i.bz, 0
  br i1 %.not38.i51.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr i8, ptr %2, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %2, ptr noundef nonnull @rb_sym_constant_char_p.cname, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rb_sym_constant_char_p.cname, i64 15)) #20, !inline_history !65 ; 2 uses
  store i32 %i.cc, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cd = phi i32 [ %i.cc, %bb.ac ], [ %i.bz, %bb.ab ]
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !69
  %i.cf = tail call i32 %i.ce(i32 noundef %i.bq, i32 noundef %i.cd, ptr noundef nonnull %2) #20, !inline_history !66
  %.not40.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not40.i.i, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %0, ptr %i.b, align 8, !tbaa !72
  %i.cg = getelementptr i8, ptr %2, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !73
  %i.ci = call i32 %i.ch(i32 noundef 524288, ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #20, !inline_history !65 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.af, label %.critedge.i52.i

bb.af:                                            ; preds = %bb.ae
  %.not36.i.i = icmp eq i32 %i.ci, %i.bm
  br i1 %.not36.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = zext nneg i32 %i.bm to i64
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %0, i64 %i.ck)
  %.not37.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not37.i.i, label %.critedge.i52.i, label %bb.ah

.critedge.i52.i:                                  ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %rb_sym_constant_char_p.exit.thread.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.i:                    ; preds = %bb.w
  %i.cl = add nsw i8 %i.g, -91
  %i.cm = icmp ult i8 %i.cl, -26
  br i1 %i.cm, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.thread.i:             ; preds = %rb_sym_constant_char_p.exit.i, %.critedge.i52.i, %bb.ad, %bb.z, %bb.x
  br label %enc_synmane_type_leading_chars.exit.thread78

enc_synmane_type_leading_chars.exit.thread:       ; preds = %.preheader.i.i, %.preheader.i.i.preheader, %bb.r, %bb.u, %bb.u, %bb.t, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %is_special_global_name.exit.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.32.0.i.ph = phi i32 [ 14, %bb.r ], [ 14, %bb.b ], [ 14, %bb.q ], [ 14, %bb.p ], [ 14, %bb.o ], [ 14, %bb.u ], [ 14, %bb.m ], [ 14, %bb.l ], [ 14, %bb.k ], [ 6, %is_special_global_name.exit.i ], [ 14, %bb.t ], [ 14, %bb.u ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 6, %.preheader.i.i.preheader ], [ 6, %.preheader.i.i ]
  %.sroa.63.0.i.ph = phi i64 [ %.42.i, %bb.r ], [ 1, %bb.b ], [ %.41.i, %bb.q ], [ %.40.i, %bb.p ], [ 2, %bb.o ], [ 2, %bb.u ], [ %.39.i, %bb.m ], [ %.38.i, %bb.l ], [ 1, %bb.k ], [ %1, %is_special_global_name.exit.i ], [ %.43.i, %bb.t ], [ 2, %bb.u ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ %1, %.preheader.i.i.preheader ], [ %1, %.preheader.i.i ]
  %i.cn = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph
  br label %.critedge

enc_synmane_type_leading_chars.exit.thread78:     ; preds = %bb.c, %bb.s, %bb.y, %bb.f, %is_special_global_name.exit.i, %rb_sym_constant_char_p.exit.thread.i, %rb_sym_constant_char_p.exit.i, %bb.ah, %bb.ad, %bb.i
  %.sroa.32.0.i.ph76 = phi i64 [ 25769803778, %bb.i ], [ 42949672962, %bb.ad ], [ 42949672962, %bb.ah ], [ 42949672962, %rb_sym_constant_char_p.exit.i ], [ 2, %rb_sym_constant_char_p.exit.thread.i ], [ 25769803778, %is_special_global_name.exit.i ], [ 25769803778, %bb.f ], [ 42949672962, %bb.y ], [ 60129542146, %bb.s ], [ 25769803778, %bb.c ] ; 2 uses
  %.sroa.63.0.i.ph77 = phi i64 [ 1, %bb.i ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %rb_sym_constant_char_p.exit.i ], [ 0, %rb_sym_constant_char_p.exit.thread.i ], [ 1, %is_special_global_name.exit.i ], [ 1, %bb.f ], [ 0, %bb.y ], [ 0, %bb.s ], [ 1, %bb.c ]
  %i.co = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph77
  %.sroa.0.4.extract.shift83 = lshr i64 %.sroa.32.0.i.ph76, 32 ; 2 uses
  %.sroa.0.4.extract.trunc84 = trunc nuw nsw i64 %.sroa.0.4.extract.shift83 to i32
  br label %bb.ai

enc_synmane_type_leading_chars.exit:              ; preds = %bb.j, %bb.v
  %.sroa.32.0.i = phi i64 [ %.44.i, %bb.v ], [ %.36.i, %bb.j ] ; 3 uses
  %.sroa.63.0.i = phi i64 [ 1, %bb.v ], [ %.37.i, %bb.j ]
  %i.cp = getelementptr i8, ptr %0, i64 %.sroa.63.0.i ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.32.0.i, 32 ; 2 uses
  %.sroa.0.4.extract.trunc = trunc nuw nsw i64 %.sroa.0.4.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.32.0.i to i32
  switch i32 %.sroa.0.0.extract.trunc, label %.critedge [
    i32 0, label %enc_synmane_type_leading_chars.exit.thread91
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %enc_synmane_type_leading_chars.exit.thread78, %enc_synmane_type_leading_chars.exit
  %.sroa.0.4.extract.trunc88 = phi i32 [ %.sroa.0.4.extract.trunc84, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.0.4.extract.shift87 = phi i64 [ %.sroa.0.4.extract.shift83, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.shift, %enc_synmane_type_leading_chars.exit ]
  %i.cq = phi ptr [ %i.co, %enc_synmane_type_leading_chars.exit.thread78 ], [ %i.cp, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.32.0.i86 = phi i64 [ %.sroa.32.0.i.ph76, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.32.0.i, %enc_synmane_type_leading_chars.exit ]
  %.not = icmp ult ptr %i.cq, %i.c
  br i1 %.not, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !18  ; 3 uses
  %.not58 = icmp eq i8 %i.cr, 95
  br i1 %.not58, label %.lr.ph.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = and i8 %i.cr, -33
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -65
  %narrow.i = icmp ult i32 %i.cu, 26
  %i.cv = icmp slt i8 %i.cr, 0
  %or.cond99 = or i1 %i.cv, %narrow.i
  br i1 %or.cond99, label %.lr.ph.preheader, label %bb.al

.lr.ph.preheader:                                 ; preds = %bb.aj, %bb.ak
  br label %.lr.ph

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.cw = icmp sgt i64 %1, 1
  br i1 %i.cw, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cx = getelementptr i8, ptr %i.c, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !18
  %i.cz = icmp eq i8 %i.cy, 61
  br i1 %i.cz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.da = add nsw i64 %1, -1
  %i.db = call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.da, ptr noundef nonnull %2, i32 noundef %3)
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = and i32 %i.dc, %3
  %.not66 = icmp eq i32 %i.dd, 0
  br i1 %.not66, label %bb.ao, label %enc_synmane_type_leading_chars.exit.thread91

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br label %enc_synmane_type_leading_chars.exit.thread91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.050102 = phi ptr [ %i.dn, %.critedge2 ], [ %i.cq, %.lr.ph.preheader ] ; 7 uses
  %i.de = load i8, ptr %.050102, align 1, !tbaa !18 ; 5 uses
  %i.df = and i8 %i.de, -33
  %i.dg = add i8 %i.df, -65
  %narrow.i.i = icmp ult i8 %i.dg, 26
  %i.dh = add i8 %i.de, -48
  %i.di = icmp ult i8 %i.dh, 10
  %narrow.i67 = or i1 %i.di, %narrow.i.i
  %i.dj = icmp eq i8 %i.de, 95
  %or.cond = or i1 %i.dj, %narrow.i67
  %i.dk = icmp slt i8 %i.de, 0
  %or.cond100 = or i1 %i.dk, %or.cond
  br i1 %or.cond100, label %.critedge2, label %bb.ap

.critedge2:                                       ; preds = %.lr.ph
  %i.dl = call i32 @rb_enc_mbclen(ptr noundef nonnull %.050102, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %.050102, i64 %i.dm ; 3 uses
  %i.do = icmp ult ptr %i.dn, %i.c
  br i1 %i.do, label %.lr.ph, label %.critedge, !llvm.loop !67

bb.ap:                                            ; preds = %.lr.ph
  switch i8 %i.de, label %.critedge [
    i8 33, label %bb.aq
    i8 63, label %bb.aq
    i8 61, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.dp = icmp eq i64 %.sroa.0.4.extract.shift87, 12
  %i.dq = and i64 %.sroa.32.0.i86, -21474836480
  %i.dr = icmp eq i64 %i.dq, 8589934592
  %or.cond5 = or i1 %i.dp, %i.dr
  br i1 %or.cond5, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = getelementptr i8, ptr %.050102, i64 1   ; 4 uses
  %i.dt = getelementptr i8, ptr %.050102, i64 2
  %i.du = icmp ult ptr %i.dt, %i.c
  br i1 %i.du, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = load i8, ptr %i.ds, align 1, !tbaa !18
  %.not64 = icmp eq i8 %i.dv, 61
  br i1 %.not64, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.151 = phi ptr [ %i.ds, %bb.as ], [ %.050102, %bb.ap ]
  %.0 = phi i32 [ 14, %bb.as ], [ %.sroa.0.4.extract.trunc88, %bb.ap ]
  %i.dw = shl nuw nsw i32 1, %.0
  %i.dx = and i32 %i.dw, %3
  %.not65 = icmp eq i32 %i.dx, 0
  br i1 %.not65, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr i8, ptr %.151, i64 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %enc_synmane_type_leading_chars.exit.thread, %bb.ap, %bb.au, %bb.as, %bb.ar, %enc_synmane_type_leading_chars.exit
  %.2 = phi ptr [ %i.cp, %enc_synmane_type_leading_chars.exit ], [ %i.cn, %enc_synmane_type_leading_chars.exit.thread ], [ %.050102, %bb.ap ], [ %i.ds, %bb.ar ], [ %i.ds, %bb.as ], [ %i.dy, %bb.au ], [ %i.dn, %.critedge2 ]
  %.1 = phi i32 [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ], [ %.sroa.32.0.i.ph, %enc_synmane_type_leading_chars.exit.thread ], [ %.sroa.0.4.extract.trunc88, %bb.ap ], [ 14, %bb.ar ], [ 14, %bb.as ], [ 8, %bb.au ], [ %.sroa.0.4.extract.trunc88, %.critedge2 ]
  %i.dz = icmp eq ptr %.2, %i.c
  %i.ea = select i1 %i.dz, i32 %.1, i32 -1
  br label %enc_synmane_type_leading_chars.exit.thread91

enc_synmane_type_leading_chars.exit.thread91:     ; preds = %bb.b, %rb_enc_asciicompat.exit.i, %bb.a, %bb.n, %bb.at, %bb.aq, %bb.an, %enc_synmane_type_leading_chars.exit, %.critedge, %bb.ao
  %.052 = phi i32 [ %i.ea, %.critedge ], [ -1, %bb.aq ], [ -1, %enc_synmane_type_leading_chars.exit ], [ -1, %bb.ao ], [ 8, %bb.an ], [ -1, %bb.at ], [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %rb_enc_asciicompat.exit.i ], [ -1, %bb.b ]
  ret i32 %.052
}

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_static_id_valid_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 8
  %i.b = or disjoint i64 %i.a, 12
  %i.c = icmp ugt i64 %0, 171
  %i.d = lshr i64 %0, 4
  %.0.in.i.i = select i1 %i.c, i64 %i.d, i64 %0
  %.0.i.i = trunc i64 %.0.in.i.i to i32
  %i.e = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i, i32 noundef 1)
  %i.f = icmp eq i64 %i.b, %i.e
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern3(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = call i64 @rb_setup_fake_str(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2) #20 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !28
  %i.c = ptrtoint ptr %3 to i64
  %i.d = or disjoint i64 %i.c, 1
  %i.e = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.d, ptr noundef null) #20 ; 6 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = and i64 %i.i, 255
  %i.k = icmp eq i64 %i.j, 12
  br i1 %i.k, label %sym_find_or_insert_static_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  %i.m = and i64 %i.e, 6
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.p = inttoptr i64 %i.e to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %sym_find_or_insert_static_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

end_hunk_0
