Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sfnt_load_table:bb.a
  switch i64 %1, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !185
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !269
  %i.g = and i64 %i.f, 65535                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load i64, ptr %i.h, align 8, !tbaa !257
  %.not35.i = icmp slt i64 %i.g, %i.i
  %spec.store.select.i = select i1 %.not35.i, i64 %i.g, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !258
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %spec.store.select.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !162
  %i.n = add i64 %i.m, %2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = load i16, ptr %i.o, align 8, !tbaa !156
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = or disjoint i64 %i.r, 12
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 288
  %.val.i = load i16, ptr %i.t, align 8, !tbaa !156 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 296
  %.val37.i = load ptr, ptr %i.u, align 8, !tbaa !157 ; 2 uses
  %i.v = zext i16 %.val.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.v, 5
  %i.w = getelementptr inbounds nuw i8, ptr %.val37.i, i64 %.idx.i.i
  %.not4.i.i = icmp eq i16 %.val.i, 0
  br i1 %.not4.i.i, label %tt_face_load_any.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.f
  %.01.i.i = phi ptr [ %i.ab, %bb.f ], [ %.val37.i, %bb.d ] ; 4 uses
  %i.x = load i64, ptr %.01.i.i, align 8, !tbaa !158
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !160 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.f, label %tt_face_lookup_table.exit.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 32 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.w
  br i1 %i.ac, label %.lr.ph.i.i, label %tt_face_load_any.exit, !llvm.loop !161

tt_face_lookup_table.exit.i:                      ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !163
  %i.af = add i64 %i.ae, %2
  br label %bb.g

bb.g:                                             ; preds = %tt_face_lookup_table.exit.i, %bb.c, %bb.b
  %.030.i = phi i64 [ %2, %bb.b ], [ %i.n, %bb.c ], [ %i.af, %tt_face_lookup_table.exit.i ]
  %.028.i = phi i64 [ %i.d, %bb.b ], [ %i.s, %bb.c ], [ %i.aa, %tt_face_lookup_table.exit.i ] ; 2 uses
  %.not36.i = icmp eq ptr %4, null
  br i1 %.not36.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %4, align 8, !tbaa !162   ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  store i64 %.028.i, ptr %4, align 8, !tbaa !162
  br label %tt_face_load_any.exit

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %.1.i = phi i64 [ %.028.i, %bb.g ], [ %i.ag, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.ak = tail call i32 @FT_Stream_ReadAt(ptr noundef %i.aj, i64 noundef %.030.i, ptr noundef %3, i64 noundef %.1.i) #27
  br label %tt_face_load_any.exit

tt_face_load_any.exit:                            ; preds = %bb.f, %bb.d, %bb.i, %.critedge.i
  %.0.i = phi i32 [ 0, %bb.i ], [ %i.ak, %.critedge.i ], [ 142, %bb.d ], [ 142, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @get_sfnt_table(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) #21 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 1, label %bb.g
    i32 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load i8, ptr %i.c, align 8, !tbaa !297
  %.not12 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = select i1 %.not12, ptr null, ptr %i.e
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !299
  %i.i = icmp eq i16 %i.h, -1
  %i.j = select i1 %i.i, ptr null, ptr %i.g
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 752
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !771
  %.not = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not, ptr null, ptr %i.m
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.o, %bb.h ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.f, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 143) i32 @sfnt_table_info(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #4 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i16, ptr %i.c, align 8, !tbaa !156  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = zext i16 %i.d to i32
  %.not22 = icmp ult i32 %1, %i.f
  br i1 %.not22, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !158
  store i64 %i.k, ptr %2, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !163
  store i64 %i.m, ptr %3, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i64 [ %i.e, %bb.c ], [ %i.o, %bb.e ]
  store i64 %storemerge, ptr %4, align 8, !tbaa !162
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.f ], [ 142, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sfnt_get_ps_name(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 14 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !383  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %sfnt_get_name_id.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !536
  %.not26 = icmp eq ptr %i.p, null
  br i1 %.not26, label %bb.ck, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !772
  %i.s = and i64 %i.r, 2147418112
  %.not27 = icmp eq i64 %i.s, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !312
  %i.v = and i64 %i.u, 32768
  %.not28 = icmp eq i64 %i.v, 0
  br i1 %.not28, label %bb.ck, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !384
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.g, align 4, !tbaa !18
  store i32 -1, ptr %i.h, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !414 ; 2 uses
  %.not26.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not26.i.i, label %sfnt_get_var_ps_name.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !614 ; 4 uses
  %wide.trip.count.i.i = zext i16 %i.ad to i64    ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv.i.i ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !615
  %i.aj = icmp eq i16 %i.ai, 25
  br i1 %i.aj, label %bb.h, label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !407
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.ag, align 8, !tbaa !616
  switch i16 %i.am, label %.thread.i.i [
    i16 3, label %bb.j
    i16 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !617
  %switch.i.i = icmp ult i16 %i.ao, 2
  br i1 %switch.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !410
  %i.ar = icmp eq i16 %i.aq, 1033
  %.0..0..0..0..0.254.i = load i32, ptr %i.g, align 4
  %i.as = icmp eq i32 %.0..0..0..0..0.254.i, -1
  %or.cond285.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond285.i, label %.thread.sink.split.i.i, label %.thread.i.i

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !617
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !410
  %i.ay = icmp eq i16 %i.ax, 0
  %.0..0..0..0..0.247.i = load i32, ptr %i.h, align 4
  %i.az = icmp eq i32 %.0..0..0..0..0.247.i, -1
  %or.cond286.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond286.i, label %.thread.sink.split.i.i, label %.thread.i.i

.thread.sink.split.i.i:                           ; preds = %bb.m, %bb.k
  %.sink28.i.i = phi ptr [ %i.g, %bb.k ], [ %i.h, %bb.m ]
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.ba, ptr %.sink28.i.i, align 4, !tbaa !18
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !621

._crit_edge.i.i:                                  ; preds = %.thread.i.i
  %.0..0..0..0..0.253.pr.i = load i32, ptr %i.g, align 4, !tbaa !18 ; 3 uses
  %i.bb = icmp sgt i32 %.0..0..0..0..0.253.pr.i, -1
  %.0..0..0..0..0..pre.pre330.i = load i32, ptr %i.h, align 4 ; 3 uses
  br i1 %i.bb, label %.critedge188.thread.i, label %sfnt_get_name_id.exit.i

sfnt_get_name_id.exit.i:                          ; preds = %._crit_edge.i.i
  %i.bc = icmp slt i32 %.0..0..0..0..0..pre.pre330.i, 0
  br i1 %i.bc, label %.lr.ph.i213.i, label %.critedge188.i

.lr.ph.i213.i:                                    ; preds = %sfnt_get_name_id.exit.i
  store i32 -1, ptr %i.g, align 4, !tbaa !18
  store i32 -1, ptr %i.h, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %.thread.i216.i, %.lr.ph.i213.i
  %indvars.iv.i215.i = phi i64 [ 0, %.lr.ph.i213.i ], [ %indvars.iv.next.i217.i, %.thread.i216.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv.i215.i ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !615
  %i.bg = icmp eq i16 %i.bf, 16
  br i1 %i.bg, label %bb.o, label %.thread.i216.i

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !407
  %.not.i220.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i220.i, label %.thread.i216.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i16, ptr %i.bd, align 8, !tbaa !616
  switch i16 %i.bj, label %.thread.i216.i [
    i16 3, label %bb.q
    i16 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !617
  %switch.i223.i = icmp ult i16 %i.bl, 2
  br i1 %switch.i223.i, label %bb.r, label %.thread.i216.i

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !410
  %i.bo = icmp eq i16 %i.bn, 1033
  %.0..0..0..0..0.256.i = load i32, ptr %i.g, align 4
  %i.bp = icmp eq i32 %.0..0..0..0..0.256.i, -1
  %or.cond287.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond287.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

bb.s:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !617
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.t, label %.thread.i216.i

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !410
  %i.bv = icmp eq i16 %i.bu, 0
  %.0..0..0..0..0.249.i = load i32, ptr %i.h, align 4
  %i.bw = icmp eq i32 %.0..0..0..0..0.249.i, -1
  %or.cond288.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond288.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

.thread.sink.split.i221.i:                        ; preds = %bb.t, %bb.r
  %.sink28.i222.i = phi ptr [ %i.g, %bb.r ], [ %i.h, %bb.t ]
  %i.bx = trunc nuw nsw i64 %indvars.iv.i215.i to i32
  store i32 %i.bx, ptr %.sink28.i222.i, align 4, !tbaa !18
  br label %.thread.i216.i
end_hunk_0
begin_hunk_1_@sfnt_get_ps_name:bb.a
  %i.di = sext i32 %.0..0..i to i64
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.dh, i64 %i.di
  %i.dk = tail call fastcc ptr @get_apple_string(ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.dj, ptr noundef nonnull @sfnt_is_alphanumeric)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1142.i = phi ptr [ %i.dk, %bb.ac ], [ %.0141.i, %bb.ab ] ; 4 uses
  %.not176.i = icmp eq ptr %.1142.i, null
  br i1 %.not176.i, label %sfnt_get_var_ps_name.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1142.i) #30
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, 91
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %.1142.i, i64 91
  store i8 0, ptr %i.do, align 1, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0137.i = phi i32 [ 91, %bb.af ], [ %i.dm, %bb.ae ]
  store ptr %.1142.i, ptr %i.aa, align 8, !tbaa !384
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i32 %.0137.i, ptr %i.dp, align 8, !tbaa !773
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !774
  %i.ds = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) #27, !inline_history !775 ; 0 uses
  %i.dt = load i64, ptr %i.q, align 8, !tbaa !772
  %i.du = and i64 %i.dt, 2147418112               ; 2 uses
  %.not177.i = icmp eq i64 %i.du, 0
  br i1 %.not177.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !312
  %i.dx = and i64 %i.dw, 32768
  %.not178.i = icmp eq i64 %i.dx, 0
  br i1 %.not178.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !172 ; 2 uses
  %i.ea = lshr exact i64 %i.du, 16
  %i.eb = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !776 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !778
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !782 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store ptr null, ptr %i.i, align 8, !tbaa !208
  %i.ei = icmp eq i32 %i.eh, 6
  %i.ej = add i32 %i.eh, -256
  %or.cond4.i = icmp ult i32 %i.ej, 32512
  %or.cond191.i = or i1 %i.ei, %or.cond4.i
  br i1 %or.cond191.i, label %bb.ak, label %.thread271.i

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 344
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !784
  %i.em = trunc nuw nsw i32 %i.eh to i16
  %i.en = call i32 %i.el(ptr noundef nonnull %0, i16 noundef zeroext %i.em, ptr noundef nonnull %i.i) #27, !inline_history !775 ; 0 uses
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !208 ; 4 uses
  %.not179.i = icmp eq ptr %.pr.i, null
  br i1 %.not179.i, label %..thread271_crit_edge.i, label %.thread273.i

..thread271_crit_edge.i:                          ; preds = %bb.ak
  %.pre324.i = load ptr, ptr %i.f, align 8, !tbaa !776
  br label %.thread271.i

.thread273.i:                                     ; preds = %bb.ak
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr.i) #30
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.bt

.thread271.i:                                     ; preds = %..thread271_crit_edge.i, %bb.aj
  %i.er = phi ptr [ %.pre324.i, %..thread271_crit_edge.i ], [ %i.ec, %bb.aj ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !778
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.eb
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 344
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !784
  %i.ez = trunc i32 %i.ew to i16
  %i.fa = call i32 %i.ey(ptr noundef nonnull %0, i16 noundef zeroext %i.ez, ptr noundef nonnull %i.j) #27, !inline_history !775 ; 0 uses
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !208 ; 2 uses
  %.not180.i = icmp eq ptr %i.fb, null
  br i1 %.not180.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.thread271.i
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !773
  %i.fe = add i32 %i.fd, 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fb) #30
  %i.fh = add i64 %i.fg, 1
  %i.fi = add i64 %i.fh, %i.ff
  %i.fj = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.fi, ptr noundef nonnull %i.c) #27 ; 3 uses
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !18
  %.not181.i = icmp eq i32 %i.fk, 0
  br i1 %.not181.i, label %bb.am, label %.thread277.i

.thread277.i:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %sfnt_get_var_ps_name.exit

bb.am:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !384
  %i.fm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fj, ptr noundef nonnull dereferenceable(1) %i.fl) #27 ; 0 uses
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !773
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store i8 45, ptr %i.fp, align 1, !tbaa !17
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !208 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !17  ; 2 uses
  %.not182297.i = icmp eq i8 %i.fs, 0
  br i1 %.not182297.i, label %.thread281.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.ao
  %i.ft = phi i8 [ %i.gd, %bb.ao ], [ %i.fs, %bb.am ] ; 2 uses
  %.0135299.i = phi ptr [ %i.gc, %bb.ao ], [ %i.fr, %bb.am ]
  %.0138298.i = phi ptr [ %.1139.i, %bb.ao ], [ %i.fq, %bb.am ] ; 3 uses
  %i.fu = sext i8 %i.ft to i32                    ; 3 uses
  %i.fv = add nsw i32 %i.fu, -48
  %i.fw = icmp ult i32 %i.fv, 10
  %i.fx = add nsw i32 %i.fu, -65
  %i.fy = icmp ult i32 %i.fx, 26
  %or.cond193.i = select i1 %i.fw, i1 true, i1 %i.fy
  %i.fz = add nsw i32 %i.fu, -97
  %i.ga = icmp ult i32 %i.fz, 26
  %or.cond195.i = select i1 %or.cond193.i, i1 true, i1 %i.ga
  br i1 %or.cond195.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.0138298.i, i64 1
  store i8 %i.ft, ptr %.0138298.i, align 1, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.1139.i = phi ptr [ %i.gb, %bb.an ], [ %.0138298.i, %.lr.ph.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0135299.i, i64 1 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !17  ; 2 uses
  %.not182.i = icmp eq i8 %i.gd, 0
  br i1 %.not182.i, label %.thread281.i, label %.lr.ph.i, !llvm.loop !786

.thread281.i:                                     ; preds = %bb.ao, %bb.am
  %.0138.lcssa.i = phi ptr [ %i.fq, %bb.am ], [ %.1139.i, %bb.ao ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0138.lcssa.i, i64 1
  store i8 0, ptr %.0138.lcssa.i, align 1, !tbaa !17
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !208
  call void @ft_mem_free(ptr noundef %i.x, ptr noundef %i.gf) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.bt

bb.ap:                                            ; preds = %.thread271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %bb.ah
  %i.gg = load ptr, ptr %i.f, align 8, !tbaa !776
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !787
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !773
  %i.gl = load i32, ptr %i.d, align 4, !tbaa !18
  %i.gm = mul i32 %i.gl, 17
  %i.gn = add i32 %i.gk, 1
  %i.go = add i32 %i.gn, %i.gm
  %i.gp = zext i32 %i.go to i64
  %i.gq = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.gp, ptr noundef nonnull %i.c) #27 ; 3 uses
  %i.gr = load i32, ptr %i.c, align 4, !tbaa !18
  %.not183.i = icmp eq i32 %i.gr, 0
  br i1 %.not183.i, label %bb.ar, label %sfnt_get_var_ps_name.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load ptr, ptr %i.aa, align 8, !tbaa !384
  %i.gt = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gq, ptr noundef nonnull dereferenceable(1) %i.gs) #27 ; 0 uses
  %i.gu = load i32, ptr %i.gj, align 8, !tbaa !773
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.d, align 4, !tbaa !18
  %.not311.i = icmp eq i32 %i.gx, 0
  br i1 %.not311.i, label %._crit_edge.i, label %.lr.ph303.preheader.i

.lr.ph303.preheader.i:                            ; preds = %bb.ar
  %.pre325.i = load ptr, ptr %i.e, align 8, !tbaa !788
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %bb.bs, %.lr.ph303.preheader.i
  %i.gy = phi ptr [ %i.mc, %bb.bs ], [ %.pre325.i, %.lr.ph303.preheader.i ]
  %.0134302.i = phi ptr [ %i.md, %bb.bs ], [ %i.gi, %.lr.ph303.preheader.i ] ; 3 uses
  %.4301.i = phi ptr [ %.9.i, %bb.bs ], [ %i.gw, %.lr.ph303.preheader.i ] ; 5 uses
  %.0149300.i = phi i32 [ %i.ma, %bb.bs ], [ 0, %.lr.ph303.preheader.i ]
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !162
  %i.ha = getelementptr inbounds nuw i8, ptr %.0134302.i, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !789
  %i.hc = icmp eq i64 %i.gz, %i.hb
  br i1 %i.hc, label %bb.bs, label %bb.as

bb.as:                                            ; preds = %.lr.ph303.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.4301.i, i64 1 ; 3 uses
  store i8 95, ptr %.4301.i, align 1, !tbaa !17
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !788
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !162
  %i.hg = trunc i64 %i.hf to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %.4301.i, i64 2
  store i8 48, ptr %i.hd, align 1, !tbaa !17
  br label %fixed2float.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hj = icmp slt i32 %i.hg, 0
  br i1 %i.hj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %.4301.i, i64 2
  store i8 45, ptr %i.hd, align 1, !tbaa !17
  %i.hl = sub i32 0, %i.hg
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.050.i.i = phi i32 [ %i.hl, %bb.av ], [ %i.hg, %bb.au ] ; 2 uses
  %.047.i.i = phi ptr [ %i.hk, %bb.av ], [ %i.hd, %bb.au ] ; 9 uses
  %i.hm = lshr i32 %.050.i.i, 16                  ; 2 uses
  %i.hn = and i32 %.050.i.i, 65535                ; 2 uses
  %.not75.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not75.i.i, label %._crit_edge.i240.i, label %.lr.ph.i238.i

.lr.ph.i238.i:                                    ; preds = %bb.aw, %.lr.ph.i238.i
  %.04477.i.i = phi i32 [ %i.hs, %.lr.ph.i238.i ], [ %i.hm, %bb.aw ] ; 3 uses
  %.04576.i.i = phi ptr [ %i.hr, %.lr.ph.i238.i ], [ %i.a, %bb.aw ] ; 2 uses
  %i.ho = urem i32 %.04477.i.i, 10
  %i.hp = trunc nuw nsw i32 %i.ho to i8
  %i.hq = or disjoint i8 %i.hp, 48
  %i.hr = getelementptr i8, ptr %.04576.i.i, i64 1 ; 10 uses
  store i8 %i.hq, ptr %.04576.i.i, align 1, !tbaa !17
  %i.hs = udiv i32 %.04477.i.i, 10
  %.not.i239.i = icmp samesign ult i32 %.04477.i.i, 10
  br i1 %.not.i239.i, label %iter.check, label %.lr.ph.i238.i, !llvm.loop !791

iter.check:                                       ; preds = %.lr.ph.i238.i
  %i.ht = ptrtoaddr ptr %i.hr to i64
  %i.hu = sub i64 %i.ht, %i.b                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.hu, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hv = ptrtoaddr ptr %i.hr to i64
  %i.hw = sub i64 %i.hv, %i.b
  %scevgep102 = getelementptr i8, ptr %.047.i.i, i64 %i.hw
  %bound0 = icmp ult ptr %.047.i.i, %i.hr
  %bound1 = icmp ult ptr %i.a, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph80.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check104 = icmp ult i64 %i.hu, 32
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hx = and i64 %i.hu, 24
  %n.vec = and i64 %i.hu, -32                     ; 5 uses
  %i.hy = sub i64 0, %n.vec
  %i.hz = getelementptr i8, ptr %i.hr, i64 %i.hy
  %i.ia = getelementptr i8, ptr %.047.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.hr, i64 %i.ib ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.047.i.i, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.id = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ic, align 1, !tbaa !17, !alias.scope !792
  %wide.load106 = load <16 x i8>, ptr %i.id, align 1, !tbaa !17, !alias.scope !792
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse107 = shufflevector <16 x i8> %wide.load106, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ie = getelementptr i8, ptr %next.gep105, i64 16
  store <16 x i8> %reverse, ptr %next.gep105, align 1, !tbaa !17, !alias.scope !795, !noalias !792
  store <16 x i8> %reverse107, ptr %i.ie, align 1, !tbaa !17, !alias.scope !795, !noalias !792
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i240.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.i.i.preheader, label %vec.epilog.ph, !prof !798

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.hu, -8                   ; 4 uses
  %i.ig = sub i64 0, %n.vec109
  %i.ih = getelementptr i8, ptr %i.hr, i64 %i.ig
  %i.ii = getelementptr i8, ptr %.047.i.i, i64 %n.vec109 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %i.ij = sub i64 0, %index110
  %next.gep111 = getelementptr i8, ptr %i.hr, i64 %i.ij
  %next.gep112 = getelementptr i8, ptr %.047.i.i, i64 %index110
  %i.ik = getelementptr inbounds i8, ptr %next.gep111, i64 -8
  %wide.load113 = load <8 x i8>, ptr %i.ik, align 1, !tbaa !17, !alias.scope !792
  %reverse114 = shufflevector <8 x i8> %wide.load113, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse114, ptr %next.gep112, align 1, !tbaa !17, !alias.scope !795, !noalias !792
  %index.next115 = add nuw i64 %index110, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.il, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !799

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.hu, %n.vec109
  br i1 %cmp.n116, label %._crit_edge.i240.i, label %.lr.ph80.i.i.preheader

.lr.ph80.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14679.i.i.ph = phi ptr [ %i.hr, %iter.check ], [ %i.hr, %vector.memcheck ], [ %i.hz, %vec.epilog.iter.check ], [ %i.ih, %vec.epilog.middle.block ]
  %.14878.i.i.ph = phi ptr [ %.047.i.i, %iter.check ], [ %.047.i.i, %vector.memcheck ], [ %i.ia, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %.lr.ph80.i.i.preheader, %.lr.ph80.i.i
  %.14679.i.i = phi ptr [ %i.im, %.lr.ph80.i.i ], [ %.14679.i.i.ph, %.lr.ph80.i.i.preheader ]
  %.14878.i.i = phi ptr [ %i.io, %.lr.ph80.i.i ], [ %.14878.i.i.ph, %.lr.ph80.i.i.preheader ] ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.14679.i.i, i64 -1 ; 3 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !17
  %i.io = getelementptr inbounds nuw i8, ptr %.14878.i.i, i64 1 ; 2 uses
  store i8 %i.in, ptr %.14878.i.i, align 1, !tbaa !17
  %i.ip = icmp ugt ptr %i.im, %i.a
  br i1 %i.ip, label %.lr.ph80.i.i, label %._crit_edge.i240.i, !llvm.loop !800

._crit_edge.i240.i:                               ; preds = %.lr.ph80.i.i, %middle.block, %vec.epilog.middle.block, %bb.aw
  %.148.lcssa.i.i = phi ptr [ %.047.i.i, %bb.aw ], [ %i.ii, %vec.epilog.middle.block ], [ %i.ia, %middle.block ], [ %i.io, %.lr.ph80.i.i ] ; 8 uses
  %.not56.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not56.i.i, label %fixed2float.exit.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i240.i
  store i8 46, ptr %.148.lcssa.i.i, align 1, !tbaa !17
  %i.iq = mul nuw nsw i32 %i.hn, 10
  %i.ir = add nuw nsw i32 %i.iq, 5                ; 2 uses
  %.285.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 1
  %i.is = lshr i32 %i.ir, 16
  %i.it = trunc nuw nsw i32 %i.is to i8
  %i.iu = add nuw nsw i8 %i.it, 48
  store i8 %i.iu, ptr %.285.i.i, align 1, !tbaa !17
  %i.iv = and i32 %i.ir, 65535
  %i.iw = mul nuw nsw i32 %i.iv, 10               ; 2 uses
  %.285.1.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 2
  %i.ix = lshr i32 %i.iw, 16
  %i.iy = trunc nuw nsw i32 %i.ix to i8
  %i.iz = or disjoint i8 %i.iy, 48
  store i8 %i.iz, ptr %.285.1.i.i, align 1, !tbaa !17
  %i.ja = and i32 %i.iw, 65534
  %i.jb = mul nuw nsw i32 %i.ja, 10               ; 2 uses
  %.285.2.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 3 ; 2 uses
  %i.jc = lshr i32 %i.jb, 16
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  %i.je = or disjoint i8 %i.jd, 48                ; 2 uses
  store i8 %i.je, ptr %.285.2.i.i, align 1, !tbaa !17
  %i.jf = and i32 %i.jb, 65532                    ; 2 uses
  %.not57.2.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not57.2.i.i, label %.thread.i241.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jg = mul nuw nsw i32 %i.jf, 10               ; 2 uses
  %.285.3.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 4 ; 2 uses
  %i.jh = lshr i32 %i.jg, 16
  %i.ji = trunc nuw nsw i32 %i.jh to i8
  %i.jj = or disjoint i8 %i.ji, 48                ; 2 uses
  store i8 %i.jj, ptr %.285.3.i.i, align 1, !tbaa !17
  %i.jk = and i32 %i.jg, 65528                    ; 2 uses
  %.not57.3.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not57.3.i.i, label %.thread.i241.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jl = mul nuw nsw i32 %i.jk, 10               ; 2 uses
  %.285.4.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 5 ; 9 uses
  %i.jm = lshr i32 %i.jl, 16                      ; 2 uses
  %i.jn = trunc nuw nsw i32 %i.jm to i8           ; 3 uses
  %i.jo = or disjoint i8 %i.jn, 48                ; 6 uses
  store i8 %i.jo, ptr %.285.4.i.i, align 1, !tbaa !17
  %i.jp = and i32 %i.jl, 65520                    ; 4 uses
  %.not57.4.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not57.4.i.i, label %.thread.i241.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jq = icmp samesign ult i32 %i.jp, 34480
  br i1 %i.jq, label %.thread63.i.i, label %.thread70.i.i

.thread.i241.i:                                   ; preds = %bb.az, %bb.ay, %bb.ax
  %.pre.i.i = phi i8 [ %i.jo, %bb.az ], [ %i.jj, %bb.ay ], [ %i.je, %bb.ax ] ; 3 uses
  %.285.lcssa.i.i = phi ptr [ %.285.4.i.i, %bb.az ], [ %.285.3.i.i, %bb.ay ], [ %.285.2.i.i, %bb.ax ] ; 4 uses
  %i.jr = ptrtoint ptr %.285.lcssa.i.i to i64
  %i.js = ptrtoint ptr %.148.lcssa.i.i to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = icmp eq i64 %i.jt, 5
  br i1 %i.ju, label %.thread63.thread.i.i, label %.thread70.i.i

.thread63.i.i:                                    ; preds = %bb.ba
  %i.jv = icmp eq i32 %i.jm, 1
  br i1 %i.jv, label %bb.bb, label %bb.bc

.thread63.thread.i.i:                             ; preds = %.thread.i241.i
  %i.jw = icmp eq i8 %.pre.i.i, 49
  br i1 %i.jw, label %bb.bb, label %.thread118.i.i

bb.bb:                                            ; preds = %.thread63.thread.i.i, %.thread63.i.i
  %.28594111.i.i = phi ptr [ %.285.lcssa.i.i, %.thread63.thread.i.i ], [ %.285.4.i.i, %.thread63.i.i ] ; 2 uses
  store i8 48, ptr %.28594111.i.i, align 1, !tbaa !17
  br label %.lr.ph87.i.i.preheader

bb.bc:                                            ; preds = %.thread63.i.i
  %i.jx = icmp eq i32 %i.jp, 17232
  br i1 %i.jx, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.jy = and i8 %i.jn, 1
  %.not58.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not58.i.i, label %.thread70.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %narrow.i.i = add nuw nsw i8 %i.jn, 47          ; 2 uses
  store i8 %narrow.i.i, ptr %.285.4.i.i, align 1, !tbaa !17
  br label %.thread70.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.jz = icmp samesign ult i32 %i.jp, 17232
  br i1 %i.jz, label %.thread118.i.i, label %.thread70.i.i

.thread118.i.i:                                   ; preds = %bb.bf, %.thread63.thread.i.i
  %.28594110117121.i.i = phi ptr [ %.285.4.i.i, %bb.bf ], [ %.285.lcssa.i.i, %.thread63.thread.i.i ] ; 3 uses
  %i.ka = phi i8 [ %i.jo, %bb.bf ], [ %.pre.i.i, %.thread63.thread.i.i ] ; 2 uses
  %.not59.i.i = icmp eq i8 %i.ka, 48
  br i1 %.not59.i.i, label %.lr.ph87.i.i.preheader, label %bb.bg

bb.bg:                                            ; preds = %.thread118.i.i
  %i.kb = add nsw i8 %i.ka, -1                    ; 2 uses
  store i8 %i.kb, ptr %.28594110117121.i.i, align 1, !tbaa !17
  br label %.thread70.i.i

.thread70.i.i:                                    ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %.thread.i241.i, %bb.ba
  %i.kc = phi i8 [ %i.jo, %bb.bd ], [ %i.kb, %bb.bg ], [ %narrow.i.i, %bb.be ], [ %i.jo, %bb.bf ], [ %i.jo, %bb.ba ], [ %.pre.i.i, %.thread.i241.i ]
  %.28593.i.i = phi ptr [ %.285.4.i.i, %bb.bd ], [ %.28594110117121.i.i, %bb.bg ], [ %.285.4.i.i, %bb.be ], [ %.285.4.i.i, %bb.bf ], [ %.285.4.i.i, %bb.ba ], [ %.285.lcssa.i.i, %.thread.i241.i ] ; 2 uses
  %i.kd = icmp eq i8 %i.kc, 48
  br i1 %i.kd, label %.lr.ph87.i.i.preheader, label %._crit_edge88.i.i

.lr.ph87.i.i.preheader:                           ; preds = %.thread70.i.i, %.thread118.i.i, %bb.bb
  %.486.i.i.ph = phi ptr [ %.28594111.i.i, %bb.bb ], [ %.28594110117121.i.i, %.thread118.i.i ], [ %.28593.i.i, %.thread70.i.i ]
  br label %.lr.ph87.i.i

end_hunk_1
