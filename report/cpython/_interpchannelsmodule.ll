Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_interpchannelsmodule?download=true
inline.NumInlined: 221
inline.NumDeleted: 106
begin_hunk_0_@channelsmod_close:bb.a
  store i32 0, ptr %i.bb, align 8, !tbaa !76
  %i.bc = add i64 %i.ba, -1                       ; 2 uses
  %.1.i25.i.i.i = load ptr, ptr %.116.i24.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not10.i26.i.i.i = icmp eq ptr %.1.i25.i.i.i, null
  br i1 %.not10.i26.i.i.i, label %._crit_edge19.i27.i.i.i, label %bb.n, !llvm.loop !140

._crit_edge19.i27.i.i.i:                          ; preds = %bb.n
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !81
  br label %.thread7.i.i

bb.o:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !39
  call void @PyThread_release_lock(ptr noundef %i.bd) #7
  br i1 %i.v, label %bb.p, label %channel_close.exit

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.bf = getelementptr i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  %.not48.i.i = icmp eq ptr %i.bg, null
  br i1 %.not48.i.i, label %bb.q, label %channel_close.exit

bb.q:                                             ; preds = %bb.p
  call void @PyErr_Clear() #7
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !55  ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %channel_close.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bk = call i32 @PyThread_acquire_lock(ptr noundef %i.bj, i32 noundef 1) #7 ; 0 uses
  %i.bl = getelementptr i8, ptr %i.bh, i64 40     ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  %.not.i52.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i52.i.i, label %bb.s, label %_channel_set_closing.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bn = call ptr @PyMem_RawMalloc(i64 noundef 8) #7 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !51
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_channel_set_closing.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.014.i.i.i, ptr %i.bn, align 8, !tbaa !88
  br label %_channel_set_closing.exit.i.i

_channel_set_closing.exit.i.i:                    ; preds = %bb.t, %bb.s, %bb.r
  %.not49.i.i = phi i32 [ 0, %bb.t ], [ -1, %bb.s ], [ -3, %bb.r ]
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !39
  call void @PyThread_release_lock(ptr noundef %i.bp) #7
  br label %channel_close.exit

.thread7.i.i:                                     ; preds = %._crit_edge19.i27.i.i.i, %bb.m, %._crit_edge19.i.i.i.i, %bb.i
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !39
  call void @PyThread_release_lock(ptr noundef %i.bq) #7
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !55
  call fastcc void @_channel_free(ptr noundef %i.br)
  store ptr null, ptr %i.r, align 8, !tbaa !55
  br label %channel_close.exit

channel_close.exit:                               ; preds = %bb.c, %bb.b, %_channelref_find.exit.i.i, %bb.e, %.thread.i.i, %bb.o, %bb.p, %bb.q, %_channel_set_closing.exit.i.i, %.thread7.i.i
  %.3.i.i = phi i32 [ -3, %bb.e ], [ %.not49.i.i, %_channel_set_closing.exit.i.i ], [ -3, %_channelref_find.exit.i.i ], [ 0, %.thread7.i.i ], [ 0, %bb.q ], [ -2, %bb.b ], [ -3, %bb.p ], [ -6, %bb.o ], [ -3, %.thread.i.i ], [ -2, %bb.c ]
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  call void @PyThread_release_lock(ptr noundef %i.bs) #7
  %i.bt = call fastcc i32 @handle_channel_error(i32 noundef %.3.i.i, ptr noundef %0, i64 noundef %i.f)
  %.not7 = icmp eq i32 %i.bt, 0
  %_Py_NoneStruct. = select i1 %.not7, ptr @_Py_NoneStruct, ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %channel_close.exit
  %.1 = phi ptr [ %_Py_NoneStruct., %channel_close.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @channelsmod_release(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.channel_id_converter_data, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.e = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.49, ptr noundef nonnull @channelsmod_release.kwlist, ptr noundef nonnull @channel_id_converter, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load i32, ptr %i.b, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 4, !tbaa !12
  store i32 1, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ 1, %bb.c ], [ %i.i, %bb.b ]    ; 2 uses
  %i.l = phi i32 [ 1, %bb.c ], [ %i.g, %bb.b ]    ; 2 uses
  %i.m = call ptr @PyInterpreterState_Get() #7    ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %channel_release.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.m) #7 ; 4 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  %i.q = call i32 @PyThread_acquire_lock(ptr noundef %i.p, i32 noundef 1) #7 ; 0 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not12.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.014.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.r, %bb.e ] ; 3 uses
  %i.s = load i64, ptr %.014.i.i.i, align 8, !tbaa !54
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_channelref_find.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr i8, ptr %.014.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_channelref_find.exit.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr i8, ptr %.014.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_channels_lookup.exit.i, label %bb.g

bb.g:                                             ; preds = %_channelref_find.exit.i.i
  %i.z = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50
  %.not21.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not21.i.i, label %_channels_lookup.exit.i, label %_channelref_find.exit.thread.i.i

_channelref_find.exit.thread.i.i:                 ; preds = %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_channels_lookup.exit.thread18.i, label %_channels_lookup.exit.thread.i

_channels_lookup.exit.thread18.i:                 ; preds = %_channelref_find.exit.thread.i.i
  call void @PyThread_release_lock(ptr noundef null) #7
  br label %_channels_lookup.exit.thread.i

_channels_lookup.exit.i:                          ; preds = %bb.f, %bb.g, %_channelref_find.exit.i.i, %bb.e
  %.01717.i.ph.i = phi i32 [ -2, %bb.e ], [ -3, %bb.g ], [ -3, %_channelref_find.exit.i.i ], [ -2, %bb.f ]
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  br label %.sink.split.i

_channels_lookup.exit.thread.i:                   ; preds = %_channels_lookup.exit.thread18.i, %_channelref_find.exit.thread.i.i
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.af = call i32 @PyThread_acquire_lock(ptr noundef %i.ae, i32 noundef 1) #7 ; 0 uses
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !50
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %_channel_release_interpreter.exit.i, label %bb.h

bb.h:                                             ; preds = %_channels_lookup.exit.thread.i
  %i.ah = sub i32 %i.l, %i.k
  %i.ai = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 8 uses
  %i.ak = icmp sgt i32 %i.ah, -1
  br i1 %i.ak, label %bb.i, label %.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not12.i.i.i.i, label %.loopexit41.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.014.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.am, %bb.i ] ; 4 uses
  %i.an = getelementptr i8, ptr %.014.i.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = icmp eq i64 %i.ao, %i.o
  br i1 %i.ap, label %.loopexit40.loopexit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = load ptr, ptr %.014.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %.loopexit41.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

.loopexit41.i.i.i:                                ; preds = %bb.j, %bb.i
  %.09.lcssa.i.ph.i.i.i = phi ptr [ null, %bb.i ], [ %.014.i.i.i.i, %bb.j ] ; 2 uses
  %i.ar = call ptr @PyMem_RawMalloc(i64 noundef 24) #7 ; 6 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_channelends_add.exit.thread.i.i.i, label %bb.k

_channelends_add.exit.thread.i.i.i:               ; preds = %.loopexit41.i.i.i
  %i.at = call ptr @PyErr_NoMemory() #7           ; 0 uses
  br label %_channel_release_interpreter.exit.i

bb.k:                                             ; preds = %.loopexit41.i.i.i
  store ptr null, ptr %i.ar, align 8, !tbaa !75
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  store i64 %i.o, ptr %i.au, align 8, !tbaa !74
  %i.av = icmp eq ptr %.09.lcssa.i.ph.i.i.i, null
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !94
  br label %_channelends_add.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ar, ptr %.09.lcssa.i.ph.i.i.i, align 8, !tbaa !75
  br label %_channelends_add.exit.i.i.i

_channelends_add.exit.i.i.i:                      ; preds = %bb.m, %bb.l
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !93
  br label %.loopexit40.i.i.i

.loopexit40.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !93
  %i.ax = add i64 %.pre.i.i.i, -1
  br label %.loopexit40.i.i.i

.loopexit40.i.i.i:                                ; preds = %.loopexit40.loopexit.i.i.i, %_channelends_add.exit.i.i.i
  %i.ay = phi i64 [ %i.aw, %_channelends_add.exit.i.i.i ], [ %i.ax, %.loopexit40.loopexit.i.i.i ]
  %.0.i.i.i = phi ptr [ %i.ar, %_channelends_add.exit.i.i.i ], [ %.014.i.i.i.i, %.loopexit40.loopexit.i.i.i ]
  %i.az = getelementptr i8, ptr %.0.i.i.i, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.aj, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.l, %i.k
  br i1 %i.ba, label %.thread.i.i.i, label %bb.r

.thread.i.i.i:                                    ; preds = %.loopexit40.i.i.i, %bb.h
  %i.bb = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 2 uses
  %.not12.i23.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not12.i23.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i24.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.thread.i.i.i, %bb.n
  %.014.i25.i.i.i = phi ptr [ %i.bg, %bb.n ], [ %i.bc, %.thread.i.i.i ] ; 4 uses
  %i.bd = getelementptr i8, ptr %.014.i25.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !74
  %i.bf = icmp eq i64 %i.be, %i.o
  br i1 %i.bf, label %_channelend_find.exit30.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i24.i.i.i
  %i.bg = load ptr, ptr %.014.i25.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i27.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i24.i.i.i, !llvm.loop !2

.loopexit.i.i.i:                                  ; preds = %bb.n, %.thread.i.i.i
  %.09.lcssa.i28.ph.i.i.i = phi ptr [ null, %.thread.i.i.i ], [ %.014.i25.i.i.i, %bb.n ] ; 2 uses
  %i.bh = call ptr @PyMem_RawMalloc(i64 noundef 24) #7 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_channelends_add.exit32.thread.i.i.i, label %bb.o

_channelends_add.exit32.thread.i.i.i:             ; preds = %.loopexit.i.i.i
  %i.bj = call ptr @PyErr_NoMemory() #7           ; 0 uses
  br label %_channel_release_interpreter.exit.i

bb.o:                                             ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.bh, align 8, !tbaa !75
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  store i64 %i.o, ptr %i.bk, align 8, !tbaa !74
  %i.bl = icmp eq ptr %.09.lcssa.i28.ph.i.i.i, null
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !80
  br label %_channelends_add.exit32.i.i.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.bh, ptr %.09.lcssa.i28.ph.i.i.i, align 8, !tbaa !75
  br label %_channelends_add.exit32.i.i.i

_channelends_add.exit32.i.i.i:                    ; preds = %bb.q, %bb.p
  %i.bm = getelementptr i8, ptr %i.aj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !81
  br label %_channelend_find.exit30.i.i.i

_channelend_find.exit30.loopexit.i.i.i:           ; preds = %.lr.ph.i24.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.aj, i64 8
  %.pre46.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !81
  %i.bo = add i64 %.pre46.i.i.i, -1
  br label %_channelend_find.exit30.i.i.i

_channelend_find.exit30.i.i.i:                    ; preds = %_channelend_find.exit30.loopexit.i.i.i, %_channelends_add.exit32.i.i.i
  %i.bp = phi i64 [ %i.bn, %_channelends_add.exit32.i.i.i ], [ %i.bo, %_channelend_find.exit30.loopexit.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.bh, %_channelends_add.exit32.i.i.i ], [ %.014.i25.i.i.i, %_channelend_find.exit30.loopexit.i.i.i ]
  %i.bq = getelementptr i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.bq, align 8, !tbaa !76
  %i.br = getelementptr i8, ptr %i.aj, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !81
  br label %bb.r

bb.r:                                             ; preds = %_channelend_find.exit30.i.i.i, %.loopexit40.i.i.i
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93
  %.not.i.i12.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i12.i, label %bb.s, label %_channelends_is_open.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !81
  %.not4.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not4.i.i.i, label %bb.t, label %_channelends_is_open.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %i.bs, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr i8, ptr %i.bs, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_channelends_is_open.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %_channelends_is_open.exit.i.i

_channelends_is_open.exit.i.i:                    ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.0.i9.i.i = phi i32 [ 0, %bb.v ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.u ]
  store i32 %.0.i9.i.i, ptr %i.z, align 8, !tbaa !50
  br label %_channel_release_interpreter.exit.i

_channel_release_interpreter.exit.i:              ; preds = %_channelends_is_open.exit.i.i, %_channelends_add.exit32.thread.i.i.i, %_channelends_add.exit.thread.i.i.i, %_channels_lookup.exit.thread.i
  %.0.i.i = phi i32 [ -3, %_channels_lookup.exit.thread.i ], [ 0, %_channelends_is_open.exit.i.i ], [ -1, %_channelends_add.exit.thread.i.i.i ], [ -1, %_channelends_add.exit32.thread.i.i.i ]
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !39
  call void @PyThread_release_lock(ptr noundef %i.cc) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_channel_release_interpreter.exit.i, %_channels_lookup.exit.i
  %.sink.i = phi ptr [ %i.ab, %_channel_release_interpreter.exit.i ], [ %i.ad, %_channels_lookup.exit.i ]
  %.1.ph.i = phi i32 [ %.0.i.i, %_channel_release_interpreter.exit.i ], [ %.01717.i.ph.i, %_channels_lookup.exit.i ]
  call void @PyThread_release_lock(ptr noundef %.sink.i) #7
  br label %channel_release.exit

channel_release.exit:                             ; preds = %bb.d, %.sink.split.i
  %.1.i = phi i32 [ -1, %bb.d ], [ %.1.ph.i, %.sink.split.i ]
  %i.cd = call fastcc i32 @handle_channel_error(i32 noundef %.1.i, ptr noundef %0, i64 noundef %i.f)
  %.not8 = icmp eq i32 %i.cd, 0
  %_Py_NoneStruct. = select i1 %.not8, ptr @_Py_NoneStruct, ptr null
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %channel_release.exit
  %.1 = phi ptr [ %_Py_NoneStruct., %channel_release.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @channelsmod_get_count(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.channel_id_converter_data, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef nonnull @channelsmod_get_count.kwlist, ptr noundef nonnull @channel_id_converter, ptr noundef nonnull %3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  %i.e = call i32 @PyThread_acquire_lock(ptr noundef %i.d, i32 noundef 1) #7 ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not12.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.014.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = load i64, ptr %.014.i.i.i, align 8, !tbaa !54
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_channelref_find.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr i8, ptr %.014.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_channelref_find.exit.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr i8, ptr %.014.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_channels_lookup.exit.i, label %bb.d

bb.d:                                             ; preds = %_channelref_find.exit.i.i
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50
  %.not21.i.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i.i, label %_channels_lookup.exit.i, label %_channelref_find.exit.thread.i.i

_channelref_find.exit.thread.i.i:                 ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_channels_lookup.exit.thread18.i, label %_channels_lookup.exit.thread.i

_channels_lookup.exit.thread18.i:                 ; preds = %_channelref_find.exit.thread.i.i
  call void @PyThread_release_lock(ptr noundef null) #7
  br label %_channels_lookup.exit.thread.i

_channels_lookup.exit.i:                          ; preds = %bb.c, %bb.d, %_channelref_find.exit.i.i, %bb.b
  %.01717.i.ph.i = phi i32 [ -2, %bb.b ], [ -3, %bb.d ], [ -3, %_channelref_find.exit.i.i ], [ -2, %bb.c ]
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  br label %_channel_get_count.exit

_channels_lookup.exit.thread.i:                   ; preds = %_channels_lookup.exit.thread18.i, %_channelref_find.exit.thread.i.i
  %i.s = getelementptr i8, ptr %i.l, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !83
  br label %_channel_get_count.exit

_channel_get_count.exit:                          ; preds = %_channels_lookup.exit.i, %_channels_lookup.exit.thread.i
  %.sink = phi ptr [ %i.r, %_channels_lookup.exit.i ], [ %i.p, %_channels_lookup.exit.thread.i ]
  %.08 = phi i64 [ -1, %_channels_lookup.exit.i ], [ %i.u, %_channels_lookup.exit.thread.i ]
  %.0.i = phi i32 [ %.01717.i.ph.i, %_channels_lookup.exit.i ], [ 0, %_channels_lookup.exit.thread.i ]
  call void @PyThread_release_lock(ptr noundef %.sink) #7
  %i.v = call fastcc i32 @handle_channel_error(i32 noundef %.0.i, ptr noundef %0, i64 noundef %i.c)
  %.not7 = icmp eq i32 %i.v, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_channel_get_count.exit
  %i.w = call ptr @PyLong_FromSsize_t(i64 noundef %.08) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_channel_get_count.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.w, %bb.e ], [ null, %_channel_get_count.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @channelsmod_get_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.channel_id_converter_data, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @channelsmod_get_info.kwlist, ptr noundef nonnull @channel_id_converter, ptr noundef nonnull %3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %new_channel_info.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.d = call ptr @PyInterpreterState_Get() #7    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_channel_get_info.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !32
  %i.h = call i32 @PyThread_acquire_lock(ptr noundef %i.g, i32 noundef 1) #7 ; 0 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.i, null
  br i1 %.not12.i.i, label %_channelref_find.exit.thread.i, label %.lr.ph.i.i

end_hunk_0
