Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/memoryobject?download=true
inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mbuf_add_incomplete_view:bb.a
bb.e:                                             ; preds = %bb.d
  %i.bq = add nuw i32 %i.bo, 1
  store i32 %i.bq, ptr %0, align 8, !tbaa !44
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  store ptr %0, ptr %i.g, align 8, !tbaa !49
  %i.br = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !41
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !41
  br label %memory_alloc.exit

memory_alloc.exit:                                ; preds = %bb.a, %_Py_NewRef.exit
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @copy_buffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !44
  %i.d = icmp eq i8 %i.c, 64
  %.idx.i.i = zext i1 %i.d to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %.idx.i.i
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !44
  %i.i = icmp eq i8 %i.h, 64
  %.idx11.i.i = zext i1 %i.i to i64
  %i.j = getelementptr i8, ptr %i.g, i64 %.idx11.i.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.j) #16
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %equiv_format.exit.i, label %equiv_structure.exit

equiv_format.exit.i:                              ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70   ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %.not10.i.not.i = icmp eq i64 %i.m, %i.o
  br i1 %.not10.i.not.i, label %bb.b, label %equiv_structure.exit

bb.b:                                             ; preds = %equiv_format.exit.i
  %i.p = getelementptr i8, ptr %0, i64 36         ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45   ; 6 uses
  %i.r = getelementptr i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %.not.i5.i = icmp eq i32 %i.q, %i.s
  br i1 %.not.i5.i, label %.preheader.i.i, label %equiv_structure.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.t = icmp sgt i32 %i.q, 0
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.u = getelementptr i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = getelementptr i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59
  %.not13.i.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not13.i.i, label %bb.d, label %equiv_structure.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %i.z, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.i.i = select i1 %i.ac, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %.loopexit, label %bb.c, !llvm.loop !3

equiv_structure.exit:                             ; preds = %bb.c, %bb.a, %equiv_format.exit.i, %bb.b
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.11) #15
  br label %bb.k

.loopexit:                                        ; preds = %bb.d, %.preheader.i.i
  %i.ae = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ag = add i32 %i.q, -1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %last_dim_is_contiguous.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.al = getelementptr i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 3 uses
  %.not13.i = icmp eq ptr %i.am, null
  %.pre35 = add i32 %i.q, -1
  %.pre37 = sext i32 %.pre35 to i64               ; 6 uses
  br i1 %.not13.i, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.pre37
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !59
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %last_dim_is_contiguous.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.aq = getelementptr i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %.pre37
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59
  %i.au = icmp eq i64 %i.at, %i.m
  br i1 %i.au, label %last_dim_is_contiguous.exit, label %last_dim_is_contiguous.exit.thread

last_dim_is_contiguous.exit:                      ; preds = %._crit_edge
  %i.av = getelementptr i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.pre37
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59
  %.not = icmp eq i64 %i.ay, %i.m
  br i1 %.not, label %bb.i, label %last_dim_is_contiguous.exit.thread

last_dim_is_contiguous.exit.thread:               ; preds = %bb.g, %bb.e, %._crit_edge, %last_dim_is_contiguous.exit
  %.pre-phi = phi i64 [ %i.ah, %bb.e ], [ %.pre37, %last_dim_is_contiguous.exit ], [ %.pre37, %._crit_edge ], [ %.pre37, %bb.g ]
  %i.az = getelementptr i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.pre-phi
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.bd = mul i64 %i.m, %i.bc
  %i.be = tail call ptr @PyMem_Malloc(i64 noundef %i.bd) #15 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.h, label %last_dim_is_contiguous.exit.thread._crit_edge

last_dim_is_contiguous.exit.thread._crit_edge:    ; preds = %last_dim_is_contiguous.exit.thread
  %.pre = load i32, ptr %i.p, align 4, !tbaa !45
  %.pre27 = load i64, ptr %i.l, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 56
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !69
  %.pre29 = load ptr, ptr %i.ae, align 8, !tbaa !63
  %.phi.trans.insert30 = getelementptr i8, ptr %1, i64 56
  %.pre31 = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !69
  %.phi.trans.insert32 = getelementptr i8, ptr %1, i64 64
  %.pre33 = load ptr, ptr %.phi.trans.insert32, align 8, !tbaa !63
  br label %bb.i

bb.h:                                             ; preds = %last_dim_is_contiguous.exit.thread
  %i.bg = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %last_dim_is_contiguous.exit.thread._crit_edge, %last_dim_is_contiguous.exit
  %i.bh = phi ptr [ %i.am, %last_dim_is_contiguous.exit ], [ %.pre33, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %i.bi = phi ptr [ %i.aw, %last_dim_is_contiguous.exit ], [ %.pre31, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %i.bj = phi ptr [ %i.af, %last_dim_is_contiguous.exit ], [ %.pre29, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %i.bk = phi ptr [ %i.ar, %last_dim_is_contiguous.exit ], [ %.pre28, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %i.bl = phi i64 [ %i.m, %last_dim_is_contiguous.exit ], [ %.pre27, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %i.bm = phi i32 [ %i.q, %last_dim_is_contiguous.exit ], [ %.pre, %last_dim_is_contiguous.exit.thread._crit_edge ]
  %.0 = phi ptr [ null, %last_dim_is_contiguous.exit ], [ %i.be, %last_dim_is_contiguous.exit.thread._crit_edge ] ; 3 uses
  %i.bn = getelementptr i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !68
  %i.bp = sext i32 %i.bm to i64
  %i.bq = load ptr, ptr %0, align 8, !tbaa !71
  %i.br = load ptr, ptr %1, align 8, !tbaa !71
  tail call fastcc void @copy_rec(ptr noundef %i.bo, i64 noundef %i.bp, i64 noundef %i.bl, ptr noundef %i.bq, ptr noundef %i.bk, ptr noundef %i.bj, ptr noundef %i.br, ptr noundef %i.bi, ptr noundef %i.bh, ptr noundef %.0)
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %.0) #15
  br label %bb.k

bb.k:                                             ; preds = %equiv_structure.exit, %bb.i, %bb.j, %bb.h
  %.020 = phi i32 [ -1, %equiv_structure.exit ], [ -1, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.020
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @copy_rec(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !59
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %copy_base.exit

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %5, null
  %.not45 = icmp eq ptr %8, null                  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = add i64 %1, -1                           ; 2 uses
  %i.f = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.g = getelementptr i8, ptr %5, i64 8
  %i.h = getelementptr i8, ptr %7, i64 8          ; 2 uses
  %i.i = getelementptr i8, ptr %8, i64 8
  %i.j = select i1 %.not45, ptr null, ptr %i.i    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.052.us = phi i64 [ %i.t, %bb.d ], [ 0, %.lr.ph ]
  %.03851.us = phi ptr [ %i.q, %bb.d ], [ %3, %.lr.ph ] ; 2 uses
  %.03950.us = phi ptr [ %i.s, %bb.d ], [ %6, %.lr.ph ] ; 4 uses
  br i1 %.not45, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load i64, ptr %8, align 8, !tbaa !59     ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.03950.us, align 8, !tbaa !72
  %i.n = getelementptr i8, ptr %i.m, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.o = phi ptr [ %i.n, %bb.c ], [ %.03950.us, %bb.b ], [ %.03950.us, %.lr.ph.split.us ]
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %.03851.us, ptr noundef %i.f, ptr noundef null, ptr noundef %i.o, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %9)
  %i.p = load i64, ptr %4, align 8, !tbaa !59
  %i.q = getelementptr i8, ptr %.03851.us, i64 %i.p
  %i.r = load i64, ptr %7, align 8, !tbaa !59
  %i.s = getelementptr i8, ptr %.03950.us, i64 %i.r
  %i.t = add nuw nsw i64 %.052.us, 1              ; 2 uses
  %i.u = load i64, ptr %0, align 8, !tbaa !59
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.us, label %copy_base.exit, !llvm.loop !131

bb.e:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %9, null
  %i.x = load i64, ptr %0, align 8, !tbaa !59     ; 2 uses
  br i1 %i.w, label %bb.f, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.e
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %copy_base.exit

.lr.ph.i:                                         ; preds = %.preheader59.i
  %.not57.i = icmp eq ptr %8, null
  br i1 %.not57.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.062.us.i = phi i64 [ %i.ac, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ]
  %.04661.us.i = phi ptr [ %i.z, %.lr.ph.split.us.i ], [ %9, %.lr.ph.i ] ; 2 uses
  %.04960.us.i = phi ptr [ %i.ab, %.lr.ph.split.us.i ], [ %6, %.lr.ph.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04661.us.i, ptr align 1 %.04960.us.i, i64 %2, i1 false)
  %i.z = getelementptr i8, ptr %.04661.us.i, i64 %2
  %i.aa = load i64, ptr %7, align 8, !tbaa !59
  %i.ab = getelementptr i8, ptr %.04960.us.i, i64 %i.aa
  %i.ac = add nuw nsw i64 %.062.us.i, 1           ; 2 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.ae = icmp slt i64 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph.split.us.i, label %.preheader.i, !llvm.loop !4

bb.f:                                             ; preds = %bb.e
  %i.af = mul i64 %i.x, %2                        ; 4 uses
  %i.ag = getelementptr i8, ptr %3, i64 %i.af
  %i.ah = icmp ult ptr %i.ag, %6
  %i.ai = getelementptr i8, ptr %6, i64 %i.af
  %i.aj = icmp ult ptr %i.ai, %3
  %or.cond.i = or i1 %i.ah, %i.aj
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %6, i64 %i.af, i1 false)
  br label %copy_base.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %6, i64 %i.af, i1 false)
  br label %copy_base.exit

.preheader.i:                                     ; preds = %bb.j, %.lr.ph.split.us.i
  %i.ak = phi i64 [ %i.ad, %.lr.ph.split.us.i ], [ %i.bb, %bb.j ]
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph66.i, label %copy_base.exit

.lr.ph66.i:                                       ; preds = %.preheader.i
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %.lr.ph66.split.us.i, label %.lr.ph66.split.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.i, %.lr.ph66.split.us.i
  %.165.us.i = phi i64 [ %i.ap, %.lr.ph66.split.us.i ], [ 0, %.lr.ph66.i ]
  %.14764.us.i = phi ptr [ %i.am, %.lr.ph66.split.us.i ], [ %9, %.lr.ph66.i ] ; 2 uses
  %.04863.us.i = phi ptr [ %i.ao, %.lr.ph66.split.us.i ], [ %3, %.lr.ph66.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04863.us.i, ptr align 1 %.14764.us.i, i64 %2, i1 false)
  %i.am = getelementptr i8, ptr %.14764.us.i, i64 %2
  %i.an = load i64, ptr %4, align 8, !tbaa !59
  %i.ao = getelementptr i8, ptr %.04863.us.i, i64 %i.an
  %i.ap = add nuw nsw i64 %.165.us.i, 1           ; 2 uses
  %i.aq = load i64, ptr %0, align 8, !tbaa !59
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph66.split.us.i, label %copy_base.exit, !llvm.loop !5

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.j
  %.062.i = phi i64 [ %i.ba, %bb.j ], [ 0, %.lr.ph.i ]
  %.04661.i = phi ptr [ %i.ax, %bb.j ], [ %9, %.lr.ph.i ] ; 2 uses
  %.04960.i = phi ptr [ %i.az, %bb.j ], [ %6, %.lr.ph.i ] ; 3 uses
  %i.as = load i64, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.au = load ptr, ptr %.04960.i, align 8, !tbaa !72
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.i
  %i.aw = phi ptr [ %i.av, %bb.i ], [ %.04960.i, %.lr.ph.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04661.i, ptr align 1 %i.aw, i64 %2, i1 false)
  %i.ax = getelementptr i8, ptr %.04661.i, i64 %2
  %i.ay = load i64, ptr %7, align 8, !tbaa !59
  %i.az = getelementptr i8, ptr %.04960.i, i64 %i.ay
  %i.ba = add nuw nsw i64 %.062.i, 1              ; 2 uses
  %i.bb = load i64, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.bc = icmp slt i64 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.split.i, label %.preheader.i, !llvm.loop !4

.lr.ph66.split.i:                                 ; preds = %.lr.ph66.i, %bb.l
  %.165.i = phi i64 [ %i.bl, %bb.l ], [ 0, %.lr.ph66.i ]
  %.14764.i = phi ptr [ %i.bi, %bb.l ], [ %9, %.lr.ph66.i ] ; 2 uses
  %.04863.i = phi ptr [ %i.bk, %bb.l ], [ %3, %.lr.ph66.i ] ; 3 uses
  %i.bd = load i64, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph66.split.i
  %i.bf = load ptr, ptr %.04863.i, align 8, !tbaa !72
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph66.split.i
  %i.bh = phi ptr [ %i.bg, %bb.k ], [ %.04863.i, %.lr.ph66.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %.14764.i, i64 %2, i1 false)
  %i.bi = getelementptr i8, ptr %.14764.i, i64 %2
  %i.bj = load i64, ptr %4, align 8, !tbaa !59
  %i.bk = getelementptr i8, ptr %.04863.i, i64 %i.bj
  %i.bl = add nuw nsw i64 %.165.i, 1              ; 2 uses
  %i.bm = load i64, ptr %0, align 8, !tbaa !59
  %i.bn = icmp slt i64 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph66.split.i, label %copy_base.exit, !llvm.loop !5

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.052 = phi i64 [ %i.cc, %bb.q ], [ 0, %.lr.ph ]
  %.03851 = phi ptr [ %i.bz, %bb.q ], [ %3, %.lr.ph ] ; 3 uses
  %.03950 = phi ptr [ %i.cb, %bb.q ], [ %6, %.lr.ph ] ; 4 uses
  %i.bo = load i64, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  %i.bq = load ptr, ptr %.03851, align 8, !tbaa !72
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bo
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.split, %bb.m
  %i.bs = phi ptr [ %i.br, %bb.m ], [ %.03851, %.lr.ph.split ]
  br i1 %.not45, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load i64, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr %.03950, align 8, !tbaa !72
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bt
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.bx = phi ptr [ %i.bw, %bb.p ], [ %.03950, %bb.o ], [ %.03950, %bb.n ]
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %i.bs, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.bx, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %9)
  %i.by = load i64, ptr %4, align 8, !tbaa !59
  %i.bz = getelementptr i8, ptr %.03851, i64 %i.by
  %i.ca = load i64, ptr %7, align 8, !tbaa !59
  %i.cb = getelementptr i8, ptr %.03950, i64 %i.ca
  %i.cc = add nuw nsw i64 %.052, 1                ; 2 uses
  %i.cd = load i64, ptr %0, align 8, !tbaa !59
  %i.ce = icmp slt i64 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph.split, label %copy_base.exit, !llvm.loop !131

copy_base.exit:                                   ; preds = %bb.q, %bb.d, %bb.l, %.lr.ph66.split.us.i, %.preheader, %.preheader.i, %bb.h, %bb.g, %.preheader59.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @unpack_single(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %i.h = and i32 %i.g, 1
  %.not63 = icmp eq i32 %i.h, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.8) #15
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.j = load i8, ptr %2, align 1, !tbaa !44
  switch i8 %i.j, label %bb.z [
    i8 66, label %bb.e
    i8 98, label %bb.f
    i8 104, label %bb.g
end_hunk_0
begin_hunk_1_@unpack_cmp:bb.a
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %.0.i.ph.i, align 8, !tbaa !44
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %struct_unpack_single.exit.sink.split.i, label %struct_unpack_cmp.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %_Py_NewRef.exit.i22.i, %bb.aa
  %.0.i21.ph.i = phi ptr [ %i.bz, %bb.ae ], [ %i.bz, %bb.ad ], [ %i.bz, %_Py_NewRef.exit.i22.i ], [ %i.bu, %bb.aa ] ; 4 uses
  %i.cj = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %.0.i.ph.i, ptr noundef nonnull %.0.i21.ph.i, i32 noundef 2) #15 ; 3 uses
  %i.ck = load i32, ptr %.0.i.ph.i, align 8, !tbaa !44 ; 2 uses
  %.not.i14.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i14.i, label %bb.ah, label %Py_DECREF.exit15.i

bb.ah:                                            ; preds = %bb.ag
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %.0.i.ph.i, align 8, !tbaa !44
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ai, label %Py_DECREF.exit15.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.ph.i) #15
  br label %Py_DECREF.exit15.i

Py_DECREF.exit15.i:                               ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cn = load i32, ptr %.0.i21.ph.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i.i, label %bb.aj, label %struct_unpack_cmp.exit

bb.aj:                                            ; preds = %Py_DECREF.exit15.i
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %.0.i21.ph.i, align 8, !tbaa !44
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %struct_unpack_single.exit.sink.split.i, label %struct_unpack_cmp.exit

struct_unpack_single.exit.sink.split.i:           ; preds = %bb.aj, %bb.af
  %.0.i21.ph.sink.i = phi ptr [ %.0.i.ph.i, %bb.af ], [ %.0.i21.ph.i, %bb.aj ]
  %.0.ph.i = phi i32 [ -1, %bb.af ], [ %i.cj, %bb.aj ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i21.ph.sink.i) #15
  br label %struct_unpack_cmp.exit

bb.ak:                                            ; preds = %bb.a
  %i.cq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.cq, ptr noundef nonnull @.str.42) #15
  br label %struct_unpack_cmp.exit

struct_unpack_cmp.exit:                           ; preds = %struct_unpack_single.exit.sink.split.i, %bb.aj, %Py_DECREF.exit15.i, %bb.af, %struct_unpack_single.exit24.i, %bb.t, %bb.ak, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.ak ], [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.t, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.z, %bb.k ], [ %i.ab, %bb.l ], [ %i.ad, %bb.m ], [ %i.af, %bb.n ], [ %i.ah, %bb.o ], [ %i.aj, %bb.p ], [ %i.an, %bb.q ], [ %i.ar, %bb.r ], [ %i.at, %bb.s ], [ %i.cj, %bb.aj ], [ -1, %bb.t ], [ -1, %struct_unpack_single.exit24.i ], [ -1, %bb.af ], [ %i.cj, %Py_DECREF.exit15.i ], [ %.0.ph.i, %struct_unpack_single.exit.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @cmp_base(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, i8 noundef signext %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !59
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %.not34 = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not34, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.b
  %.02537.us.us = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.split.us ]
  %.02736.us.us = phi ptr [ %i.f, %bb.b ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.02835.us.us = phi ptr [ %i.h, %bb.b ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.c = tail call fastcc i32 @unpack_cmp(ptr noundef %.02736.us.us, ptr noundef %.02835.us.us, i8 noundef signext %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.e = load i64, ptr %3, align 8, !tbaa !59
  %i.f = getelementptr i8, ptr %.02736.us.us, i64 %i.e
  %i.g = load i64, ptr %5, align 8, !tbaa !59
  %i.h = getelementptr i8, ptr %.02835.us.us, i64 %i.g
  %i.i = add nuw nsw i64 %.02537.us.us, 1         ; 2 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !59
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !136

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %.02537.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph.split.us ]
  %.02736.us = phi ptr [ %i.t, %bb.e ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.02835.us = phi ptr [ %i.v, %bb.e ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %i.l = load i64, ptr %6, align 8, !tbaa !59     ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.n = load ptr, ptr %.02835.us, align 8, !tbaa !72
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split
  %i.p = phi ptr [ %i.o, %bb.c ], [ %.02835.us, %.lr.ph.split.us.split ]
  %i.q = tail call fastcc i32 @unpack_cmp(ptr noundef %.02736.us, ptr noundef %i.p, i8 noundef signext %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %3, align 8, !tbaa !59
  %i.t = getelementptr i8, ptr %.02736.us, i64 %i.s
  %i.u = load i64, ptr %5, align 8, !tbaa !59
  %i.v = getelementptr i8, ptr %.02835.us, i64 %i.u
  %i.w = add nuw nsw i64 %.02537.us, 1            ; 2 uses
  %i.x = load i64, ptr %2, align 8, !tbaa !59
  %i.y = icmp slt i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !136

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not34, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.h
  %.02537.us41 = phi i64 [ %i.ak, %bb.h ], [ 0, %.lr.ph.split ]
  %.02736.us42 = phi ptr [ %i.ah, %bb.h ], [ %0, %.lr.ph.split ] ; 3 uses
  %.02835.us43 = phi ptr [ %i.aj, %bb.h ], [ %1, %.lr.ph.split ] ; 2 uses
  %i.z = load i64, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.ab = load ptr, ptr %.02736.us42, align 8, !tbaa !72
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %.02736.us42, %.lr.ph.split.split.us ]
  %i.ae = tail call fastcc i32 @unpack_cmp(ptr noundef %i.ad, ptr noundef %.02835.us43, i8 noundef signext %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %3, align 8, !tbaa !59
  %i.ah = getelementptr i8, ptr %.02736.us42, i64 %i.ag
  %i.ai = load i64, ptr %5, align 8, !tbaa !59
  %i.aj = getelementptr i8, ptr %.02835.us43, i64 %i.ai
  %i.ak = add nuw nsw i64 %.02537.us41, 1         ; 2 uses
  %i.al = load i64, ptr %2, align 8, !tbaa !59
  %i.am = icmp slt i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !136

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.m
  %.02537 = phi i64 [ %i.bd, %bb.m ], [ 0, %.lr.ph.split ]
  %.02736 = phi ptr [ %i.ba, %bb.m ], [ %0, %.lr.ph.split ] ; 3 uses
  %.02835 = phi ptr [ %i.bc, %bb.m ], [ %1, %.lr.ph.split ] ; 3 uses
  %i.an = load i64, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ap = load ptr, ptr %.02736, align 8, !tbaa !72
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split, %bb.i
  %i.ar = phi ptr [ %i.aq, %bb.i ], [ %.02736, %.lr.ph.split.split ]
  %i.as = load i64, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %.02835, align 8, !tbaa !72
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aw = phi ptr [ %i.av, %bb.k ], [ %.02835, %bb.j ]
  %i.ax = tail call fastcc i32 @unpack_cmp(ptr noundef %i.ar, ptr noundef %i.aw, i8 noundef signext %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.az = load i64, ptr %3, align 8, !tbaa !59
  %i.ba = getelementptr i8, ptr %.02736, i64 %i.az
  %i.bb = load i64, ptr %5, align 8, !tbaa !59
  %i.bc = getelementptr i8, ptr %.02835, i64 %i.bb
  %i.bd = add nuw nsw i64 %.02537, 1              ; 2 uses
  %i.be = load i64, ptr %2, align 8, !tbaa !59
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.l, %bb.m, %bb.g, %bb.h, %bb.d, %bb.e, %.lr.ph.split.us.split.us, %bb.b, %bb.a
  %.2 = phi i32 [ %i.ae, %bb.g ], [ 1, %bb.a ], [ 1, %bb.e ], [ 1, %bb.b ], [ %i.c, %.lr.ph.split.us.split.us ], [ %i.q, %bb.d ], [ 1, %bb.h ], [ 1, %bb.m ], [ %i.ax, %bb.l ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @cmp_rec(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i8 noundef signext %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !59
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %5, null
  %.not54 = icmp eq ptr %7, null                  ; 3 uses
  %i.d = add i64 %2, -1                           ; 4 uses
  %i.e = getelementptr i8, ptr %3, i64 8          ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 8          ; 4 uses
  %i.g = getelementptr i8, ptr %5, i64 8          ; 2 uses
  %i.h = getelementptr i8, ptr %6, i64 8          ; 4 uses
  %i.i = getelementptr i8, ptr %7, i64 8          ; 3 uses
  %i.j = select i1 %.not54, ptr null, ptr %i.i    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not54, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.b
  %.04457.us.us = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph.split.us ]
  %.04656.us.us = phi ptr [ %i.n, %bb.b ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.04755.us.us = phi ptr [ %i.p, %bb.b ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.k = tail call fastcc i32 @cmp_rec(ptr noundef %.04656.us.us, ptr noundef %.04755.us.us, i64 noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, i8 noundef signext %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.m = load i64, ptr %4, align 8, !tbaa !59
  %i.n = getelementptr i8, ptr %.04656.us.us, i64 %i.m
  %i.o = load i64, ptr %6, align 8, !tbaa !59
  %i.p = getelementptr i8, ptr %.04755.us.us, i64 %i.o
  %i.q = add nuw nsw i64 %.04457.us.us, 1         ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !59
  %i.s = icmp slt i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.split.us.split.us, label %.loopexit, !llvm.loop !137

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %.04457.us = phi i64 [ %i.ae, %bb.e ], [ 0, %.lr.ph.split.us ]
  %.04656.us = phi ptr [ %i.ab, %bb.e ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.04755.us = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %i.t = load i64, ptr %7, align 8, !tbaa !59     ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.v = load ptr, ptr %.04755.us, align 8, !tbaa !72
  %i.w = getelementptr i8, ptr %i.v, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split
  %i.x = phi ptr [ %i.w, %bb.c ], [ %.04755.us, %.lr.ph.split.us.split ]
  %i.y = tail call fastcc i32 @cmp_rec(ptr noundef %.04656.us, ptr noundef %i.x, i64 noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef null, ptr noundef %i.h, ptr noundef %i.i, i8 noundef signext %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %4, align 8, !tbaa !59
  %i.ab = getelementptr i8, ptr %.04656.us, i64 %i.aa
  %i.ac = load i64, ptr %6, align 8, !tbaa !59
  %i.ad = getelementptr i8, ptr %.04755.us, i64 %i.ac
  %i.ae = add nuw nsw i64 %.04457.us, 1           ; 2 uses
  %i.af = load i64, ptr %3, align 8, !tbaa !59
  %i.ag = icmp slt i64 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.split.us.split, label %.loopexit, !llvm.loop !137

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not54, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.h
  %.04457.us61 = phi i64 [ %i.as, %bb.h ], [ 0, %.lr.ph.split ]
  %.04656.us62 = phi ptr [ %i.ap, %bb.h ], [ %0, %.lr.ph.split ] ; 3 uses
  %.04755.us63 = phi ptr [ %i.ar, %bb.h ], [ %1, %.lr.ph.split ] ; 2 uses
  %i.ah = load i64, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.aj = load ptr, ptr %.04656.us62, align 8, !tbaa !72
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %.04656.us62, %.lr.ph.split.split.us ]
  %i.am = tail call fastcc i32 @cmp_rec(ptr noundef %i.al, ptr noundef %.04755.us63, i64 noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.j, i8 noundef signext %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %4, align 8, !tbaa !59
  %i.ap = getelementptr i8, ptr %.04656.us62, i64 %i.ao
  %i.aq = load i64, ptr %6, align 8, !tbaa !59
  %i.ar = getelementptr i8, ptr %.04755.us63, i64 %i.aq
  %i.as = add nuw nsw i64 %.04457.us61, 1         ; 2 uses
  %i.at = load i64, ptr %3, align 8, !tbaa !59
  %i.au = icmp slt i64 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !137

bb.i:                                             ; preds = %bb.a
  %i.av = tail call fastcc i32 @cmp_base(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef signext %8, ptr noundef %9, ptr noundef %10)
  br label %.loopexit

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.n
  %.04457 = phi i64 [ %i.bm, %bb.n ], [ 0, %.lr.ph.split ]
  %.04656 = phi ptr [ %i.bj, %bb.n ], [ %0, %.lr.ph.split ] ; 3 uses
  %.04755 = phi ptr [ %i.bl, %bb.n ], [ %1, %.lr.ph.split ] ; 3 uses
  %i.aw = load i64, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.ay = load ptr, ptr %.04656, align 8, !tbaa !72
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split, %bb.j
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %.04656, %.lr.ph.split.split ]
  %i.bb = load i64, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %.04755, align 8, !tbaa !72
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bb
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %i.be, %bb.l ], [ %.04755, %bb.k ]
  %i.bg = tail call fastcc i32 @cmp_rec(ptr noundef %i.ba, ptr noundef %i.bf, i64 noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, i8 noundef signext %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %4, align 8, !tbaa !59
  %i.bj = getelementptr i8, ptr %.04656, i64 %i.bi
  %i.bk = load i64, ptr %6, align 8, !tbaa !59
  %i.bl = getelementptr i8, ptr %.04755, i64 %i.bk
  %i.bm = add nuw nsw i64 %.04457, 1              ; 2 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !59
  %i.bo = icmp slt i64 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !137

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.g, %bb.h, %bb.d, %bb.e, %.lr.ph.split.us.split.us, %bb.b, %.preheader, %bb.i
  %.2 = phi i32 [ %i.av, %bb.i ], [ 1, %bb.h ], [ 1, %.preheader ], [ %i.y, %bb.d ], [ %i.k, %.lr.ph.split.us.split.us ], [ 1, %bb.b ], [ 1, %bb.e ], [ %i.am, %bb.g ], [ %i.bg, %bb.m ], [ 1, %bb.n ]
  ret i32 %.2
}

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytes_FromString(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @memoryview_release(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @memoryview_release_impl(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @memoryview_tobytes(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !92
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 2
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @memoryview_tobytes._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not36 = icmp eq ptr %i.g, null
  br i1 %.not36, label %memoryview_tobytes_impl.exit, label %.thread44

.thread44:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.j = sub i64 0, %i.i
  %.not37 = icmp eq i64 %2, %i.j
  br i1 %.not37, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.thread44
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val40 = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr i8, ptr %.val40, i64 168
  %.val41 = load i64, ptr %i.n, align 8, !tbaa !93
  %i.o = and i64 %.val41, 268435456
  %.not38 = icmp eq i64 %i.o, 0
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.p = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.k, ptr noundef nonnull %i.b) #15 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #16
  %i.s = load i64, ptr %i.b, align 8, !tbaa !59
  %.not39 = icmp eq i64 %i.r, %i.s
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.63) #15
  br label %.thread46

.thread46:                                        ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %memoryview_tobytes_impl.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef %i.k) #15
  br label %memoryview_tobytes_impl.exit

bb.k:                                             ; preds = %bb.i, %bb.d, %.thread44
  %.028 = phi ptr [ null, %.thread44 ], [ %i.p, %bb.i ], [ null, %bb.d ] ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51
  %i.x = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@memoryview_release_impl:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = and i32 %i.n, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %_memory_release.exit

bb.e:                                             ; preds = %bb.d
  %i.p = or disjoint i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !28
  %i.q = getelementptr i8, ptr %i.h, i64 -16      ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 -8       ; 3 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !tbaa !30
  %i.s = and i64 %.val.i.i.i, -4                  ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.val12.i.i.i = load i64, ptr %i.q, align 8, !tbaa !31
  %i.u = and i64 %.val12.i.i.i, -4                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.t, align 8, !tbaa !31
  %i.x = and i64 %i.w, 3
  %i.y = or disjoint i64 %i.x, %i.u
  store i64 %i.y, ptr %i.t, align 8, !tbaa !31
  %i.z = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = and i64 %i.aa, 3
  %i.ac = or disjoint i64 %i.ab, %i.s
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !30
  store i64 0, ptr %i.q, align 8, !tbaa !31
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !30
  %i.ae = and i64 %i.ad, 1
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !30
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 7428   ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_PyObject_GC_UNTRACK.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !37
  br label %_PyObject_GC_UNTRACK.exit.i.i

_PyObject_GC_UNTRACK.exit.i.i:                    ; preds = %bb.f, %bb.e
  %i.al = getelementptr i8, ptr %i.ag, i64 7656   ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !38
  %i.ao = getelementptr i8, ptr %i.h, i64 32
  tail call void @PyBuffer_Release(ptr noundef %i.ao) #15
  br label %_memory_release.exit

bb.g:                                             ; preds = %bb.a
  %i.ap = icmp sgt i64 %.val, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !46
  %i.ar = icmp eq i64 %.val, 1
  %i.as = select i1 %i.ar, ptr @.str.59, ptr @.str.60
  %i.at = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aq, ptr noundef nonnull @.str.58, i64 noundef %.val, ptr noundef nonnull %i.as) #15 ; 0 uses
  br label %_memory_release.exit

bb.i:                                             ; preds = %bb.g
  %i.au = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.61) #15
  br label %_memory_release.exit

_memory_release.exit:                             ; preds = %_PyObject_GC_UNTRACK.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.i, %bb.h
  %.0 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %_PyObject_GC_UNTRACK.exit.i.i ]
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @_Py_strhex_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @PyBytesWriter_GetSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tolist_base(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !59
  %i.b = tail call ptr @PyList_New(i64 noundef %i.a) #15 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !59
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %Py_DECREF.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %4, null
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.02231.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.02430.us = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %i.g = tail call fastcc ptr @unpack_single(ptr noundef %0, ptr noundef %.02430.us, ptr noundef nonnull %5) ; 2 uses
  %.not29.us = icmp eq ptr %i.g, null
  br i1 %.not29.us, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %.val.us = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = getelementptr [8 x i8], ptr %.val.us, i64 %.02231.us
  store ptr %i.g, ptr %i.h, align 8, !tbaa !46
  %i.i = load i64, ptr %3, align 8, !tbaa !59
  %i.j = getelementptr i8, ptr %.02430.us, i64 %i.i
  %i.k = add nuw nsw i64 %.02231.us, 1            ; 2 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !59
  %i.m = icmp slt i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.split.us, label %Py_DECREF.exit.thread, !llvm.loop !143

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.02231 = phi i64 [ %i.z, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.02430 = phi ptr [ %i.y, %bb.g ], [ %1, %.lr.ph ] ; 3 uses
  %i.n = load i64, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.p = load ptr, ptr %.02430, align 8, !tbaa !72
  %i.q = getelementptr i8, ptr %i.p, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %.02430, %.lr.ph.split ]
  %i.s = tail call fastcc ptr @unpack_single(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %5) ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %.split.us, label %bb.g

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.us
  %i.t = load i32, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit.thread

bb.e:                                             ; preds = %.split.us
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.b, align 8, !tbaa !44
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %Py_DECREF.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %Py_DECREF.exit.thread

bb.g:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.w = getelementptr [8 x i8], ptr %.val, i64 %.02231
  store ptr %i.s, ptr %i.w, align 8, !tbaa !46
  %i.x = load i64, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr i8, ptr %.02430, i64 %i.x
  %i.z = add nuw nsw i64 %.02231, 1               ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !59
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.split, label %Py_DECREF.exit.thread, !llvm.loop !143

Py_DECREF.exit.thread:                            ; preds = %bb.g, %bb.b, %.preheader, %.split.us, %bb.e, %bb.f, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.split.us ], [ null, %bb.f ], [ null, %bb.e ], [ %i.b, %.preheader ], [ %i.b, %bb.b ], [ %i.b, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tolist_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @tolist_base(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %Py_DECREF.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !59
  %i.d = tail call ptr @PyList_New(i64 noundef %i.c) #15 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = load i64, ptr %3, align 8, !tbaa !59
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %Py_DECREF.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %5, null
  %i.h = add i64 %2, -1                           ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 8
  %i.l = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.03444.us = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.03643.us = phi ptr [ %i.p, %bb.d ], [ %1, %.lr.ph ] ; 2 uses
  %i.m = tail call fastcc ptr @tolist_rec(ptr noundef %0, ptr noundef %.03643.us, i64 noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef null, ptr noundef %6) ; 2 uses
  %.not42.us = icmp eq ptr %i.m, null
  br i1 %.not42.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr [8 x i8], ptr %.val.us, i64 %.03444.us
  store ptr %i.m, ptr %i.n, align 8, !tbaa !46
  %i.o = load i64, ptr %4, align 8, !tbaa !59
  %i.p = getelementptr i8, ptr %.03643.us, i64 %i.o
  %i.q = add nuw nsw i64 %.03444.us, 1            ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !59
  %i.s = icmp slt i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.split.us, label %Py_DECREF.exit.thread, !llvm.loop !144

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.03444 = phi i64 [ %i.af, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.03643 = phi ptr [ %i.ae, %bb.i ], [ %1, %.lr.ph ] ; 3 uses
  %i.t = load i64, ptr %5, align 8, !tbaa !59     ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.v = load ptr, ptr %.03643, align 8, !tbaa !72
  %i.w = getelementptr i8, ptr %i.v, i64 %i.t
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %.03643, %.lr.ph.split ]
  %i.y = tail call fastcc ptr @tolist_rec(ptr noundef %0, ptr noundef %i.x, i64 noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %6) ; 2 uses
  %.not42 = icmp eq ptr %i.y, null
  br i1 %.not42, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.f, %.lr.ph.split.us
  %i.z = load i32, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit.thread

bb.g:                                             ; preds = %.split.us
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !44
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %Py_DECREF.exit.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit.thread

bb.i:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.ac = getelementptr [8 x i8], ptr %.val, i64 %.03444
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !46
  %i.ad = load i64, ptr %4, align 8, !tbaa !59
  %i.ae = getelementptr i8, ptr %.03643, i64 %i.ad
  %i.af = add nuw nsw i64 %.03444, 1              ; 2 uses
  %i.ag = load i64, ptr %3, align 8, !tbaa !59
  %i.ah = icmp slt i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.split, label %Py_DECREF.exit.thread, !llvm.loop !144

Py_DECREF.exit.thread:                            ; preds = %bb.i, %bb.d, %.preheader, %.split.us, %bb.g, %bb.h, %bb.c, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ], [ null, %.split.us ], [ null, %bb.h ], [ null, %bb.g ], [ %i.d, %.preheader ], [ %i.d, %bb.d ], [ %i.d, %bb.i ]
  ret ptr %.2
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cast_to_1D(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_AsASCIIString(ptr noundef %1) #15 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !44
  %i.e = icmp eq i8 %i.d, 64                      ; 19 uses
  %spec.select.idx.i = zext i1 %i.e to i64
  %spec.select.i = getelementptr i8, ptr %i.c, i64 %spec.select.idx.i ; 2 uses
  %i.f = load i8, ptr %spec.select.i, align 1, !tbaa !44 ; 5 uses
  %switch.tableidx = add i8 %i.f, -63             ; 3 uses
  %i.g = icmp ult i8 %switch.tableidx, 51
  br i1 %i.g, label %switch.hole_check, label %bb.c

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 1309483989378569, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cast_to_1D, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 3 uses
  %i.i = getelementptr i8, ptr %spec.select.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !44
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %get_native_fmtchar.exit, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b, %switch.lookup
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.80) #15
  br label %bb.ad

get_native_fmtchar.exit:                          ; preds = %switch.lookup
  %i.m = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !44
  %i.p = icmp eq i8 %i.o, 64
  %spec.select.idx.i39 = zext i1 %i.p to i64
  %spec.select.i40 = getelementptr i8, ptr %i.n, i64 %spec.select.idx.i39 ; 2 uses
  %i.q = load i8, ptr %spec.select.i40, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 66, label %bb.d
    i8 104, label %bb.d
    i8 72, label %bb.d
    i8 105, label %bb.d
    i8 73, label %bb.d
    i8 108, label %bb.d
    i8 76, label %bb.d
    i8 113, label %bb.d
    i8 81, label %bb.d
    i8 110, label %bb.d
    i8 78, label %bb.d
    i8 102, label %bb.d
    i8 100, label %bb.d
    i8 101, label %bb.d
    i8 63, label %bb.d
    i8 80, label %bb.d
  ]

bb.d:                                             ; preds = %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit
  %i.r = getelementptr i8, ptr %spec.select.i40, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !44
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %get_native_fmtchar.exit43, label %bb.e

get_native_fmtchar.exit43:                        ; preds = %bb.d
  %i.u = icmp eq i8 %i.f, 98
  br i1 %i.u, label %bb.h, label %switch.early.test

switch.early.test:                                ; preds = %get_native_fmtchar.exit43
  switch i8 %i.q, label %bb.f [
    i8 99, label %bb.h
    i8 98, label %bb.h
    i8 66, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %get_native_fmtchar.exit
  switch i8 %i.f, label %bb.g [
    i8 98, label %bb.h
    i8 99, label %bb.h
    i8 66, label %bb.h
  ]

bb.f:                                             ; preds = %switch.early.test
  switch i8 %i.f, label %bb.g [
    i8 99, label %bb.h
    i8 66, label %bb.h
  ]

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.81) #15
  br label %bb.ad

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.f, %bb.f, %switch.early.test, %switch.early.test, %switch.early.test, %get_native_fmtchar.exit43
  %i.w = getelementptr i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = add nsw i64 %switch.ext, -1
  %i.z = and i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.82) #15
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  switch i8 %i.f, label %bb.ac [
    i8 99, label %bb.k
    i8 98, label %bb.l
    i8 66, label %bb.m
    i8 104, label %bb.n
    i8 72, label %bb.o
    i8 105, label %bb.p
    i8 73, label %bb.q
    i8 108, label %bb.r
    i8 76, label %bb.s
    i8 113, label %bb.t
    i8 81, label %bb.u
    i8 110, label %bb.v
    i8 78, label %bb.w
    i8 102, label %bb.x
    i8 100, label %bb.y
    i8 101, label %bb.z
    i8 63, label %bb.aa
end_hunk_2
