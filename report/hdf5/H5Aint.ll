Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Aint?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@H5A__read:bb.a
bb.w:                                             ; preds = %bb.t, %bb.u
  %.1 = phi i32 [ 0, %bb.u ], [ -1, %bb.t ]       ; 2 uses
  %i.cd = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_attr_buf_blk_free_list, ptr noundef nonnull %i.ay) #10 ; 0 uses
  %.not75 = icmp eq ptr %.061, null
  br i1 %.not75, label %.thread82, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_attr_buf_blk_free_list, ptr noundef nonnull %.061) #10 ; 0 uses
  br label %.thread82

.thread82:                                        ; preds = %bb.c, %bb.e, %bb.k, %bb.v, %bb.f, %bb.i, %bb.n, %.thread86, %bb.w, %bb.x, %bb.a
  %.2 = phi i32 [ %.1, %bb.x ], [ %.1, %bb.w ], [ 0, %bb.a ], [ -1, %.thread86 ], [ -1, %bb.n ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.v ], [ -1, %bb.k ], [ -1, %bb.e ], [ -1, %bb.c ]
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !15
  call void @H5AC_tag(i64 noundef %i.cf, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

declare i32 @H5T_patch_vlen_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @H5T_path_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @H5T_path_noop(ptr noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_blk_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5T_path_bkg(ptr noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_blk_calloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5T_convert(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_blk_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5A__write(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 -1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  call void @H5AC_tag(i64 noundef %i.d, ptr noundef nonnull %i.a) #10
  %i.e = load i8, ptr @H5A_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %.thread106.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.p = call ptr @H5F_get_vol_obj(ptr noundef %i.o) #10
  %i.q = call i32 @H5T_patch_vlen_file(ptr noundef %i.n, ptr noundef %i.p) #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 850, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.35) #10 ; 0 uses
  br label %.thread106.thread

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = call i64 @H5S_get_simple_extent_npoints(ptr noundef %i.x) #10 ; 7 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.ab = load i64, ptr @H5E_CANTCOUNT_g, align 8, !tbaa !15
  %i.ac = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 854, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.24) #10 ; 0 uses
  br label %.thread106.thread

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.thread106.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call i64 @H5T_get_size(ptr noundef %1) #10 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = call i64 @H5T_get_size(ptr noundef %i.ag) #10 ; 3 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = call ptr @H5T_path_find(ptr noundef %1, ptr noundef %i.ak) #10 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.ao = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !15
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 866, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.36) #10 ; 0 uses
  br label %.thread106.thread

bb.i:                                             ; preds = %bb.g
  %i.aq = call zeroext i1 @H5T_path_noop(ptr noundef nonnull %i.al) #10
  br i1 %i.aq, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ah)
  %i.as = mul i64 %i.ar, %i.y                     ; 2 uses
  %i.at = call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_attr_buf_blk_free_list, i64 noundef %i.as) #10 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread120, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = mul i64 %i.ad, %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %2, i64 %i.av, i1 false)
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.az = call i32 @H5T_detect_class(ptr noundef %i.ay, i32 noundef 9, i1 noundef zeroext false) #10
  %.not85 = icmp eq i32 %i.az, 0
  br i1 %.not85, label %bb.l, label %.thread94

bb.l:                                             ; preds = %bb.k
  %i.ba = call i32 @H5T_path_bkg(ptr noundef nonnull %i.al) #10 ; 2 uses
  %.not86 = icmp eq i32 %i.ba, 0
  br i1 %.not86, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49 ; 4 uses
  %.not87 = icmp eq ptr %i.bd, null
  br i1 %.not87, label %bb.p, label %bb.n

.thread94:                                        ; preds = %bb.k
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 2 uses
  %.not8796 = icmp eq ptr %i.bg, null
  br i1 %.not8796, label %bb.p, label %.thread98

.thread98:                                        ; preds = %.thread94
  store ptr null, ptr %i.bf, align 8, !tbaa !49
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bc, align 8, !tbaa !49
  %i.bh = icmp eq i32 %i.ba, 1
  br i1 %i.bh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bi = mul i64 %i.ah, %i.y
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.bi, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.thread94, %bb.m
  %i.bj = call noalias ptr @H5FL_blk_calloc(ptr noundef nonnull @H5_attr_buf_blk_free_list, i64 noundef %i.as) #10 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.bm = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.bn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 900, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %bb.ab

bb.r:                                             ; preds = %.thread98, %bb.o, %bb.n, %bb.p, %bb.l
  %.069 = phi ptr [ %i.bd, %bb.o ], [ %i.bd, %bb.n ], [ %i.bj, %bb.p ], [ null, %bb.l ], [ %i.bg, %.thread98 ] ; 3 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36
  %i.br = call i32 @H5T_convert(ptr noundef nonnull %i.al, ptr noundef %1, ptr noundef %i.bq, i64 noundef %i.y, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.at, ptr noundef %.069) #10
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.bu = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !15
  %i.bv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 906, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.38) #10 ; 0 uses
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49 ; 2 uses
  %.not88 = icmp eq ptr %i.by, null
  br i1 %.not88, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_attr_buf_blk_free_list, ptr noundef nonnull %i.by) #10 ; 0 uses
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cb = phi ptr [ %i.bw, %bb.t ], [ %i.ca, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.at, ptr %i.cc, align 8, !tbaa !49
  br label %bb.z

bb.w:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  %i.ch = mul i64 %i.ah, %i.y                     ; 2 uses
  br i1 %i.cg, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %bb.w
  %i.ci = call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_attr_buf_blk_free_list, i64 noundef %i.ch) #10 ; 3 uses
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !49
  %i.cl = icmp eq ptr %i.ci, null
  br i1 %i.cl, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cm = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !15
  %i.cn = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !15
  %i.co = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 923, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %.thread106.thread

._crit_edge:                                      ; preds = %bb.w, %bb.x
  %i.cp = phi ptr [ %i.ci, %bb.x ], [ %i.cf, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %2, i64 %i.ch, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %._crit_edge
  %.271 = phi ptr [ null, %._crit_edge ], [ %.069, %bb.v ] ; 2 uses
  %i.cq = call i32 @H5O__attr_write(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #10
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.aa, label %.thread106

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.ct = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 931, i64 noundef %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.39) #10 ; 0 uses
  br label %.thread106

.thread120:                                       ; preds = %bb.j
  %i.cv = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.cw = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.cx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A__write, i32 noundef 875, i64 noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %.thread106.thread

bb.ab:                                            ; preds = %bb.q, %bb.s
  %.170.ph.ph = phi ptr [ %.069, %bb.s ], [ null, %bb.q ]
  %i.cy = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_attr_buf_blk_free_list, ptr noundef nonnull %i.at) #10 ; 0 uses
  br label %.thread106

.thread106:                                       ; preds = %bb.z, %bb.aa, %bb.ab
  %.2112 = phi i32 [ -1, %bb.ab ], [ -1, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.372111 = phi ptr [ %.170.ph.ph, %bb.ab ], [ %.271, %bb.aa ], [ %.271, %bb.z ] ; 2 uses
  %.not90 = icmp eq ptr %.372111, null
  br i1 %.not90, label %.thread106.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread106
  %i.cz = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_attr_buf_blk_free_list, ptr noundef nonnull %.372111) #10 ; 0 uses
  br label %.thread106.thread

.thread106.thread:                                ; preds = %bb.c, %bb.e, %bb.h, %bb.y, %bb.f, %.thread120, %.thread106, %bb.ac, %bb.a
  %.3 = phi i32 [ %.2112, %bb.ac ], [ %.2112, %.thread106 ], [ 0, %bb.a ], [ -1, %.thread120 ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.y ], [ 0, %bb.f ]
  %i.da = load i64, ptr %i.a, align 8, !tbaa !15
  call void @H5AC_tag(i64 noundef %i.da, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.3
}

declare i32 @H5T_detect_class(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5O__attr_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5A__get_name(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11 ; 2 uses
  %i.l = add i64 %1, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k) ; 3 uses
  %i.n = icmp ne ptr %2, null
  %i.o = icmp ne i64 %i.m, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.k, ptr %3, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5A_get_space(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call ptr @H5S_copy(ptr noundef %i.j, i1 noundef zeroext false, i1 noundef zeroext true) #10 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.n = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A_get_space, i32 noundef 1014, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.40) #10 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i64 @H5I_register(i32 noundef 4, ptr noundef nonnull %i.k, i1 noundef zeroext true) #10 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_ID_g, align 8, !tbaa !15
  %i.s = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !15
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A_get_space, i32 noundef 1018, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.41) #10 ; 0 uses
  %i.u = tail call i32 @H5S_close(ptr noundef nonnull %i.k) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.x = load i64, ptr @H5E_CLOSEERROR_g, align 8, !tbaa !15
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5A_get_space, i32 noundef 1022, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.42) #10 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.a ], [ %i.p, %bb.d ]
  ret i64 %.1
}

declare i64 @H5I_register(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5S_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5A__get_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = tail call i32 @H5T_patch_file(ptr noundef %i.j, ptr noundef %i.l) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !15
  %i.p = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
end_hunk_0
