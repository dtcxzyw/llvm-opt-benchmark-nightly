inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_upto_each:bb.a
  %i.gz = icmp sgt i64 %i.gx, %i.gy
  %i.ha = icmp eq i64 %i.gx, 0
  %or.cond104 = or i1 %i.ha, %i.gz
  br i1 %or.cond104, label %.thread168, label %bb.ag

..thread168.loopexit217_crit_edge:                ; preds = %.lr.ph221
  br label %.thread168, !llvm.loop !139

.thread168:                                       ; preds = %.lr.ph183.split, %.lr.ph183.split.us, %bb.am, %bb.al, %bb.aj, %bb.ag, %.lr.ph183.split.preheader, %..thread168.loopexit217_crit_edge, %bb.ab, %.thread160, %all_digits_p.exit, %bb.ae, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %0
}

declare ptr @rb_enc_check(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_to_inum(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_format(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_upto_endless_each(i64 noundef returned %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.fstr_create_arg, align 1    ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.pr.i = load i64, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 4) #28 ; 3 uses
  store i64 %i.c, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !137

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = and i32 %i.f, 3145728                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %is_ascii_string.exit

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.i = lshr i32 %i.f, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.c, label %get_encoding.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.n = load i64, ptr %i.d, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.d, %get_encoding.exit.i.i
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %get_encoding.exit.i.i ]
  %i.s = getelementptr i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.r, i64 noundef %i.t, ptr noundef %i.m) ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !11
  %i.w = and i64 %i.v, -3145729
  %i.x = zext nneg i32 %i.u to i64
  %i.y = or i64 %i.w, %i.x                        ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !11
  br label %is_ascii_string.exit

is_ascii_string.exit:                             ; preds = %rbimpl_intern_const.exit, %enc_coderange_scan.exit.i.i
  %i.z = phi i64 [ %i.y, %enc_coderange_scan.exit.i.i ], [ %i.e, %rbimpl_intern_const.exit ]
  %.0.i.i = phi i32 [ %i.u, %enc_coderange_scan.exit.i.i ], [ %i.g, %rbimpl_intern_const.exit ]
  %i.aa = icmp eq i32 %.0.i.i, 1048576
  br i1 %i.aa, label %bb.e, label %all_digits_p.exit

bb.e:                                             ; preds = %is_ascii_string.exit
  %i.ab = and i64 %i.z, 8192
  %.not.i36 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.d, i64 24      ; 3 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %RSTRING_PTR.exit.thread

RSTRING_PTR.exit:                                 ; preds = %bb.e
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !20
  %i.ae = sext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -58
  %i.ag = icmp ult i32 %i.af, -10
  br i1 %i.ag, label %all_digits_p.exit, label %RSTRING_PTR.exit38

RSTRING_PTR.exit.thread:                          ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -58
  %i.al = icmp ult i32 %i.ak, -10
  br i1 %i.al, label %all_digits_p.exit, label %RSTRING_PTR.exit38

RSTRING_PTR.exit38:                               ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit
  %i.am = phi ptr [ %i.ac, %RSTRING_PTR.exit ], [ %i.ah, %RSTRING_PTR.exit.thread ]
  %i.an = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i39, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i39
  %i.aq = add nsw i64 %.in.i, -1
  %i.ar = getelementptr i8, ptr %.035.i, i64 1
  %i.as = icmp sgt i64 %.in.i, 1
  br i1 %i.as, label %.lr.ph.i39, label %.loopexit, !llvm.loop !138

.lr.ph.i39:                                       ; preds = %RSTRING_PTR.exit38, %bb.f
  %.in.i = phi i64 [ %i.aq, %bb.f ], [ %i.ao, %RSTRING_PTR.exit38 ] ; 2 uses
  %.035.i = phi ptr [ %i.ar, %bb.f ], [ %i.am, %RSTRING_PTR.exit38 ] ; 2 uses
  %i.at = load i8, ptr %.035.i, align 1, !tbaa !20
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -58
  %i.aw = icmp ult i32 %i.av, -10
  br i1 %i.aw, label %all_digits_p.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %RSTRING_PTR.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ax = ptrtoint ptr %4 to i64                  ; 2 uses
  store i64 3229622277, ptr %4, align 8, !tbaa !11
  %i.ay = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.26, ptr %i.bb, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 4, ptr %i.bc, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i8 0, ptr %3, align 1, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !31
  %i.be = call fastcc i64 @str_do_hash(i64 noundef %i.ax)
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !20
  %i.bf = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull @fstring_table_obj, i64 noundef %i.ax, ptr noundef nonnull %3) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bg = load i64, ptr %i.an, align 8, !tbaa !14 ; 4 uses
  %i.bh = add i64 %i.bg, 2147483648
  %.not.i.i = icmp ult i64 %i.bh, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @rb_out_of_int(i64 noundef %i.bg) #29
  unreachable

RSTRING_LENINT.exit:                              ; preds = %.loopexit
  %i.bi = trunc nsw i64 %i.bg to i32
  %i.bj = call i64 @rb_str_to_inum(i64 noundef %0, i32 noundef 10, i32 noundef 0) #28 ; 3 uses
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %rb_long2num_inline.exit

bb.h:                                             ; preds = %RSTRING_LENINT.exit
  %i.bl = ashr i64 %i.bj, 1
  %i.bm = call nonnull ptr @rb_usascii_encoding() #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %.03154 = phi i64 [ %i.bl, %bb.h ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bn = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.25, i32 noundef %i.bi, i64 noundef %.03154) #28
  %i.bo = call i32 %1(i64 noundef %i.bn, i64 noundef %2) #28
  %.not33 = icmp eq i32 %i.bo, 0
  br i1 %.not33, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add nsw i64 %.03154, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, 4611686018427387904
  br i1 %exitcond.not, label %.thread48, label %bb.i, !llvm.loop !141

bb.k:                                             ; preds = %bb.i
  %i.bq = shl nsw i64 %.03154, 1
  %i.br = or disjoint i64 %i.bq, 1
  br label %rb_long2num_inline.exit

.thread48:                                        ; preds = %bb.j
  %i.bs = call i64 @rb_int2big(i64 noundef 4611686018427387904) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %.thread48, %bb.k, %RSTRING_LENINT.exit
  %.030 = phi i64 [ %i.bj, %RSTRING_LENINT.exit ], [ %i.br, %bb.k ], [ %i.bs, %.thread48 ] ; 2 uses
  %sext = shl i64 %i.bg, 32
  %5 = ashr exact i64 %sext, 31
  %i.bt = or disjoint i64 %5, 1
  store i64 %i.bt, ptr %i.b, align 16, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %.030, ptr %i.bu, align 8, !tbaa !27
  %i.bv = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.bf) #28
  %i.bw = call i32 %1(i64 noundef %i.bv, i64 noundef %2) #28
  %.not3455 = icmp eq i32 %i.bw, 0
  br i1 %.not3455, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %rb_long2num_inline.exit, %.lr.ph
  %.156 = phi i64 [ %i.bx, %.lr.ph ], [ %.030, %rb_long2num_inline.exit ]
  %i.bx = call i64 @rb_funcallv(i64 noundef %.156, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !27
  %i.by = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.bf) #28
  %i.bz = call i32 %1(i64 noundef %i.by, i64 noundef %2) #28
  %.not34 = icmp eq i32 %i.bz, 0
  br i1 %.not34, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %rb_long2num_inline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %all_digits_p.exit

all_digits_p.exit:                                ; preds = %.lr.ph.i39, %RSTRING_PTR.exit.thread, %._crit_edge, %RSTRING_PTR.exit, %is_ascii_string.exit
  %i.ca = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.cb = call fastcc i64 @str_duplicate(i64 noundef %i.ca, i64 noundef %0)
  br label %bb.l

bb.l:                                             ; preds = %rb_string_value.exit, %all_digits_p.exit
  %.0..0.42 = phi i64 [ %.0..0.44, %rb_string_value.exit ], [ %i.cb, %all_digits_p.exit ] ; 2 uses
  %i.cc = call i64 @rb_funcallv(i64 noundef %.0..0.42, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28
  %i.cd = call i32 %1(i64 noundef %.0..0.42, i64 noundef %2) #28
  %.not35 = icmp eq i32 %i.cd, 0
  br i1 %.not35, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.ce = icmp eq i64 %.0..0..0., 0
  %i.cf = and i64 %.0..0..0., 7
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = or i1 %i.ce, %i.cg
  br i1 %i.ch, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.m
  %i.ci = inttoptr i64 %.0..0..0. to ptr          ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = and i64 %i.cj, 31
  %i.cl = icmp eq i64 %i.ck, 5
  br i1 %i.cl, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.m
  %i.cm = call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.cm, ptr %i.a, align 8, !tbaa !27
  %.pre = inttoptr i64 %i.cm to ptr
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.ci, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.0..0.44 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cm, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.cn = getelementptr i8, ptr %.pre-phi, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %rb_string_value.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_str_include_range_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = and i64 %i.d, 51200
  %i.f = icmp eq i64 %i.e, 2048
  br i1 %i.f, label %rb_str_new_frozen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_obj_class(i64 noundef %0) #28, !inline_history !35
  %i.h = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.g, i64 noundef %0, i32 noundef 1), !inline_history !142
  br label %rb_str_new_frozen.exit

rb_str_new_frozen.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.i = icmp eq i64 %.0..0..0., 0
  %i.j = and i64 %.0..0..0., 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_str_new_frozen.exit
  %i.m = inttoptr i64 %.0..0..0. to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_str_new_frozen.exit
  %i.q = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.q, ptr %i.a, align 8, !tbaa !27
  %.phi.trans.insert = inttoptr i64 %i.q to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.r = phi i64 [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.0..0.54 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.s = and i64 %i.r, 51200
  %i.t = icmp eq i64 %i.s, 2048
  br i1 %i.t, label %rb_str_new_frozen.exit33, label %bb.c

bb.c:                                             ; preds = %rb_string_value.exit
  %i.u = tail call i64 @rb_obj_class(i64 noundef %.0..0.54) #28, !inline_history !35
  %i.v = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.u, i64 noundef %.0..0.54, i32 noundef 1), !inline_history !142
  br label %rb_str_new_frozen.exit33

rb_str_new_frozen.exit33:                         ; preds = %rb_string_value.exit, %bb.c
  %.0.i32 = phi i64 [ %i.v, %bb.c ], [ %.0..0.54, %rb_string_value.exit ] ; 3 uses
  %i.w = icmp eq i64 %2, 4
  br i1 %i.w, label %bb.u, label %bb.d

bb.d:                                             ; preds = %rb_str_new_frozen.exit33
  %i.x = tail call i64 @rb_check_convert_type_with_id(i64 noundef %2, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 4 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = inttoptr i64 %.0.i to ptr                ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = lshr i32 %i.ab, 22
  %i.ad = and i32 %i.ac, 127                      ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 127
  br i1 %i.ae, label %bb.f, label %get_encoding.exit

bb.f:                                             ; preds = %bb.e
  %i.af = tail call i32 @rb_enc_get_index(i64 noundef %.0.i) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.af, %bb.f ], [ %i.ad, %bb.e ]
  %i.ag = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 20
  %.val.i = load i32, ptr %i.ah, align 4, !tbaa !16
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %get_encoding.exit
  %i.ai = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ag) #32
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %bb.g, label %rb_enc_asciicompat.exit.thread

bb.g:                                             ; preds = %rb_enc_asciicompat.exit
  %i.aj = inttoptr i64 %.0.i32 to ptr             ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 22
  %i.an = and i32 %i.am, 127                      ; 2 uses
  %i.ao = icmp eq i32 %i.an, 127
  br i1 %i.ao, label %bb.h, label %get_encoding.exit36

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call i32 @rb_enc_get_index(i64 noundef %.0.i32) #28
  br label %get_encoding.exit36

get_encoding.exit36:                              ; preds = %bb.g, %bb.h
  %.0.i.i35 = phi i32 [ %i.ap, %bb.h ], [ %i.an, %bb.g ]
  %i.aq = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i35) #28 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 20
  %.val.i37 = load i32, ptr %i.ar, align 4, !tbaa !16
  %.not.i38 = icmp eq i32 %.val.i37, 1
  br i1 %.not.i38, label %rb_enc_asciicompat.exit41, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit41:                        ; preds = %get_encoding.exit36
  %i.as = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.aq) #32
  %.not3.i40 = icmp eq i32 %i.as, 0
  br i1 %.not3.i40, label %bb.i, label %rb_enc_asciicompat.exit.thread

bb.i:                                             ; preds = %rb_enc_asciicompat.exit41
  %i.at = inttoptr i64 %i.x to ptr                ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = trunc i64 %i.au to i32
  %i.aw = lshr i32 %i.av, 22
  %i.ax = and i32 %i.aw, 127                      ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 127
  br i1 %i.ay, label %bb.j, label %get_encoding.exit43

bb.j:                                             ; preds = %bb.i
  %i.az = tail call i32 @rb_enc_get_index(i64 noundef %i.x) #28
  br label %get_encoding.exit43

get_encoding.exit43:                              ; preds = %bb.i, %bb.j
  %.0.i.i42 = phi i32 [ %i.az, %bb.j ], [ %i.ax, %bb.i ]
  %i.ba = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i42) #28 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 20
end_hunk_0
