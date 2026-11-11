Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/streams?download=true
inline.NumInlined: 31
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_php_stream_seek:bb.a

bb.y:                                             ; preds = %.lr.ph
  %i.bw = sub nsw i64 %.497, %i.bz                ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !175

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.497 = phi i64 [ %i.bw, %bb.y ], [ %1, %bb.x ] ; 2 uses
  %i.by = call i64 @llvm.umin.i64(i64 %.497, i64 1024)
  %i.bz = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.by) ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %.loopexit, label %bb.y

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre = load i16, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.cb = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %bb.x ]
  %i.cc = and i16 %i.cb, -521
  store i16 %i.cc, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.173 = phi i32 [ 0, %._crit_edge ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.thread

.thread90:                                        ; preds = %bb.s, %bb.w
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.2) #25
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.v, %.thread90, %.loopexit, %bb.j, %bb.g
  %.274 = phi i32 [ %.173, %.loopexit ], [ -1, %.thread90 ], [ 0, %bb.j ], [ 0, %bb.g ], [ -1, %bb.r ], [ %i.bm, %bb.v ]
  ret i32 %.274
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @_php_stream_sync(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = select i1 %1, i32 2, i32 1
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, i32 noundef 14, i32 noundef %spec.store.select, ptr noundef null) #25, !inline_history !130 ; 2 uses
  %i.e = icmp eq i32 %i.d, -2
  br i1 %i.e, label %.thread.i, label %_php_stream_set_option.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  br label %_php_stream_set_option.exit

_php_stream_set_option.exit:                      ; preds = %bb.b, %.thread.i
  %.018.i = phi i32 [ %i.d, %bb.b ], [ -2, %.thread.i ]
  ret i32 %.018.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_php_stream_truncate_set_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !133
  %i.b = load ptr, ptr %0, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 %i.d(ptr noundef nonnull %0, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %i.a) #25, !inline_history !130 ; 2 uses
  %i.f = icmp eq i32 %i.e, -2
  br i1 %i.f, label %.thread.i, label %_php_stream_set_option.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  br label %_php_stream_set_option.exit

_php_stream_set_option.exit:                      ; preds = %bb.b, %.thread.i
  %.018.i = phi i32 [ %i.e, %bb.b ], [ -2, %.thread.i ]
  ret i32 %.018.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_php_stream_passthru(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_php_stream_set_option.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.c, label %_php_stream_set_option.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_php_stream_set_option.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 0, ptr noundef null) #25, !inline_history !130
  %cond = icmp eq i32 %i.j, 0
  br i1 %cond, label %bb.e, label %_php_stream_set_option.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !127
  %i.m = call ptr @_php_stream_mmap_range(ptr noundef nonnull %0, i64 noundef %i.l, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.b) #25 ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  br i1 %.not33, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !tbaa !133
  br label %.preheader

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_php_stream_set_option.exit.thread

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.n = phi i64 [ %i.u, %.preheader ], [ %.pre, %.preheader.preheader ]
  %.026 = phi i64 [ %spec.select, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.026
  %i.p = sub i64 %i.n, %.026
  %i.q = call i64 @llvm.umin.i64(i64 %i.p, i64 2147483647)
  %i.r = call i64 @php_output_write(ptr noundef nonnull %i.o, i64 noundef %i.q) #25 ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  %i.t = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  %spec.select = add i64 %i.t, %.026              ; 3 uses
  %i.u = load i64, ptr %i.b, align 8              ; 3 uses
  %i.v = icmp ugt i64 %i.u, %spec.select
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %.preheader, label %bb.f, !llvm.loop !176

bb.f:                                             ; preds = %.preheader
  %i.x = call i32 @_php_stream_mmap_unmap_ex(ptr noundef nonnull %0, i64 noundef %i.u) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.g

_php_stream_set_option.exit.thread:               ; preds = %bb.d, %bb.c, %.thread, %bb.b, %bb.a
  %i.y = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8192) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_php_stream_set_option.exit.thread, %.lr.ph
  %i.aa = phi i64 [ %i.ad, %.lr.ph ], [ %i.y, %_php_stream_set_option.exit.thread ] ; 2 uses
  %.438 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %_php_stream_set_option.exit.thread ]
  %i.ab = call i64 @php_output_write(ptr noundef nonnull %i.a, i64 noundef %i.aa) #25 ; 0 uses
  %i.ac = add i64 %i.aa, %.438                    ; 2 uses
  %i.ad = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8192) ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %.lr.ph, %_php_stream_set_option.exit.thread
  %.4.lcssa = phi i64 [ 0, %_php_stream_set_option.exit.thread ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.y, %_php_stream_set_option.exit.thread ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.af = icmp ne i64 %.lcssa, 0
  %i.ag = icmp eq i64 %.4.lcssa, 0
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  %..4 = select i1 %or.cond, i64 %.lcssa, i64 %.4.lcssa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.128 = phi i64 [ %..4, %._crit_edge ], [ %spec.select, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.128
}

declare ptr @_php_stream_mmap_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @php_output_write(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @_php_stream_mmap_unmap_ex(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @_php_stream_copy_to_mem(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct._php_stream_statbuf, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @zend_empty_string, align 8, !tbaa !135
  br label %zend_string_truncate.exit108

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %1, -1                       ; 4 uses
  %spec.store.select = select i1 %i.c, i64 %1, i64 0 ; 10 uses
  %i.d = add i64 %spec.store.select, -1
  %or.cond = icmp ult i64 %i.d, 32767
  br i1 %or.cond, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %spec.store.select, 32760
  %i.f = add nuw nsw i64 %i.e, 32                 ; 2 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noalias ptr @__zend_malloc(i64 noundef %i.f) #27
  br label %zend_string_alloc.exit103

bb.f:                                             ; preds = %bb.d
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.f) #27
  br label %zend_string_alloc.exit103

zend_string_alloc.exit103:                        ; preds = %bb.e, %bb.f
  %i.i = phi i32 [ 150, %bb.e ], [ 22, %bb.f ]
  %i.j = phi ptr [ %i.g, %bb.e ], [ %i.h, %bb.f ] ; 13 uses
  store i32 1, ptr %i.j, align 4, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store i32 %i.i, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 %spec.store.select, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  br i1 %i.c, label %.lr.ph138, label %.critedge.thread

.lr.ph138:                                        ; preds = %zend_string_alloc.exit103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph138, %bb.l
  %.080137 = phi i64 [ 0, %.lr.ph138 ], [ %i.ag, %bb.l ] ; 4 uses
  %.083136 = phi ptr [ %i.n, %.lr.ph138 ], [ %i.ah, %bb.l ] ; 2 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !109
  %i.s = load i64, ptr %i.p, align 8, !tbaa !110
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %_php_stream_eof.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i16, ptr %i.q, align 8              ; 3 uses
  %i.v = and i16 %i.u, 8
  %.not.i117 = icmp eq i16 %i.v, 0
  br i1 %.not.i117, label %bb.i, label %_php_stream_eof.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %0, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_php_stream_eof.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i32 %i.y(ptr noundef nonnull %0, i32 noundef 12, i32 noundef 0, ptr noundef null) #25, !inline_history !180
  %cond.i = icmp eq i32 %i.z, -1
  %.pre.i = load i16, ptr %i.q, align 8           ; 2 uses
  br i1 %cond.i, label %bb.k, label %_php_stream_eof.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = or i16 %.pre.i, 8                       ; 2 uses
  store i16 %i.aa, ptr %i.q, align 8
  br label %_php_stream_eof.exit

_php_stream_eof.exit:                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ab = phi i16 [ %.pre.i, %bb.j ], [ %i.u, %bb.i ], [ %i.aa, %bb.k ], [ %i.u, %bb.h ]
  %i.ac = and i16 %i.ab, 8
  %.not125 = icmp eq i16 %i.ac, 0
  br i1 %.not125, label %_php_stream_eof.exit.thread, label %.critedge

_php_stream_eof.exit.thread:                      ; preds = %bb.g, %_php_stream_eof.exit
  %i.ad = sub nuw nsw i64 %spec.store.select, %.080137
  %i.ae = tail call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef %.083136, i64 noundef %i.ad) ; 3 uses
  %i.af = icmp slt i64 %i.ae, 1
  br i1 %i.af, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_php_stream_eof.exit.thread
  %i.ag = add nuw i64 %i.ae, %.080137             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.083136, i64 %i.ae
  %i.ai = icmp ult i64 %i.ag, %spec.store.select
  br i1 %i.ai, label %bb.g, label %.critedge.thread, !llvm.loop !178

.critedge:                                        ; preds = %_php_stream_eof.exit.thread, %_php_stream_eof.exit
  %.not96 = icmp eq i64 %.080137, 0
  br i1 %.not96, label %bb.w, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %zend_string_alloc.exit103, %.critedge
  %.080127 = phi i64 [ %.080137, %.critedge ], [ 0, %zend_string_alloc.exit103 ], [ %i.ag, %bb.l ] ; 8 uses
  store i64 %.080127, ptr %i.m, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.080127
  store i8 0, ptr %i.aj, align 1, !tbaa !28
  %i.ak = lshr i64 %spec.store.select, 1
  %i.al = icmp ult i64 %.080127, %i.ak
  br i1 %i.al, label %bb.m, label %zend_string_truncate.exit108

bb.m:                                             ; preds = %.critedge.thread
  %i.am = load i32, ptr %i.k, align 4, !tbaa !28
  %i.an = and i32 %i.am, 64
  %.not.i104 = icmp eq i32 %i.an, 0
  br i1 %.not.i104, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !49
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %bb.s, !prof !128

bb.o:                                             ; preds = %bb.n
  %i.aq = and i64 %.080127, -8
  %i.ar = add nuw i64 %i.aq, 32                   ; 2 uses
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = tail call ptr @__zend_realloc(ptr noundef nonnull %i.j, i64 noundef %i.ar) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.at = tail call ptr @_erealloc(ptr noundef nonnull %i.j, i64 noundef %i.ar) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.080127, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = and i32 %i.ay, -513
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !28
  br label %zend_string_truncate.exit108

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.ba = and i64 %.080127, -8
  %i.bb = add nuw i64 %i.ba, 32                   ; 2 uses
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @__zend_malloc(i64 noundef %i.bb) #27
  br label %zend_string_alloc.exit.i105

bb.u:                                             ; preds = %bb.s
  %i.bd = tail call noalias ptr @_emalloc(i64 noundef %i.bb) #27
  br label %zend_string_alloc.exit.i105

zend_string_alloc.exit.i105:                      ; preds = %bb.u, %bb.t
  %i.be = phi i32 [ 150, %bb.t ], [ 22, %bb.u ]
  %i.bf = phi ptr [ %i.bc, %bb.t ], [ %i.bd, %bb.u ] ; 7 uses
  store i32 1, ptr %i.bf, align 4, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.080127, ptr %i.bi, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bk = add nuw nsw i64 %.080127, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.bk, i1 false)
  %i.bl = load i32, ptr %i.k, align 4, !tbaa !28
  %i.bm = and i32 %i.bl, 64
  %.not21.i106 = icmp eq i32 %i.bm, 0
  br i1 %.not21.i106, label %bb.v, label %zend_string_truncate.exit108

bb.v:                                             ; preds = %zend_string_alloc.exit.i105
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.bo = icmp ne i32 %i.bn, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add i32 %i.bn, -1
  store i32 %i.bp, ptr %i.j, align 8, !tbaa !49
  br label %zend_string_truncate.exit108

bb.w:                                             ; preds = %.critedge
  %i.bq = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.br = and i32 %i.bq, 64
  %.not.i110 = icmp eq i32 %i.br, 0
  br i1 %.not.i110, label %bb.x, label %zend_string_truncate.exit108

bb.x:                                             ; preds = %bb.w
  %i.bs = and i32 %i.bq, 128
  %.not4.i111 = icmp eq i32 %i.bs, 0
  br i1 %.not4.i111, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.j) #25
  br label %zend_string_truncate.exit108

bb.z:                                             ; preds = %bb.x
  tail call void @_efree(ptr noundef nonnull %i.j) #25
  br label %zend_string_truncate.exit108

bb.aa:                                            ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100 ; 3 uses
  %.not.i119 = icmp eq ptr %i.bu, null
  br i1 %.not.i119, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !131 ; 2 uses
  %.not14.i = icmp eq ptr %i.bx, null
  br i1 %.not14.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = call i32 %i.bx(ptr noundef nonnull %i.bu, ptr noundef nonnull %0, ptr noundef nonnull %3) #25, !inline_history !181
  br label %_php_stream_stat.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.bz = load ptr, ptr %0, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !132 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_php_stream_stat.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = call i32 %i.cb(ptr noundef nonnull %0, ptr noundef nonnull %3) #25, !inline_history !181
  br label %_php_stream_stat.exit

_php_stream_stat.exit:                            ; preds = %bb.ac, %bb.ae
  %.0.i120 = phi i32 [ %i.by, %bb.ac ], [ %i.cd, %bb.ae ]
  %i.ce = icmp eq i32 %.0.i120, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  %or.cond5 = select i1 %i.ce, i1 %i.ch, i1 false
  br i1 %or.cond5, label %bb.af, label %_php_stream_stat.exit.thread

bb.af:                                            ; preds = %_php_stream_stat.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !127
  %i.ck = sub nsw i64 %i.cg, %i.cj
  %i.cl = call i64 @llvm.smax.i64(i64 %i.ck, i64 0)
  %spec.select = add nuw nsw i64 %i.cl, 8192      ; 2 uses
  %4 = icmp ugt i64 %spec.select, %spec.store.select
  %or.cond98 = select i1 %i.c, i1 %4, i1 false
  %spec.select102 = select i1 %or.cond98, i64 %1, i64 %spec.select
  br label %_php_stream_stat.exit.thread

_php_stream_stat.exit.thread:                     ; preds = %bb.ad, %bb.af, %_php_stream_stat.exit
  %.076 = phi i64 [ 8192, %_php_stream_stat.exit ], [ %spec.select102, %bb.af ], [ 8192, %bb.ad ] ; 4 uses
  %i.cm = and i64 %.076, -8
  %i.cn = add i64 %i.cm, 32                       ; 2 uses
  br i1 %2, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_php_stream_stat.exit.thread
  %i.co = call noalias ptr @__zend_malloc(i64 noundef %i.cn) #27
  br label %zend_string_alloc.exit

bb.ah:                                            ; preds = %_php_stream_stat.exit.thread
  %i.cp = call noalias ptr @_emalloc(i64 noundef %i.cn) #27
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.ag, %bb.ah
  %i.cq = phi i32 [ 150, %bb.ag ], [ 22, %bb.ah ]
  %i.cr = phi ptr [ %i.co, %bb.ag ], [ %i.cp, %bb.ah ] ; 7 uses
  store i32 1, ptr %i.cr, align 4, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %.076, ptr %i.cu, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.cw = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.cv, i64 noundef %.076) ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %zend_string_alloc.exit, %bb.au
  %i.cy = phi i64 [ %i.es, %bb.au ], [ %i.cw, %zend_string_alloc.exit ] ; 2 uses
  %.1131 = phi ptr [ %.2, %bb.au ], [ %i.cr, %zend_string_alloc.exit ] ; 10 uses
  %.177130 = phi i64 [ %.379, %bb.au ], [ %.076, %zend_string_alloc.exit ] ; 3 uses
  %.181129 = phi i64 [ %i.cz, %bb.au ], [ 0, %zend_string_alloc.exit ]
  %.184128 = phi ptr [ %.285, %bb.au ], [ %i.cv, %zend_string_alloc.exit ]
  %i.cz = add i64 %i.cy, %.181129                 ; 6 uses
  %i.da = add i64 %i.cz, 2048
  %.not = icmp ult i64 %i.da, %.177130
  br i1 %.not, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.db = icmp eq i64 %spec.store.select, %i.cz
  br i1 %i.db, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = add i64 %.177130, 8192                  ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, %spec.store.select
  %or.cond101 = and i1 %i.c, %i.dd
  %.278 = select i1 %or.cond101, i64 %1, i64 %i.dc ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1131, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !52
  %i.dg = icmp uge i64 %.278, %i.df
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %.1131, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !28
  %i.dj = and i32 %i.di, 64
  %.not.i113 = icmp eq i32 %i.dj, 0
  br i1 %.not.i113, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i32, ptr %.1131, align 8, !tbaa !49
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.al, label %bb.ap, !prof !128

bb.al:                                            ; preds = %bb.ak
  %i.dm = and i64 %.278, -8
  %i.dn = add i64 %i.dm, 32                       ; 2 uses
  br i1 %2, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.do = call ptr @__zend_realloc(ptr noundef nonnull %.1131, i64 noundef %i.dn) #28
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dp = call ptr @_erealloc(ptr noundef nonnull %.1131, i64 noundef %i.dn) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dq = phi ptr [ %i.do, %bb.am ], [ %i.dp, %bb.an ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %.278, ptr %i.dr, align 8, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 0, ptr %i.ds, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = and i32 %i.du, -513
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !28
  br label %zend_string_extend.exit

bb.ap:                                            ; preds = %bb.ak, %bb.aj
  %i.dw = and i64 %.278, -8
  %i.dx = add i64 %i.dw, 32                       ; 2 uses
  br i1 %2, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dy = call noalias ptr @__zend_malloc(i64 noundef %i.dx) #27
  br label %zend_string_alloc.exit.i114

bb.ar:                                            ; preds = %bb.ap
  %i.dz = call noalias ptr @_emalloc(i64 noundef %i.dx) #27
  br label %zend_string_alloc.exit.i114

zend_string_alloc.exit.i114:                      ; preds = %bb.ar, %bb.aq
  %i.ea = phi i32 [ 150, %bb.aq ], [ 22, %bb.ar ]
  %i.eb = phi ptr [ %i.dy, %bb.aq ], [ %i.dz, %bb.ar ] ; 7 uses
  store i32 1, ptr %i.eb, align 4, !tbaa !49
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 %i.ea, ptr %i.ec, align 4, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %.278, ptr %i.ee, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %.1131, i64 24
  %i.eh = load i64, ptr %i.de, align 8, !tbaa !52
  %i.ei = add i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.eg, i64 %i.ei, i1 false)
  %i.ej = load i32, ptr %i.dh, align 4, !tbaa !28
  %i.ek = and i32 %i.ej, 64
  %.not21.i115 = icmp eq i32 %i.ek, 0
  br i1 %.not21.i115, label %bb.as, label %zend_string_extend.exit

bb.as:                                            ; preds = %zend_string_alloc.exit.i114
  %i.el = load i32, ptr %.1131, align 8, !tbaa !49 ; 2 uses
  %i.em = icmp ne i32 %i.el, 0
  call void @llvm.assume(i1 %i.em)
  %i.en = add i32 %i.el, -1
  store i32 %i.en, ptr %.1131, align 8, !tbaa !49
  br label %zend_string_extend.exit

zend_string_extend.exit:                          ; preds = %bb.ao, %zend_string_alloc.exit.i114, %bb.as
  %.0.i116 = phi ptr [ %i.dq, %bb.ao ], [ %i.eb, %bb.as ], [ %i.eb, %zend_string_alloc.exit.i114 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i116, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cz
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %.184128, i64 %i.cy
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %zend_string_extend.exit
  %.285 = phi ptr [ %i.ep, %zend_string_extend.exit ], [ %i.eq, %bb.at ] ; 2 uses
  %.379 = phi i64 [ %.278, %zend_string_extend.exit ], [ %.177130, %bb.at ] ; 2 uses
  %.2 = phi ptr [ %.0.i116, %zend_string_extend.exit ], [ %.1131, %bb.at ] ; 2 uses
  %i.er = sub i64 %.379, %i.cz
  %i.es = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef %.285, i64 noundef %i.er) ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %.lr.ph, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %bb.au, %bb.ai
  %.1.lcssa = phi ptr [ %.2, %bb.au ], [ %.1131, %bb.ai ] ; 9 uses
  %.282 = phi i64 [ %i.cz, %bb.au ], [ %spec.store.select, %bb.ai ] ; 8 uses
  %.not95 = icmp eq i64 %.282, 0
  br i1 %.not95, label %._crit_edge.thread, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !52
  %i.ew = icmp ule i64 %.282, %i.ev
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !28
  %i.ez = and i32 %i.ey, 64
  %.not.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fa = load i32, ptr %.1.lcssa, align 8, !tbaa !49
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ax, label %bb.bb, !prof !128

bb.ax:                                            ; preds = %bb.aw
  %i.fc = and i64 %.282, -8
  %i.fd = add i64 %i.fc, 32                       ; 2 uses
  br i1 %2, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fe = call ptr @__zend_realloc(ptr noundef nonnull %.1.lcssa, i64 noundef %i.fd) #28
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ff = call ptr @_erealloc(ptr noundef nonnull %.1.lcssa, i64 noundef %i.fd) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fg = phi ptr [ %i.fe, %bb.ay ], [ %i.ff, %bb.az ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %.282, ptr %i.fh, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 0, ptr %i.fi, align 8, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !28
  %i.fl = and i32 %i.fk, -513
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !28
  br label %zend_string_truncate.exit

bb.bb:                                            ; preds = %bb.aw, %bb.av
  %i.fm = and i64 %.282, -8
  %i.fn = add i64 %i.fm, 32                       ; 2 uses
  br i1 %2, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = call noalias ptr @__zend_malloc(i64 noundef %i.fn) #27
  br label %zend_string_alloc.exit.i
end_hunk_0
begin_hunk_1_@_php_stream_copy_to_mem:bb.a
bb.bd:                                            ; preds = %bb.bb
  %i.fp = call noalias ptr @_emalloc(i64 noundef %i.fn) #27
  br label %zend_string_alloc.exit.i

zend_string_alloc.exit.i:                         ; preds = %bb.bd, %bb.bc
  %i.fq = phi i32 [ 150, %bb.bc ], [ 22, %bb.bd ]
  %i.fr = phi ptr [ %i.fo, %bb.bc ], [ %i.fp, %bb.bd ] ; 7 uses
  store i32 1, ptr %i.fr, align 4, !tbaa !49
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 0, ptr %i.ft, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.282, ptr %i.fu, align 8, !tbaa !52
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 24
  %i.fx = add i64 %.282, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fv, ptr nonnull align 8 %i.fw, i64 %i.fx, i1 false)
  %i.fy = load i32, ptr %i.ex, align 4, !tbaa !28
  %i.fz = and i32 %i.fy, 64
  %.not21.i = icmp eq i32 %i.fz, 0
  br i1 %.not21.i, label %bb.be, label %zend_string_truncate.exit

bb.be:                                            ; preds = %zend_string_alloc.exit.i
  %i.ga = load i32, ptr %.1.lcssa, align 8, !tbaa !49 ; 2 uses
  %i.gb = icmp ne i32 %i.ga, 0
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add i32 %i.ga, -1
  store i32 %i.gc, ptr %.1.lcssa, align 8, !tbaa !49
  br label %zend_string_truncate.exit

zend_string_truncate.exit:                        ; preds = %bb.ba, %zend_string_alloc.exit.i, %bb.be
  %.0.i = phi ptr [ %i.fg, %bb.ba ], [ %i.fr, %bb.be ], [ %i.fr, %zend_string_alloc.exit.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.282
  store i8 0, ptr %i.ge, align 1, !tbaa !28
  br label %zend_string_truncate.exit108

._crit_edge.thread:                               ; preds = %zend_string_alloc.exit, %._crit_edge
  %.1.lcssa160 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.cr, %zend_string_alloc.exit ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.lcssa160, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !28 ; 2 uses
  %i.gh = and i32 %i.gg, 64
  %.not.i109 = icmp eq i32 %i.gh, 0
  br i1 %.not.i109, label %bb.bf, label %zend_string_truncate.exit108

bb.bf:                                            ; preds = %._crit_edge.thread
  %i.gi = and i32 %i.gg, 128
  %.not4.i = icmp eq i32 %i.gi, 0
  br i1 %.not4.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %.1.lcssa160) #25
  br label %zend_string_truncate.exit108

bb.bh:                                            ; preds = %bb.bf
  call void @_efree(ptr noundef nonnull %.1.lcssa160) #25
  br label %zend_string_truncate.exit108

zend_string_truncate.exit108:                     ; preds = %bb.bh, %bb.bg, %._crit_edge.thread, %bb.z, %bb.y, %bb.w, %bb.v, %zend_string_alloc.exit.i105, %bb.r, %zend_string_truncate.exit, %.critedge.thread, %bb.b
  %.086 = phi ptr [ %i.b, %bb.b ], [ %i.bf, %zend_string_alloc.exit.i105 ], [ null, %bb.z ], [ %i.j, %.critedge.thread ], [ %.0.i, %zend_string_truncate.exit ], [ %i.au, %bb.r ], [ %i.bf, %bb.v ], [ null, %bb.w ], [ null, %bb.y ], [ null, %._crit_edge.thread ], [ null, %bb.bg ], [ null, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.086
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_php_stream_copy_to_stream_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not = icmp eq ptr %3, null                    ; 9 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.cont194, label %.else196

.else196:                                         ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !133
  br label %.cont194

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !56
  %i.h = icmp eq ptr %i.g, @php_stream_stdio_ops
  br i1 %i.h, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !56
  %i.j = icmp eq ptr %i.i, @php_stream_stdio_ops
  br i1 %i.j, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load i64, ptr %i.m, align 8, !tbaa !110
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.p = call i32 @_php_stream_cast(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %.critedge.cont.thread

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @_php_stream_cast(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 0) #25
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %.critedge.cont.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.u = call i32 @php_stream_parse_fopen_modes(ptr noundef nonnull %i.t, ptr noundef nonnull %i.d) #25
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %.critedge.cont.thread

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.d, align 4, !tbaa !13
  %i.x = and i32 %i.w, 1024
  %.not151 = icmp eq i32 %i.x, 0
  br i1 %.not151, label %bb.j, label %.critedge.cont.thread

bb.j:                                             ; preds = %bb.i
  %i.y = call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  %i.z = load i32, ptr %i.b, align 4, !tbaa !13
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ab = call i64 @copy_file_range(i32 noundef %i.z, ptr noundef null, i32 noundef %i.aa, ptr noundef null, i64 noundef %i.y, i32 noundef 0) #25 ; 7 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !127
  %i.af = add i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !127
  %i.ai = add i64 %i.ah, %i.ab
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !127
  %i.aj = icmp eq i64 %i.ab, %2
  br i1 %i.aj, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = call zeroext i1 @_php_stream_eof(ptr noundef nonnull %0)
  br i1 %i.ak, label %.critedge, label %.critedge.cont.thread

.critedge:                                        ; preds = %bb.k, %bb.l
  br i1 %.not, label %.critedge.cont, label %.critedge.cont.sink.split

bb.m:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.ab, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %.critedge.cont, label %.critedge.cont.sink.split

bb.o:                                             ; preds = %bb.m
  %i.am = tail call ptr @__errno_location() #29
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %switch.tableidx = add i32 %i.an, -5            ; 2 uses
  %i.ao = icmp ult i32 %switch.tableidx, 34
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 8590073857, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond386 = select i1 %i.ao, i1 %switch.lobit, i1 false
  br i1 %or.cond386, label %.critedge.cont.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not, label %.critedge.cont, label %.critedge.cont.sink.split

.critedge.cont.thread:                            ; preds = %bb.o, %bb.f, %bb.i, %bb.h, %bb.g, %bb.l
  %.3121.ph = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.ab, %bb.l ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.q

.critedge.cont.sink.split:                        ; preds = %bb.p, %bb.n, %.critedge
  %.sink = phi i64 [ 0, %bb.n ], [ %i.ab, %.critedge ], [ 0, %bb.p ]
  %.4130.ph = phi i32 [ 0, %bb.n ], [ 0, %.critedge ], [ -1, %bb.p ]
  store i64 %.sink, ptr %3, align 8, !tbaa !133
  br label %.critedge.cont

.critedge.cont:                                   ; preds = %.critedge.cont.sink.split, %.critedge, %bb.n, %bb.p
  %.4130 = phi i32 [ -1, %bb.p ], [ 0, %.critedge ], [ 0, %bb.n ], [ %.4130.ph, %.critedge.cont.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.cont194

bb.q:                                             ; preds = %.critedge.cont.thread, %bb.e, %bb.d, %bb.c
  %.4122 = phi i64 [ %.3121.ph, %.critedge.cont.thread ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 7 uses
  %i.ap = icmp ne i64 %2, -1                      ; 5 uses
  %spec.store.select6 = select i1 %i.ap, i64 %2, i64 0 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94
  %.not153 = icmp eq ptr %i.ar, null
  br i1 %.not153, label %bb.r, label %_php_stream_set_option.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88
  %.not154 = icmp eq ptr %i.at, null
  br i1 %.not154, label %bb.s, label %_php_stream_set_option.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.au = load ptr, ptr %0, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !129 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_php_stream_set_option.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = call i32 %i.aw(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 0, ptr noundef null) #25, !inline_history !130
  %cond = icmp eq i32 %i.ax, 0
  br i1 %cond, label %.preheader, label %_php_stream_set_option.exit.thread

.preheader:                                       ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.az = sub i64 %spec.store.select6, %.4122     ; 2 uses
  %.268 = call i64 @llvm.umin.i64(i64 %i.az, i64 536870912)
  %.0113269 = select i1 %i.ap, i64 %.268, i64 536870912 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !127
  %i.bb = call ptr @_php_stream_mmap_range(ptr noundef nonnull %0, i64 noundef %i.ba, i64 noundef %.0113269, i32 noundef 2, ptr noundef nonnull %i.e) #25 ; 2 uses
  %.not155270 = icmp eq ptr %i.bb, null
  br i1 %.not155270, label %_php_stream_set_option.exit.thread.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.ad
  %i.be = phi ptr [ %i.bb, %.lr.ph ], [ %i.cd, %bb.ad ] ; 2 uses
  %.0113272 = phi i64 [ %.0113269, %.lr.ph ], [ %.0113, %bb.ad ]
  %i.bf = phi i64 [ %i.az, %.lr.ph ], [ %i.cb, %bb.ad ]
  %.5123271 = phi i64 [ %.4122, %.lr.ph ], [ %i.bv, %bb.ad ] ; 3 uses
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !133
  %i.bh = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.bg, i32 noundef 1)
  %.not156 = icmp eq i32 %i.bh, 0
  br i1 %.not156, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !133 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_php_stream_write.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %1, align 8, !tbaa !56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !90
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_php_stream_write.exit.thread203, label %bb.x

_php_stream_write.exit.thread203:                 ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.1) #25
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !88
  %.not.i170 = icmp eq ptr %i.bn, null
  br i1 %.not.i170, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = call fastcc i64 @_php_stream_write_filtered(ptr noundef nonnull %1, ptr noundef nonnull %i.be, i64 noundef %i.bi, i32 noundef 0)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bp = call fastcc i64 @_php_stream_write_buffer(ptr noundef nonnull %1, ptr noundef nonnull %i.be, i64 noundef %i.bi)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i = phi i64 [ %i.bo, %bb.y ], [ %i.bp, %bb.z ] ; 3 uses
  %.not15.i = icmp eq i64 %.0.i, 0
  br i1 %.not15.i, label %_php_stream_write.exit.thread, label %_php_stream_write.exit

_php_stream_write.exit:                           ; preds = %bb.aa
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !60
  %i.br = or i32 %i.bq, -2147483648
  store i32 %i.br, ptr %i.bd, align 4, !tbaa !60
  %i.bs = icmp slt i64 %.0.i, 0
  br i1 %i.bs, label %.loopexit, label %_php_stream_write.exit.thread

.loopexit:                                        ; preds = %_php_stream_write.exit, %_php_stream_write.exit.thread203
  br i1 %.not, label %.cont182, label %.else184

.else184:                                         ; preds = %.loopexit
  store i64 %.5123271, ptr %3, align 8, !tbaa !133
  br label %.cont182

.cont182:                                         ; preds = %.loopexit, %.else184
  %i.bt = call i32 @_php_stream_mmap_unmap(ptr noundef nonnull %0) #25 ; 0 uses
  br label %.loopexit249

_php_stream_write.exit.thread:                    ; preds = %bb.aa, %bb.v, %_php_stream_write.exit
  %.013.i202 = phi i64 [ %.0.i, %_php_stream_write.exit ], [ 0, %bb.v ], [ 0, %bb.aa ] ; 4 uses
  %i.bu = call i32 @_php_stream_mmap_unmap(ptr noundef nonnull %0) #25 ; 0 uses
  %i.bv = add i64 %.013.i202, %.5123271           ; 4 uses
  br i1 %.not, label %.cont179, label %.else181

.else181:                                         ; preds = %_php_stream_write.exit.thread
  store i64 %i.bv, ptr %3, align 8, !tbaa !133
  br label %.cont179

.cont179:                                         ; preds = %_php_stream_write.exit.thread, %.else181
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !133 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, 0
  %.not157 = icmp eq i64 %i.bw, %.013.i202
  %or.cond162 = and i1 %i.bx, %.not157
  br i1 %or.cond162, label %bb.ab, label %.loopexit249

bb.ab:                                            ; preds = %.cont179
  %i.by = icmp samesign ult i64 %.013.i202, %.0113272
  %i.bz = icmp eq i64 %i.bf, %.013.i202
  %or.cond164 = select i1 %i.ap, i1 %i.bz, i1 false
  %or.cond = select i1 %i.by, i1 true, i1 %or.cond164
  br i1 %or.cond, label %.loopexit249, label %bb.ad

bb.ac:                                            ; preds = %bb.u
  %i.ca = call i32 @_php_stream_mmap_unmap(ptr noundef nonnull %0) #25 ; 0 uses
  br label %_php_stream_set_option.exit.thread.sink.split

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.cb = sub i64 %spec.store.select6, %i.bv      ; 2 uses
  %. = call i64 @llvm.umin.i64(i64 %i.cb, i64 536870912)
  %.0113 = select i1 %i.ap, i64 %., i64 536870912 ; 2 uses
  %i.cc = load i64, ptr %i.ay, align 8, !tbaa !127
  %i.cd = call ptr @_php_stream_mmap_range(ptr noundef nonnull %0, i64 noundef %i.cc, i64 noundef %.0113, i32 noundef 2, ptr noundef nonnull %i.e) #25 ; 2 uses
  %.not155 = icmp eq ptr %i.cd, null
  br i1 %.not155, label %_php_stream_set_option.exit.thread.sink.split, label %bb.u, !llvm.loop !182

.loopexit249:                                     ; preds = %bb.ab, %.cont179, %.cont182
  %.7133.ph.ph = phi i32 [ -1, %.cont182 ], [ 0, %bb.ab ], [ -1, %.cont179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.cont194

_php_stream_set_option.exit.thread.sink.split:    ; preds = %bb.ad, %.preheader, %bb.ac
  %.9.ph = phi i64 [ %.5123271, %bb.ac ], [ %.4122, %.preheader ], [ %i.bv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_php_stream_set_option.exit.thread

_php_stream_set_option.exit.thread:               ; preds = %_php_stream_set_option.exit.thread.sink.split, %bb.t, %bb.s, %bb.r, %bb.q
  %.9 = phi i64 [ %.4122, %bb.q ], [ %.4122, %bb.r ], [ %.4122, %bb.s ], [ %.4122, %bb.t ], [ %.9.ph, %_php_stream_set_option.exit.thread.sink.split ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 4 uses
  br i1 %i.ap, label %_php_stream_set_option.exit.thread.split.us, label %_php_stream_set_option.exit.thread.split.split

_php_stream_set_option.exit.thread.split.us:      ; preds = %_php_stream_set_option.exit.thread, %bb.ak
  %.10.us = phi i64 [ %i.cj, %bb.ak ], [ %.9, %_php_stream_set_option.exit.thread ] ; 6 uses
  %i.cg = sub i64 %spec.store.select6, %.10.us
  %spec.select.us = call i64 @llvm.umin.i64(i64 %i.cg, i64 8192)
  %i.ch = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %spec.select.us) ; 4 uses
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %.split282.us, label %bb.ae

bb.ae:                                            ; preds = %_php_stream_set_option.exit.thread.split.us
  %i.cj = add i64 %i.ch, %.10.us                  ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.cont185.us, %bb.ae
  %.0274.us = phi ptr [ %i.a, %bb.ae ], [ %i.cu, %.cont185.us ] ; 3 uses
  %.0116273.us = phi i64 [ %i.ch, %bb.ae ], [ %i.ct, %.cont185.us ] ; 6 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !90
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.split.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !88
  %.not.i171.us = icmp eq ptr %i.cn, null
  br i1 %.not.i171.us, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = call fastcc i64 @_php_stream_write_filtered(ptr noundef nonnull %1, ptr noundef nonnull %.0274.us, i64 noundef %.0116273.us, i32 noundef 0)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cp = call fastcc i64 @_php_stream_write_buffer(ptr noundef nonnull %1, ptr noundef nonnull %.0274.us, i64 noundef %.0116273.us)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i172.us = phi i64 [ %i.co, %bb.ah ], [ %i.cp, %bb.ai ] ; 4 uses
  %.not15.i173.us = icmp eq i64 %.0.i172.us, 0
  br i1 %.not15.i173.us, label %_php_stream_write.exit175.thread, label %_php_stream_write.exit175.us

_php_stream_write.exit175.us:                     ; preds = %bb.aj
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.cr = or i32 %i.cq, -2147483648
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !60
  %i.cs = icmp sgt i64 %.0.i172.us, 0
  br i1 %i.cs, label %.cont185.us, label %_php_stream_write.exit175.thread

.cont185.us:                                      ; preds = %_php_stream_write.exit175.us
  %i.ct = sub i64 %.0116273.us, %.0.i172.us       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0274.us, i64 %.0.i172.us
  %.not160.us = icmp eq i64 %i.ct, 0
  br i1 %.not160.us, label %bb.ak, label %bb.af, !llvm.loop !183

bb.ak:                                            ; preds = %.cont185.us
  %i.cv = icmp eq i64 %spec.store.select6, %i.cj
  br i1 %i.cv, label %.split279.us, label %_php_stream_set_option.exit.thread.split.us

_php_stream_set_option.exit.thread.split.split:   ; preds = %_php_stream_set_option.exit.thread
  %i.cw = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8192) ; 3 uses
  %i.cx = icmp slt i64 %i.cw, 1
  br i1 %i.cx, label %.split282.us, label %.lr.ph286

.split282.us:                                     ; preds = %bb.aq, %_php_stream_set_option.exit.thread.split.us, %_php_stream_set_option.exit.thread.split.split
  %.us-phi283 = phi i64 [ %.10.us, %_php_stream_set_option.exit.thread.split.us ], [ %.9, %_php_stream_set_option.exit.thread.split.split ], [ %i.da, %bb.aq ]
  %.us-phi284 = phi i64 [ %i.ch, %_php_stream_set_option.exit.thread.split.us ], [ %i.cw, %_php_stream_set_option.exit.thread.split.split ], [ %i.dn, %bb.aq ]
  br i1 %.not, label %.cont191, label %.else193

.else193:                                         ; preds = %.split282.us
  store i64 %.us-phi283, ptr %3, align 8, !tbaa !133
  br label %.cont191

.cont191:                                         ; preds = %.split282.us, %.else193
  %.not161 = icmp ne i64 %.us-phi284, 0
  %i.cy = sext i1 %.not161 to i32
  br label %.cont194

.lr.ph286:                                        ; preds = %_php_stream_set_option.exit.thread.split.split, %bb.aq
  %i.cz = phi i64 [ %i.dn, %bb.aq ], [ %i.cw, %_php_stream_set_option.exit.thread.split.split ] ; 2 uses
  %.10285 = phi i64 [ %i.da, %bb.aq ], [ %.9, %_php_stream_set_option.exit.thread.split.split ] ; 4 uses
  %i.da = add i64 %i.cz, %.10285                  ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph286, %.cont185
  %.0274 = phi ptr [ %i.a, %.lr.ph286 ], [ %i.dm, %.cont185 ] ; 3 uses
  %.0116273 = phi i64 [ %i.cz, %.lr.ph286 ], [ %i.dl, %.cont185 ] ; 6 uses
  %i.db = load ptr, ptr %1, align 8, !tbaa !56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !90
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.split.us, label %bb.am

.split.us:                                        ; preds = %bb.al, %bb.af
  %.us-phi = phi i64 [ %.10.us, %bb.af ], [ %.10285, %bb.al ]
  %.us-phi275 = phi i64 [ %.0116273.us, %bb.af ], [ %.0116273, %bb.al ]
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.1) #25
  br label %_php_stream_write.exit175.thread

bb.am:                                            ; preds = %bb.al
  %i.de = load ptr, ptr %i.ce, align 8, !tbaa !88
  %.not.i171 = icmp eq ptr %i.de, null
  br i1 %.not.i171, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = call fastcc i64 @_php_stream_write_filtered(ptr noundef nonnull %1, ptr noundef nonnull %.0274, i64 noundef %.0116273, i32 noundef 0)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dg = call fastcc i64 @_php_stream_write_buffer(ptr noundef nonnull %1, ptr noundef nonnull %.0274, i64 noundef %.0116273)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i172 = phi i64 [ %i.df, %bb.an ], [ %i.dg, %bb.ao ] ; 4 uses
  %.not15.i173 = icmp eq i64 %.0.i172, 0
  br i1 %.not15.i173, label %_php_stream_write.exit175.thread, label %_php_stream_write.exit175

_php_stream_write.exit175:                        ; preds = %bb.ap
  %i.dh = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.di = or i32 %i.dh, -2147483648
  store i32 %i.di, ptr %i.cf, align 4, !tbaa !60
  %i.dj = icmp sgt i64 %.0.i172, 0
  br i1 %i.dj, label %.cont185, label %_php_stream_write.exit175.thread

_php_stream_write.exit175.thread:                 ; preds = %_php_stream_write.exit175, %bb.ap, %_php_stream_write.exit175.us, %bb.aj, %.split.us
  %.10259 = phi i64 [ %.us-phi, %.split.us ], [ %.10.us, %_php_stream_write.exit175.us ], [ %.10.us, %bb.aj ], [ %.10285, %bb.ap ], [ %.10285, %_php_stream_write.exit175 ]
  %.0116252 = phi i64 [ %.us-phi275, %.split.us ], [ %.0116273.us, %_php_stream_write.exit175.us ], [ %.0116273.us, %bb.aj ], [ %.0116273, %bb.ap ], [ %.0116273, %_php_stream_write.exit175 ]
  br i1 %.not, label %.cont194, label %.else187

.else187:                                         ; preds = %_php_stream_write.exit175.thread
  %i.dk = add i64 %.0116252, %.10259
  store i64 %i.dk, ptr %3, align 8, !tbaa !133
  br label %.cont194

.cont185:                                         ; preds = %_php_stream_write.exit175
  %i.dl = sub i64 %.0116273, %.0.i172             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0274, i64 %.0.i172
  %.not160 = icmp eq i64 %i.dl, 0
  br i1 %.not160, label %bb.aq, label %bb.al, !llvm.loop !183

bb.aq:                                            ; preds = %.cont185
  %i.dn = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8192) ; 3 uses
  %i.do = icmp slt i64 %i.dn, 1
  br i1 %i.do, label %.split282.us, label %.lr.ph286

.split279.us:                                     ; preds = %bb.ak
  br i1 %.not, label %.cont194, label %.else190

.else190:                                         ; preds = %.split279.us
  store i64 %spec.store.select6, ptr %3, align 8, !tbaa !133
  br label %.cont194

.cont194:                                         ; preds = %.else187, %_php_stream_write.exit175.thread, %.cont191, %.else190, %.split279.us, %.loopexit249, %.critedge.cont, %.else196, %bb.b
  %.15 = phi i32 [ %.4130, %.critedge.cont ], [ 0, %.else190 ], [ 0, %.else196 ], [ %.7133.ph.ph, %.loopexit249 ], [ 0, %bb.b ], [ 0, %.split279.us ], [ %i.cy, %.cont191 ], [ -1, %_php_stream_write.exit175.thread ], [ -1, %.else187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.15
}

declare i32 @_php_stream_cast(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @php_stream_parse_fopen_modes(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

declare i32 @_php_stream_mmap_unmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @_php_stream_copy_to_stream(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call i32 @_php_stream_copy_to_stream_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a)
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = icmp ne i64 %2, 0
  %or.cond3 = and i1 %i.f, %or.cond
  %. = select i1 %or.cond3, i64 1, i64 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define hidden void @php_shutdown_stream_hashes() local_unnamed_addr #2 {
bb.a:
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 48), align 8, !tbaa !184
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 64), align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.a) #25
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 64), align 8, !tbaa !24
  tail call void @_efree(ptr noundef %i.b) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 64), align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 72), align 8, !tbaa !185 ; 2 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.c) #25
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 72), align 8, !tbaa !185
  tail call void @_efree(ptr noundef %i.d) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 72), align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 80), align 8, !tbaa !55 ; 2 uses
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.e) #25
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 80), align 8, !tbaa !55
  tail call void @_efree(ptr noundef %i.f) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 80), align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @zend_hash_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @php_init_stream_wrappers(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @zend_register_list_destructors_ex(ptr noundef nonnull @stream_resource_regular_dtor, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %0) #25
  store i32 %i.a, ptr @le_stream, align 4, !tbaa !13
  %i.b = tail call i32 @zend_register_list_destructors_ex(ptr noundef null, ptr noundef nonnull @stream_resource_persistent_dtor, ptr noundef nonnull @.str.4, i32 noundef %0) #25
  store i32 %i.b, ptr @le_pstream, align 4, !tbaa !13
  %i.c = tail call i32 @zend_register_list_destructors_ex(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %0) #25
  store i32 %i.c, ptr @le_stream_filter, align 4, !tbaa !13
  tail call void @_zend_hash_init(ptr noundef nonnull @url_stream_wrappers_hash, i32 noundef 8, ptr noundef null, i1 noundef zeroext true) #25
  %i.d = tail call ptr @php_get_stream_filters_hash_global() #25
  tail call void @_zend_hash_init(ptr noundef %i.d, i32 noundef 8, ptr noundef null, i1 noundef zeroext true) #25
  %i.e = tail call ptr @php_stream_xport_get_hash() #25
  tail call void @_zend_hash_init(ptr noundef %i.e, i32 noundef 8, ptr noundef null, i1 noundef zeroext true) #25
  %i.f = tail call i32 @php_stream_xport_register(ptr noundef nonnull @.str.6, ptr noundef nonnull @php_stream_generic_socket_factory) #25
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @php_stream_xport_register(ptr noundef nonnull @.str.7, ptr noundef nonnull @php_stream_generic_socket_factory) #25
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @php_stream_xport_register(ptr noundef nonnull @.str.8, ptr noundef nonnull @php_stream_generic_socket_factory) #25
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @php_stream_xport_register(ptr noundef nonnull @.str.9, ptr noundef nonnull @php_stream_generic_socket_factory) #25
  %i.m = icmp ne i32 %i.l, 0
  %i.n = sext i1 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %not. = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ], [ %i.n, %bb.d ]
  ret i32 %not.
}

declare i32 @zend_register_list_destructors_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @stream_resource_regular_dtor(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call i32 @_php_stream_free(ptr noundef %i.b, i32 noundef 11)
  store i32 %i.c, ptr @file_globals, align 8, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stream_resource_persistent_dtor(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call i32 @_php_stream_free(ptr noundef %i.b, i32 noundef 11)
  store i32 %i.c, ptr @file_globals, align 8, !tbaa !136
  ret void
}

declare ptr @php_get_stream_filters_hash_global() local_unnamed_addr #6

declare ptr @php_stream_xport_get_hash() local_unnamed_addr #6

declare i32 @php_stream_xport_register(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @php_stream_generic_socket_factory(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define hidden void @php_shutdown_stream_wrappers(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zend_hash_destroy(ptr noundef nonnull @url_stream_wrappers_hash) #25
  %i.a = tail call ptr @php_get_stream_filters_hash_global() #25
  tail call void @zend_hash_destroy(ptr noundef %i.a) #25
  %i.b = tail call ptr @php_stream_xport_get_hash() #25
  tail call void @zend_hash_destroy(ptr noundef %i.b) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @php_register_url_stream_wrapper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26 ; 3 uses
  %.not.i10 = icmp eq i64 %i.a, 0
  br i1 %.not.i10, label %zend_hash_add_ptr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #29
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.01222.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.01222.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28    ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !139
  %.fr21.i = freeze i16 %i.h
  %i.i = and i16 %.fr21.i, 8
  %.not.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.not.i, label %switch.early.test.i, label %bb.c

switch.early.test.i:                              ; preds = %bb.b
  switch i8 %i.e, label %php_stream_wrapper_scheme_validate.exit [
    i8 46, label %bb.c
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.b
  %i.j = add nuw i64 %.01222.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.a
  br i1 %exitcond.not.i, label %zend_hash_add_ptr.exit, label %bb.b, !llvm.loop !0

zend_hash_add_ptr.exit:                           ; preds = %bb.c, %bb.a
  %i.k = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !140
end_hunk_1
