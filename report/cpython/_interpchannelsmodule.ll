Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_interpchannelsmodule?download=true
inline.NumInlined: 221
inline.NumDeleted: 106
begin_hunk_0_@channelsmod_release:bb.a
bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr i8, ptr %i.bu, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !89
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_channelends_is_open.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %_channelends_is_open.exit.i.i

_channelends_is_open.exit.i.i:                    ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.0.i9.i.i = phi i32 [ 0, %bb.v ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.u ]
  store i32 %.0.i9.i.i, ptr %i.z, align 8, !tbaa !49
  br label %_channel_release_interpreter.exit.i

_channel_release_interpreter.exit.i:              ; preds = %_channelends_is_open.exit.i.i, %_channelends_add.exit32.thread.i.i.i, %_channelends_add.exit.thread.i.i.i, %_channels_lookup.exit.thread.i
  %.0.i.i = phi i32 [ -3, %_channels_lookup.exit.thread.i ], [ 0, %_channelends_is_open.exit.i.i ], [ -1, %_channelends_add.exit.thread.i.i.i ], [ -1, %_channelends_add.exit32.thread.i.i.i ]
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !32
  call void @PyThread_release_lock(ptr noundef %i.ce) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_channel_release_interpreter.exit.i, %_channels_lookup.exit.i
  %.sink.i = phi ptr [ %i.ab, %_channel_release_interpreter.exit.i ], [ %i.ad, %_channels_lookup.exit.i ]
  %.1.ph.i = phi i32 [ %.0.i.i, %_channel_release_interpreter.exit.i ], [ %.01717.i.ph.i, %_channels_lookup.exit.i ]
  call void @PyThread_release_lock(ptr noundef %.sink.i) #7
  br label %channel_release.exit

channel_release.exit:                             ; preds = %bb.d, %.sink.split.i
  %.1.i = phi i32 [ -1, %bb.d ], [ %.1.ph.i, %.sink.split.i ]
  %i.cf = call fastcc i32 @handle_channel_error(i32 noundef %.1.i, ptr noundef %0, i64 noundef %i.f)
  %.not8 = icmp eq i32 %i.cf, 0
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
  store ptr %0, ptr %3, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef nonnull @channelsmod_get_count.kwlist, ptr noundef nonnull @channel_id_converter, ptr noundef nonnull %3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !30
  %i.e = call i32 @PyThread_acquire_lock(ptr noundef %i.d, i32 noundef 1) #7 ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not12.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.014.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = load i64, ptr %.014.i.i.i, align 8, !tbaa !52
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_channelref_find.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr i8, ptr %.014.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_channels_lookup.exit.i, label %.lr.ph.i.i.i, !llvm.loop !79

_channelref_find.exit.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr i8, ptr %.014.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_channels_lookup.exit.i, label %bb.d

bb.d:                                             ; preds = %_channelref_find.exit.i.i
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49
  %.not21.i.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i.i, label %_channels_lookup.exit.i, label %_channelref_find.exit.thread.i.i

_channelref_find.exit.thread.i.i:                 ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_channels_lookup.exit.thread18.i, label %_channels_lookup.exit.thread.i

_channels_lookup.exit.thread18.i:                 ; preds = %_channelref_find.exit.thread.i.i
  call void @PyThread_release_lock(ptr noundef null) #7
  br label %_channels_lookup.exit.thread.i

_channels_lookup.exit.i:                          ; preds = %bb.c, %bb.d, %_channelref_find.exit.i.i, %bb.b
  %.01717.i.ph.i = phi i32 [ -2, %bb.b ], [ -3, %bb.d ], [ -3, %_channelref_find.exit.i.i ], [ -2, %bb.c ]
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !30
  br label %_channel_get_count.exit

_channels_lookup.exit.thread.i:                   ; preds = %_channels_lookup.exit.thread18.i, %_channelref_find.exit.thread.i.i
  %i.s = getelementptr i8, ptr %i.l, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93
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
  store ptr %0, ptr %3, align 8, !tbaa !61
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !30
  %i.h = call i32 @PyThread_acquire_lock(ptr noundef %i.g, i32 noundef 1) #7 ; 0 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.i, null
  br i1 %.not12.i.i, label %_channelref_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.014.i.i = phi ptr [ %i.m, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = load i64, ptr %.014.i.i, align 8, !tbaa !52
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %_channelref_find.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %.014.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_channelref_find.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !79

_channelref_find.exit.i:                          ; preds = %.lr.ph.i.i
  %i.n = getelementptr i8, ptr %.014.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_channelref_find.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_channelref_find.exit.i
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_channelref_find.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %.not63.i = icmp ne ptr %i.t, null
  %..i = sext i1 %.not63.i to i32                 ; 2 uses
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16       ; 2 uses
  %.0575.i = load ptr, ptr %i.z, align 8, !tbaa !80 ; 2 uses
  %.not646.i = icmp eq ptr %.0575.i, null
  br i1 %.not646.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.813.1 = phi i64 [ %.sroa.813.2, %.lr.ph.i ], [ 0, %bb.f ]
  %.sroa.15.1 = phi i64 [ %.sroa.15.2, %.lr.ph.i ], [ 0, %bb.f ]
  %.sroa.40.1 = phi i32 [ %.sroa.40.2, %.lr.ph.i ], [ 0, %bb.f ]
  %.0577.i = phi ptr [ %.057.i, %.lr.ph.i ], [ %.0575.i, %bb.f ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.0577.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !82
  %i.ac = icmp eq i64 %i.ab, %i.f
  %i.ad = getelementptr i8, ptr %.0577.i, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !86 ; 2 uses
  %.not72.i = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not72.i, i32 -1, i32 1
  %.sroa.40.2 = select i1 %i.ac, i32 %i.af, i32 %.sroa.40.1 ; 2 uses
  %.not73.i = icmp ne i32 %i.ae, 0                ; 2 uses
  %i.ag = zext i1 %.not73.i to i64
  %.sroa.813.2 = add i64 %.sroa.813.1, %i.ag      ; 2 uses
  %not..not73.i = xor i1 %.not73.i, true
  %i.ah = zext i1 %not..not73.i to i64
  %.sroa.15.2 = add i64 %.sroa.15.1, %i.ah        ; 2 uses
  %.057.i = load ptr, ptr %.0577.i, align 8, !tbaa !80 ; 2 uses
  %.not64.i = icmp eq ptr %.057.i, null
  br i1 %.not64.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.sroa.813.3 = phi i64 [ 0, %bb.f ], [ %.sroa.813.2, %.lr.ph.i ] ; 2 uses
  %.sroa.15.3 = phi i64 [ 0, %bb.f ], [ %.sroa.15.2, %.lr.ph.i ] ; 2 uses
  %.sroa.40.3 = phi i32 [ 0, %bb.f ], [ %.sroa.40.2, %.lr.ph.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 24
  %.0568.i = load ptr, ptr %i.ai, align 8, !tbaa !80 ; 2 uses
  %.not659.i = icmp eq ptr %.0568.i, null
  br i1 %.not659.i, label %_channelref_find.exit.thread.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %._crit_edge.i, %bb.u
  %.sroa.813.4 = phi i64 [ %.sroa.813.5, %bb.u ], [ %.sroa.813.3, %._crit_edge.i ] ; 6 uses
  %.sroa.15.4 = phi i64 [ %.sroa.15.5, %bb.u ], [ %.sroa.15.3, %._crit_edge.i ] ; 6 uses
  %.sroa.22.1 = phi i64 [ %.sroa.22.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.25.1 = phi i64 [ %.sroa.25.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.28.1 = phi i64 [ %.sroa.28.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.31.1 = phi i64 [ %.sroa.31.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.37.1 = phi i64 [ %.sroa.37.2, %bb.u ], [ 0, %._crit_edge.i ] ; 6 uses
  %.sroa.43.1 = phi i32 [ %.sroa.43.2, %bb.u ], [ 0, %._crit_edge.i ]
  %.05610.i = phi ptr [ %.056.i, %bb.u ], [ %.0568.i, %._crit_edge.i ] ; 5 uses
  %i.aj = getelementptr i8, ptr %.05610.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !82 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.f
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph12.i
  %i.am = getelementptr i8, ptr %.05610.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !86
  %.not66.i = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not66.i, i32 -1, i32 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph12.i
  %.sroa.43.2 = phi i32 [ %i.ao, %bb.g ], [ %.sroa.43.1, %.lr.ph12.i ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.in.i = phi ptr [ %i.z, %bb.h ], [ %.0.i, %bb.j ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !80 ; 4 uses
  %cond.i = icmp eq ptr %.0.i, null
  br i1 %cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.0.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !82
  %i.ar = icmp eq i64 %i.aq, %i.ak
  br i1 %i.ar, label %bb.n, label %bb.i, !llvm.loop !108

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.05610.i, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !86
  %.not71.i = icmp eq i32 %i.at, 0
  br i1 %.not71.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.sroa.22.1, 1
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.av = add i64 %.sroa.25.1, 1
  br label %bb.u

bb.n:                                             ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %.05610.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !86
  %.not68.i = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr i8, ptr %.0.i, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !86
  %.not69.i = icmp eq i32 %i.az, 0                ; 2 uses
  br i1 %.not68.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not69.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = add i64 %.sroa.28.1, 1
  %i.bb = add i64 %.sroa.813.4, -1
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bc = add i64 %.sroa.37.1, 1
  %i.bd = add i64 %.sroa.15.4, -1
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  br i1 %.not69.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = add i64 %.sroa.34.1, 1
  %i.bf = add i64 %.sroa.813.4, -1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = add i64 %.sroa.31.1, 1
  %i.bh = add i64 %.sroa.15.4, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l
  %.sroa.813.5 = phi i64 [ %.sroa.813.4, %bb.m ], [ %.sroa.813.4, %bb.l ], [ %.sroa.813.4, %bb.t ], [ %i.bf, %bb.s ], [ %.sroa.813.4, %bb.q ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.15.5 = phi i64 [ %.sroa.15.4, %bb.m ], [ %.sroa.15.4, %bb.l ], [ %i.bh, %bb.t ], [ %.sroa.15.4, %bb.s ], [ %i.bd, %bb.q ], [ %.sroa.15.4, %bb.p ] ; 2 uses
  %.sroa.22.2 = phi i64 [ %.sroa.22.1, %bb.m ], [ %i.au, %bb.l ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.1, %bb.s ], [ %.sroa.22.1, %bb.q ], [ %.sroa.22.1, %bb.p ] ; 2 uses
  %.sroa.25.2 = phi i64 [ %i.av, %bb.m ], [ %.sroa.25.1, %bb.l ], [ %.sroa.25.1, %bb.t ], [ %.sroa.25.1, %bb.s ], [ %.sroa.25.1, %bb.q ], [ %.sroa.25.1, %bb.p ] ; 2 uses
  %.sroa.28.2 = phi i64 [ %.sroa.28.1, %bb.m ], [ %.sroa.28.1, %bb.l ], [ %.sroa.28.1, %bb.t ], [ %.sroa.28.1, %bb.s ], [ %.sroa.28.1, %bb.q ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.31.2 = phi i64 [ %.sroa.31.1, %bb.m ], [ %.sroa.31.1, %bb.l ], [ %i.bg, %bb.t ], [ %.sroa.31.1, %bb.s ], [ %.sroa.31.1, %bb.q ], [ %.sroa.31.1, %bb.p ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.1, %bb.m ], [ %.sroa.34.1, %bb.l ], [ %.sroa.34.1, %bb.t ], [ %i.be, %bb.s ], [ %.sroa.34.1, %bb.q ], [ %.sroa.34.1, %bb.p ] ; 2 uses
  %.sroa.37.2 = phi i64 [ %.sroa.37.1, %bb.m ], [ %.sroa.37.1, %bb.l ], [ %.sroa.37.1, %bb.t ], [ %.sroa.37.1, %bb.s ], [ %i.bc, %bb.q ], [ %.sroa.37.1, %bb.p ] ; 2 uses
  %.056.i = load ptr, ptr %.05610.i, align 8, !tbaa !80 ; 2 uses
  %.not65.i = icmp eq ptr %.056.i, null
  br i1 %.not65.i, label %_channelref_find.exit.thread.i, label %.lr.ph12.i, !llvm.loop !109

_channelref_find.exit.thread.i:                   ; preds = %bb.d, %bb.u, %_channelref_find.exit.i, %bb.e, %._crit_edge.i, %bb.c
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ %..i, %bb.u ], [ %..i, %._crit_edge.i ], [ 1, %_channelref_find.exit.i ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.sroa.813.0 = phi i64 [ 0, %bb.c ], [ %.sroa.813.5, %bb.u ], [ %.sroa.813.3, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.c ], [ %.sroa.15.5, %bb.u ], [ %.sroa.15.3, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.22.0 = phi i64 [ 0, %bb.c ], [ %.sroa.22.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.25.0 = phi i64 [ 0, %bb.c ], [ %.sroa.25.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.28.0 = phi i64 [ 0, %bb.c ], [ %.sroa.28.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.31.0 = phi i64 [ 0, %bb.c ], [ %.sroa.31.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.34.0 = phi i64 [ 0, %bb.c ], [ %.sroa.34.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.37.0 = phi i64 [ 0, %bb.c ], [ %.sroa.37.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.40.0 = phi i32 [ 0, %bb.c ], [ %.sroa.40.3, %bb.u ], [ %.sroa.40.3, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.43.0 = phi i32 [ 0, %bb.c ], [ %.sroa.43.2, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.46.0 = phi i64 [ 0, %bb.c ], [ %i.w, %bb.u ], [ %i.w, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.059.i = phi i32 [ -2, %bb.c ], [ 0, %bb.u ], [ 0, %._crit_edge.i ], [ 0, %_channelref_find.exit.i ], [ 0, %bb.e ], [ -2, %bb.d ]
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_globals, i64 8), align 8, !tbaa !30
  call void @PyThread_release_lock(ptr noundef %i.bi) #7
  br label %_channel_get_info.exit

_channel_get_info.exit:                           ; preds = %bb.b, %_channelref_find.exit.thread.i
  %.sroa.0.1 = phi i32 [ 0, %bb.b ], [ %.sroa.0.0, %_channelref_find.exit.thread.i ] ; 3 uses
  %.sroa.813.6 = phi i64 [ 0, %bb.b ], [ %.sroa.813.0, %_channelref_find.exit.thread.i ]
  %.sroa.15.6 = phi i64 [ 0, %bb.b ], [ %.sroa.15.0, %_channelref_find.exit.thread.i ]
  %.sroa.22.3 = phi i64 [ 0, %bb.b ], [ %.sroa.22.0, %_channelref_find.exit.thread.i ]
  %.sroa.25.3 = phi i64 [ 0, %bb.b ], [ %.sroa.25.0, %_channelref_find.exit.thread.i ]
  %.sroa.28.3 = phi i64 [ 0, %bb.b ], [ %.sroa.28.0, %_channelref_find.exit.thread.i ]
  %.sroa.31.3 = phi i64 [ 0, %bb.b ], [ %.sroa.31.0, %_channelref_find.exit.thread.i ]
  %.sroa.34.3 = phi i64 [ 0, %bb.b ], [ %.sroa.34.0, %_channelref_find.exit.thread.i ]
  %.sroa.37.3 = phi i64 [ 0, %bb.b ], [ %.sroa.37.0, %_channelref_find.exit.thread.i ]
  %.sroa.40.4 = phi i32 [ 0, %bb.b ], [ %.sroa.40.0, %_channelref_find.exit.thread.i ] ; 2 uses
  %.sroa.43.3 = phi i32 [ 0, %bb.b ], [ %.sroa.43.0, %_channelref_find.exit.thread.i ] ; 2 uses
  %.sroa.46.1 = phi i64 [ 0, %bb.b ], [ %.sroa.46.0, %_channelref_find.exit.thread.i ]
  %.058.i = phi i32 [ -1, %bb.b ], [ %.059.i, %_channelref_find.exit.thread.i ]
  %i.bj = call fastcc i32 @handle_channel_error(i32 noundef %.058.i, ptr noundef %0, i64 noundef %i.c)
  %.not8 = icmp eq i32 %i.bj, 0
  br i1 %.not8, label %bb.v, label %new_channel_info.exit

bb.v:                                             ; preds = %_channel_get_info.exit
  %i.bk = call ptr @PyModule_GetState(ptr noundef %0) #7 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %new_channel_info.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bo = call ptr @PyStructSequence_New(ptr noundef %i.bn) #7 ; 45 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %new_channel_info.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = icmp eq i32 %.sroa.0.1, 0
  %i.br = select i1 %i.bq, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !67 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, -1073741825
  br i1 %i.bt, label %_Py_NewRef.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = add nuw i32 %i.bs, 1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !67
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.y, %bb.x
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.bo, i64 noundef 0, ptr noundef nonnull %i.br) #7
  %i.bv = icmp eq i32 %.sroa.0.1, -1
  %i.bw = select i1 %i.bv, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !67 ; 2 uses
  %i.by = icmp ugt i32 %i.bx, -1073741825
  br i1 %i.by, label %_Py_NewRef.exit213.i, label %bb.z

bb.z:                                             ; preds = %_Py_NewRef.exit.i
  %i.bz = add nuw i32 %i.bx, 1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !67
  br label %_Py_NewRef.exit213.i

_Py_NewRef.exit213.i:                             ; preds = %bb.z, %_Py_NewRef.exit.i
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.bo, i64 noundef 1, ptr noundef nonnull %i.bw) #7
  %i.ca = icmp eq i32 %.sroa.0.1, 1
  %i.cb = select i1 %i.ca, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, -1073741825
  br i1 %i.cd, label %_Py_NewRef.exit214.i, label %bb.aa

bb.aa:                                            ; preds = %_Py_NewRef.exit213.i
  %i.ce = add nuw i32 %i.cc, 1
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !67
  br label %_Py_NewRef.exit214.i
end_hunk_0
