inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@H5R__get_obj_token:bb.a
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = zext i8 %i.n to i64
  store i64 %i.o, ptr %2, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__get_region(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call i32 @H5S_select_copy(ptr noundef %1, ptr noundef %i.h, i1 noundef zeroext false) #14
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.l = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !19
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__get_region, i32 noundef 763, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.25) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5S_select_copy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @H5R__get_file_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !19
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__get_file_name, i32 noundef 792, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.26) #14 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #15 ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %2, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.h, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.014 = phi i64 [ %i.n, %bb.e ], [ %i.l, %bb.d ]
  %i.p = add i64 %.014, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.a
  %.0 = phi i64 [ %i.p, %bb.f ], [ -1, %bb.c ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @H5R__get_attr_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #15 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %2, -1
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__decode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.thread137, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.l = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 976, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %.thread137

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  store i8 %i.n, ptr %i.o, align 4, !tbaa !17
  %i.p = icmp ugt i8 %i.n, 4
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !19
  %i.r = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 981, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.32) #14 ; 0 uses
  br label %.thread137

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !13
  %i.w = add i64 %i.i, -2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 45 ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.aa = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_obj_token, i32 noundef 1122, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !13   ; 4 uses
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !13
  %i.ad = icmp ugt i8 %i.ac, 16
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.af = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.ag = zext i8 %i.ac to i32
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_obj_token, i32 noundef 1127, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.46, i32 noundef %i.ag) #14 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ai = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.aj = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.ak = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 991, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.33) #14 ; 0 uses
  br label %.thread137

bb.k:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.am = zext nneg i8 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false)
  %i.an = load i8, ptr %i.x, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i64                    ; 3 uses
  %.neg = xor i64 %i.ao, -1
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %4 = add i64 %i.w, %.neg                        ; 4 uses
  %i.aq = add nuw nsw i64 %i.ao, 3                ; 2 uses
  %.not = trunc i8 %i.v to i1                     ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.as = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = xor i1 %i.av, true
  %i.ax = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %i.ax, label %bb.m, label %.thread114, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp ult i64 %4, 2
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ba = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.bb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_string, i32 noundef 1320, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bc = load i16, ptr %i.ap, align 1
  %i.bd = zext i16 %i.bc to i64                   ; 4 uses
  %i.be = add nuw nsw i64 %i.bd, 1
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #16 ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.bi = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !19
  %i.bj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_string, i32 noundef 1328, i64 noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull @.str.53) #14 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.bk, i64 %i.bd, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bl, align 1, !tbaa !13
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !21
  %i.bm = add nuw nsw i64 %i.bd, 2
  br label %.thread114

.thread114:                                       ; preds = %bb.l, %bb.q
  %.099 = phi i64 [ %i.bm, %bb.q ], [ %4, %bb.l ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.099
  %i.bo = sub i64 %4, %.099
  %i.bp = add i64 %.099, %i.aq
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.bq = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.br = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.bs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 997, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.34) #14 ; 0 uses
  br label %.thread137

bb.s:                                             ; preds = %bb.k
  store ptr null, ptr %i.ar, align 8, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %.thread114, %bb.s
  %.289 = phi ptr [ %i.ap, %bb.s ], [ %i.bn, %.thread114 ] ; 2 uses
  %.286 = phi i64 [ %4, %bb.s ], [ %i.bo, %.thread114 ] ; 2 uses
  %.280 = phi i64 [ %i.aq, %bb.s ], [ %i.bp, %.thread114 ] ; 3 uses
  %i.bt = load i8, ptr %i.o, align 4, !tbaa !17
  switch i8 %i.bt, label %bb.x [
    i8 2, label %bb.w
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 0, label %.split140
    i8 1, label %.split140
    i8 -1, label %.split140
    i8 5, label %.split140
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %.286, ptr %i.a, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = call fastcc i32 @H5R__decode_region(ptr noundef nonnull %.289, ptr noundef %i.a, ptr noundef nonnull %i.bu)
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.split, label %.thread120

.thread120:                                       ; preds = %bb.u
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !19
  %i.by = add i64 %i.bx, %.280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.w

.split:                                           ; preds = %bb.u
  %i.bz = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ca = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.cb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 1010, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.35) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not, label %bb.y, label %.thread137

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %.286, ptr %i.b, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cd = call fastcc i32 @H5R__decode_string(ptr noundef nonnull %.289, ptr noundef %i.b, ptr noundef nonnull %i.cc)
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.split139, label %.thread124

.thread124:                                       ; preds = %bb.v
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cg = add i64 %i.cf, %.280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.w

.split139:                                        ; preds = %bb.v
  %i.ch = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ci = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.cj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 1017, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull @.str.36) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not, label %bb.y, label %.thread137

.split140:                                        ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %i.ck = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.cl = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.cm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 1026, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br i1 %.not, label %bb.y, label %.thread137

bb.w:                                             ; preds = %bb.t, %.thread120, %.thread124
  %.583 = phi i64 [ %.280, %bb.t ], [ %i.by, %.thread120 ], [ %i.cg, %.thread124 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 -1, ptr %i.cn, align 8, !tbaa !14
  %i.co = trunc i64 %.583 to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !20
  store i64 %.583, ptr %1, align 8, !tbaa !19
  br label %.thread137

bb.x:                                             ; preds = %bb.t
  %i.cq = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.cr = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.cs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode, i32 noundef 1030, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br i1 %.not, label %bb.y, label %.thread137

bb.y:                                             ; preds = %.split140, %.split139, %.split, %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !13
  %i.cv = tail call ptr @H5MM_xfree(ptr noundef %i.cu) #14 ; 0 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !13
  br label %.thread137

.thread137:                                       ; preds = %bb.c, %bb.e, %bb.r, %bb.j, %.split140, %.split139, %.split, %bb.y, %bb.x, %bb.w, %bb.a
  %.8 = phi i32 [ -1, %.split140 ], [ 0, %bb.a ], [ 0, %bb.w ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %.split139 ], [ -1, %.split ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5R__decode_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !19
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.j = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_string, i32 noundef 1320, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = load i16, ptr %0, align 1
  %i.m = zext i16 %i.l to i64                     ; 4 uses
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #16 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.r = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_string, i32 noundef 1328, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.53) #14 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.t, i64 %i.m, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.u, align 1, !tbaa !13
  store ptr %i.o, ptr %2, align 8, !tbaa !21
  %i.v = add nuw nsw i64 %i.m, 2
  store i64 %i.v, ptr %1, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5R__decode_region(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = load i64, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.f = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %bb.b, label %.thread38, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 8
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.n = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !19
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__decode_region, i32 noundef 1217, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %.thread38

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %0, align 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
