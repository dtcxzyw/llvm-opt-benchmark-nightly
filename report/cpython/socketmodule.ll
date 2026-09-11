Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/socketmodule?download=true
inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_sendmsg_afalg:bb.a
  %i.ba = add i64 %i.az, 11                       ; 2 uses
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 16                       ; 2 uses
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !47
  %i.bd = getelementptr i8, ptr %i.ak, i64 40
  %i.be = load i64, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !9
  %i.bg = getelementptr i8, ptr %i.ak, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bg, ptr nonnull align 1 %i.at, i64 %i.be, i1 false)
  br i1 %i.aa, label %bb.s, label %bb.u

.thread95:                                        ; preds = %bb.p
  br i1 %i.aa, label %.thread98, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bh = icmp ugt i64 %i.ba, -17
  br i1 %i.bh, label %__cmsg_nxthdr.exit73.thread, label %.thread98

.thread98:                                        ; preds = %.thread95, %bb.s
  %i.bi = phi i64 [ %i.bc, %bb.s ], [ 20, %.thread95 ] ; 3 uses
  %.04897100 = phi ptr [ %i.au, %bb.s ], [ %i.ak, %.thread95 ] ; 2 uses
  %i.bj = sub i64 0, %i.bi
  %i.bk = and i64 %i.bj, 7
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.04897100 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bl
  %i.br = sub nuw i64 %i.bp, %i.bl
  %i.bs = icmp ult i64 %i.br, %i.bi
  %or.cond.i71 = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond.i71, label %__cmsg_nxthdr.exit73.thread, label %__cmsg_nxthdr.exit73

__cmsg_nxthdr.exit73:                             ; preds = %.thread98
  %i.bt = add nuw i64 %i.bi, 7
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr i8, ptr %.04897100, i64 %i.bu ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %__cmsg_nxthdr.exit73.thread, label %bb.t

__cmsg_nxthdr.exit73.thread:                      ; preds = %.thread98, %bb.s, %__cmsg_nxthdr.exit73
  %i.bx = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bx, ptr noundef nonnull @.str.663) #11
  br label %bb.w

bb.t:                                             ; preds = %__cmsg_nxthdr.exit73
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  store i32 279, ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr i8, ptr %i.bv, i64 12
  store i32 4, ptr %i.bz, align 4, !tbaa !9
  store i64 20, ptr %i.bv, align 8, !tbaa !47
  %i.ca = getelementptr i8, ptr %i.bv, i64 16
  store i32 %.049, ptr %i.ca, align 8, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %.thread95, %bb.t, %bb.r
  store ptr %4, ptr %5, align 8, !tbaa !146
  %i.cb = load i32, ptr %i.f, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !147
  %i.cd = getelementptr i8, ptr %0, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !76
  %i.cf = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_sendmsg_impl, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i64 noundef %i.ce)
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !148
  %i.cj = call ptr @PyLong_FromSsize_t(i64 noundef %i.ci) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.m, %bb.h, %bb.v, %__cmsg_nxthdr.exit73.thread, %__cmsg_nxthdr.exit.thread, %bb.o, %bb.k, %.thread75, %.thread
  %.052 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ null, %.thread75 ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %__cmsg_nxthdr.exit.thread ], [ null, %__cmsg_nxthdr.exit73.thread ], [ null, %bb.u ], [ %i.cj, %bb.v ]
  %.0 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ null, %.thread75 ], [ null, %bb.k ], [ %i.ac, %bb.m ], [ %i.ac, %bb.o ], [ %i.ac, %__cmsg_nxthdr.exit.thread ], [ %i.ac, %__cmsg_nxthdr.exit73.thread ], [ %i.ac, %bb.u ], [ %i.ac, %bb.v ]
  call void @PyMem_Free(ptr noundef %.0) #11
  %i.ck = load ptr, ptr %3, align 8, !tbaa !34
  %.not70 = icmp eq ptr %i.ck, null
  br i1 %.not70, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @PyBuffer_Release(ptr noundef nonnull %3) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !149
  call void @PyMem_Free(ptr noundef %i.cm) #11
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  %.pre81 = load ptr, ptr %i.b, align 8, !tbaa !137 ; 2 uses
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.05178 = phi i64 [ %i.cq, %.lr.ph ], [ 0, %bb.y ] ; 2 uses
  %i.cp = getelementptr [80 x i8], ptr %.pre81, i64 %.05178
  call void @PyBuffer_Release(ptr noundef %i.cp) #11
  %i.cq = add nuw nsw i64 %.05178, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.cn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  call void @PyMem_Free(ptr noundef %.pre81) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.053 = phi ptr [ null, %bb.b ], [ %.052, %._crit_edge ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.053
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_accept_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = icmp eq i32 %i.e, 38
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ null, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.0 = phi ptr [ null, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.g = load atomic i32, ptr @accept4_works monotonic, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = tail call i32 @accept4(i32 noundef %i.i, ptr %.0, ptr noundef %.016, i32 noundef 524288) #11 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !110
  %i.l = icmp eq i32 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i32, ptr @accept4_works monotonic, align 4
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__errno_location() #12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = icmp ne i32 %i.p, 38
  %i.r = zext i1 %i.q to i32
  store atomic i32 %i.r, ptr @accept4_works monotonic, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.s = load atomic i32, ptr @accept4_works monotonic, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !110
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = tail call i32 @accept(i32 noundef %i.v, ptr %.0, ptr noundef %.016) #11 ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.y = phi i32 [ %.pre, %._crit_edge ], [ %i.w, %bb.h ]
  %i.z = icmp sgt i32 %i.y, -1
  %i.aa = zext i1 %i.z to i32
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.pollfd, align 4             ; 5 uses
  %8 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = icmp sgt i64 %6, 0                       ; 2 uses
  %i.b = icmp ne i32 %4, 0
  %or.cond = or i1 %i.b, %i.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.not.i64 = icmp eq i32 %1, 0
  %i.d = select i1 %.not.i64, i16 1, i16 4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %9 = trunc nuw nsw i32 %4 to i16
  %10 = shl nuw nsw i16 %9, 3
  %spec.select.i65 = or disjoint i16 %10, %i.d    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.not61 = icmp eq ptr %5, null                  ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 40         ; 3 uses
  br i1 %or.cond, label %.split90.us, label %.split90

.split90.us:                                      ; preds = %bb.a, %.split90.us.backedge
  %.045.us = phi i64 [ %.247.us, %.split90.us.backedge ], [ 0, %bb.a ] ; 3 uses
  %.043.us = phi i32 [ %.2.us, %.split90.us.backedge ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split90.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.h = load atomic i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %internal_select.exit70.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load atomic i32, ptr %i.c monotonic, align 4
  store i32 %i.j, ptr %7, align 4, !tbaa !207
  store i16 %spec.select.i65, ptr %i.e, align 4, !tbaa !208
  %i.k = call i64 @_PyTime_AsMilliseconds(i64 noundef %6, i32 noundef 1) #11
  %i.l = call i64 @llvm.smax.i64(i64 %i.k, i64 -1)
  %spec.store.select1.i67.us = call i64 @llvm.smin.i64(i64 %i.l, i64 2147483647)
  %i.m = call ptr @PyEval_SaveThread() #11
  %i.n = trunc nsw i64 %spec.store.select1.i67.us to i32
  %i.o = call i32 @poll(ptr noundef nonnull %7, i64 noundef 1, i32 noundef %i.n) #11 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.m) #11
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %internal_select.exit70.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.o, 0
  %..i68.us = zext i1 %i.q to i32
  br label %internal_select.exit70.us

internal_select.exit70.us:                        ; preds = %bb.d, %bb.c, %bb.b
  %.0.i69.us = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ %..i68.us, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.j

bb.e:                                             ; preds = %.split90.us
  %.not.us = icmp eq i32 %.043.us, 0
  br i1 %.not.us, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i64 @_PyDeadline_Get(i64 noundef %.045.us) #11 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.g, label %.thread75

.thread.us:                                       ; preds = %bb.e
  %i.t = call i64 @_PyDeadline_Init(i64 noundef %6) #11
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %bb.f
  %.04174.us = phi i64 [ %6, %.thread.us ], [ %i.r, %bb.f ]
  %.14673.us = phi i64 [ %i.t, %.thread.us ], [ %.045.us, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.u = load atomic i32, ptr %i.c monotonic, align 4
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %internal_select.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load atomic i32, ptr %i.c monotonic, align 4
  store i32 %i.w, ptr %8, align 4, !tbaa !207
  store i16 %spec.select.i65, ptr %i.f, align 4, !tbaa !208
  %i.x = call i64 @_PyTime_AsMilliseconds(i64 noundef %.04174.us, i32 noundef 1) #11
  %i.y = call i64 @llvm.smax.i64(i64 %i.x, i64 -1)
  %spec.store.select1.i.us = call i64 @llvm.smin.i64(i64 %i.y, i64 2147483647)
  %i.z = call ptr @PyEval_SaveThread() #11
  %i.aa = trunc nsw i64 %spec.store.select1.i.us to i32
  %i.ab = call i32 @poll(ptr noundef nonnull %8, i64 noundef 1, i32 noundef %i.aa) #11 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.z) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %internal_select.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.ab, 0
  %..i.us = zext i1 %i.ad to i32
  br label %internal_select.exit.us

internal_select.exit.us:                          ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.us = phi i32 [ -1, %bb.h ], [ 0, %bb.g ], [ %..i.us, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.j

bb.j:                                             ; preds = %internal_select.exit.us, %internal_select.exit70.us
  %.247.us = phi i64 [ %.045.us, %internal_select.exit70.us ], [ %.14673.us, %internal_select.exit.us ]
  %.2.us = phi i32 [ %.043.us, %internal_select.exit70.us ], [ 1, %internal_select.exit.us ]
  %.1.us = phi i32 [ %.0.i69.us, %internal_select.exit70.us ], [ %.0.i.us, %internal_select.exit.us ]
  switch i32 %.1.us, label %bb.n [
    i32 -1, label %bb.k
    i32 1, label %.thread75
  ]

bb.k:                                             ; preds = %bb.j
  %.pre = tail call ptr @__errno_location() #12   ; 2 uses
  br i1 %.not61, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.pre, align 4, !tbaa !9
  store i32 %i.ae, ptr %5, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.l
  %i.af = load i32, ptr %.pre, align 4, !tbaa !9
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %bb.m, label %.split97.us

bb.m:                                             ; preds = %._crit_edge
  %i.ah = call i32 @PyErr_CheckSignals() #11
  %.not62.us = icmp eq i32 %i.ah, 0
  br i1 %.not62.us, label %.split90.us.backedge, label %.split99.us

bb.n:                                             ; preds = %bb.j
  br i1 %.not61, label %.split.us.us, label %.split.us91

.split.us91:                                      ; preds = %bb.n, %bb.p
  %i.ai = call ptr @PyEval_SaveThread() #11
  %i.aj = call i32 %2(ptr noundef %0, ptr noundef %3) #11
  call void @PyEval_RestoreThread(ptr noundef %i.ai) #11
  %.not56.us92 = icmp eq i32 %i.aj, 0
  br i1 %.not56.us92, label %bb.o, label %.split83.us.thread

bb.o:                                             ; preds = %.split.us91
  %i.ak = tail call ptr @__errno_location() #12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 3 uses
  store i32 %i.al, ptr %5, align 4, !tbaa !9
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.p, label %.split85.us94

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 @PyErr_CheckSignals() #11
  %.not58.us93 = icmp eq i32 %i.an, 0
  br i1 %.not58.us93, label %.split.us91, label %.split88.us

.split.us.us:                                     ; preds = %bb.n, %bb.r
  %i.ao = call ptr @PyEval_SaveThread() #11
  %i.ap = call i32 %2(ptr noundef %0, ptr noundef %3) #11
  call void @PyEval_RestoreThread(ptr noundef %i.ao) #11
  %.not56.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not56.us.us, label %bb.q, label %.split83.us

bb.q:                                             ; preds = %.split.us.us
  %i.aq = tail call ptr @__errno_location() #12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.r, label %.split85.us94

bb.r:                                             ; preds = %bb.q
  %i.at = call i32 @PyErr_CheckSignals() #11
  %.not58.us.us = icmp eq i32 %i.at, 0
  br i1 %.not58.us.us, label %.split.us.us, label %.critedge

.split85.us94:                                    ; preds = %bb.o, %bb.q
  %.us-phi.us = phi i32 [ %i.ar, %bb.q ], [ %i.al, %bb.o ]
  %i.au = load i64, ptr %i.g, align 8, !tbaa !76
  %i.av = icmp sgt i64 %i.au, 0
  %i.aw = icmp eq i32 %.us-phi.us, 11
  %or.cond63.us = and i1 %i.aw, %i.av
  br i1 %or.cond63.us, label %.split90.us.backedge, label %.split105.us

.split90.us.backedge:                             ; preds = %.split85.us94, %bb.m
  br label %.split90.us

.split90:                                         ; preds = %bb.a
  br i1 %.not61, label %.split.us.us107, label %.split

.split.us.us107:                                  ; preds = %.split90, %.split.us.us107.backedge
  %i.ax = tail call ptr @PyEval_SaveThread() #11
  %i.ay = tail call i32 %2(ptr noundef %0, ptr noundef %3) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.ax) #11
  %.not56.us.us108 = icmp eq i32 %i.ay, 0
  br i1 %.not56.us.us108, label %bb.s, label %.split83.us

bb.s:                                             ; preds = %.split.us.us107
  %i.az = tail call ptr @__errno_location() #12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9  ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 4
  br i1 %i.bb, label %bb.t, label %.split85.us.us110

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call i32 @PyErr_CheckSignals() #11
  %.not58.us.us109 = icmp eq i32 %i.bc, 0
  br i1 %.not58.us.us109, label %.split.us.us107.backedge, label %.critedge

.split.us.us107.backedge:                         ; preds = %bb.t, %.split85.us.us110
  br label %.split.us.us107

.split85.us.us110:                                ; preds = %bb.s
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !76
  %i.be = icmp sgt i64 %i.bd, 0
  %i.bf = icmp eq i32 %i.ba, 11
  %or.cond63.us115 = and i1 %i.bf, %i.be
  br i1 %or.cond63.us115, label %.split.us.us107.backedge, label %.critedge120

.split99.us:                                      ; preds = %bb.m
  br i1 %.not61, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.split99.us
  store i32 -1, ptr %5, align 4, !tbaa !9
  br label %.critedge

.split97.us:                                      ; preds = %._crit_edge
  %i.bg = getelementptr i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = call ptr %i.bh() #11                    ; 0 uses
  br label %.critedge

.thread75:                                        ; preds = %bb.f, %bb.j
  br i1 %.not61, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread75
  store i32 11, ptr %5, align 4, !tbaa !9
  br label %.critedge

bb.w:                                             ; preds = %.thread75
  %i.bj = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bj, ptr noundef nonnull @.str.566) #11
  br label %.critedge

.split:                                           ; preds = %.split90, %.split.backedge
  %i.bk = tail call ptr @PyEval_SaveThread() #11
  %i.bl = tail call i32 %2(ptr noundef %0, ptr noundef %3) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.bk) #11
  %.not56 = icmp eq i32 %i.bl, 0
  br i1 %.not56, label %bb.x, label %.split83.us.thread

.split83.us:                                      ; preds = %.split.us.us107, %.split.us.us
  br i1 %.not61, label %.critedge, label %.split83.us.thread

.split83.us.thread:                               ; preds = %.split, %.split.us91, %.split83.us
  store i32 0, ptr %5, align 4, !tbaa !9
  br label %.critedge

bb.x:                                             ; preds = %.split
  %i.bm = tail call ptr @__errno_location() #12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9  ; 3 uses
  store i32 %i.bn, ptr %5, align 4, !tbaa !9
  %i.bo = icmp eq i32 %i.bn, 4
  br i1 %i.bo, label %bb.y, label %.split85

bb.y:                                             ; preds = %bb.x
  %i.bp = tail call i32 @PyErr_CheckSignals() #11
  %.not58 = icmp eq i32 %i.bp, 0
  br i1 %.not58, label %.split.backedge, label %.split88.us

.split.backedge:                                  ; preds = %bb.y, %.split85
  br label %.split

.split88.us:                                      ; preds = %bb.y, %bb.p
  store i32 -1, ptr %5, align 4, !tbaa !9
  br label %.critedge

.split85:                                         ; preds = %bb.x
  %i.bq = load i64, ptr %i.g, align 8, !tbaa !76
  %i.br = icmp sgt i64 %i.bq, 0
  %i.bs = icmp eq i32 %i.bn, 11
  %or.cond63 = and i1 %i.bs, %i.br
  br i1 %or.cond63, label %.split.backedge, label %.critedge

.split105.us:                                     ; preds = %.split85.us94
  br i1 %.not61, label %.critedge120, label %.critedge

.critedge120:                                     ; preds = %.split85.us.us110, %.split105.us
  %i.bt = getelementptr i8, ptr %0, i64 32
end_hunk_0
