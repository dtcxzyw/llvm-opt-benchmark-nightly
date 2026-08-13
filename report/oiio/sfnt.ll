inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_name_ascii_from_other:bb.a
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph, !llvm.loop !676

._crit_edge.loopexit.loopexit:                    ; preds = %bb.b
  %i.n = zext i16 %i.e to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit.loopexit, %.preheader
  %.018.lcssa = phi i64 [ 0, %.preheader ], [ %i.n, %._crit_edge.loopexit.loopexit ], [ %indvars.iv, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.018.lcssa
  store i8 0, ptr %i.o, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.019 = phi ptr [ %i.h, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.019
}

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @sfnt_load_table(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load i16, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 296
  %.val29.i = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.c = zext i16 %.val.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %.idx.i.i
  %.not4.i.i = icmp eq i16 %.val.i, 0
  br i1 %.not4.i.i, label %tt_face_load_any.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.0101.i.i = phi ptr [ %i.i, %bb.d ], [ %.val29.i, %bb.b ] ; 4 uses
  %i.e = load i64, ptr %.0101.i.i, align 8, !tbaa !156
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0101.i.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !158  ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %tt_face_lookup_table.exit.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0101.i.i, i64 32 ; 2 uses
  %i.j = icmp ult ptr %i.i, %i.d
  br i1 %i.j, label %.lr.ph.i.i, label %tt_face_load_any.exit, !llvm.loop !159

tt_face_lookup_table.exit.i:                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0101.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !161
  %i.m = add i64 %i.l, %2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !204
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.pre.i = load i64, ptr %i.p, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tt_face_lookup_table.exit.i
  %.0.i = phi i64 [ %i.h, %tt_face_lookup_table.exit.i ], [ %.0.pre.i, %bb.e ] ; 2 uses
  %.021.i = phi i64 [ %i.m, %tt_face_lookup_table.exit.i ], [ %2, %bb.e ]
  %.not28.i = icmp eq ptr %4, null
  br i1 %.not28.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %4, align 8, !tbaa !160    ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  store i64 %.0.i, ptr %4, align 8, !tbaa !160
  br label %tt_face_load_any.exit

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.1.i = phi i64 [ %.0.i, %bb.f ], [ %i.q, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !204
  %i.u = tail call i32 @FT_Stream_ReadAt(ptr noundef %i.t, i64 noundef %.021.i, ptr noundef %3, i64 noundef %.1.i) #26
  br label %tt_face_load_any.exit

tt_face_load_any.exit:                            ; preds = %bb.d, %bb.b, %bb.h, %.critedge.i
  %.020.i = phi i32 [ 0, %bb.h ], [ %i.u, %.critedge.i ], [ 142, %bb.b ], [ 142, %bb.d ]
  ret i32 %.020.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @get_sfnt_table(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) #19 {
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !247
  %.not12 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = select i1 %.not12, ptr null, ptr %i.e
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !249
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !677
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
  %i.d = load i16, ptr %i.c, align 8, !tbaa !154  ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !156
  store i64 %i.k, ptr %2, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !161
  store i64 %i.m, ptr %3, align 8, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !158
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i64 [ %i.e, %bb.c ], [ %i.o, %bb.e ]
  store i64 %storemerge, ptr %4, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.f ], [ 142, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sfnt_get_ps_name(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !334  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %sfnt_get_name_id.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !485
  %.not26 = icmp eq ptr %i.p, null
  br i1 %.not26, label %bb.ck, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !678
  %i.s = and i64 %i.r, 2147418112
  %.not27 = icmp eq i64 %i.s, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !262
  %i.v = and i64 %i.u, 32768
  %.not28 = icmp eq i64 %i.v, 0
  br i1 %.not28, label %bb.ck, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !335
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.g, align 4, !tbaa !3
  store i32 -1, ptr %i.h, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !365 ; 2 uses
  %.not26.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not26.i.i, label %sfnt_get_var_ps_name.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !563 ; 4 uses
  %wide.trip.count.i.i = zext i16 %i.ad to i64    ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv.i.i ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !564
  %i.aj = icmp eq i16 %i.ai, 25
  br i1 %i.aj, label %bb.h, label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !358
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.ag, align 8, !tbaa !565
  switch i16 %i.am, label %.thread.i.i [
    i16 3, label %bb.j
    i16 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !566
  %switch.i.i = icmp ult i16 %i.ao, 2
  br i1 %switch.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !361
  %i.ar = icmp eq i16 %i.aq, 1033
  %.0..0..0..0..0.254.i = load i32, ptr %i.g, align 4
  %i.as = icmp eq i32 %.0..0..0..0..0.254.i, -1
  %or.cond285.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond285.i, label %.thread.sink.split.i.i, label %.thread.i.i

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !566
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !361
  %i.ay = icmp eq i16 %i.ax, 0
  %.0..0..0..0..0.247.i = load i32, ptr %i.h, align 4
  %i.az = icmp eq i32 %.0..0..0..0..0.247.i, -1
  %or.cond286.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond286.i, label %.thread.sink.split.i.i, label %.thread.i.i

.thread.sink.split.i.i:                           ; preds = %bb.m, %bb.k
  %.sink28.i.i = phi ptr [ %i.g, %bb.k ], [ %i.h, %bb.m ]
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.ba, ptr %.sink28.i.i, align 4, !tbaa !3
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !570

._crit_edge.i.i:                                  ; preds = %.thread.i.i
  %.0..0..0..0..0.253.pr.i = load i32, ptr %i.g, align 4, !tbaa !3 ; 3 uses
  %i.bb = icmp sgt i32 %.0..0..0..0..0.253.pr.i, -1
  %.0..0..0..0..0..pre.pre330.i = load i32, ptr %i.h, align 4 ; 3 uses
  br i1 %i.bb, label %.critedge188.thread.i, label %sfnt_get_name_id.exit.i

sfnt_get_name_id.exit.i:                          ; preds = %._crit_edge.i.i
  %i.bc = icmp slt i32 %.0..0..0..0..0..pre.pre330.i, 0
  br i1 %i.bc, label %.lr.ph.i213.i, label %.critedge188.i

.lr.ph.i213.i:                                    ; preds = %sfnt_get_name_id.exit.i
  store i32 -1, ptr %i.g, align 4, !tbaa !3
  store i32 -1, ptr %i.h, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %.thread.i216.i, %.lr.ph.i213.i
  %indvars.iv.i215.i = phi i64 [ 0, %.lr.ph.i213.i ], [ %indvars.iv.next.i217.i, %.thread.i216.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv.i215.i ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !564
  %i.bg = icmp eq i16 %i.bf, 16
  br i1 %i.bg, label %bb.o, label %.thread.i216.i

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !358
  %.not.i220.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i220.i, label %.thread.i216.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i16, ptr %i.bd, align 8, !tbaa !565
  switch i16 %i.bj, label %.thread.i216.i [
    i16 3, label %bb.q
    i16 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !566
  %switch.i223.i = icmp ult i16 %i.bl, 2
  br i1 %switch.i223.i, label %bb.r, label %.thread.i216.i

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !361
  %i.bo = icmp eq i16 %i.bn, 1033
  %.0..0..0..0..0.256.i = load i32, ptr %i.g, align 4
  %i.bp = icmp eq i32 %.0..0..0..0..0.256.i, -1
  %or.cond287.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond287.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

bb.s:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !566
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.t, label %.thread.i216.i

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !361
  %i.bv = icmp eq i16 %i.bu, 0
  %.0..0..0..0..0.249.i = load i32, ptr %i.h, align 4
  %i.bw = icmp eq i32 %.0..0..0..0..0.249.i, -1
  %or.cond288.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond288.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

.thread.sink.split.i221.i:                        ; preds = %bb.t, %bb.r
  %.sink28.i222.i = phi ptr [ %i.g, %bb.r ], [ %i.h, %bb.t ]
  %i.bx = trunc nuw nsw i64 %indvars.iv.i215.i to i32
  store i32 %i.bx, ptr %.sink28.i222.i, align 4, !tbaa !3
  br label %.thread.i216.i
end_hunk_0
begin_hunk_1_@sfnt_get_ps_name:bb.a
  %i.di = sext i32 %.0..0..i to i64
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.dh, i64 %i.di
  %i.dk = tail call fastcc ptr @get_apple_string(ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.dj, ptr noundef nonnull @sfnt_is_alphanumeric)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1143.i = phi ptr [ %i.dk, %bb.ac ], [ %.0142.i, %bb.ab ] ; 4 uses
  %.not176.i = icmp eq ptr %.1143.i, null
  br i1 %.not176.i, label %sfnt_get_var_ps_name.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1143.i) #29
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, 91
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %.1143.i, i64 91
  store i8 0, ptr %i.do, align 1, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0150.i = phi i32 [ 91, %bb.af ], [ %i.dm, %bb.ae ]
  store ptr %.1143.i, ptr %i.aa, align 8, !tbaa !335
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i32 %.0150.i, ptr %i.dp, align 8, !tbaa !679
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !680
  %i.ds = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) #26, !inline_history !681 ; 0 uses
  %i.dt = load i64, ptr %i.q, align 8, !tbaa !678
  %i.du = and i64 %i.dt, 2147418112               ; 2 uses
  %.not177.i = icmp eq i64 %i.du, 0
  br i1 %.not177.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !262
  %i.dx = and i64 %i.dw, 32768
  %.not178.i = icmp eq i64 %i.dx, 0
  br i1 %.not178.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !170 ; 2 uses
  %i.ea = lshr exact i64 %i.du, 16
  %i.eb = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !682 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !684
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !688 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store ptr null, ptr %i.i, align 8, !tbaa !429
  %i.ei = icmp eq i32 %i.eh, 6
  %i.ej = add i32 %i.eh, -256
  %or.cond4.i = icmp ult i32 %i.ej, 32512
  %or.cond191.i = or i1 %i.ei, %or.cond4.i
  br i1 %or.cond191.i, label %bb.ak, label %.thread271.i

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 328
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !690
  %i.em = trunc nuw nsw i32 %i.eh to i16
  %i.en = call i32 %i.el(ptr noundef nonnull %0, i16 noundef zeroext %i.em, ptr noundef nonnull %i.i) #26, !inline_history !681 ; 0 uses
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !429 ; 4 uses
  %.not179.i = icmp eq ptr %.pr.i, null
  br i1 %.not179.i, label %..thread271_crit_edge.i, label %.thread273.i

..thread271_crit_edge.i:                          ; preds = %bb.ak
  %.pre324.i = load ptr, ptr %i.f, align 8, !tbaa !682
  br label %.thread271.i

.thread273.i:                                     ; preds = %bb.ak
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr.i) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.bt

.thread271.i:                                     ; preds = %..thread271_crit_edge.i, %bb.aj
  %i.er = phi ptr [ %.pre324.i, %..thread271_crit_edge.i ], [ %i.ec, %bb.aj ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !684
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.eb
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 328
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !690
  %i.ez = trunc i32 %i.ew to i16
  %i.fa = call i32 %i.ey(ptr noundef nonnull %0, i16 noundef zeroext %i.ez, ptr noundef nonnull %i.j) #26, !inline_history !681 ; 0 uses
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !429 ; 2 uses
  %.not180.i = icmp eq ptr %i.fb, null
  br i1 %.not180.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.thread271.i
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !679
  %i.fe = add i32 %i.fd, 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fb) #29
  %i.fh = add i64 %i.fg, 1
  %i.fi = add i64 %i.fh, %i.ff
  %i.fj = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.fi, ptr noundef nonnull %i.c) #26 ; 3 uses
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !3
  %.not181.i = icmp eq i32 %i.fk, 0
  br i1 %.not181.i, label %bb.am, label %.thread277.i

.thread277.i:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %sfnt_get_var_ps_name.exit

bb.am:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !335
  %i.fm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fj, ptr noundef nonnull dereferenceable(1) %i.fl) #26 ; 0 uses
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !679
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store i8 45, ptr %i.fp, align 1, !tbaa !16
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !429 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16  ; 2 uses
  %.not182297.i = icmp eq i8 %i.fs, 0
  br i1 %.not182297.i, label %.thread281.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.ao
  %i.ft = phi i8 [ %i.gd, %bb.ao ], [ %i.fs, %bb.am ] ; 2 uses
  %.0136299.i = phi ptr [ %i.gc, %bb.ao ], [ %i.fr, %bb.am ]
  %.0151298.i = phi ptr [ %.1152.i, %bb.ao ], [ %i.fq, %bb.am ] ; 3 uses
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
  %i.gb = getelementptr inbounds nuw i8, ptr %.0151298.i, i64 1
  store i8 %i.ft, ptr %.0151298.i, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.1152.i = phi ptr [ %i.gb, %bb.an ], [ %.0151298.i, %.lr.ph.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0136299.i, i64 1 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16  ; 2 uses
  %.not182.i = icmp eq i8 %i.gd, 0
  br i1 %.not182.i, label %.thread281.i, label %.lr.ph.i, !llvm.loop !692

.thread281.i:                                     ; preds = %bb.ao, %bb.am
  %.0151.lcssa.i = phi ptr [ %i.fq, %bb.am ], [ %.1152.i, %bb.ao ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0151.lcssa.i, i64 1
  store i8 0, ptr %.0151.lcssa.i, align 1, !tbaa !16
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !429
  call void @ft_mem_free(ptr noundef %i.x, ptr noundef %i.gf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.bt

bb.ap:                                            ; preds = %.thread271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %bb.ah
  %i.gg = load ptr, ptr %i.f, align 8, !tbaa !682
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !693
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !679
  %i.gl = load i32, ptr %i.d, align 4, !tbaa !3
  %i.gm = mul i32 %i.gl, 17
  %i.gn = add i32 %i.gk, 1
  %i.go = add i32 %i.gn, %i.gm
  %i.gp = zext i32 %i.go to i64
  %i.gq = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.gp, ptr noundef nonnull %i.c) #26 ; 3 uses
  %i.gr = load i32, ptr %i.c, align 4, !tbaa !3
  %.not183.i = icmp eq i32 %i.gr, 0
  br i1 %.not183.i, label %bb.ar, label %sfnt_get_var_ps_name.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load ptr, ptr %i.aa, align 8, !tbaa !335
  %i.gt = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gq, ptr noundef nonnull dereferenceable(1) %i.gs) #26 ; 0 uses
  %i.gu = load i32, ptr %i.gj, align 8, !tbaa !679
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.d, align 4, !tbaa !3
  %.not311.i = icmp eq i32 %i.gx, 0
  br i1 %.not311.i, label %._crit_edge.i, label %.lr.ph303.preheader.i

.lr.ph303.preheader.i:                            ; preds = %bb.ar
  %.pre325.i = load ptr, ptr %i.e, align 8, !tbaa !694
  %1 = sub i64 0, %i.b
  %scevgep101 = getelementptr i8, ptr %i.a, i64 %1
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %bb.bs, %.lr.ph303.preheader.i
  %i.gy = phi ptr [ %i.lx, %bb.bs ], [ %.pre325.i, %.lr.ph303.preheader.i ]
  %.0135302.i = phi ptr [ %i.ly, %bb.bs ], [ %i.gi, %.lr.ph303.preheader.i ] ; 3 uses
  %.0139301.i = phi i32 [ %i.lv, %bb.bs ], [ 0, %.lr.ph303.preheader.i ]
  %.4155300.i = phi ptr [ %.9.i, %bb.bs ], [ %i.gw, %.lr.ph303.preheader.i ] ; 5 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !160
  %i.ha = getelementptr inbounds nuw i8, ptr %.0135302.i, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !695
  %i.hc = icmp eq i64 %i.gz, %i.hb
  br i1 %i.hc, label %bb.bs, label %bb.as

bb.as:                                            ; preds = %.lr.ph303.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 1 ; 3 uses
  store i8 95, ptr %.4155300.i, align 1, !tbaa !16
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !694
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !160
  %i.hg = trunc i64 %i.hf to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 2
  store i8 48, ptr %i.hd, align 1, !tbaa !16
  br label %fixed2float.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hj = icmp slt i32 %i.hg, 0
  br i1 %i.hj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 2
  store i8 45, ptr %i.hd, align 1, !tbaa !16
  %i.hl = sub i32 0, %i.hg
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.050.i.i = phi i32 [ %i.hl, %bb.av ], [ %i.hg, %bb.au ] ; 2 uses
  %.047.i.i = phi ptr [ %i.hk, %bb.av ], [ %i.hd, %bb.au ] ; 9 uses
  %i.hm = lshr i32 %.050.i.i, 16                  ; 2 uses
  %i.hn = and i32 %.050.i.i, 65535                ; 2 uses
  %.not75.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not75.i.i, label %._crit_edge.i240.i, label %.lr.ph.i238.i.a

.lr.ph.i238.i.a:                                  ; preds = %bb.aw, %.lr.ph.i238.i.a
  %.04477.i.i = phi i32 [ %6, %.lr.ph.i238.i.a ], [ %i.hm, %bb.aw ] ; 3 uses
  %.04576.i.i = phi ptr [ %5, %.lr.ph.i238.i.a ], [ %i.a, %bb.aw ] ; 2 uses
  %2 = urem i32 %.04477.i.i, 10
  %3 = trunc nuw nsw i32 %2 to i8
  %4 = or disjoint i8 %3, 48
  %5 = getelementptr i8, ptr %.04576.i.i, i64 1   ; 12 uses
  store i8 %4, ptr %.04576.i.i, align 1, !tbaa !16
  %6 = udiv i32 %.04477.i.i, 10
  %.not.i239.i = icmp samesign ult i32 %.04477.i.i, 10
  br i1 %.not.i239.i, label %iter.check, label %.lr.ph.i238.i.a, !llvm.loop !697

iter.check:                                       ; preds = %.lr.ph.i238.i.a
  %7 = ptrtoaddr ptr %5 to i64
  %i.ho = ptrtoaddr ptr %5 to i64
  %8 = add i64 %i.ho, -1
  %umin103 = call i64 @llvm.umin.i64(i64 %i.b, i64 %8)
  %i.hp = sub i64 %7, %umin103                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.hp, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %9 = ptrtoaddr ptr %5 to i64
  %scevgep = getelementptr i8, ptr %.047.i.i, i64 %9
  %i.hq = ptrtoaddr ptr %5 to i64
  %10 = add i64 %i.hq, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.b, i64 %10) ; 2 uses
  %i.hr = sub i64 0, %umin
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %i.hr
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %umin
  %bound0 = icmp ult ptr %.047.i.i, %5
  %bound1 = icmp ult ptr %scevgep102, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph80.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check104 = icmp ult i64 %i.hp, 32
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hs = and i64 %i.hp, 24
  %n.vec = and i64 %i.hp, -32                     ; 5 uses
  %i.ht = sub i64 0, %n.vec
  %i.hu = getelementptr i8, ptr %5, i64 %i.ht
  %i.hv = getelementptr i8, ptr %.047.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %5, i64 %i.hw ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.047.i.i, i64 %index ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.hy = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.hx, align 1, !tbaa !16, !alias.scope !698
  %wide.load106 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !16, !alias.scope !698
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse107 = shufflevector <16 x i8> %wide.load106, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hz = getelementptr i8, ptr %next.gep105, i64 16
  store <16 x i8> %reverse, ptr %next.gep105, align 1, !tbaa !16, !alias.scope !701, !noalias !698
  store <16 x i8> %reverse107, ptr %i.hz, align 1, !tbaa !16, !alias.scope !701, !noalias !698
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hp, %n.vec
  br i1 %cmp.n, label %._crit_edge.i240.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.i.i.preheader, label %vec.epilog.ph, !prof !704

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.hp, -8                   ; 4 uses
  %i.ib = sub i64 0, %n.vec109
  %i.ic = getelementptr i8, ptr %5, i64 %i.ib
  %i.id = getelementptr i8, ptr %.047.i.i, i64 %n.vec109 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %i.ie = sub i64 0, %index110
  %next.gep111 = getelementptr i8, ptr %5, i64 %i.ie
  %next.gep112 = getelementptr i8, ptr %.047.i.i, i64 %index110
  %i.if = getelementptr inbounds i8, ptr %next.gep111, i64 -8
  %wide.load113 = load <8 x i8>, ptr %i.if, align 1, !tbaa !16, !alias.scope !698
  %reverse114 = shufflevector <8 x i8> %wide.load113, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse114, ptr %next.gep112, align 1, !tbaa !16, !alias.scope !701, !noalias !698
  %index.next115 = add nuw i64 %index110, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.ig, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.hp, %n.vec109
  br i1 %cmp.n116, label %._crit_edge.i240.i, label %.lr.ph80.i.i.preheader

.lr.ph80.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14679.i.i.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %i.hu, %vec.epilog.iter.check ], [ %i.ic, %vec.epilog.middle.block ]
  %.14878.i.i.ph = phi ptr [ %.047.i.i, %iter.check ], [ %.047.i.i, %vector.memcheck ], [ %i.hv, %vec.epilog.iter.check ], [ %i.id, %vec.epilog.middle.block ]
  br label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %.lr.ph80.i.i.preheader, %.lr.ph80.i.i
  %.14679.i.i = phi ptr [ %i.ih, %.lr.ph80.i.i ], [ %.14679.i.i.ph, %.lr.ph80.i.i.preheader ]
  %.14878.i.i = phi ptr [ %i.ij, %.lr.ph80.i.i ], [ %.14878.i.i.ph, %.lr.ph80.i.i.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.14679.i.i, i64 -1 ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !16
  %i.ij = getelementptr inbounds nuw i8, ptr %.14878.i.i, i64 1 ; 2 uses
  store i8 %i.ii, ptr %.14878.i.i, align 1, !tbaa !16
  %i.ik = icmp ugt ptr %i.ih, %i.a
  br i1 %i.ik, label %.lr.ph80.i.i, label %._crit_edge.i240.i, !llvm.loop !706

._crit_edge.i240.i:                               ; preds = %.lr.ph80.i.i, %middle.block, %vec.epilog.middle.block, %bb.aw
  %.148.lcssa.i.i = phi ptr [ %.047.i.i, %bb.aw ], [ %i.id, %vec.epilog.middle.block ], [ %i.hv, %middle.block ], [ %i.ij, %.lr.ph80.i.i ] ; 8 uses
  %.not56.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not56.i.i, label %fixed2float.exit.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i240.i
  store i8 46, ptr %.148.lcssa.i.i, align 1, !tbaa !16
  %i.il = mul nuw nsw i32 %i.hn, 10
  %i.im = add nuw nsw i32 %i.il, 5                ; 2 uses
  %.285.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 1
  %i.in = lshr i32 %i.im, 16
  %i.io = trunc nuw nsw i32 %i.in to i8
  %i.ip = add nuw nsw i8 %i.io, 48
  store i8 %i.ip, ptr %.285.i.i, align 1, !tbaa !16
  %i.iq = and i32 %i.im, 65535
  %i.ir = mul nuw nsw i32 %i.iq, 10               ; 2 uses
  %.285.1.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 2
  %i.is = lshr i32 %i.ir, 16
  %i.it = trunc nuw nsw i32 %i.is to i8
  %i.iu = or disjoint i8 %i.it, 48
  store i8 %i.iu, ptr %.285.1.i.i, align 1, !tbaa !16
  %i.iv = and i32 %i.ir, 65534
  %i.iw = mul nuw nsw i32 %i.iv, 10               ; 2 uses
  %.285.2.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 3 ; 2 uses
  %i.ix = lshr i32 %i.iw, 16
  %i.iy = trunc nuw nsw i32 %i.ix to i8
  %i.iz = or disjoint i8 %i.iy, 48                ; 2 uses
  store i8 %i.iz, ptr %.285.2.i.i, align 1, !tbaa !16
  %i.ja = and i32 %i.iw, 65532                    ; 2 uses
  %.not57.2.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not57.2.i.i, label %.thread.i241.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jb = mul nuw nsw i32 %i.ja, 10               ; 2 uses
  %.285.3.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 4 ; 2 uses
  %i.jc = lshr i32 %i.jb, 16
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  %i.je = or disjoint i8 %i.jd, 48                ; 2 uses
  store i8 %i.je, ptr %.285.3.i.i, align 1, !tbaa !16
  %i.jf = and i32 %i.jb, 65528                    ; 2 uses
  %.not57.3.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not57.3.i.i, label %.thread.i241.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jg = mul nuw nsw i32 %i.jf, 10               ; 2 uses
  %.285.4.i.i = getelementptr inbounds nuw i8, ptr %.148.lcssa.i.i, i64 5 ; 9 uses
  %i.jh = lshr i32 %i.jg, 16                      ; 2 uses
  %i.ji = trunc nuw nsw i32 %i.jh to i8           ; 3 uses
  %i.jj = or disjoint i8 %i.ji, 48                ; 6 uses
  store i8 %i.jj, ptr %.285.4.i.i, align 1, !tbaa !16
  %i.jk = and i32 %i.jg, 65520                    ; 4 uses
  %.not57.4.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not57.4.i.i, label %.thread.i241.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jl = icmp samesign ult i32 %i.jk, 34480
  br i1 %i.jl, label %.thread63.i.i, label %.thread70.i.i

.thread.i241.i:                                   ; preds = %bb.az, %bb.ay, %bb.ax
  %.pre.i.i = phi i8 [ %i.jj, %bb.az ], [ %i.je, %bb.ay ], [ %i.iz, %bb.ax ] ; 3 uses
  %.285.lcssa.i.i = phi ptr [ %.285.4.i.i, %bb.az ], [ %.285.3.i.i, %bb.ay ], [ %.285.2.i.i, %bb.ax ] ; 4 uses
  %i.jm = ptrtoint ptr %.285.lcssa.i.i to i64
  %i.jn = ptrtoint ptr %.148.lcssa.i.i to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp eq i64 %i.jo, 5
  br i1 %i.jp, label %.thread63.thread.i.i, label %.thread70.i.i

.thread63.i.i:                                    ; preds = %bb.ba
  %i.jq = icmp eq i32 %i.jh, 1
  br i1 %i.jq, label %bb.bb, label %bb.bc

.thread63.thread.i.i:                             ; preds = %.thread.i241.i
  %i.jr = icmp eq i8 %.pre.i.i, 49
  br i1 %i.jr, label %bb.bb, label %.thread118.i.i

bb.bb:                                            ; preds = %.thread63.thread.i.i, %.thread63.i.i
  %.28594111.i.i = phi ptr [ %.285.lcssa.i.i, %.thread63.thread.i.i ], [ %.285.4.i.i, %.thread63.i.i ] ; 2 uses
  store i8 48, ptr %.28594111.i.i, align 1, !tbaa !16
  br label %.lr.ph87.i.i.preheader

bb.bc:                                            ; preds = %.thread63.i.i
  %i.js = icmp eq i32 %i.jk, 17232
  br i1 %i.js, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.jt = and i8 %i.ji, 1
  %.not58.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not58.i.i, label %.thread70.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %narrow.i.i = add nuw nsw i8 %i.ji, 47          ; 2 uses
  store i8 %narrow.i.i, ptr %.285.4.i.i, align 1, !tbaa !16
  br label %.thread70.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.ju = icmp samesign ult i32 %i.jk, 17232
  br i1 %i.ju, label %.thread118.i.i, label %.thread70.i.i

.thread118.i.i:                                   ; preds = %bb.bf, %.thread63.thread.i.i
  %.28594110117121.i.i = phi ptr [ %.285.4.i.i, %bb.bf ], [ %.285.lcssa.i.i, %.thread63.thread.i.i ] ; 3 uses
  %i.jv = phi i8 [ %i.jj, %bb.bf ], [ %.pre.i.i, %.thread63.thread.i.i ] ; 2 uses
  %.not59.i.i = icmp eq i8 %i.jv, 48
  br i1 %.not59.i.i, label %.lr.ph87.i.i.preheader, label %bb.bg

bb.bg:                                            ; preds = %.thread118.i.i
  %i.jw = add nsw i8 %i.jv, -1                    ; 2 uses
  store i8 %i.jw, ptr %.28594110117121.i.i, align 1, !tbaa !16
  br label %.thread70.i.i

.thread70.i.i:                                    ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %.thread.i241.i, %bb.ba
  %i.jx = phi i8 [ %i.jj, %bb.bd ], [ %i.jw, %bb.bg ], [ %narrow.i.i, %bb.be ], [ %i.jj, %bb.bf ], [ %i.jj, %bb.ba ], [ %.pre.i.i, %.thread.i241.i ]
  %.28593.i.i = phi ptr [ %.285.4.i.i, %bb.bd ], [ %.28594110117121.i.i, %bb.bg ], [ %.285.4.i.i, %bb.be ], [ %.285.4.i.i, %bb.bf ], [ %.285.4.i.i, %bb.ba ], [ %.285.lcssa.i.i, %.thread.i241.i ] ; 2 uses
  %i.jy = icmp eq i8 %i.jx, 48
  br i1 %i.jy, label %.lr.ph87.i.i.preheader, label %._crit_edge88.i.i

.lr.ph87.i.i.preheader:                           ; preds = %.thread70.i.i, %.thread118.i.i, %bb.bb
  %.486.i.i.ph = phi ptr [ %.28594111.i.i, %bb.bb ], [ %.28594110117121.i.i, %.thread118.i.i ], [ %.28593.i.i, %.thread70.i.i ]
  br label %.lr.ph87.i.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i
  %.486.i.i = phi ptr [ %i.jz, %.lr.ph87.i.i ], [ %.486.i.i.ph, %.lr.ph87.i.i.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.486.i.i, i64 -1 ; 3 uses
  store i8 0, ptr %.486.i.i, align 1, !tbaa !16
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !16
  %i.kb = icmp eq i8 %i.ka, 48
  br i1 %i.kb, label %.lr.ph87.i.i, label %._crit_edge88.i.i, !llvm.loop !707

._crit_edge88.i.i:                                ; preds = %.lr.ph87.i.i, %.thread70.i.i
  %.4.lcssa.i.i = phi ptr [ %.28593.i.i, %.thread70.i.i ], [ %i.jz, %.lr.ph87.i.i ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.4.lcssa.i.i, i64 1
  br label %fixed2float.exit.i

fixed2float.exit.i:                               ; preds = %._crit_edge88.i.i, %._crit_edge.i240.i, %bb.at
  %.049.i.i = phi ptr [ %i.hi, %bb.at ], [ %i.kc, %._crit_edge88.i.i ], [ %.148.lcssa.i.i, %._crit_edge.i240.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.kd = getelementptr inbounds nuw i8, ptr %.0135302.i, i64 32 ; 4 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !708 ; 3 uses
  %i.kf = lshr i64 %i.ke, 24
  %i.kg = trunc i64 %i.kf to i8                   ; 3 uses
  %.not184.i = icmp eq i8 %i.kg, 32
  br i1 %.not184.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %fixed2float.exit.i
  %i.kh = sext i8 %i.kg to i32                    ; 3 uses
  %i.ki = add nsw i32 %i.kh, -48
  %i.kj = icmp ult i32 %i.ki, 10
  %i.kk = add nsw i32 %i.kh, -65
  %i.kl = icmp ult i32 %i.kk, 26
  %or.cond197.i = select i1 %i.kj, i1 true, i1 %i.kl
  %i.km = add nsw i32 %i.kh, -97
  %i.kn = icmp ult i32 %i.km, 26
  %or.cond199.i = select i1 %or.cond197.i, i1 true, i1 %i.kn
  br i1 %or.cond199.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ko = getelementptr inbounds nuw i8, ptr %.049.i.i, i64 1
  store i8 %i.kg, ptr %.049.i.i, align 1, !tbaa !16
  %.pre326.i = load i64, ptr %i.kd, align 8, !tbaa !708
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %fixed2float.exit.i
  %i.kp = phi i64 [ %.pre326.i, %bb.bi ], [ %i.ke, %bb.bh ], [ %i.ke, %fixed2float.exit.i ] ; 3 uses
  %.5156.i = phi ptr [ %i.ko, %bb.bi ], [ %.049.i.i, %bb.bh ], [ %.049.i.i, %fixed2float.exit.i ] ; 4 uses
  %i.kq = lshr i64 %i.kp, 16
  %i.kr = trunc i64 %i.kq to i8                   ; 3 uses
  %.not185.i = icmp eq i8 %i.kr, 32
  br i1 %.not185.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ks = sext i8 %i.kr to i32                    ; 3 uses
  %i.kt = add nsw i32 %i.ks, -48
  %i.ku = icmp ult i32 %i.kt, 10
  %i.kv = add nsw i32 %i.ks, -65
  %i.kw = icmp ult i32 %i.kv, 26
  %or.cond201.i = select i1 %i.ku, i1 true, i1 %i.kw
  %i.kx = add nsw i32 %i.ks, -97
  %i.ky = icmp ult i32 %i.kx, 26
  %or.cond203.i = select i1 %or.cond201.i, i1 true, i1 %i.ky
  br i1 %or.cond203.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kz = getelementptr inbounds nuw i8, ptr %.5156.i, i64 1
  store i8 %i.kr, ptr %.5156.i, align 1, !tbaa !16
  %.pre327.i = load i64, ptr %i.kd, align 8, !tbaa !708
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.la = phi i64 [ %.pre327.i, %bb.bl ], [ %i.kp, %bb.bk ], [ %i.kp, %bb.bj ] ; 3 uses
  %.6157.i = phi ptr [ %i.kz, %bb.bl ], [ %.5156.i, %bb.bk ], [ %.5156.i, %bb.bj ] ; 4 uses
  %i.lb = lshr i64 %i.la, 8
  %i.lc = trunc i64 %i.lb to i8                   ; 3 uses
  %.not186.i = icmp eq i8 %i.lc, 32
  br i1 %.not186.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ld = sext i8 %i.lc to i32                    ; 3 uses
  %i.le = add nsw i32 %i.ld, -48
  %i.lf = icmp ult i32 %i.le, 10
  %i.lg = add nsw i32 %i.ld, -65
  %i.lh = icmp ult i32 %i.lg, 26
  %or.cond205.i = select i1 %i.lf, i1 true, i1 %i.lh
  %i.li = add nsw i32 %i.ld, -97
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.umax.v8i16
!497 = !{!141, !5, i64 1}
!498 = !{!141, !5, i64 2}
!499 = !{!141, !5, i64 3}
!500 = distinct !{!500, !18}
!501 = !{!502, !15, i64 8}
!502 = !{!"FT_LayerIterator_", !4, i64 0, !4, i64 4, !15, i64 8}
!503 = !{!502, !4, i64 4}
!504 = distinct !{!504, !18}
!505 = !{!502, !4, i64 0}
!506 = !{!507, !15, i64 0}
!507 = !{!"FT_Opaque_Paint_", !15, i64 0, !5, i64 8}
!508 = distinct !{!508, !18}
!509 = !{!507, !5, i64 8}
!510 = !{!409, !27, i64 32}
!511 = !{!409, !27, i64 40}
!512 = !{!227, !27, i64 0}
!513 = !{!227, !27, i64 8}
!514 = !{!225, !4, i64 48}
!515 = !{i64 0, i64 8, !160, i64 8, i64 8, !160}
!516 = distinct !{!516, !18}
!517 = !{!518, !4, i64 4}
!518 = !{!"FT_ColorStopIterator_", !4, i64 0, !4, i64 4, !15, i64 8, !5, i64 16}
!519 = !{!518, !4, i64 0}
!520 = !{!518, !5, i64 16}
!521 = !{!518, !15, i64 8}
!522 = !{!523, !27, i64 0}
!523 = !{!"FT_ColorStop_", !27, i64 0, !524, i64 8}
!524 = !{!"FT_ColorIndex_", !13, i64 0, !13, i64 2}
!525 = !{!523, !13, i64 8}
!526 = !{!523, !13, i64 10}
!527 = !{!469, !89, i64 120}
!528 = !{!469, !27, i64 104}
!529 = !{!469, !89, i64 112}
!530 = !{!487, !12, i64 112}
!531 = distinct !{null}
!532 = !{!533, !4, i64 0}
!533 = !{!"FT_COLR_Paint_", !4, i64 0, !5, i64 8}
!534 = !{!226, !27, i64 0}
!535 = !{!226, !27, i64 24}
!536 = !{!226, !27, i64 8}
!537 = !{!226, !27, i64 16}
!538 = !{!225, !27, i64 32}
!539 = !{!225, !27, i64 40}
!540 = !{!416, !15, i64 168}
!541 = !{!416, !4, i64 156}
!542 = !{!416, !4, i64 152}
!543 = !{!416, !5, i64 178}
!544 = !{!416, !4, i64 160}
!545 = !{!416, !13, i64 176}
!546 = !{!416, !4, i64 192}
!547 = !{!416, !4, i64 196}
!548 = distinct !{!548, !18}
!549 = !{!416, !4, i64 144}
!550 = !{!119, !5, i64 1104}
!551 = !{!119, !5, i64 1105}
!552 = !{!119, !5, i64 1108}
!553 = !{!119, !13, i64 1088}
!554 = distinct !{!554, !18}
!555 = distinct !{!555, !18, !556}
!556 = !{!"llvm.loop.unswitch.partial.disable"}
!557 = !{!124, !13, i64 38}
!558 = !{!559, !12, i64 24}
!559 = !{!"FT_Service_MetricsVariationsRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!560 = !{!559, !12, i64 32}
!561 = !{!559, !12, i64 0}
!562 = !{!559, !12, i64 8}
!563 = !{!119, !128, i64 584}
!564 = !{!359, !13, i64 6}
!565 = !{!359, !13, i64 0}
!566 = !{!359, !13, i64 2}
!567 = distinct !{!567, !18}
!568 = !{!119, !58, i64 608}
!569 = !{ptr @tt_name_ascii_from_other, ptr @tt_name_ascii_from_utf16}
!570 = distinct !{!570, !18}
!571 = !{!572, !13, i64 0}
!572 = !{!"Svg_", !13, i64 0, !13, i64 2, !15, i64 8, !12, i64 16, !27, i64 24}
!573 = !{!572, !15, i64 8}
!574 = !{!572, !13, i64 2}
!575 = !{!572, !12, i64 16}
!576 = !{!572, !27, i64 24}
!577 = !{!416, !11, i64 8}
!578 = !{!416, !12, i64 288}
!579 = !{!580}
!580 = distinct !{!580, !581, !"extract_svg_doc: argument 0"}
!581 = distinct !{!581, !"extract_svg_doc"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"extract_svg_doc: argument 0"}
!584 = distinct !{!584, !"extract_svg_doc"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"extract_svg_doc: argument 0"}
!587 = distinct !{!587, !"extract_svg_doc"}
!588 = distinct !{!588, !18}
!589 = !{!590, !15, i64 0}
!590 = !{!"FT_SVG_DocumentRec_", !15, i64 0, !27, i64 8, !286, i64 16, !13, i64 72, !13, i64 74, !13, i64 76, !226, i64 80, !227, i64 112}
!591 = !{!590, !27, i64 8}
!592 = !{!47, !54, i64 160}
!593 = !{i64 0, i64 2, !298, i64 2, i64 2, !298, i64 8, i64 8, !160, i64 16, i64 8, !160, i64 24, i64 8, !160, i64 32, i64 8, !160, i64 40, i64 8, !160, i64 48, i64 8, !160}
!594 = !{!590, !13, i64 72}
!595 = !{!590, !13, i64 74}
!596 = !{!590, !13, i64 76}
!597 = !{!590, !27, i64 80}
!598 = !{!590, !27, i64 104}
!599 = !{!179, !15, i64 0}
!600 = !{!119, !15, i64 816}
!601 = !{!602, !602, i64 0}
!602 = !{!"p2 _ZTS17TT_CMap_ClassRec_", !50, i64 0}
!603 = !{!604, !604, i64 0}
!604 = !{!"p1 _ZTS17TT_CMap_ClassRec_", !12, i64 0}
!605 = !{!606, !4, i64 80}
!606 = !{!"TT_CMap_ClassRec_", !98, i64 0, !4, i64 80, !12, i64 88, !12, i64 96}
!607 = !{!606, !12, i64 88}
!608 = !{!23, !4, i64 220}
!609 = !{!610, !610, i64 0}
!610 = !{!"p1 _ZTS11FT_CMapRec_", !12, i64 0}
!611 = distinct !{!611, !18}
!612 = distinct !{!612, !18}
!613 = distinct !{!613, !18}
!614 = distinct !{!614, !18}
!615 = distinct !{!615, !18}
!616 = !{!383, !27, i64 48}
!617 = !{!383, !27, i64 40}
!618 = !{ptr @tt_sbit_decoder_load_bit_aligned, ptr @tt_sbit_decoder_load_byte_aligned, ptr @tt_sbit_decoder_load_compound, ptr @tt_sbit_decoder_load_png}
!619 = !{!414, !4, i64 4}
!620 = !{!414, !4, i64 0}
!621 = distinct !{!621, !18}
!622 = distinct !{!622, !18}
!623 = !{!624}
!624 = distinct !{!624, !625}
!625 = distinct !{!625, !"LVerDomain"}
!626 = !{!627}
!627 = distinct !{!627, !625}
!628 = distinct !{!628, !18, !104, !105}
!629 = !{!"branch_weights", i32 4, i32 28}
!630 = distinct !{!630, !18, !104, !105}
!631 = distinct !{!631, !18, !104}
!632 = distinct !{!632, !18}
!633 = distinct !{!633, !634}
!634 = !{!"llvm.loop.unroll.disable"}
!635 = distinct !{!635, !18}
!636 = distinct !{!636, !18}
!637 = distinct !{!637, !18}
!638 = !{!138, !138, i64 0}
!639 = !{!640, !640, i64 0}
!640 = !{!"p1 _ZTS14png_struct_def", !12, i64 0}
!641 = !{!642, !642, i64 0}
!642 = !{!"p1 _ZTS12png_info_def", !12, i64 0}
!643 = distinct !{!643, !18}
!644 = !{!645, !27, i64 8}
!645 = !{!"png_row_info_struct", !4, i64 0, !27, i64 8, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19}
!646 = distinct !{!646, !18}
!647 = distinct !{!647, !18}
!648 = distinct !{!648, !18}
!649 = !{!650}
!650 = distinct !{!650, !651}
!651 = distinct !{!651, !"LVerDomain"}
!652 = !{!653}
!653 = distinct !{!653, !651}
!654 = distinct !{!654, !18, !104, !105}
!655 = !{!"branch_weights", i32 8, i32 8}
!656 = distinct !{!656, !18, !104, !105}
!657 = distinct !{!657, !18, !104}
!658 = distinct !{!658, !18}
!659 = distinct !{!659, !18, !104, !105}
!660 = distinct !{!660, !18, !105, !104}
!661 = !{!662}
!662 = distinct !{!662, !663}
!663 = distinct !{!663, !"LVerDomain"}
!664 = !{!665}
!665 = distinct !{!665, !663}
!666 = distinct !{!666, !18, !104, !105}
!667 = distinct !{!667, !18, !104}
!668 = distinct !{!668, !18}
!669 = !{!670, !4, i64 0}
!670 = !{!"FT_ColorLine_", !4, i64 0, !518, i64 8}
!671 = !{!670, !4, i64 8}
!672 = !{!670, !15, i64 16}
!673 = !{!670, !4, i64 12}
!674 = !{!670, !5, i64 24}
!675 = distinct !{!675, !18}
!676 = distinct !{!676, !18}
!677 = !{!119, !27, i64 944}
!678 = !{!47, !27, i64 8}
!679 = !{!119, !4, i64 1240}
!680 = !{!487, !12, i64 136}
!681 = distinct !{null}
!682 = !{!683, !683, i64 0}
!683 = !{!"p1 _ZTS10FT_MM_Var_", !12, i64 0}
!684 = !{!685, !687, i64 24}
!685 = !{!"FT_MM_Var_", !4, i64 0, !4, i64 4, !4, i64 8, !686, i64 16, !687, i64 24}
!686 = !{!"p1 _ZTS12FT_Var_Axis_", !12, i64 0}
!687 = !{!"p1 _ZTS19FT_Var_Named_Style_", !12, i64 0}
!688 = !{!689, !4, i64 12}
!689 = !{!"FT_Var_Named_Style_", !121, i64 0, !4, i64 8, !4, i64 12}
!690 = !{!172, !12, i64 328}
!691 = !{!689, !4, i64 8}
!692 = distinct !{!692, !18}
!693 = !{!685, !686, i64 16}
!694 = !{!121, !121, i64 0}
!695 = !{!696, !27, i64 16}
!696 = !{!"FT_Var_Axis_", !15, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !4, i64 40}
!697 = distinct !{!697, !18}
!698 = !{!699}
!699 = distinct !{!699, !700}
!700 = distinct !{!700, !"LVerDomain"}
!701 = !{!702}
!702 = distinct !{!702, !700}
!703 = distinct !{!703, !18, !104, !105}
!704 = !{!"branch_weights", i32 8, i32 24}
!705 = distinct !{!705, !18, !104, !105}
!706 = distinct !{!706, !18, !104}
!707 = distinct !{!707, !18}
!708 = !{!696, !27, i64 32}
!709 = distinct !{!709, !18}
!710 = distinct !{!710, !18}
!711 = !{ptr @sfnt_is_alphanumeric, ptr @sfnt_is_postscript}
!712 = distinct !{!712, !18}
!713 = distinct !{!713, !18}
!714 = distinct !{!714, !18}
!715 = !{!716, !4, i64 0}
!716 = !{!"BDF_PropertyRec_", !4, i64 0, !5, i64 8}
!717 = !{!143, !15, i64 8}
!718 = !{!143, !4, i64 32}
!719 = !{!143, !15, i64 16}
!720 = !{!143, !27, i64 24}
!721 = distinct !{!721, !634}
!722 = distinct !{!722, !18}
!723 = !{!409, !13, i64 26}
!724 = distinct !{!724, !18}
!725 = !{!9, !14, i64 16}
!726 = !{!606, !12, i64 96}
!727 = distinct !{!727, !18}
!728 = distinct !{!728, !18}
!729 = distinct !{!729, !18}
!730 = distinct !{!730, !18}
!731 = !{!35, !4, i64 60}
!732 = !{!35, !4, i64 56}
!733 = !{!35, !4, i64 64}
!734 = distinct !{!734, !18}
!735 = !{!35, !15, i64 72}
!736 = !{!35, !4, i64 52}
!737 = distinct !{!737, !18}
!738 = distinct !{!738, !18}
!739 = !{!69, !27, i64 64}
!740 = distinct !{!740, !18}
!741 = !{!8, !11, i64 0}
!742 = distinct !{!742, !18, !104, !105}
!743 = distinct !{!743, !18, !105, !104}
!744 = distinct !{!744, !18, !104, !105}
!745 = distinct !{!745, !18, !105, !104}
!746 = distinct !{!746, !18}
end_hunk_2
