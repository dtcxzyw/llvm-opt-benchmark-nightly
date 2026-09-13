Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/tracemalloc?download=true
inline.NumInlined: 133
inline.NumDeleted: 42
begin_hunk_0_@traceback_new:bb.a
  br i1 %i.ah, label %_PyFrame_SafeGetLasti.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %.016.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp ult i64 %.val23.i.i, 256
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i, label %_PyFrame_SafeGetLasti.exit.thread.i.i, label %switch.early.test.i.i.i.i.i

switch.early.test.i.i.i.i.i:                      ; preds = %bb.d
  switch i64 %.val23.i.i, label %_PyMem_IsPtrFreed.exit.i.i.i.i [
    i64 -144680345676153347, label %_PyFrame_SafeGetLasti.exit.thread.i.i
    i64 -2459565876494606883, label %_PyFrame_SafeGetLasti.exit.thread.i.i
    i64 -3617008641903833651, label %_PyFrame_SafeGetLasti.exit.thread.i.i
  ]

_PyMem_IsPtrFreed.exit.i.i.i.i:                   ; preds = %switch.early.test.i.i.i.i.i
  %.not.i.i.i12.i = icmp ugt i64 %.val23.i.i, -257
  br i1 %.not.i.i.i12.i, label %_PyFrame_SafeGetLasti.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_PyMem_IsPtrFreed.exit.i.i.i.i
  %i.am = tail call i32 @_PyObject_IsFreed(ptr noundef %i.ae) #13
  %.not10.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not10.i.i.i.i, label %bb.f, label %_PyFrame_SafeGetLasti.exit.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !216
  %.not13.i.i.i.i = icmp eq ptr %.val.i.i.i.i, @PyCode_Type
  br i1 %.not13.i.i.i.i, label %_PyFrame_SafeGetLasti.exit.i.i, label %_PyFrame_SafeGetLasti.exit.thread.i.i

_PyFrame_SafeGetLasti.exit.i.i:                   ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.ae, i64 208
  %i.ap = getelementptr i8, ptr %.016.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !248
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.g, label %_PyFrame_SafeGetLasti.exit.thread.i.i

bb.g:                                             ; preds = %_PyFrame_SafeGetLasti.exit.i.i
  %i.aw = and i32 %i.au, 2147483646
  %i.ax = tail call i32 @_PyCode_SafeAddr2Line(ptr noundef nonnull %i.ae, i32 noundef %i.aw) #13
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  br label %_PyFrame_SafeGetLasti.exit.thread.i.i

_PyFrame_SafeGetLasti.exit.thread.i.i:            ; preds = %bb.g, %_PyFrame_SafeGetLasti.exit.i.i, %bb.f, %bb.e, %_PyMem_IsPtrFreed.exit.i.i.i.i, %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %switch.early.test.i.i.i.i.i, %bb.d, %bb.c
  %.018.i.i = phi i32 [ %i.ay, %bb.g ], [ 0, %_PyFrame_SafeGetLasti.exit.i.i ], [ 0, %switch.early.test.i.i.i.i.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %_PyMem_IsPtrFreed.exit.i.i.i.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %switch.early.test.i.i.i.i.i ], [ 0, %switch.early.test.i.i.i.i.i ]
  %i.az = getelementptr i8, ptr %i.ac, i64 8
  store i32 %.018.i.i, ptr %i.az, align 1, !tbaa !198
  %i.ba = getelementptr i8, ptr %i.ae, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !255 ; 10 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %tracemalloc_get_frame.exit.i, label %bb.h

bb.h:                                             ; preds = %_PyFrame_SafeGetLasti.exit.thread.i.i
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val.i.i = load ptr, ptr %i.bd, align 8, !tbaa !216
  %i.be = getelementptr i8, ptr %.val.i.i, i64 168
  %.val24.i.i = load i64, ptr %i.be, align 8, !tbaa !221
  %i.bf = and i64 %.val24.i.i, 268435456
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %tracemalloc_get_frame.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10512), align 8, !tbaa !188 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !258
  %i.bj = tail call ptr %i.bi(ptr noundef %i.bg, ptr noundef nonnull %i.bb) #13, !inline_history !241 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bj, null
  br i1 %.not22.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !262
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10512), align 8, !tbaa !188
  %i.bn = load i32, ptr %i.bb, align 8, !tbaa !201 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, -1073741825
  br i1 %i.bo, label %_Py_NewRef.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add nuw i32 %i.bn, 1
  store i32 %i.bp, ptr %i.bb, align 8, !tbaa !201
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.l, %bb.k
  %i.bq = tail call i32 @_Py_hashtable_set(ptr noundef %i.bm, ptr noundef nonnull %i.bb, ptr noundef null) #13
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_Py_NewRef.exit.i.i
  %i.bs = load i32, ptr %i.bb, align 8, !tbaa !201 ; 2 uses
  %.not.i.i11.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i.i11.i, label %bb.n, label %tracemalloc_get_frame.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.bb, align 8, !tbaa !201
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %tracemalloc_get_frame.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #13
  br label %tracemalloc_get_frame.exit.i

bb.p:                                             ; preds = %_Py_NewRef.exit.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.bl, %bb.j ], [ %i.bb, %_Py_NewRef.exit.i.i ]
  store ptr %.0.i.i, ptr %i.ac, align 1, !tbaa !197
  br label %tracemalloc_get_frame.exit.i

tracemalloc_get_frame.exit.i:                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.h, %_PyFrame_SafeGetLasti.exit.thread.i.i
  %i.bv = load i16, ptr %i.b, align 1, !tbaa !195
  %i.bw = add i16 %i.bv, 1                        ; 2 uses
  store i16 %i.bw, ptr %i.b, align 1, !tbaa !195
  %.pre = load i16, ptr %i.c, align 1, !tbaa !195
  br label %bb.q

bb.q:                                             ; preds = %tracemalloc_get_frame.exit.i, %_PyFrame_GetFirstComplete.exit.i
  %i.bx = phi i16 [ %.pre, %tracemalloc_get_frame.exit.i ], [ %i.w, %_PyFrame_GetFirstComplete.exit.i ] ; 2 uses
  %i.by = phi i16 [ %i.bw, %tracemalloc_get_frame.exit.i ], [ %i.x, %_PyFrame_GetFirstComplete.exit.i ] ; 3 uses
  %.not10.i = icmp eq i16 %i.bx, -1
  br i1 %.not10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = add nuw i16 %i.bx, 1                    ; 2 uses
  store i16 %i.bz, ptr %i.c, align 1, !tbaa !195
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = phi i16 [ %i.bz, %bb.r ], [ -1, %bb.q ]
  %i.cb = getelementptr i8, ptr %.016.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !252 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cc, null
  br i1 %.not7.i.i, label %traceback_get_frames.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %_PyFrame_IsIncomplete.exit.thread.i.i
  %.08.i.i = phi ptr [ %i.cr, %_PyFrame_IsIncomplete.exit.thread.i.i ], [ %i.cc, %bb.s ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.08.i.i, i64 74
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !247 ; 2 uses
  %i.cf = icmp sgt i8 %i.ce, 2
  br i1 %i.cf, label %_PyFrame_IsIncomplete.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %.not.i.i13.i = icmp eq i8 %i.ce, 1
  br i1 %.not.i.i13.i, label %_PyFrame_GetFirstComplete.exit.i.loopexit, label %_PyFrame_IsIncomplete.exit.i.i, !llvm.loop !242

_PyFrame_IsIncomplete.exit.i.i:                   ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %.08.i.i, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !248
  %.val7.i.i.i = load i64, ptr %.08.i.i, align 8
  %i.ci = and i64 %.val7.i.i.i, -2
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 208
  %i.cl = getelementptr i8, ptr %i.cj, i64 192
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !251
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [2 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = icmp ult ptr %i.ch, %i.co
  br i1 %i.cp, label %_PyFrame_IsIncomplete.exit.thread.i.i, label %_PyFrame_GetFirstComplete.exit.i.loopexit, !llvm.loop !242

_PyFrame_IsIncomplete.exit.thread.i.i:            ; preds = %_PyFrame_IsIncomplete.exit.i.i, %.lr.ph.i.i
  %i.cq = getelementptr i8, ptr %.08.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !252 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.cr, null
  br i1 %.not.i14.i, label %traceback_get_frames.exit, label %.lr.ph.i.i, !llvm.loop !240

traceback_get_frames.exit:                        ; preds = %bb.s, %_PyFrame_IsIncomplete.exit.thread.i.i
  %i.cs = icmp eq i16 %i.by, 0
  br i1 %i.cs, label %traceback_get_frames.exit.thread, label %.lr.ph.preheader.i

traceback_get_frames.exit.thread:                 ; preds = %_PyFrame_IsIncomplete.exit.thread.i.i.i, %bb.a, %traceback_get_frames.exit
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10552), align 8, !tbaa !194
  br label %.critedge

.lr.ph.preheader.i:                               ; preds = %traceback_get_frames.exit
  %i.cu = zext i16 %i.by to i64
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.cu, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i25 ] ; 2 uses
  %.pn23.i = phi ptr [ %i.a, %.lr.ph.preheader.i ], [ %.0.i, %.lr.ph.i25 ] ; 2 uses
  %.01622.i = phi i64 [ 1000003, %.lr.ph.preheader.i ], [ %i.de, %.lr.ph.i25 ] ; 2 uses
  %.01820.i = phi i64 [ 3430008, %.lr.ph.preheader.i ], [ %i.dc, %.lr.ph.i25 ]
  %.0.i = getelementptr i8, ptr %.pn23.i, i64 12  ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cv = load ptr, ptr %.0.i, align 1, !tbaa !197
  %i.cw = tail call i64 @PyObject_Hash(ptr noundef %i.cv) #13
  %i.cx = getelementptr i8, ptr %.pn23.i, i64 20
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !198
  %i.cz = zext i32 %i.cy to i64
  %i.da = xor i64 %i.cw, %.01820.i
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, %.01622.i                ; 2 uses
  %reass.add.i.a = shl nuw nsw i64 %indvars.iv.next.i, 1
  %i.dd = add i64 %.01622.i, 82520
  %i.de = add i64 %i.dd, %reass.add.i.a
  %i.df = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.df, label %.lr.ph.i25, label %traceback_hash.exit, !llvm.loop !243

traceback_hash.exit:                              ; preds = %.lr.ph.i25
  %i.dg = load i16, ptr %i.c, align 1, !tbaa !195
  %i.dh = zext i16 %i.dg to i64
  %i.di = xor i64 %i.dc, %i.dh
  %i.dj = add i64 %i.di, 97531
  store i64 %i.dj, ptr %i.a, align 1, !tbaa !199
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10528), align 8, !tbaa !189 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !258
  %i.dn = tail call ptr %i.dm(ptr noundef %i.dk, ptr noundef nonnull %i.a) #13, !inline_history !244 ; 2 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %traceback_hash.exit
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !262
  br label %.critedge

bb.v:                                             ; preds = %traceback_hash.exit
  %i.dq = load i16, ptr %i.b, align 1, !tbaa !195
  %i.dr = zext i16 %i.dq to i64
  %i.ds = mul nuw nsw i64 %i.dr, 12
  %i.dt = add nuw nsw i64 %i.ds, 12               ; 2 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10416), align 8, !tbaa !192
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10408), align 8, !tbaa !193
  %i.dw = tail call ptr %i.du(ptr noundef %i.dv, i64 noundef range(i64 12, 786433) %i.dt) #13, !inline_history !0 ; 5 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dw, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.dt, i1 false)
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10528), align 8, !tbaa !189
  %i.dz = tail call i32 @_Py_hashtable_set(ptr noundef %i.dy, ptr noundef nonnull %i.dw, ptr noundef null) #13
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10440), align 8, !tbaa !203
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10408), align 8, !tbaa !193
  tail call void %i.eb(ptr noundef %i.ec, ptr noundef nonnull %i.dw) #13, !inline_history !223
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.x, %bb.u, %bb.w, %traceback_get_frames.exit.thread
  %.122 = phi ptr [ %i.ct, %traceback_get_frames.exit.thread ], [ %i.dw, %bb.w ], [ %i.dp, %bb.u ], [ null, %bb.x ], [ null, %bb.v ]
  ret ptr %.122
}

declare i32 @_Py_hashtable_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare i32 @_PyCode_SafeAddr2Line(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyObject_IsFreed(ptr noundef) local_unnamed_addr #1

declare ptr @_Py_hashtable_steal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyThread_tss_delete(ptr noundef) local_unnamed_addr #1

declare i32 @PyThread_tss_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @tracemalloc_copy_trace(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10416), align 8, !tbaa !192
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10408), align 8, !tbaa !193
  %i.c = tail call ptr %i.a(ptr noundef %i.b, i64 noundef 16) #13, !inline_history !0 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !264
  %i.e = tail call i32 @_Py_hashtable_set(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %i.c) #13
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10440), align 8, !tbaa !203
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10408), align 8, !tbaa !193
  tail call void %i.g(ptr noundef %i.h, ptr noundef nonnull %i.c) #13, !inline_history !223
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @tracemalloc_copy_domain(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @__const.hashtable_new.hashtable_alloc, i64 16, i1 false)
  %i.a = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @_Py_hashtable_hash_ptr, ptr noundef nonnull @_Py_hashtable_compare_direct, ptr noundef null, ptr noundef nonnull @raw_free, ptr noundef nonnull %4) #13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %tracemalloc_copy_traces.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @_Py_hashtable_foreach(ptr noundef %2, ptr noundef nonnull @tracemalloc_copy_trace, ptr noundef nonnull %i.a) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %tracemalloc_copy_traces.exit, label %tracemalloc_copy_traces.exit.thread.sink.split

tracemalloc_copy_traces.exit:                     ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 4294967295
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = call i32 @_Py_hashtable_set(ptr noundef %3, ptr noundef %i.f, ptr noundef nonnull %i.a) #13
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %tracemalloc_copy_traces.exit.thread.sink.split, label %tracemalloc_copy_traces.exit.thread

tracemalloc_copy_traces.exit.thread.sink.split:   ; preds = %tracemalloc_copy_traces.exit, %bb.b
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.a) #13
  br label %tracemalloc_copy_traces.exit.thread

tracemalloc_copy_traces.exit.thread:              ; preds = %tracemalloc_copy_traces.exit.thread.sink.split, %bb.a, %tracemalloc_copy_traces.exit
  %.0 = phi i32 [ 0, %tracemalloc_copy_traces.exit ], [ -1, %bb.a ], [ -1, %tracemalloc_copy_traces.exit.thread.sink.split ]
  ret i32 %.0
}

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null, ptr @raw_free}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !10, i64 0}
!16 = !{!"_runtime_state", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_interpreter_state", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120}
!18 = !{!"_thread_state", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112}
!19 = !{!"", !15, i64 0}
!20 = !{!"_interpreter_frame", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!21 = !{!"_code_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!22 = !{!"_pyobject", !15, i64 0, !15, i64 8}
!23 = !{!"_type_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!24 = !{!"_tuple_object", !15, i64 0, !15, i64 8, !15, i64 16}
!25 = !{!"_list_object", !15, i64 0, !15, i64 8, !15, i64 16}
!26 = !{!"_set_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!27 = !{!"_dict_object", !15, i64 0, !15, i64 8, !15, i64 16}
!28 = !{!"_float_object", !15, i64 0, !15, i64 8}
!29 = !{!"_long_object", !15, i64 0, !15, i64 8, !15, i64 16}
!30 = !{!"_bytes_object", !15, i64 0, !15, i64 8, !15, i64 16}
!31 = !{!"_unicode_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!32 = !{!"_gc", !15, i64 0, !15, i64 8, !15, i64 16}
!33 = !{!"_gen_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!34 = !{!"_llist_node", !15, i64 0, !15, i64 8}
!35 = !{!"_debugger_support", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!36 = !{!"_Py_DebugOffsets", !10, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 48, !18, i64 176, !19, i64 296, !20, i64 304, !21, i64 368, !22, i64 456, !23, i64 472, !24, i64 504, !25, i64 528, !26, i64 552, !27, i64 584, !28, i64 608, !29, i64 624, !30, i64 648, !31, i64 672, !32, i64 704, !33, i64 728, !34, i64 760, !35, i64 776}
!37 = !{!"p1 _ZTS3_ts", !13, i64 0}
!38 = !{!"PyMutex", !10, i64 0}
!39 = !{!"p1 _ZTS3_is", !13, i64 0}
!40 = !{!"pyinterpreters", !38, i64 0, !39, i64 8, !39, i64 16, !15, i64 24}
!41 = !{!"p1 _ZTS12_xid_regitem", !13, i64 0}
!42 = !{!"", !11, i64 0, !11, i64 4, !38, i64 8, !41, i64 16}
end_hunk_0
