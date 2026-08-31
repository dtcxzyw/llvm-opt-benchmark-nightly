Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HL?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@H5HL_create:bb.a
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.as, align 8, !tbaa !22
  %i.bz = tail call i32 @H5AC_insert_entry(ptr noundef %0, ptr noundef nonnull @H5AC_LHEAP_PRFX, i64 noundef %i.by, ptr noundef nonnull %i.bt, i32 noundef 0) #6
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.r, label %.critedge79

.critedge79:                                      ; preds = %bb.q
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !22
  store i64 %i.cb, ptr %2, align 8, !tbaa !23
  br label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.cd = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.ce = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_create, i32 noundef 154, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.6) #6 ; 0 uses
  store i64 -1, ptr %2, align 8, !tbaa !23
  %i.cf = tail call i32 @H5HL__prfx_dest(ptr noundef nonnull %i.bt) #6
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.ci = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %i.cj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_create, i32 noundef 164, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.z

bb.t:                                             ; preds = %bb.f
  %i.ck = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.cl = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !23
  %i.cm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_create, i32 noundef 119, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.3) #6 ; 0 uses
  store i64 -1, ptr %2, align 8, !tbaa !23
  br label %bb.z

bb.u:                                             ; preds = %bb.h, %bb.k, %bb.m, %bb.p
  store i64 -1, ptr %2, align 8, !tbaa !23
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !22 ; 2 uses
  %.not77 = icmp eq i64 %i.cn, -1
  br i1 %.not77, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = tail call i32 @H5MF_xfree(ptr noundef %0, i32 noundef 5, i64 noundef %i.cn, i64 noundef %i.aq) #6
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.cr = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %i.cs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_create, i32 noundef 170, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.8) #6 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.ct = tail call i32 @H5HL__dest(ptr noundef nonnull %i.am) #6
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cv = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.cw = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %i.cx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_create, i32 noundef 172, i64 noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull @.str.9) #6 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %.critedge79, %bb.y, %bb.x, %bb.r, %bb.s, %bb.b
  %.2 = phi i32 [ -1, %bb.s ], [ -1, %bb.r ], [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.t ], [ 0, %.critedge79 ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #2

declare ptr @H5HL__new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_blk_calloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #2

declare ptr @H5HL__prfx_new(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_insert_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5HL__prfx_dest(ptr noundef) local_unnamed_addr #2

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5HL__dest(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @H5HL_protect(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5HL_cache_prfx_ud_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = load i8, ptr @H5HL_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5HL_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.o, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.i = zext i8 %i.h to i64
  store i64 %i.i, ptr %3, align 8, !tbaa !33
  %i.j = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.m, align 8, !tbaa !36
  %i.n = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.o = zext i8 %i.n to i64
  %i.p = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.q = zext i8 %i.p to i64
  %i.r = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.s = zext i8 %i.r to i64
  %i.t = add nuw nsw i64 %i.o, 15
  %i.u = add nuw nsw i64 %i.t, %i.q
  %i.v = add nuw nsw i64 %i.u, %i.s
  %i.w = and i64 %i.v, 2040
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_LHEAP_PRFX, i64 noundef %1, ptr noundef nonnull %3, i32 noundef %2) #6 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread63, label %bb.d

.thread63:                                        ; preds = %bb.c
  %i.aa = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.ab = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !23
  %i.ac = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_protect, i32 noundef 324, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.10) #6 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !24, !range !10, !noundef !11
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  %i.an = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_LHEAP_DBLK, i64 noundef %i.am, ptr noundef nonnull %i.ae, i32 noundef %2) #6 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.aq = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !23
  %i.ar = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_protect, i32 noundef 342, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.11) #6 ; 0 uses
  br label %.thread53

bb.h:                                             ; preds = %bb.f, %bb.e
  %.044 = phi ptr [ null, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  %.041 = phi ptr [ %i.y, %bb.e ], [ %i.an, %bb.f ]
  %i.as = call i32 @H5AC_pin_protected_entry(ptr noundef nonnull %.041) #6
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %i.af, align 8, !tbaa !49
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.av = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !23
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_protect, i32 noundef 350, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.12) #6 ; 0 uses
  br label %.thread53

bb.j:                                             ; preds = %._crit_edge, %bb.d
  %i.ax = phi i64 [ %i.ag, %bb.d ], [ %.pre, %._crit_edge ]
  %.246 = phi ptr [ null, %bb.d ], [ %.044, %._crit_edge ]
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.af, align 8, !tbaa !49
  br label %.thread53

.thread53:                                        ; preds = %bb.j, %bb.i, %bb.g
  %.347 = phi ptr [ %.246, %bb.j ], [ null, %bb.g ], [ %.044, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %i.ae, %bb.j ], [ null, %bb.g ], [ null, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bb = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_LHEAP_PRFX, i64 noundef %i.ba, ptr noundef nonnull %i.y, i32 noundef 0) #6
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread53
  %i.bd = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.be = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !23
  %i.bf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_protect, i32 noundef 362, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.13) #6 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread53
  %.2 = phi ptr [ null, %bb.k ], [ %.1, %.thread53 ] ; 2 uses
  %.not = icmp eq ptr %.347, null
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bi = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_LHEAP_DBLK, i64 noundef %i.bh, ptr noundef nonnull %.347, i32 noundef 0) #6
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.bl = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !23
  %i.bm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_protect, i32 noundef 366, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.14) #6 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread63, %bb.b, %bb.n, %bb.m, %bb.l
  %.3 = phi ptr [ null, %bb.n ], [ %.2, %bb.m ], [ %.2, %bb.l ], [ null, %bb.b ], [ null, %.thread63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.3
}

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_pin_protected_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5HL_offset_into(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HL_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5HL_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.f, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.k = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_offset_into, i32 noundef 392, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ %i.o, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HL_unprotect(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HL_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5HL_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.g, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !49
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !24, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call i32 @H5AC_unpin_entry(ptr noundef %i.p) #6
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.sink.split, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @H5AC_unpin_entry(ptr noundef %i.t) #6
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ 428, %bb.e ], [ 437, %bb.f ]
  %i.w = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.x = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !23
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_unprotect, i32 noundef %.sink, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ -1, %.sink.split ]
  ret i32 %.0
}

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HL_insert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HL_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5HL_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.thread144, !prof !52

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !24, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call i32 @H5AC_mark_entry_dirty(ptr noundef %i.l) #6
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.p = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !23
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL__dirty, i32 noundef 502, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.23) #6 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call i32 @H5AC_mark_entry_dirty(ptr noundef %i.s) #6
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.g, label %H5HL__dirty.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.w = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !23
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL__dirty, i32 noundef 507, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.24) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.y = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !23
  %i.z = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !23
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5HL_insert, i32 noundef 551, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.17) #6 ; 0 uses
  br label %.thread144

H5HL__dirty.exit:                                 ; preds = %bb.f
  %i.ab = add i64 %2, 7
  %i.ac = and i64 %i.ab, 4294967288               ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.0125154 = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %.not.not155 = icmp eq ptr %.0125154, null      ; 2 uses
  br i1 %.not.not155, label %H5HL__remove_free.exit.thread170, label %.lr.ph

H5HL__remove_free.exit.thread170:                 ; preds = %H5HL__dirty.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %.172 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.af)
  br label %bb.x

.lr.ph:                                           ; preds = %H5HL__dirty.exit, %bb.v
  %.0125157 = phi ptr [ %.0125, %bb.v ], [ %.0125154, %H5HL__dirty.exit ] ; 10 uses
  %.0123156 = phi ptr [ %.1124, %bb.v ], [ null, %H5HL__dirty.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0125157, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31 ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %i.ac
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.aj = sub nuw i64 %i.ah, %i.ac
  %i.ak = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.al = zext i8 %i.ak to i64
  %i.am = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.an = zext i8 %i.am to i64
  %i.ao = add nuw nsw i64 %i.al, 7
  %i.ap = add nuw nsw i64 %i.ao, %i.an
  %i.aq = and i64 %i.ap, 1016
  %.not137 = icmp ult i64 %i.aj, %i.aq
end_hunk_0
