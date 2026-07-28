inline.NumInlined: 2138
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 49
begin_hunk_0_@rb_obj_memsize_of:bb.a
  %i.al = getelementptr i8, ptr %.0.i.i, i64 125
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 24
  %i.ao = icmp eq i8 %i.an, 8
  br i1 %i.ao, label %bb.m, label %rb_objspace_data_type_memsize.exit

bb.m:                                             ; preds = %RICLASS_OWNS_M_TBL_P.exit
  %i.ap = call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0)
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !255
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %rb_objspace_data_type_memsize.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0)
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !255
  %i.av = call i64 @rb_id_table_memsize(ptr noundef %i.au) #46
  br label %rb_objspace_data_type_memsize.exit

bb.o:                                             ; preds = %bb.b
  %i.aw = tail call i64 @rb_str_memsize(i64 noundef %0) #46
  br label %rb_objspace_data_type_memsize.exit

bb.p:                                             ; preds = %bb.b
  %i.ax = tail call i64 @rb_ary_memsize(i64 noundef %0) #46
  br label %rb_objspace_data_type_memsize.exit

bb.q:                                             ; preds = %bb.b
  %i.ay = and i64 %i.h, 32768
  %.not.i.i45.not = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i45.not, label %rb_objspace_data_type_memsize.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add i64 %0, 24
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.ba) #68
  %i.bc = add i64 %i.bb, -56
  br label %rb_objspace_data_type_memsize.exit

bb.s:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %i.g, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !256 ; 2 uses
  %.not42 = icmp eq ptr %i.be, null
  br i1 %.not42, label %rb_objspace_data_type_memsize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call i64 @onig_memsize(ptr noundef nonnull %i.be) #46
  br label %rb_objspace_data_type_memsize.exit

bb.u:                                             ; preds = %bb.b
  %i.bg = and i64 %i.h, 64
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %rb_objspace_data_type_memsize.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr i8, ptr %i.g, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !131 ; 2 uses
  %i.bj = and i64 %i.bi, -2
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = trunc i64 %i.bi to i1
  %i.bm = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  br i1 %i.bl, label %RTYPEDDATA_GET_DATA.exit.i, label %RTYPEDDATA_GET_DATA.exit.thread.i

RTYPEDDATA_GET_DATA.exit.thread.i:                ; preds = %bb.v
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !208 ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !205
  %i.bq = and i64 %i.bp, 2
  %.not16.i = icmp eq i64 %i.bq, 0
  br i1 %.not16.i, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.w

bb.w:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.thread.i
  %i.br = tail call i64 @malloc_usable_size(ptr noundef %i.bn) #46
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.w, %RTYPEDDATA_GET_DATA.exit.thread.i, %bb.v
  %i.bs = phi ptr [ %i.bn, %RTYPEDDATA_GET_DATA.exit.thread.i ], [ %i.bn, %bb.w ], [ %i.bm, %bb.v ] ; 2 uses
  %.0.i = phi i64 [ 0, %RTYPEDDATA_GET_DATA.exit.thread.i ], [ %i.br, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %.not14.i = icmp eq ptr %i.bs, null
  br i1 %.not14.i, label %rb_objspace_data_type_memsize.exit, label %bb.x

bb.x:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  %i.bt = getelementptr i8, ptr %i.bk, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !259 ; 2 uses
  %.not15.i = icmp eq ptr %i.bu, null
  br i1 %.not15.i, label %rb_objspace_data_type_memsize.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = tail call i64 %i.bu(ptr noundef nonnull %i.bs) #46, !inline_history !260
  %i.bw = add i64 %i.bv, %.0.i
  br label %rb_objspace_data_type_memsize.exit

bb.z:                                             ; preds = %bb.b
  %i.bx = getelementptr i8, ptr %i.g, i64 32
  %i.by = tail call i64 @onig_region_memsize(ptr noundef %i.bx) #46
  %i.bz = getelementptr i8, ptr %i.g, i64 64
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !261
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 4
  %i.cd = add i64 %i.cc, %i.by
  br label %rb_objspace_data_type_memsize.exit

bb.aa:                                            ; preds = %bb.b
  %i.ce = getelementptr i8, ptr %i.g, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !265 ; 2 uses
  %.not41 = icmp eq ptr %i.cf, null
  br i1 %.not41, label %rb_objspace_data_type_memsize.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = tail call i64 @rb_io_memsize(ptr noundef nonnull %i.cf) #46
  br label %rb_objspace_data_type_memsize.exit

bb.ac:                                            ; preds = %bb.b
  %i.ch = tail call i64 @rb_imemo_memsize(i64 noundef %0) #46
  br label %rb_objspace_data_type_memsize.exit

bb.ad:                                            ; preds = %bb.b
  %i.ci = and i64 %i.h, 16384
  %.not39 = icmp eq i64 %i.ci, 0
  br i1 %.not39, label %BIGNUM_DIGITS.exit, label %rb_objspace_data_type_memsize.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.ad
  %i.cj = getelementptr i8, ptr %i.g, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !214
  %.not40 = icmp eq ptr %i.ck, null
  br i1 %.not40, label %rb_objspace_data_type_memsize.exit, label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %BIGNUM_DIGITS.exit
  %i.cl = getelementptr i8, ptr %i.g, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !214
  %i.cn = shl i64 %i.cm, 2
  br label %rb_objspace_data_type_memsize.exit

bb.ae:                                            ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.5, i32 noundef 27, ptr noundef nonnull %i.g, i64 noundef %i.h) #61
  unreachable

bb.af:                                            ; preds = %bb.b
  %i.co = and i64 %i.h, 1040384
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ag, label %rb_objspace_data_type_memsize.exit

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr i8, ptr %i.g, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !214
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %rb_objspace_data_type_memsize.exit, label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.ag
  %i.cs = getelementptr i8, ptr %i.g, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !214
  %i.cu = shl i64 %i.ct, 3
  br label %rb_objspace_data_type_memsize.exit

bb.ah:                                            ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.6, i32 noundef %i.j, ptr noundef nonnull %i.g) #61
  unreachable

rb_objspace_data_type_memsize.exit:               ; preds = %bb.y, %bb.x, %RTYPEDDATA_GET_DATA.exit.i, %bb.u, %bb.af, %bb.ag, %internal_RSTRUCT_LEN.exit, %bb.ad, %BIGNUM_DIGITS.exit, %BIGNUM_LEN.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.aa, %bb.ab, %bb.s, %bb.t, %bb.q, %bb.r, %RICLASS_OWNS_M_TBL_P.exit, %bb.n, %bb.m, %bb.c, %bb.e, %bb.d, %bb.ac, %bb.z, %bb.p, %bb.o, %bb.f
  %i.cv = phi i64 [ 0, %bb.af ], [ 0, %bb.ag ], [ %i.cu, %internal_RSTRUCT_LEN.exit ], [ 0, %bb.ad ], [ 0, %BIGNUM_DIGITS.exit ], [ %i.cn, %BIGNUM_LEN.exit ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.aa ], [ %i.cg, %bb.ab ], [ 0, %bb.s ], [ %i.bf, %bb.t ], [ 0, %bb.q ], [ %i.bc, %bb.r ], [ 0, %RICLASS_OWNS_M_TBL_P.exit ], [ %i.av, %bb.n ], [ 0, %bb.m ], [ 0, %bb.c ], [ %i.r, %bb.e ], [ %i.o, %bb.d ], [ %i.ch, %bb.ac ], [ %i.cd, %bb.z ], [ %.pre, %bb.f ], [ %i.ax, %bb.p ], [ %i.aw, %bb.o ], [ 0, %bb.u ], [ %i.bw, %bb.y ], [ %.0.i, %bb.x ], [ %.0.i, %RTYPEDDATA_GET_DATA.exit.i ]
  %i.cw = and i64 %0, -65536
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load ptr, ptr %i.cx, align 65536, !tbaa !113
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !100
  %i.da = zext i16 %i.cz to i64
  %i.db = add i64 %i.cv, %i.da
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %rb_objspace_data_type_memsize.exit
  %.0 = phi i64 [ %i.db, %rb_objspace_data_type_memsize.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 65536) i32 @ROBJECT_FIELDS_CAPACITY(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = lshr i64 %i.b, 32                        ; 2 uses
  %i.d = and i64 %i.b, 126100789566373888
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.a
  %i.e = and i64 %i.c, 524287
  %i.f = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 30
  %i.i = load i16, ptr %i.h, align 2, !tbaa !273
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.a
  %i.j = lshr i64 %i.b, 54
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.l = and i64 %i.j, 7
  %1 = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %2 = getelementptr i8, ptr %1, i64 -2
  %i.m = load i16, ptr %2, align 2, !tbaa !276
  %i.n = and i64 %i.c, 524287
  %i.o = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.p = getelementptr [40 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 30
  %i.r = load i16, ptr %i.q, align 2, !tbaa !273
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.m, i16 %i.r)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.s = zext i16 %.0.i to i32
  ret i32 %i.s
}

declare void @rb_class_classext_foreach(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @classext_memsize(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, i64 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_id_table_memsize(ptr noundef nonnull %i.b) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277  ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_id_table_memsize(ptr noundef nonnull %i.e) #46
  %i.g = add i64 %i.f, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.g, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !278  ; 2 uses
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @rb_id_table_memsize(ptr noundef nonnull %i.i) #46
  %i.k = add i64 %i.j, %.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.k, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 125
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 32
  %.not21 = icmp eq i8 %i.n, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %0, i64 122
  %i.p = load i16, ptr %i.o, align 2, !tbaa !279
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add i64 %.2, 8
  %i.t = add i64 %i.s, %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i64 [ %i.t, %bb.h ], [ %.2, %bb.g ]   ; 2 uses
  %i.u = add i64 %.3, 136
  %spec.select = select i1 %1, i64 %.3, i64 %i.u
  %i.v = load i64, ptr %3, align 8, !tbaa !59
  %i.w = add i64 %spec.select, %i.v
  store i64 %i.w, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @classext_superclasses_memsize(ptr nofree noundef readonly captures(none) %0, i1 zeroext %1, i64 %2, ptr nofree noundef captures(none) %3) #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 125
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 32
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 122
  %i.e = load i16, ptr %i.d, align 2, !tbaa !279
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = load i64, ptr %3, align 8, !tbaa !59
  %i.i = add i64 %i.h, 8
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %3, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = and i64 %i.c, 65536
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit

RCLASS_PRIME_CLASSEXT_READABLE_P.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.i = tail call ptr @rb_current_box() #46      ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !252, !range !203, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7, label %bb.f

.split7:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.n = load i64, ptr %i.b, align 8, !tbaa !109
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %RCLASS_CLASSEXT_TBL.exit.i.i11

RCLASS_CLASSEXT_TBL.exit.i.i11:                   ; preds = %.split7
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11
  %i.q = load i64, ptr %i.i, align 8, !tbaa !254
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #46
  %.not5.i.i13 = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !59
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17

RCLASS_EXT_READABLE_LOOKUP.exit17:                ; preds = %.split7, %RCLASS_CLASSEXT_TBL.exit.i.i11, %bb.d, %bb.e
  %.0.i.i14 = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11 ], [ null, %.split7 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.not.i15 = icmp eq ptr %.0.i.i14, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16 = select i1 %.not.i15, ptr %i.u, ptr %.0.i.i14
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.split, %RCLASS_EXT_READABLE_LOOKUP.exit17, %bb.f, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread
  %.0 = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread ], [ %i.v, %bb.f ], [ %i.j, %.split ], [ %.0.i16, %RCLASS_EXT_READABLE_LOOKUP.exit17 ]
  ret ptr %.0
}

declare i64 @rb_id_table_memsize(ptr noundef) local_unnamed_addr #11

declare i64 @rb_str_memsize(i64 noundef) local_unnamed_addr #11

declare i64 @rb_ary_memsize(i64 noundef) local_unnamed_addr #11

declare i64 @onig_memsize(ptr noundef) local_unnamed_addr #11

declare i64 @onig_region_memsize(ptr noundef) local_unnamed_addr #11

declare i64 @rb_io_memsize(ptr noundef) local_unnamed_addr #11

declare i64 @rb_imemo_memsize(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 -1152921504606846976, 1152921504606846976) i64 @ruby_stack_length(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@gc_sweep:bb.a
  %i.wy = or i1 %i.wv, %i.wx
  br i1 %i.wy, label %gc_object_moved_p_internal.exit204.thread.i.i, label %gc_object_moved_p_internal.exit204.i.i

gc_object_moved_p_internal.exit204.i.i:           ; preds = %bb.cv
  %i.wz = inttoptr i64 %i.wu to ptr               ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !109
  %i.xb = and i64 %i.xa, 31
  %i.xc = icmp eq i64 %i.xb, 30
  br i1 %i.xc, label %gc_location_internal.exit207.i.i, label %gc_object_moved_p_internal.exit204.thread.i.i

gc_location_internal.exit207.i.i:                 ; preds = %gc_object_moved_p_internal.exit204.i.i
  %i.xd = getelementptr i8, ptr %i.wz, i64 16
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !286
  store i64 %i.xe, ptr %i.wt, align 8, !tbaa !214
  br label %gc_object_moved_p_internal.exit204.thread.i.i

gc_object_moved_p_internal.exit204.thread.i.i:    ; preds = %gc_location_internal.exit207.i.i, %gc_object_moved_p_internal.exit204.i.i, %bb.cv, %bb.cu
  %i.xf = load ptr, ptr %i.sr, align 65536, !tbaa !113
  %i.xg = load i16, ptr %i.xf, align 8, !tbaa !100
  %i.xh = zext i16 %i.xg to i64
  %i.xi = call i64 @rb_str_size_as_embedded(i64 noundef %.02334.i.i) #46, !inline_history !487
  %.not194.i.i = icmp ugt i64 %i.xi, %i.xh
  br i1 %.not194.i.i, label %.critedge.i.i, label %bb.cw

bb.cw:                                            ; preds = %gc_object_moved_p_internal.exit204.thread.i.i
  %i.xj = load i64, ptr %i.sp, align 8, !tbaa !109
  %i.xk = and i64 %i.xj, 8192
  %.not.i208.i.i = icmp eq i64 %i.xk, 0
  br i1 %.not.i208.i.i, label %.critedge.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.xl = call zeroext i1 @rb_str_reembeddable_p(i64 noundef %.02334.i.i) #46, !inline_history !487
  br i1 %i.xl, label %bb.cy, label %.critedge.i.i

bb.cy:                                            ; preds = %bb.cx
  call void @rb_str_make_embedded(i64 noundef %.02334.i.i) #46, !inline_history !487
  br label %.critedge.i.i

bb.cz:                                            ; preds = %.sink.split.i.i
  %i.xm = and i64 %i.tt, 64
  %.not379.i.i = icmp eq i64 %i.xm, 0
  br i1 %.not379.i.i, label %.critedge.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xn = getelementptr i8, ptr %i.sp, i64 24
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !131 ; 2 uses
  %i.xp = trunc i64 %i.xo to i1
  %i.xq = getelementptr i8, ptr %i.sp, i64 32     ; 2 uses
  br i1 %i.xp, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !208
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.ph.i.i = phi ptr [ %i.xq, %bb.da ], [ %i.xr, %bb.db ] ; 3 uses
  %i.xs = getelementptr i8, ptr %i.sp, i64 16     ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !207 ; 3 uses
  %i.xu = icmp eq i64 %i.xt, 0
  %i.xv = and i64 %i.xt, 7
  %i.xw = icmp ne i64 %i.xv, 0
  %i.xx = or i1 %i.xu, %i.xw
  br i1 %i.xx, label %gc_object_moved_p_internal.exit210.thread.i.i, label %gc_object_moved_p_internal.exit210.i.i

gc_object_moved_p_internal.exit210.i.i:           ; preds = %bb.dc
  %i.xy = inttoptr i64 %i.xt to ptr               ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !109
  %i.ya = and i64 %i.xz, 31
  %i.yb = icmp eq i64 %i.ya, 30
  br i1 %i.yb, label %gc_location_internal.exit213.i.i, label %gc_object_moved_p_internal.exit210.thread.i.i

gc_location_internal.exit213.i.i:                 ; preds = %gc_object_moved_p_internal.exit210.i.i
  %i.yc = getelementptr i8, ptr %i.xy, i64 16
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !286
  store i64 %i.yd, ptr %i.xs, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit210.thread.i.i

gc_object_moved_p_internal.exit210.thread.i.i:    ; preds = %gc_location_internal.exit213.i.i, %gc_object_moved_p_internal.exit210.i.i, %bb.dc
  %.not191.i.i = icmp eq ptr %.ph.i.i, null
  br i1 %.not191.i.i, label %.critedge.i.i, label %bb.dd

bb.dd:                                            ; preds = %gc_object_moved_p_internal.exit210.thread.i.i
  %i.ye = and i64 %i.xo, -2
  %i.yf = inttoptr i64 %i.ye to ptr               ; 3 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 64
  %.val.i33.i = load i64, ptr %i.yg, align 8, !tbaa !205
  %i.yh = and i64 %.val.i33.i, 16384
  %.not380.i.i = icmp eq i64 %i.yh, 0
  br i1 %.not380.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yi = getelementptr i8, ptr %i.yf, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !206 ; 2 uses
  %.0182383.i.i = load i64, ptr %i.yj, align 8, !tbaa !59 ; 2 uses
  %.not193384.i.i = icmp eq i64 %.0182383.i.i, -1
  br i1 %.not193384.i.i, label %.critedge.i.i, label %.lr.ph388.i.i

.lr.ph388.i.i:                                    ; preds = %bb.de, %gc_location_internal.exit216.i.i
  %.0182386.i.i = phi i64 [ %.0182.i.i, %gc_location_internal.exit216.i.i ], [ %.0182383.i.i, %bb.de ]
  %.0385.i.i = phi ptr [ %i.yw, %gc_location_internal.exit216.i.i ], [ %i.yj, %bb.de ] ; 2 uses
  %i.yk = getelementptr i8, ptr %.ph.i.i, i64 %.0182386.i.i ; 2 uses
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !59 ; 5 uses
  %i.ym = icmp eq i64 %i.yl, 0
  %i.yn = and i64 %i.yl, 7
  %i.yo = icmp ne i64 %i.yn, 0
  %i.yp = or i1 %i.ym, %i.yo
  br i1 %i.yp, label %gc_location_internal.exit216.i.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph388.i.i
  %i.yq = inttoptr i64 %i.yl to ptr               ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !109
  %i.ys = and i64 %i.yr, 31
  %i.yt = icmp eq i64 %i.ys, 30
  br i1 %i.yt, label %.split2.us.i.i215.i.i, label %gc_location_internal.exit216.i.i

.split2.us.i.i215.i.i:                            ; preds = %bb.df
  %i.yu = getelementptr i8, ptr %i.yq, i64 16
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !286
  br label %gc_location_internal.exit216.i.i

gc_location_internal.exit216.i.i:                 ; preds = %.split2.us.i.i215.i.i, %bb.df, %.lr.ph388.i.i
  %.0.i214.i.i = phi i64 [ %i.yl, %.lr.ph388.i.i ], [ %i.yv, %.split2.us.i.i215.i.i ], [ %i.yl, %bb.df ]
  store i64 %.0.i214.i.i, ptr %i.yk, align 8, !tbaa !59
  %i.yw = getelementptr i8, ptr %.0385.i.i, i64 8
  %.0182.i.i = load i64, ptr %.0385.i.i, align 8, !tbaa !59 ; 2 uses
  %.not193.i.i = icmp eq i64 %.0182.i.i, -1
  br i1 %.not193.i.i, label %.critedge.i.i, label %.lr.ph388.i.i, !llvm.loop !491

bb.dg:                                            ; preds = %bb.dd
  %i.yx = getelementptr i8, ptr %i.yf, i64 32
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !492 ; 2 uses
  %.not192.i.i = icmp eq ptr %i.yy, null
  br i1 %.not192.i.i, label %.critedge.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void %i.yy(ptr noundef nonnull %.ph.i.i) #46, !inline_history !487
  br label %.critedge.i.i

bb.di:                                            ; preds = %.sink.split.i.i
  %i.yz = and i64 %i.tt, 65536
  %.not.i328.i.i = icmp eq i64 %i.yz, 0
  %i.za = getelementptr i8, ptr %i.sp, i64 16     ; 8 uses
  br i1 %.not.i328.i.i, label %.ROBJECT_FIELDS.exit.thread_crit_edge.i.i, label %bb.dj, !prof !189

.ROBJECT_FIELDS.exit.thread_crit_edge.i.i:        ; preds = %bb.di
  %.pre392.i.i = and i64 %.02334.i.i, 7
  br label %ROBJECT_FIELDS.exit.thread.i.i

bb.dj:                                            ; preds = %bb.di
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !214 ; 8 uses
  %i.zc = icmp ne i64 %.02334.i.i, 0
  %i.zd = and i64 %.02334.i.i, 7                  ; 6 uses
  %i.ze = icmp eq i64 %i.zd, 0
  %.not378.i.i = and i1 %i.zc, %i.ze
  %i.zf = and i64 %i.tt, 576460752303423488
  %i.zg = icmp ne i64 %i.zf, 0
  %or.cond.i.i56 = and i1 %.not378.i.i, %i.zg
  br i1 %or.cond.i.i56, label %bb.dk, label %rb_shape_obj_too_complex_p.exit.thread.i.i

bb.dk:                                            ; preds = %bb.dj
  %.not.i42.i = icmp eq ptr %i.zb, null
  br i1 %.not.i42.i, label %.critedge.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zh = getelementptr i8, ptr %i.zb, i64 16
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !218
  %i.zj = icmp eq i64 %i.zi, 0
  br i1 %i.zj, label %.critedge.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zk = call i32 @rb_st_foreach_with_replace(ptr noundef nonnull %i.zb, ptr noundef nonnull @hash_foreach_replace_value, ptr noundef nonnull @hash_replace_ref_value, i64 noundef 0) #46, !inline_history !483
  %.not3.i43.i = icmp eq i32 %i.zk, 0
  br i1 %.not3.i43.i, label %.critedge.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zl = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !59
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.zl, ptr noundef nonnull @.str.186) #58, !inline_history !483
  unreachable

rb_shape_obj_too_complex_p.exit.thread.i.i:       ; preds = %bb.dj
  %i.zm = load ptr, ptr %i.sr, align 65536, !tbaa !113
  %i.zn = load i16, ptr %i.zm, align 8, !tbaa !100
  %i.zo = zext i16 %i.zn to i64
  %i.zp = lshr i64 %i.tt, 32                      ; 2 uses
  %i.zq = and i64 %i.tt, 126100789566373888
  %.not.i.i.i40.i = icmp eq i64 %i.zq, 0
  br i1 %.not.i.i.i40.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i:       ; preds = %rb_shape_obj_too_complex_p.exit.thread.i.i
  %i.zr = and i64 %i.zp, 524287
  %i.zs = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.zt = getelementptr [40 x i8], ptr %i.zs, i64 %i.zr
  %i.zu = getelementptr i8, ptr %i.zt, i64 30
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !273
  br label %ROBJECT_FIELDS_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i:              ; preds = %rb_shape_obj_too_complex_p.exit.thread.i.i
  %i.zw = lshr i64 %i.tt, 54
  %i.zx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.zy = and i64 %i.zw, 7
  %7 = getelementptr [2 x i8], ptr %i.zx, i64 %i.zy
  %8 = getelementptr i8, ptr %7, i64 -2
  %i.zz = load i16, ptr %8, align 2, !tbaa !276
  %i.aaa = and i64 %i.zp, 524287
  %i.aab = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.aac = getelementptr [40 x i8], ptr %i.aab, i64 %i.aaa
  %i.aad = getelementptr i8, ptr %i.aac, i64 30
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !273
  %spec.select.i.i.i57 = call i16 @llvm.umax.i16(i16 %i.zz, i16 %i.aae)
  br label %ROBJECT_FIELDS_CAPACITY.exit.i

ROBJECT_FIELDS_CAPACITY.exit.i:                   ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i
  %.0.i.i41.i = phi i16 [ %spec.select.i.i.i57, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i ], [ %i.zv, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i ]
  %i.aaf = zext i16 %.0.i.i41.i to i32
  %i.aag = call i64 @rb_obj_embedded_size(i32 noundef %i.aaf) #46, !inline_history !493
  %.not25.i.i.i = icmp ugt i64 %i.aag, %i.zo
  br i1 %.not25.i.i.i, label %ROBJECT_FIELDS.exit.thread.i.i, label %bb.do

bb.do:                                            ; preds = %ROBJECT_FIELDS_CAPACITY.exit.i
  %i.aah = icmp eq i64 %.02334.i.i, 0
  %i.aai = icmp ne i64 %i.zd, 0
  %i.aaj = or i1 %i.aah, %i.aai
  %.pre.i58 = load i64, ptr %i.sp, align 8, !tbaa !109 ; 2 uses
  %i.aak = and i64 %.pre.i58, 576460752303423488
  %.not.i37.i59 = icmp eq i64 %i.aak, 0
  %or.cond.i = select i1 %i.aaj, i1 true, i1 %.not.i37.i59
  br i1 %or.cond.i, label %rb_shape_obj_too_complex_p.exit.thread.i39.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aal = load ptr, ptr %i.za, align 8, !tbaa !214
  %i.aam = call i64 @rb_st_table_size(ptr noundef %i.aal) #46, !inline_history !483
  %i.aan = trunc i64 %i.aam to i32
  br label %ROBJECT_FIELDS_COUNT.exit.i

rb_shape_obj_too_complex_p.exit.thread.i39.i:     ; preds = %bb.do
  %i.aao = lshr i64 %.pre.i58, 32
  %i.aap = and i64 %i.aao, 524287
  %i.aaq = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.aar = getelementptr [40 x i8], ptr %i.aaq, i64 %i.aap
  %i.aas = getelementptr i8, ptr %i.aar, i64 28
  %i.aat = load i16, ptr %i.aas, align 4, !tbaa !363
  %i.aau = zext i16 %i.aat to i32
  br label %ROBJECT_FIELDS_COUNT.exit.i

ROBJECT_FIELDS_COUNT.exit.i:                      ; preds = %rb_shape_obj_too_complex_p.exit.thread.i39.i, %bb.dp
  %.0.i38.i = phi i32 [ %i.aan, %bb.dp ], [ %i.aau, %rb_shape_obj_too_complex_p.exit.thread.i39.i ] ; 2 uses
  %.not.i330.i.i = icmp eq i32 %.0.i38.i, 0
  br i1 %.not.i330.i.i, label %ruby_nonempty_memcpy.exit.i.i, label %ruby_nonempty_memcpy.exit.i.thread.i

ruby_nonempty_memcpy.exit.i.thread.i:             ; preds = %ROBJECT_FIELDS_COUNT.exit.i
  %i.aav = zext i32 %.0.i38.i to i64
  %i.aaw = shl nuw nsw i64 %i.aav, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.za, ptr noundef nonnull readonly align 1 %i.zb, i64 noundef range(i64 1, 34359738361) %i.aaw, i1 noundef false) #46
  %i.aax = load i64, ptr %i.sp, align 8, !tbaa !109
  %i.aay = and i64 %i.aax, -65537
  store i64 %i.aay, ptr %i.sp, align 8, !tbaa !109
  br label %bb.dq

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %ROBJECT_FIELDS_COUNT.exit.i
  %i.aaz = load i64, ptr %i.sp, align 8, !tbaa !109
  %i.aba = and i64 %i.aaz, -65537
  store i64 %i.aba, ptr %i.sp, align 8, !tbaa !109
  %.not.i.i35.i = icmp eq ptr %i.zb, null
  br i1 %.not.i.i35.i, label %ROBJECT_FIELDS.exit.thread.i.i, label %bb.dq, !prof !494

bb.dq:                                            ; preds = %ruby_nonempty_memcpy.exit.i.i, %ruby_nonempty_memcpy.exit.i.thread.i
  %i.abb = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.abb, null
  br i1 %.not3.i.i.i, label %bb.ds, label %bb.dr, !prof !60

bb.dr:                                            ; preds = %bb.dq
  %i.abc = getelementptr i8, ptr %i.abb, i64 1248
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !62
  call fastcc void @rb_gc_impl_free(ptr noundef %i.abd, ptr noundef %i.zb, i64 noundef 0), !inline_history !495
  br label %ROBJECT_FIELDS.exit.thread.i.i

bb.ds:                                            ; preds = %bb.dq
  call void @free(ptr noundef nonnull %i.zb) #46, !inline_history !496
  br label %ROBJECT_FIELDS.exit.thread.i.i

ROBJECT_FIELDS.exit.thread.i.i:                   ; preds = %bb.ds, %bb.dr, %ruby_nonempty_memcpy.exit.i.i, %ROBJECT_FIELDS_CAPACITY.exit.i, %.ROBJECT_FIELDS.exit.thread_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre392.i.i, %.ROBJECT_FIELDS.exit.thread_crit_edge.i.i ], [ %i.zd, %ROBJECT_FIELDS_CAPACITY.exit.i ], [ %i.zd, %ruby_nonempty_memcpy.exit.i.i ], [ %i.zd, %bb.dr ], [ %i.zd, %bb.ds ]
  %.1.i.i.i = phi ptr [ %i.za, %.ROBJECT_FIELDS.exit.thread_crit_edge.i.i ], [ %i.zb, %ROBJECT_FIELDS_CAPACITY.exit.i ], [ %i.za, %ruby_nonempty_memcpy.exit.i.i ], [ %i.za, %bb.dr ], [ %i.za, %bb.ds ]
  %i.abe = icmp eq i64 %.02334.i.i, 0
  %i.abf = icmp ne i64 %.pre-phi.i.i, 0
  %i.abg = or i1 %i.abe, %i.abf
  br label %bb.dt

bb.dt:                                            ; preds = %gc_object_moved_p_internal.exit335.thread.i.i, %ROBJECT_FIELDS.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %gc_object_moved_p_internal.exit335.thread.i.i ], [ 0, %ROBJECT_FIELDS.exit.thread.i.i ] ; 3 uses
  %.pre391.i.i = load i64, ptr %i.sp, align 8, !tbaa !109 ; 2 uses
  %i.abh = and i64 %.pre391.i.i, 576460752303423488
  %.not.i332.i.i = icmp eq i64 %i.abh, 0
  %or.cond429.i.i = select i1 %i.abg, i1 true, i1 %.not.i332.i.i
  br i1 %or.cond429.i.i, label %rb_shape_obj_too_complex_p.exit.thread.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abi = load ptr, ptr %i.za, align 8, !tbaa !214
  %i.abj = call i64 @rb_st_table_size(ptr noundef %i.abi) #46, !inline_history !487
  br label %ROBJECT_FIELDS_COUNT.exit.i.i

rb_shape_obj_too_complex_p.exit.thread.i.i.i:     ; preds = %bb.dt
  %i.abk = lshr i64 %.pre391.i.i, 32
  %i.abl = and i64 %i.abk, 524287
  %i.abm = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.abn = getelementptr [40 x i8], ptr %i.abm, i64 %i.abl
  %i.abo = getelementptr i8, ptr %i.abn, i64 28
  %i.abp = load i16, ptr %i.abo, align 4, !tbaa !363
  %i.abq = zext i16 %i.abp to i64
  br label %ROBJECT_FIELDS_COUNT.exit.i.i

ROBJECT_FIELDS_COUNT.exit.i.i:                    ; preds = %rb_shape_obj_too_complex_p.exit.thread.i.i.i, %bb.du
  %.0.i333.i.i = phi i64 [ %i.abj, %bb.du ], [ %i.abq, %rb_shape_obj_too_complex_p.exit.thread.i.i.i ]
  %i.abr = and i64 %.0.i333.i.i, 4294967295
  %i.abs = icmp samesign ult i64 %indvars.iv.i.i, %i.abr
  br i1 %i.abs, label %bb.dv, label %.critedge.i.i

bb.dv:                                            ; preds = %ROBJECT_FIELDS_COUNT.exit.i.i
  %i.abt = getelementptr [8 x i8], ptr %.1.i.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !59 ; 3 uses
  %i.abv = icmp eq i64 %i.abu, 0
  %i.abw = and i64 %i.abu, 7
  %i.abx = icmp ne i64 %i.abw, 0
  %i.aby = or i1 %i.abv, %i.abx
  br i1 %i.aby, label %gc_object_moved_p_internal.exit335.thread.i.i, label %gc_object_moved_p_internal.exit335.i.i

gc_object_moved_p_internal.exit335.i.i:           ; preds = %bb.dv
  %i.abz = inttoptr i64 %i.abu to ptr             ; 2 uses
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !109
  %i.acb = and i64 %i.aca, 31
  %i.acc = icmp eq i64 %i.acb, 30
  br i1 %i.acc, label %gc_location_internal.exit338.i.i, label %gc_object_moved_p_internal.exit335.thread.i.i

gc_location_internal.exit338.i.i:                 ; preds = %gc_object_moved_p_internal.exit335.i.i
  %i.acd = getelementptr i8, ptr %i.abz, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !286
  store i64 %i.ace, ptr %i.abt, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit335.thread.i.i

gc_object_moved_p_internal.exit335.thread.i.i:    ; preds = %gc_location_internal.exit338.i.i, %gc_object_moved_p_internal.exit335.i.i, %bb.dv
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %bb.dt, !llvm.loop !497

bb.dw:                                            ; preds = %.sink.split.i.i
  %i.acf = getelementptr i8, ptr %i.sp, i64 16
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !265 ; 11 uses
  %.not190.i.i = icmp eq ptr %i.acg, null
  br i1 %.not190.i.i, label %.critedge.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !366 ; 3 uses
  %i.aci = icmp eq i64 %i.ach, 0
  %i.acj = and i64 %i.ach, 7
  %i.ack = icmp ne i64 %i.acj, 0
  %i.acl = or i1 %i.aci, %i.ack
  br i1 %i.acl, label %gc_object_moved_p_internal.exit220.thread.i.i, label %gc_object_moved_p_internal.exit220.i.i

gc_object_moved_p_internal.exit220.i.i:           ; preds = %bb.dx
  %i.acm = inttoptr i64 %i.ach to ptr             ; 2 uses
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !109
  %i.aco = and i64 %i.acn, 31
  %i.acp = icmp eq i64 %i.aco, 30
  br i1 %i.acp, label %gc_location_internal.exit223.i.i, label %gc_object_moved_p_internal.exit220.thread.i.i

gc_location_internal.exit223.i.i:                 ; preds = %gc_object_moved_p_internal.exit220.i.i
  %i.acq = getelementptr i8, ptr %i.acm, i64 16
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !286
  store i64 %i.acr, ptr %i.acg, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit220.thread.i.i

gc_object_moved_p_internal.exit220.thread.i.i:    ; preds = %gc_location_internal.exit223.i.i, %gc_object_moved_p_internal.exit220.i.i, %bb.dx
  %i.acs = getelementptr i8, ptr %i.acg, i64 32   ; 2 uses
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !372 ; 3 uses
  %i.acu = icmp eq i64 %i.act, 0
  %i.acv = and i64 %i.act, 7
  %i.acw = icmp ne i64 %i.acv, 0
  %i.acx = or i1 %i.acu, %i.acw
  br i1 %i.acx, label %gc_object_moved_p_internal.exit225.thread.i.i, label %gc_object_moved_p_internal.exit225.i.i

gc_object_moved_p_internal.exit225.i.i:           ; preds = %gc_object_moved_p_internal.exit220.thread.i.i
  %i.acy = inttoptr i64 %i.act to ptr             ; 2 uses
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !109
  %i.ada = and i64 %i.acz, 31
  %i.adb = icmp eq i64 %i.ada, 30
  br i1 %i.adb, label %gc_location_internal.exit228.i.i, label %gc_object_moved_p_internal.exit225.thread.i.i

gc_location_internal.exit228.i.i:                 ; preds = %gc_object_moved_p_internal.exit225.i.i
  %i.adc = getelementptr i8, ptr %i.acy, i64 16
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !286
  store i64 %i.add, ptr %i.acs, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit225.thread.i.i

gc_object_moved_p_internal.exit225.thread.i.i:    ; preds = %gc_location_internal.exit228.i.i, %gc_object_moved_p_internal.exit225.i.i, %gc_object_moved_p_internal.exit220.thread.i.i
  %i.ade = getelementptr i8, ptr %i.acg, i64 88   ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !373 ; 3 uses
  %i.adg = icmp eq i64 %i.adf, 0
  %i.adh = and i64 %i.adf, 7
  %i.adi = icmp ne i64 %i.adh, 0
  %i.adj = or i1 %i.adg, %i.adi
  br i1 %i.adj, label %gc_object_moved_p_internal.exit230.thread.i.i, label %gc_object_moved_p_internal.exit230.i.i

gc_object_moved_p_internal.exit230.i.i:           ; preds = %gc_object_moved_p_internal.exit225.thread.i.i
  %i.adk = inttoptr i64 %i.adf to ptr             ; 2 uses
end_hunk_1
begin_hunk_2_@gc_compact_move:bb.a
  %i.be = and i64 %i.bd, 31
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !59
  %i.bi = getelementptr i8, ptr %0, i64 2192      ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !347
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !347
  %i.bl = zext i16 %i.ak to i64
  %i.bm = zext i16 %i.al to i64
  %i.bn = tail call fastcc i64 @gc_move(i64 noundef %2, i64 noundef %i.ah, i64 noundef %i.bl, i64 noundef %i.bm) ; 0 uses
  %i.bo = getelementptr i8, ptr %0, i64 28
  %.val.i = load i16, ptr %i.bo, align 4          ; 2 uses
  %i.bp = and i16 %.val.i, 64
  %.not.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i, label %bb.u, label %bb.m, !prof !189

bb.m:                                             ; preds = %bb.l
  %i.bq = and i16 %.val.i, 32
  %.not9.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not9.i.i, label %bb.u, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.x, align 65536, !tbaa !113 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 1112
  %.lhs.trunc.i.i.i = trunc i64 %2 to i16         ; 2 uses
  %i.bt = udiv i16 %.lhs.trunc.i.i.i, 40
  %i.bu = udiv i16 %.lhs.trunc.i.i.i, 2560
  %.zext2.i.i.i = zext nneg i16 %i.bu to i64
  %i.bv = getelementptr [8 x i8], ptr %i.bs, i64 %.zext2.i.i.i ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.bx = and i16 %i.bt, 63
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by                    ; 2 uses
  %i.ca = and i64 %i.bw, %i.bz
  %.not10.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not10.i.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !288
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.cb, align 8, !tbaa !288
  %i.ce = or i64 %i.bw, %i.bz
  store i64 %i.ce, ptr %i.bv, align 8, !tbaa !59
  br label %bb.u

bb.p:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !111
  store ptr %i.cf, ptr %3, align 8, !tbaa !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.cg = tail call i32 @mprotect(ptr noundef nonnull %i.x, i64 noundef 65536, i32 noundef 0) #46
  %.not.i59 = icmp eq i32 %i.cg, 0
  br i1 %.not.i59, label %lock_page_body.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = tail call ptr @rb_errno_ptr() #46
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = tail call ptr @strerror(i32 noundef %i.ci) #46
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.138, ptr noundef nonnull %i.x, ptr noundef %i.cj) #61
  unreachable

lock_page_body.exit:                              ; preds = %bb.p
  call fastcc void @gc_sweep_page(ptr noundef %0, ptr noundef nonnull %.047, ptr noundef %3)
  %i.ck = tail call i32 @mprotect(ptr noundef nonnull %i.x, i64 noundef 65536, i32 noundef 3) #46
  %.not.i60 = icmp eq i32 %i.ck, 0
  br i1 %.not.i60, label %unlock_page_body.exit, label %bb.r

bb.r:                                             ; preds = %lock_page_body.exit
  %i.cl = tail call ptr @rb_errno_ptr() #46
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = tail call ptr @strerror(i32 noundef %i.cm) #46
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.130, ptr noundef nonnull %i.x, ptr noundef %i.cn) #61
  unreachable

unlock_page_body.exit:                            ; preds = %lock_page_body.exit
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !111 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !456
  %.not55 = icmp eq i16 %i.cq, 0
  br i1 %.not55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %unlock_page_body.exit
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !447
  %i.cs = getelementptr i8, ptr %i.co, i64 24
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !454
  store ptr %i.co, ptr %i.v, align 8, !tbaa !447
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %unlock_page_body.exit
  %i.ct = getelementptr i8, ptr %i.co, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !506 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.aa
  %i.cw = getelementptr i8, ptr %i.cu, i64 -56
  %.0.i61 = select i1 %i.cv, ptr null, ptr %i.cw  ; 2 uses
  store ptr %.0.i61, ptr %i.y, align 8, !tbaa !111
  %.047.val57 = load ptr, ptr %i.ab, align 8, !tbaa !469
  %i.cx = icmp eq ptr %.0.i61, %.047.val57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %i.cx, label %.loopexit, label %bb.f, !llvm.loop !544

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.cy = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !456
  %i.da = add i16 %i.cz, -1
  store i16 %i.da, ptr %i.cy, align 4, !tbaa !456
  %.not53 = icmp eq i32 %.046, 0
  br i1 %.not53, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not54 = icmp eq i32 %.045, 0
  %.pre84 = inttoptr i64 %2 to ptr                ; 4 uses
  br i1 %.not54, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = load i64, ptr %.pre84, align 8, !tbaa !109 ; 2 uses
  %i.dc = and i64 %i.db, 31
  %i.dd = icmp eq i64 %i.dc, 30
  br i1 %i.dd, label %.split2.us.i, label %rb_gc_impl_location.exit

.split2.us.i:                                     ; preds = %bb.w
  %i.de = getelementptr i8, ptr %.pre84, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !286
  %.phi.trans.insert = inttoptr i64 %i.df to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %rb_gc_impl_location.exit

rb_gc_impl_location.exit:                         ; preds = %bb.w, %.split2.us.i
  %.pre-phi = phi ptr [ %.pre84, %bb.w ], [ %.phi.trans.insert, %.split2.us.i ]
  %i.dg = phi i64 [ %i.db, %bb.w ], [ %.pre, %.split2.us.i ]
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = zext i32 %.045 to i64
  %i.dj = shl nuw i64 %i.di, 32
  %i.dk = or disjoint i64 %i.dh, %i.dj
  store i64 %i.dk, ptr %.pre-phi, align 8, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %rb_gc_impl_location.exit
  %i.dl = getelementptr i8, ptr %.pre84, i64 24
  store i32 %.046, ptr %i.dl, align 8, !tbaa !540
  br label %bb.x

.loopexit:                                        ; preds = %bb.t
  %i.dm = icmp ne ptr %.047, %1
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.u, %._crit_edge, %bb.b
  %.2 = phi i1 [ %i.e, %bb.b ], [ true, %bb.u ], [ true, %._crit_edge ], [ %i.dm, %.loopexit ]
  ret i1 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @gc_compact_destination_pool(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 6 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 31
  switch i32 %i.d, label %rb_gc_obj_optimal_size.exit.thread11 [
    i32 7, label %bb.b
    i32 1, label %bb.c
    i32 5, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_size_as_embedded(i64 noundef %2) #46 ; 2 uses
  %i.f = icmp ult i64 %i.e, 641
  br i1 %i.f, label %rb_gc_obj_optimal_size.exit, label %rb_gc_obj_optimal_size.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %2, 0
  %i.h = and i64 %2, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not18.i = and i1 %i.g, %i.i
  %i.j = and i64 %i.b, 576460752303423488
  %i.k = icmp ne i64 %i.j, 0
  %or.cond.i = and i1 %.not18.i, %i.k
  br i1 %or.cond.i, label %rb_gc_obj_optimal_size.exit.thread, label %rb_shape_obj_too_complex_p.exit.thread.i

rb_shape_obj_too_complex_p.exit.thread.i:         ; preds = %bb.c
  %i.l = lshr i64 %i.b, 32                        ; 2 uses
  %i.m = and i64 %i.b, 126100789566373888
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i:       ; preds = %rb_shape_obj_too_complex_p.exit.thread.i
  %i.n = and i64 %i.l, 524287
  %i.o = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.p = getelementptr [40 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 30
  %i.r = load i16, ptr %i.q, align 2, !tbaa !273
  br label %ROBJECT_FIELDS_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i:              ; preds = %rb_shape_obj_too_complex_p.exit.thread.i
  %i.s = lshr i64 %i.b, 54
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.u = and i64 %i.s, 7
  %3 = getelementptr [2 x i8], ptr %i.t, i64 %i.u
  %4 = getelementptr i8, ptr %3, i64 -2
  %i.v = load i16, ptr %4, align 2, !tbaa !276
  %i.w = and i64 %i.l, 524287
  %i.x = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.y = getelementptr [40 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 30
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !273
  %spec.select.i.i.i = tail call i16 @llvm.umax.i16(i16 %i.v, i16 %i.aa)
  br label %ROBJECT_FIELDS_CAPACITY.exit.i

ROBJECT_FIELDS_CAPACITY.exit.i:                   ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i
  %.0.i.i.i = phi i16 [ %spec.select.i.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i ], [ %i.r, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i ]
  %i.ab = zext i16 %.0.i.i.i to i32
  %i.ac = tail call i64 @rb_obj_embedded_size(i32 noundef %i.ab) #46 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 641
  br i1 %i.ad, label %rb_gc_obj_optimal_size.exit, label %rb_gc_obj_optimal_size.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.ae = tail call i64 @rb_str_size_as_embedded(i64 noundef %2) #46 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 641
  br i1 %i.af, label %rb_gc_obj_optimal_size.exit, label %rb_gc_obj_optimal_size.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.ag = and i64 %i.b, 32768
  %.not.i.i.not.i = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not.i.i.not.i, i64 160, i64 80
  br label %rb_gc_obj_optimal_size.exit.thread

rb_gc_obj_optimal_size.exit:                      ; preds = %bb.d, %ROBJECT_FIELDS_CAPACITY.exit.i, %bb.b
  %.3.i = phi i64 [ %i.ac, %ROBJECT_FIELDS_CAPACITY.exit.i ], [ %i.e, %bb.b ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ai = icmp eq i64 %.3.i, 0
  br i1 %i.ai, label %rb_gc_obj_optimal_size.exit.thread11, label %rb_gc_obj_optimal_size.exit.thread

rb_gc_obj_optimal_size.exit.thread:               ; preds = %bb.d, %ROBJECT_FIELDS_CAPACITY.exit.i, %bb.e, %bb.b, %bb.c, %rb_gc_obj_optimal_size.exit
  %.3.i10 = phi i64 [ %.3.i, %rb_gc_obj_optimal_size.exit ], [ 40, %bb.d ], [ 24, %ROBJECT_FIELDS_CAPACITY.exit.i ], [ %i.ah, %bb.e ], [ 40, %bb.b ], [ 24, %bb.c ]
  %i.aj = trunc nuw nsw i64 %.3.i10 to i16
  %.lhs.trunc = add nuw nsw i16 %i.aj, 39
  %i.ak = udiv i16 %.lhs.trunc, 40
  %.zext = zext nneg i16 %i.ak to i64
  %i.al = add nsw i64 %.zext, -1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 false)
  %i.an = sub nuw nsw i64 64, %i.am
  %i.ao = getelementptr i8, ptr %0, i64 40
  %i.ap = getelementptr [152 x i8], ptr %i.ao, i64 %i.an
  br label %rb_gc_obj_optimal_size.exit.thread11

rb_gc_obj_optimal_size.exit.thread11:             ; preds = %bb.a, %rb_gc_obj_optimal_size.exit, %rb_gc_obj_optimal_size.exit.thread
  %.0 = phi ptr [ %i.ap, %rb_gc_obj_optimal_size.exit.thread ], [ %1, %rb_gc_obj_optimal_size.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gc_sweep_page(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !522    ; 8 uses
  %i.b = getelementptr i8, ptr %i.a, i64 12       ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr i8, ptr %i.a, i64 4        ; 3 uses
  store i16 0, ptr %i.e, align 4, !tbaa !456
  %i.f = getelementptr i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 3 uses
  %i.h = getelementptr i8, ptr %i.a, i64 280      ; 4 uses
  %i.i = getelementptr i8, ptr %i.a, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !108
  %i.k = zext i16 %i.j to i32
  %i.l = load i16, ptr %i.a, align 8, !tbaa !100
  %i.m = udiv i16 %i.l, 40
  %i.n = zext nneg i16 %i.m to i32
  %i.o = mul nuw nsw i32 %i.n, %i.k               ; 2 uses
  %.lhs.trunc = trunc i64 %i.g to i16             ; 2 uses
  %i.p = udiv i16 %.lhs.trunc, 40
  %.zext = zext nneg i16 %i.p to i64              ; 3 uses
  %i.q = zext nneg i32 %i.o to i64
  %i.r = add nuw nsw i64 %i.q, %.zext             ; 3 uses
  %i.s = and i64 %i.r, 63                         ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i64 -1, %i.s
  %i.t = udiv i16 %.lhs.trunc, 2560
  %.zext63 = zext nneg i16 %i.t to i64
  %i.u = lshr i32 %i.o, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.h, i64 %.zext63
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59
  %i.z = or i64 %i.y, %notmask
  store i64 %i.z, ptr %i.x, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = add nuw nsw i64 %i.r, 63
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !164 ; 2 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !59
  %i.af = xor i64 %i.ae, -1
  %i.ag = lshr i64 %i.af, %.zext
  %i.ah = and i64 %i.ag, %i.ad                    ; 2 uses
  %.not57 = icmp eq i64 %i.ah, 0
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @gc_sweep_plane(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.ah, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = icmp samesign ugt i64 %i.r, 64
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aj = sub nsw i64 64, %.zext
  %i.ak = mul nsw i64 %i.aj, 40
  %i.al = add i64 %i.ak, %i.g
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.am = getelementptr i8, ptr %1, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !469
  %.not58 = icmp eq ptr %i.an, null
  br i1 %.not58, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.05364 = phi i64 [ %i.al, %.lr.ph.preheader ], [ %i.as, %bb.g ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !59
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.ad, %i.aq                    ; 2 uses
  %.not61 = icmp eq i64 %i.ar, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call fastcc void @gc_sweep_plane(ptr noundef %0, i64 noundef %.05364, i64 noundef %i.ar, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.as = add i64 %.05364, 2560
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !545

bb.h:                                             ; preds = %._crit_edge
  %i.at = getelementptr i8, ptr %i.a, i64 488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(208) %i.at, i64 noundef range(i64 1, 34359738361) 208, i1 noundef false) #46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.au = getelementptr i8, ptr %2, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !524 ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !525
  %i.ay = add i32 %i.ax, %i.av
  %i.az = load i16, ptr %i.e, align 4, !tbaa !456
  %i.ba = trunc i32 %i.ay to i16
  %i.bb = add i16 %i.az, %i.ba
  store i16 %i.bb, ptr %i.e, align 4, !tbaa !456
  %i.bc = sext i32 %i.av to i64
  %i.bd = getelementptr i8, ptr %i.a, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !431
  %i.bf = getelementptr i8, ptr %i.be, i64 48     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !153
  %i.bh = add i64 %i.bg, %i.bc
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !153
  %i.bi = getelementptr i8, ptr %0, i64 928
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !533
  %.not59 = icmp eq i64 %i.bj, 0
  br i1 %.not59, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr i8, ptr %0, i64 816
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !151
  %.not60 = icmp eq i32 %i.bl, 0
  br i1 %.not60, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %0, i64 2232
  %.val = load i32, ptr %i.bm, align 8, !tbaa !162
  tail call void @rb_postponed_job_trigger(i32 noundef %.val) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  ret void
}

declare i64 @rb_ary_size_as_embedded(i64 noundef) local_unnamed_addr #11

declare i64 @rb_obj_embedded_size(i32 noundef) local_unnamed_addr #11

declare i64 @rb_str_size_as_embedded(i64 noundef) local_unnamed_addr #11

declare i32 @rb_obj_shape_id(i64 noundef) local_unnamed_addr #11

declare i32 @rb_shape_transition_heap(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gc_sweep_plane(ptr noundef %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
end_hunk_2
begin_hunk_3_@rb_raw_obj_info_buitin_type:bb.a
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !359 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.f, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !612 ; 2 uses
  %i.bx = icmp eq i64 %i.bu, 0
  %i.by = and i64 %i.bu, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  %.pre456 = inttoptr i64 %i.bu to ptr            ; 3 uses
  br i1 %i.ca, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.r
  %i.cb = load i64, ptr %.pre456, align 8, !tbaa !109 ; 2 uses
  %i.cc = and i64 %i.cb, 31
  %i.cd = icmp eq i64 %i.cc, 5
  br i1 %i.cd, label %bb.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ce = getelementptr i8, ptr %0, i64 %3
  %i.cf = sub i64 %1, %3
  %i.cg = and i64 %i.cb, 8192
  %.not.i397 = icmp eq i64 %i.cg, 0
  %i.ch = getelementptr i8, ptr %.pre456, i64 24  ; 2 uses
  br i1 %.not.i397, label %RSTRING_PTR.exit398, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !214
  br label %RSTRING_PTR.exit398

RSTRING_PTR.exit398:                              ; preds = %bb.s, %bb.t
  %i.cj = phi ptr [ %i.ci, %bb.t ], [ %i.ch, %bb.s ]
  %i.ck = trunc i64 %i.bw to i32
  %i.cl = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.318, ptr noundef %i.cj, i32 noundef %i.ck) #46 ; 0 uses
  br label %.critedge

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cm = getelementptr i8, ptr %0, i64 %3
  %i.cn = sub i64 %1, %3
  %i.co = trunc i64 %i.bw to i32
  %i.cp = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.319, ptr noundef %.pre456, i32 noundef %i.co) #46 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.c
  %i.cq = getelementptr i8, ptr %0, i64 %3
  %i.cr = sub i64 %1, %3
  %i.cs = and i64 %i.g, 31
  %i.ct = icmp eq i64 %i.cs, 30
  br i1 %i.ct, label %.split2.us.i.i, label %gc_location_internal.exit

.split2.us.i.i:                                   ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %i.f, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !286
  %.pre = inttoptr i64 %i.cv to ptr
  br label %gc_location_internal.exit

gc_location_internal.exit:                        ; preds = %bb.u, %.split2.us.i.i
  %.pre-phi = phi ptr [ %i.f, %bb.u ], [ %.pre, %.split2.us.i.i ]
  %i.cw = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.320, ptr noundef %.pre-phi) #46 ; 0 uses
  br label %.critedge

bb.v:                                             ; preds = %bb.c
  %i.cx = getelementptr i8, ptr %0, i64 %3
  %i.cy = sub i64 %1, %3
  %i.cz = and i64 %i.g, 32768
  %.not.i400 = icmp eq i64 %i.cz, 0               ; 2 uses
  %i.da = select i1 %.not.i400, i32 65, i32 83
  br i1 %.not.i400, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = lshr i64 %i.g, 16
  %i.dc = and i64 %i.db, 15
  br label %RHASH_SIZE.exit

bb.x:                                             ; preds = %bb.v
  %i.dd = add i64 %2, 24
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !218
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.w, %bb.x
  %.0.i401 = phi i64 [ %i.dc, %bb.w ], [ %i.dg, %bb.x ]
  %i.dh = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull @.str.321, i32 noundef %i.da, i64 noundef %.0.i401) #46 ; 0 uses
  br label %.critedge

bb.y:                                             ; preds = %bb.c, %bb.c
  %i.di = tail call i64 @rb_class_path_cached(i64 noundef %2) #46 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4
  br i1 %i.dj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %0, i64 %3
  %i.dl = sub i64 %1, %3
  %i.dm = inttoptr i64 %i.di to ptr               ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !109
  %i.do = and i64 %i.dn, 8192
  %.not.i402 = icmp eq i64 %i.do, 0
  %i.dp = getelementptr i8, ptr %i.dm, i64 24     ; 2 uses
  br i1 %.not.i402, label %RSTRING_PTR.exit403, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !214
  br label %RSTRING_PTR.exit403

RSTRING_PTR.exit403:                              ; preds = %bb.z, %bb.aa
  %i.dr = phi ptr [ %i.dq, %bb.aa ], [ %i.dp, %bb.z ]
  %i.ds = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.dk, i64 noundef %i.dl, ptr noundef nonnull @.str.61, ptr noundef %i.dr) #46 ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.y
  %i.dt = add nsw i64 %3, 6
  %.not368 = icmp ult i64 %i.dt, %1
  br i1 %.not368, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr i8, ptr %0, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.du, ptr noundef nonnull align 1 dereferenceable(7) @.str.322, i64 noundef range(i64 1, 34359738361) 7, i1 noundef false) #46
  br label %.critedge

bb.ad:                                            ; preds = %bb.c
  %i.dv = getelementptr i8, ptr %i.f, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !210
  %i.dx = tail call i64 @rb_class_path_cached(i64 noundef %i.dw) #46 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr i8, ptr %0, i64 %3
  %i.ea = sub i64 %1, %3
  %i.eb = inttoptr i64 %i.dx to ptr               ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !109
  %i.ed = and i64 %i.ec, 8192
  %.not.i405 = icmp eq i64 %i.ed, 0
  %i.ee = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  br i1 %.not.i405, label %RSTRING_PTR.exit406, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !214
  br label %RSTRING_PTR.exit406

RSTRING_PTR.exit406:                              ; preds = %bb.ae, %bb.af
  %i.eg = phi ptr [ %i.ef, %bb.af ], [ %i.ee, %bb.ae ]
  %i.eh = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.323, ptr noundef %i.eg) #46 ; 0 uses
  br label %.critedge

bb.ag:                                            ; preds = %bb.c
  %i.ei = and i64 %i.g, 65536
  %.not362 = icmp eq i64 %i.ei, 0
  br i1 %.not362, label %ROBJECT_FIELDS.exit, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.ag
  %i.ej = and i64 %i.g, 576460752303423488
  %.not445 = icmp eq i64 %i.ej, 0
  br i1 %.not445, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %rb_shape_obj_too_complex_p.exit
  %i.ek = getelementptr i8, ptr %i.f, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !214
  %i.em = tail call i64 @rb_st_table_size(ptr noundef %i.el) #46
  %i.en = getelementptr i8, ptr %0, i64 %3
  %i.eo = sub i64 %1, %3
  %i.ep = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.en, i64 noundef %i.eo, ptr noundef nonnull @.str.324, i64 noundef %i.em) #46 ; 0 uses
  br label %.critedge

bb.ai:                                            ; preds = %rb_shape_obj_too_complex_p.exit
  %i.eq = getelementptr i8, ptr %0, i64 %3
  %i.er = sub i64 %1, %3
  %i.es = lshr i64 %i.g, 32
  %i.et = and i64 %i.es, 524287
  %i.eu = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.ev = getelementptr [40 x i8], ptr %i.eu, i64 %i.et
  %i.ew = getelementptr i8, ptr %i.ev, i64 28
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !363
  %i.ey = zext i16 %i.ex to i32
  %i.ez = tail call fastcc i32 @ROBJECT_FIELDS_CAPACITY(i64 noundef %2)
  %i.fa = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull @.str.325, i32 noundef %i.ey, i32 noundef %i.ez) #46 ; 0 uses
  br label %.critedge

ROBJECT_FIELDS.exit:                              ; preds = %bb.ag
  %i.fb = getelementptr i8, ptr %0, i64 %3
  %i.fc = sub i64 %1, %3
  %i.fd = lshr i64 %i.g, 32
  %i.fe = and i64 %i.fd, 524287
  %i.ff = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.fg = getelementptr [40 x i8], ptr %i.ff, i64 %i.fe ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 28
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !363
  %i.fj = zext i16 %i.fi to i32
  %i.fk = and i64 %i.g, 126100789566373888
  %.not.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %ROBJECT_FIELDS.exit
  %i.fl = getelementptr i8, ptr %i.fg, i64 30
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !273
  br label %ROBJECT_FIELDS_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %ROBJECT_FIELDS.exit
  %i.fn = lshr i64 %i.g, 54
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.fp = and i64 %i.fn, 7
  %4 = getelementptr [2 x i8], ptr %i.fo, i64 %i.fp
  %5 = getelementptr i8, ptr %4, i64 -2
  %i.fq = load i16, ptr %5, align 2, !tbaa !276
  %i.fr = getelementptr i8, ptr %i.fg, i64 30
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !273
  %spec.select.i.i = tail call i16 @llvm.umax.i16(i16 %i.fq, i16 %i.fs)
  br label %ROBJECT_FIELDS_CAPACITY.exit

ROBJECT_FIELDS_CAPACITY.exit:                     ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i
  %.0.i.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.fm, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %i.ft = zext i16 %.0.i.i to i32
  %i.fu = getelementptr i8, ptr %i.f, i64 16
  %i.fv = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.fb, i64 noundef %i.fc, ptr noundef nonnull @.str.326, i32 noundef %i.fj, i32 noundef %i.ft, ptr noundef %i.fu) #46 ; 0 uses
  br label %.critedge

bb.aj:                                            ; preds = %bb.c
  %i.fw = tail call i64 @rb_obj_is_proc(i64 noundef %2) #46
  %.not355 = icmp eq i64 %i.fw, 0
  br i1 %.not355, label %vm_block_iseq.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr i8, ptr %i.f, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !208 ; 3 uses
  %.not356 = icmp eq ptr %i.fy, null
  br i1 %.not356, label %vm_block_iseq.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = getelementptr i8, ptr %i.fy, i64 24
  %.val = load i32, ptr %i.fz, align 8, !tbaa !613
  %i.ga = icmp eq i32 %.val, 0
  br i1 %i.ga, label %vm_block_iseq.exit, label %vm_block_iseq.exit.thread

vm_block_iseq.exit:                               ; preds = %bb.al
  %i.gb = getelementptr i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !214 ; 2 uses
  %.not357 = icmp eq ptr %i.gc, null
  br i1 %.not357, label %vm_block_iseq.exit.thread, label %bb.am

bb.am:                                            ; preds = %vm_block_iseq.exit
  %i.gd = getelementptr i8, ptr %0, i64 %3
  %i.ge = sub i64 %1, %3
  tail call fastcc void @rb_raw_iseq_info(ptr noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull %i.gc)
  br label %.critedge

vm_block_iseq.exit.thread:                        ; preds = %vm_block_iseq.exit, %bb.al, %bb.ak, %bb.aj
  %i.gf = tail call zeroext i1 @rb_ractor_p(i64 noundef %2) #46
  br i1 %i.gf, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %vm_block_iseq.exit.thread
  %i.gg = getelementptr i8, ptr %i.f, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !201 ; 2 uses
  %.not360 = icmp eq ptr %i.gh, null
  br i1 %.not360, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr i8, ptr %0, i64 %3
  %i.gj = sub i64 %1, %3
  %i.gk = getelementptr i8, ptr %i.gh, i64 8
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !615
  %i.gm = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.gi, i64 noundef %i.gj, ptr noundef nonnull @.str.327, i32 noundef %i.gl) #46 ; 0 uses
  br label %.critedge

bb.ap:                                            ; preds = %vm_block_iseq.exit.thread
  %i.gn = load i64, ptr %i.f, align 8, !tbaa !109
  %i.go = and i64 %i.gn, 64
  %.not.i410 = icmp eq i64 %i.go, 0
  br i1 %.not.i410, label %.critedge, label %rb_objspace_data_type_name.exit

rb_objspace_data_type_name.exit:                  ; preds = %bb.ap
  %i.gp = getelementptr i8, ptr %i.f, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !131
  %i.gr = and i64 %i.gq, -2
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !133 ; 2 uses
  %.not358 = icmp eq ptr %i.gt, null
  br i1 %.not358, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %rb_objspace_data_type_name.exit
  %i.gu = getelementptr i8, ptr %0, i64 %3
  %i.gv = sub i64 %1, %3
  %i.gw = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.gu, i64 noundef %i.gv, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.gt) #46 ; 0 uses
  br label %.critedge

bb.ar:                                            ; preds = %bb.c
  %i.gx = getelementptr i8, ptr %0, i64 %3
  %i.gy = sub i64 %1, %3
  %i.gz = lshr i32 %i.h, 12
  %i.ha = and i32 %i.gz, 15
  %i.hb = tail call ptr @rb_imemo_name(i32 noundef %i.ha) #46
  %i.hc = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.gx, i64 noundef %i.gy, ptr noundef nonnull @.str.328, ptr noundef %i.hb) #46
  %i.hd = sext i32 %i.hc to i64
  %i.he = add nsw i64 %3, %i.hd                   ; 10 uses
  %.not = icmp ult i64 %i.he, %1
  br i1 %.not, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.hf = load i64, ptr %i.f, align 8, !tbaa !109
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = lshr i32 %i.hg, 12
  %i.hi = and i32 %i.hh, 15
  switch i32 %i.hi, label %.critedge [
    i32 6, label %bb.at
    i32 7, label %bb.ba
    i32 10, label %vm_ci_kwarg.exit
    i32 11, label %bb.bb
  ]

bb.at:                                            ; preds = %bb.as
  %i.hj = getelementptr i8, ptr %0, i64 %i.he
  %i.hk = sub i64 %1, %i.he
  %i.hl = getelementptr i8, ptr %i.f, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !616
  %i.hn = tail call ptr @rb_id2name(i64 noundef %i.hm) #46
  %i.ho = load i64, ptr %i.f, align 8, !tbaa !619 ; 4 uses
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = and i32 %i.hq, 3                        ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 1
  %i.ht = icmp eq i32 %i.hr, 2
  %i.hu = select i1 %i.ht, ptr @.str.331, ptr @.str.332
  %i.hv = select i1 %i.hs, ptr @.str.330, ptr %i.hu
  %i.hw = and i64 %i.ho, 524288
  %.not346 = icmp eq i64 %i.hw, 0
  %i.hx = select i1 %.not346, ptr @.str.96, ptr @.str.333
  %i.hy = and i64 %i.ho, 1048576
  %.not347 = icmp eq i64 %i.hy, 0
  %i.hz = select i1 %.not347, ptr @.str.96, ptr @.str.334
  %i.ia = and i64 %i.ho, 2097152
  %.not348 = icmp eq i64 %i.ia, 0
  %i.ib = select i1 %.not348, ptr @.str.96, ptr @.str.335
  %i.ic = getelementptr i8, ptr %i.f, i64 16      ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not349 = icmp eq ptr %i.id, null
  br i1 %.not349, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = load i8, ptr %i.id, align 8
  %i.if = and i8 %i.ie, 15
  %i.ig = zext nneg i8 %i.if to i32
  %i.ih = tail call ptr @rb_method_type_name(i32 noundef %i.ig) ; 2 uses
  %.pr = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not350 = icmp eq ptr %.pr, null
  br i1 %.not350, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ii = load i8, ptr %.pr, align 8
  %i.ij = lshr i8 %i.ii, 6
  %i.ik = and i8 %i.ij, 1
  %i.il = zext nneg i8 %i.ik to i32
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.au, %bb.av
  %i.im = phi ptr [ %i.ih, %bb.av ], [ %i.ih, %bb.au ], [ @.str.336, %bb.at ]
  %i.in = phi i32 [ %i.il, %bb.av ], [ -1, %bb.au ], [ -1, %bb.at ]
  %i.io = getelementptr i8, ptr %i.f, i64 32
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !621
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr i8, ptr %i.f, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !622
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.hj, i64 noundef %i.hk, ptr noundef nonnull @.str.329, ptr noundef %i.hn, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.im, i32 noundef %i.in, ptr noundef %i.iq, ptr noundef %i.it) #46
  %i.iv = sext i32 %i.iu to i64
  %i.iw = add nsw i64 %i.he, %i.iv                ; 5 uses
  %.not351 = icmp ult i64 %i.iw, %1
  br i1 %.not351, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %.thread
  %i.ix = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not352 = icmp eq ptr %i.ix, null
  br i1 %.not352, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iy = load i8, ptr %i.ix, align 8
  %i.iz = and i8 %i.iy, 15
  %cond3 = icmp eq i8 %i.iz, 0
  %i.ja = add nsw i64 %i.iw, 7
  %.not353 = icmp ult i64 %i.ja, %1
  %or.cond = select i1 %cond3, i1 %.not353, i1 false
  br i1 %or.cond, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.jb = getelementptr i8, ptr %0, i64 %i.iw     ; 3 uses
  store i64 16450229191125024, ptr %i.jb, align 1
  %i.jc = sub i64 %1, %i.iw
  %i.jd = load ptr, ptr %i.ic, align 8, !tbaa !620
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !214
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = tail call ptr @rb_raw_obj_info(ptr noundef nonnull %i.jb, i64 noundef %i.jc, i64 noundef %i.jg) ; 0 uses
  %i.ji = add nuw nsw i64 %i.iw, 1
  %.not354 = icmp ult i64 %i.ji, %1
  br i1 %.not354, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  store i16 41, ptr %i.jb, align 1
  br label %.critedge

bb.ba:                                            ; preds = %bb.as
  %i.jj = getelementptr i8, ptr %0, i64 %i.he
  %i.jk = sub i64 %1, %i.he
  tail call fastcc void @rb_raw_iseq_info(ptr noundef %i.jj, i64 noundef %i.jk, ptr noundef nonnull %i.f)
  br label %.critedge

end_hunk_3
begin_hunk_4_@gc_profile_report:bb.a
  %i.ae = fmul double %i.ad, 1.000000e+03
  %i.af = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.481, i64 noundef %i.t, double noundef %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ab, double noundef %i.ae) #46
  %i.ag = tail call i64 @rb_io_write(i64 noundef %i.a, i64 noundef %i.af) #46, !callees !670, !inline_history !671 ; 0 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.g
  br i1 %exitcond.not.i, label %gc_profile_dump_on.exit, label %bb.d, !llvm.loop !672

gc_profile_dump_on.exit:                          ; preds = %bb.d, %rb_check_arity.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @gc_profile_total_time(i64 %0) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 944
  %i.e = load i32, ptr %i.d, align 8, !tbaa !471
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 968
  %i.g = load i64, ptr %i.f, align 8, !tbaa !584  ; 4 uses
  %.not11 = icmp eq i64 %i.g, 0
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 952
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 5 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.g, 4
  br i1 %i.j, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.new
  %.013 = phi double [ 0.000000e+00, %.preheader.new ], [ %i.z, %bb.c ]
  %.0912 = phi i64 [ 0, %.preheader.new ], [ %i.aa, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr [56 x i8], ptr %i.i, i64 %.0912
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !520
  %i.n = fadd double %.013, %i.m
  %i.o = getelementptr [56 x i8], ptr %i.i, i64 %.0912
  %i.p = getelementptr i8, ptr %i.o, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !520
  %i.r = fadd double %i.n, %i.q
  %i.s = getelementptr [56 x i8], ptr %i.i, i64 %.0912
  %i.t = getelementptr i8, ptr %i.s, i64 120
  %i.u = load double, ptr %i.t, align 8, !tbaa !520
  %i.v = fadd double %i.r, %i.u
  %i.w = getelementptr [56 x i8], ptr %i.i, i64 %.0912
  %i.x = getelementptr i8, ptr %i.w, i64 176
  %i.y = load double, ptr %i.x, align 8, !tbaa !520
  %i.z = fadd double %i.v, %i.y                   ; 3 uses
  %i.aa = add nuw i64 %.0912, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !673

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %.013.epil.init = phi double [ 0.000000e+00, %.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %.0912.epil.init = phi i64 [ 0, %.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.013.epil = phi double [ %.013.epil.init, %.epil.preheader ], [ %i.ae, %bb.d ]
  %.0912.epil = phi i64 [ %.0912.epil.init, %.epil.preheader ], [ %i.af, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ab = getelementptr [56 x i8], ptr %i.i, i64 %.0912.epil
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !520
  %i.ae = fadd double %.013.epil, %i.ad           ; 2 uses
  %i.af = add nuw i64 %.0912.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !674

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %i.z, %.loopexit.loopexit.unr-lcssa ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = bitcast double %.1 to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.ag, 3458764513820540928
  br i1 %cond.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ah = lshr i64 %i.ag, 60
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 7
  %i.ak = add nsw i32 %i.aj, -5
  %i.al = icmp ult i32 %i.ak, -2
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ag, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ag, i64 3)
  %i.an = and i64 %i.am, -4
  %i.ao = or disjoint i64 %i.an, 2
  br label %rb_float_new_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %i.ag, 0
  br i1 %i.ap, label %rb_float_new_inline.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.aq = tail call i64 @rb_float_new_in_heap(double noundef %.1) #46
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ao, %bb.f ], [ %i.aq, %bb.h ], [ -9223372036854775806, %bb.g ]
  ret i64 %.0.i
}

declare i64 @rb_interned_str(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @desired_compaction_pages_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !108
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  %i.i = sext i16 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.e                   ; 2 uses
  %i.k = add i64 %i.j, %i.b
  %.not24 = icmp eq i64 %i.j, 0
  br i1 %.not24, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !665
  %i.m = getelementptr i8, ptr %i.l, i64 40       ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr i8, ptr %1, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %i.p = phi i16 [ %i.h, %.preheader.lr.ph ], [ %i.bm, %bb.f ]
  %i.q = phi ptr [ %i.g, %.preheader.lr.ph ], [ %i.bn, %bb.f ] ; 3 uses
  %.025 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bp, %bb.f ] ; 6 uses
  %i.r = inttoptr i64 %.025 to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109  ; 6 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 31
  switch i32 %i.u, label %gc_compact_destination_pool.exit [
    i32 0, label %bb.f
    i32 7, label %bb.b
    i32 1, label %bb.c
    i32 5, label %bb.d
    i32 8, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.preheader
  %i.v = tail call i64 @rb_ary_size_as_embedded(i64 noundef %.025) #46 ; 2 uses
  %i.w = icmp ult i64 %i.v, 641
  br i1 %i.w, label %rb_gc_obj_optimal_size.exit.i, label %rb_gc_obj_optimal_size.exit.thread.i

bb.c:                                             ; preds = %.preheader
  %i.x = icmp ne i64 %.025, 0
  %i.y = and i64 %.025, 7
  %i.z = icmp eq i64 %i.y, 0
  %.not18.i.i = and i1 %i.x, %i.z
  %i.aa = and i64 %i.s, 576460752303423488
  %i.ab = icmp ne i64 %i.aa, 0
  %or.cond.i.i = and i1 %.not18.i.i, %i.ab
  br i1 %or.cond.i.i, label %rb_gc_obj_optimal_size.exit.thread.i, label %rb_shape_obj_too_complex_p.exit.thread.i.i

rb_shape_obj_too_complex_p.exit.thread.i.i:       ; preds = %bb.c
  %i.ac = lshr i64 %i.s, 32                       ; 2 uses
  %i.ad = and i64 %i.s, 126100789566373888
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i.i:     ; preds = %rb_shape_obj_too_complex_p.exit.thread.i.i
  %i.ae = and i64 %i.ac, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.ag = getelementptr [40 x i8], ptr %i.af, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 30
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !273
  br label %ROBJECT_FIELDS_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i.i:            ; preds = %rb_shape_obj_too_complex_p.exit.thread.i.i
  %i.aj = lshr i64 %i.s, 54
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.al = and i64 %i.aj, 7
  %2 = getelementptr [2 x i8], ptr %i.ak, i64 %i.al
  %3 = getelementptr i8, ptr %2, i64 -2
  %i.am = load i16, ptr %3, align 2, !tbaa !276
  %i.an = and i64 %i.ac, 524287
  %i.ao = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.ap = getelementptr [40 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 30
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !273
  %spec.select.i.i.i.i = tail call i16 @llvm.umax.i16(i16 %i.am, i16 %i.ar)
  br label %ROBJECT_FIELDS_CAPACITY.exit.i.i

ROBJECT_FIELDS_CAPACITY.exit.i.i:                 ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i16 [ %spec.select.i.i.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i.i.i ], [ %i.ai, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i.i.i ]
  %i.as = zext i16 %.0.i.i.i.i to i32
  %i.at = tail call i64 @rb_obj_embedded_size(i32 noundef %i.as) #46 ; 2 uses
  %i.au = icmp ult i64 %i.at, 641
  br i1 %i.au, label %rb_gc_obj_optimal_size.exit.i, label %rb_gc_obj_optimal_size.exit.thread.i

bb.d:                                             ; preds = %.preheader
  %i.av = tail call i64 @rb_str_size_as_embedded(i64 noundef %.025) #46 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 641
  br i1 %i.aw, label %rb_gc_obj_optimal_size.exit.i, label %rb_gc_obj_optimal_size.exit.thread.i

bb.e:                                             ; preds = %.preheader
  %i.ax = and i64 %i.s, 32768
  %.not.i.i.not.i.i = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %.not.i.i.not.i.i, i64 160, i64 80
  br label %rb_gc_obj_optimal_size.exit.thread.i

rb_gc_obj_optimal_size.exit.i:                    ; preds = %bb.d, %ROBJECT_FIELDS_CAPACITY.exit.i.i, %bb.b
  %.3.i.i = phi i64 [ %i.at, %ROBJECT_FIELDS_CAPACITY.exit.i.i ], [ %i.v, %bb.b ], [ %i.av, %bb.d ] ; 2 uses
  %i.az = icmp eq i64 %.3.i.i, 0
  br i1 %i.az, label %gc_compact_destination_pool.exit, label %rb_gc_obj_optimal_size.exit.thread.i

rb_gc_obj_optimal_size.exit.thread.i:             ; preds = %rb_gc_obj_optimal_size.exit.i, %bb.e, %bb.d, %ROBJECT_FIELDS_CAPACITY.exit.i.i, %bb.c, %bb.b
  %.3.i10.i = phi i64 [ %.3.i.i, %rb_gc_obj_optimal_size.exit.i ], [ 40, %bb.d ], [ 24, %ROBJECT_FIELDS_CAPACITY.exit.i.i ], [ %i.ay, %bb.e ], [ 40, %bb.b ], [ 24, %bb.c ]
  %i.ba = trunc nuw nsw i64 %.3.i10.i to i16
  %.lhs.trunc.i = add nuw nsw i16 %i.ba, 39
  %i.bb = udiv i16 %.lhs.trunc.i, 40
  %.zext.i = zext nneg i16 %i.bb to i64
  %i.bc = add nsw i64 %.zext.i, -1
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = sub nuw nsw i64 64, %i.bd
  %i.bf = getelementptr [152 x i8], ptr %i.m, i64 %i.be
  br label %gc_compact_destination_pool.exit

gc_compact_destination_pool.exit:                 ; preds = %.preheader, %rb_gc_obj_optimal_size.exit.i, %rb_gc_obj_optimal_size.exit.thread.i
  %.0.i = phi ptr [ %i.bf, %rb_gc_obj_optimal_size.exit.thread.i ], [ %i.q, %rb_gc_obj_optimal_size.exit.i ], [ %i.q, %.preheader ]
  %i.bg = ptrtoint ptr %.0.i to i64
  %i.bh = sub i64 %i.bg, %i.n
  %i.bi = sdiv exact i64 %i.bh, 19
  %i.bj = getelementptr i8, ptr %i.o, i64 %i.bi   ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !59
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !431 ; 2 uses
  %.pre26 = load i16, ptr %.pre, align 8, !tbaa !163
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %gc_compact_destination_pool.exit
  %i.bm = phi i16 [ %i.p, %.preheader ], [ %.pre26, %gc_compact_destination_pool.exit ] ; 2 uses
  %i.bn = phi ptr [ %i.q, %.preheader ], [ %.pre, %gc_compact_destination_pool.exit ]
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %.025, %i.bo                    ; 2 uses
  %.not = icmp eq i64 %i.bp, %i.k
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -65535, 65536) i32 @compare_free_slots(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = load ptr, ptr %1, align 8, !tbaa !99
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !456
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr i8, ptr %i.b, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !456
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  ret i32 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @root_obj_check_moved_i(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = and i64 %i.b, 31
  %i.d = icmp eq i64 %i.c, 30
  br i1 %i.d, label %rb_gc_impl_location.exit, label %bb.b

rb_gc_impl_location.exit:                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !286
  %i.g = tail call ptr @rb_obj_info(i64 noundef %i.f)
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.462, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #61
  unreachable

bb.b:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @heap_check_moved_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.gc_mark_func_data_struct, align 8 ; 5 uses
  %i.b = ptrtoint ptr %1 to i64
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr i8, ptr %3, i64 144        ; 2 uses
  %i.e = getelementptr i8, ptr %3, i64 296        ; 2 uses
  %i.f = getelementptr i8, ptr %3, i64 448        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 600        ; 2 uses
  %i.h = getelementptr i8, ptr %3, i64 752        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.01522 = phi i64 [ %i.c, %.lr.ph ], [ %i.bq, %.loopexit ] ; 7 uses
  %i.j = inttoptr i64 %.01522 to ptr              ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 30
  br i1 %i.m, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.n = and i64 %.01522, -65536
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.lhs.trunc.i.i = trunc i64 %.01522 to i16      ; 2 uses
  %i.p = udiv i16 %.lhs.trunc.i.i, 40
  %i.q = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.q to i64         ; 2 uses
  %i.r = and i16 %i.p, 63
  %i.s = zext nneg i16 %i.r to i64
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = icmp eq i64 %.01522, 0
  %i.v = and i64 %.01522, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  %.fr = freeze i1 %i.x
  %i.y = trunc i64 %i.k to i32
  %i.z = and i32 %i.y, 31                         ; 2 uses
  br i1 %.fr, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  switch i32 %i.z, label %.split.i.us [
    i32 0, label %.loopexit
    i32 29, label %.loopexit
    i32 30, label %.loopexit
  ]

.split.i.us:                                      ; preds = %.preheader.split.us
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !111
  %.not.not.i.i.us = icmp eq ptr %i.aa, null
  br i1 %.not.not.i.i.us, label %bb.c, label %has_sweeping_pages.exit.thread.i.us

bb.c:                                             ; preds = %.split.i.us
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !111
  %.not.1.not.i.i.us = icmp eq ptr %i.ab, null
  br i1 %.not.1.not.i.i.us, label %bb.d, label %has_sweeping_pages.exit.thread.i.us

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !111
  %.not.2.not.i.i.us = icmp eq ptr %i.ac, null
  br i1 %.not.2.not.i.i.us, label %bb.e, label %has_sweeping_pages.exit.thread.i.us

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !111
  %.not.3.not.i.i.us = icmp eq ptr %i.ad, null
  br i1 %.not.3.not.i.i.us, label %has_sweeping_pages.exit.i.us, label %has_sweeping_pages.exit.thread.i.us

has_sweeping_pages.exit.i.us:                     ; preds = %bb.e
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !111
  %.not.4.not.i.not.i.us = icmp eq ptr %i.ae, null
  br i1 %.not.4.not.i.not.i.us, label %rb_gc_impl_garbage_object_p.exit.thread.us, label %has_sweeping_pages.exit.thread.i.us

has_sweeping_pages.exit.thread.i.us:              ; preds = %has_sweeping_pages.exit.i.us, %bb.e, %bb.d, %bb.c, %.split.i.us
  %i.af = load ptr, ptr %i.o, align 65536, !tbaa !113 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 12
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1
  %.not.i.us = icmp eq i8 %i.ai, 0
  br i1 %.not.i.us, label %rb_gc_impl_garbage_object_p.exit.thread.us, label %rb_gc_impl_garbage_object_p.exit.us

rb_gc_impl_garbage_object_p.exit.us:              ; preds = %has_sweeping_pages.exit.thread.i.us
  %i.aj = getelementptr i8, ptr %i.af, i64 280
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.zext2.i.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = and i64 %i.al, %i.t
  %.not12.i.us = icmp eq i64 %i.am, 0
  br i1 %.not12.i.us, label %.loopexit, label %rb_gc_impl_garbage_object_p.exit.thread.us

rb_gc_impl_garbage_object_p.exit.thread.us:       ; preds = %rb_gc_impl_garbage_object_p.exit.us, %has_sweeping_pages.exit.thread.i.us, %has_sweeping_pages.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.an = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.us = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.us, label %bb.f, label %rb_vm_lock_enter.exit.i.us

end_hunk_4
