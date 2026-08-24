Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Rint?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@H5R__encode:bb.a
  store i32 %i.bn, ptr %.578, align 1
  %i.bo = tail call i32 @H5S_get_simple_extent_ndims(ptr noundef %i.bb) #14 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.br = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.bs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode_region, i32 noundef 1177, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.48) #14 ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.578, i64 4
  store i32 %i.bo, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.578, i64 8
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !21
  %i.bv = call i32 @H5S_select_serialize(ptr noundef %i.bb, ptr noundef nonnull %i.a) #14
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %.thread173

bb.y:                                             ; preds = %bb.x
  %i.bx = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.by = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !19
  %i.bz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode_region, i32 noundef 1182, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.49) #14 ; 0 uses
  br label %bb.z

.thread173:                                       ; preds = %bb.u, %bb.x, %bb.r
  %.0113.ph = phi i64 [ %.pre.i, %bb.u ], [ %.pre.i, %bb.x ], [ %.572, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ca = add i64 %.0113.ph, %.263
  br label %bb.ah

bb.z:                                             ; preds = %bb.t, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.cb = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.cc = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !19
  %i.cd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode, i32 noundef 916, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ai

bb.aa:                                            ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i1 %i.cj, true
  %i.cl = select i1 %i.ch, i1 true, i1 %i.ck
  br i1 %i.cl, label %bb.ab, label %.thread180, !prof !12

bb.ab:                                            ; preds = %bb.aa
  %i.cm = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cf) #15 ; 4 uses
  %i.cn = icmp ugt i64 %i.cm, 65536
  br i1 %i.cn, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = add nuw nsw i64 %i.cm, 2                ; 3 uses
  %.not.i99 = icmp eq ptr %.578, null
  %.not21.i100 = icmp ult i64 %.572, %i.co
  %or.cond = select i1 %.not.i99, i1 true, i1 %.not21.i100
  br i1 %or.cond, label %.thread180, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = trunc i64 %i.cm to i16
  store i16 %i.cp, ptr %.578, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.578, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 1 %i.cf, i64 %i.cm, i1 false)
  br label %.thread180

.thread180:                                       ; preds = %bb.ac, %bb.ad, %bb.aa
  %.0.ph = phi i64 [ %i.co, %bb.ac ], [ %.572, %bb.aa ], [ %i.co, %bb.ad ]
  %i.cr = add i64 %.0.ph, %.263
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.cs = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ct = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !19
  %i.cu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode_string, i32 noundef 1277, i64 noundef %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.52) #14 ; 0 uses
  %i.cv = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.cw = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !19
  %i.cx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode, i32 noundef 922, i64 noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.cy = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.cz = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.da = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode, i32 noundef 930, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.q
  %i.db = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.dc = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.dd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__encode, i32 noundef 934, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %.thread180, %.thread173, %bb.q
  %.566 = phi i64 [ %.263, %bb.q ], [ %i.ca, %.thread173 ], [ %i.cr, %.thread180 ]
  store i64 %.566, ptr %3, align 8, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.z, %bb.p, %bb.a, %bb.ah, %bb.ag, %bb.af
  %.6 = phi i32 [ -1, %bb.ag ], [ 0, %bb.ah ], [ -1, %bb.z ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.p ], [ 0, %bb.a ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__create_region(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !13
  %i.i = tail call ptr @H5S_copy(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) #14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !13
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.m = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !19
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__create_region, i32 noundef 232, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.3) #14 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 3, ptr %i.p, align 4, !tbaa !17
  %i.q = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = xor i1 %i.t, true
  %i.v = select i1 %i.r, i1 true, i1 %i.u
  br i1 %i.v, label %bb.e, label %H5R__set_obj_token.exit, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.w = trunc i64 %1 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 %i.w, ptr %i.x, align 1, !tbaa !18
  br label %H5R__set_obj_token.exit

H5R__set_obj_token.exit:                          ; preds = %bb.d, %bb.e
  %i.y = call i32 @H5R__encode(ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %H5R__set_obj_token.exit
  %i.aa = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ab = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !19
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__create_region, i32 noundef 241, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %H5R__set_obj_token.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !20
  br label %bb.i

.critedge:                                        ; preds = %bb.f, %bb.c
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ah = tail call i32 @H5S_close(ptr noundef nonnull %i.ag) #14 ; 0 uses
  store ptr null, ptr %i.j, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %bb.h ], [ -1, %.critedge ], [ 0, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1
}

declare ptr @H5S_copy(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5S_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__create_attr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 65536
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.k = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !19
  %i.l = trunc i64 %i.h to i32
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__create_attr, i32 noundef 281, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.4, i32 noundef %i.l, i32 noundef 65536) #14 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !13
  %i.o = tail call noalias ptr @strdup(ptr noundef nonnull %2) #14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !13
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.s = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !19
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__create_attr, i32 noundef 286, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 4, ptr %i.v, align 4, !tbaa !17
  %4 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %5 = trunc nuw i8 %4 to i1
  %6 = xor i1 %5, true
  %7 = select i1 %i.c, i1 true, i1 %6
  br i1 %7, label %8, label %H5R__set_obj_token.exit, !prof !12

8:                                                ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr readonly align 1 %0, i64 %1, i1 false)
  %9 = trunc i64 %1 to i8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 %9, ptr %10, align 1, !tbaa !18
  br label %H5R__set_obj_token.exit

H5R__set_obj_token.exit:                          ; preds = %bb.f, %8
  %11 = call i32 @H5R__encode(ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %bb.g, label %bb.h

bb.g:                                             ; preds = %H5R__set_obj_token.exit
  %i.w = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.x = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !19
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__create_attr, i32 noundef 295, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %H5R__set_obj_token.exit
  %i.z = load i64, ptr %i.a, align 8, !tbaa !19
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !20
  br label %bb.i

.critedge:                                        ; preds = %bb.g, %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = tail call ptr @H5MM_xfree(ptr noundef %i.ad) #14 ; 0 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %.critedge ], [ 0, %bb.h ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__destroy(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.p, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call ptr @H5MM_xfree(ptr noundef %i.h) #14 ; 0 uses
  store ptr null, ptr %i.g, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !17    ; 4 uses
  switch i8 %i.k, label %bb.h [
    i8 2, label %bb.i
    i8 3, label %bb.c
    i8 4, label %bb.f
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 -1, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call i32 @H5S_close(ptr noundef %i.m) #14
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.q = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !19
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__destroy, i32 noundef 341, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.6) #14 ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.l, align 8, !tbaa !13
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = tail call ptr @H5MM_xfree(ptr noundef %i.t) #14 ; 0 uses
  store ptr null, ptr %i.s, align 8, !tbaa !13
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.v = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.w = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__destroy, i32 noundef 356, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.y = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.z = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !19
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__destroy, i32 noundef 360, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.8) #14 ; 0 uses
  br label %bb.p

thread-pre-split:                                 ; preds = %bb.e, %bb.f
  %.pr = load i8, ptr %i.j, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.b, %bb.b, %bb.b
  %i.ab = phi i8 [ %.pr, %thread-pre-split ], [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.k, %bb.b ]
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14 ; 3 uses
  %.not18 = icmp eq i64 %i.ad, -1
  br i1 %.not18, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !24, !range !10, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @H5I_dec_app_ref(i64 noundef %i.ad) #14
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ak = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !19
  %i.al = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__destroy, i32 noundef 367, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.am = tail call i32 @H5I_dec_ref(i64 noundef %i.ad) #14
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.ap = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !19
  %i.aq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__destroy, i32 noundef 371, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.m, %bb.o, %bb.l, %bb.n, %bb.j, %bb.i, %bb.a
  %.0 = phi i32 [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.m ], [ 0, %bb.l ], [ -1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %bb.i ], [ -1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5I_dec_app_ref(i64 noundef) local_unnamed_addr #4

declare i32 @H5I_dec_ref(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5R__set_loc_id(ptr nofree noundef captures(none) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = load i8, ptr @H5R_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.l, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.k = load i8, ptr %i.j, align 2, !tbaa !24, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @H5I_dec_app_ref(i64 noundef %i.i) #14
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.p = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !19
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__set_loc_id, i32 noundef 403, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.r = tail call i32 @H5I_dec_ref(i64 noundef %i.i) #14
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
  %i.u = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !19
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5R__set_loc_id, i32 noundef 407, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.b
  store i64 %1, ptr %i.h, align 8, !tbaa !14
  br i1 %2, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @H5I_inc_ref(i64 noundef %1, i1 noundef zeroext %3) #14
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr @H5E_REFERENCE_g, align 8, !tbaa !19
end_hunk_0
