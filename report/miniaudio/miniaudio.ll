Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_channel_converter_init_preallocated:bb.a
  br i1 %exitcond.not.i.i331, label %.loopexit399, label %ma_channel_map_get_channel.exit.i.i328, !llvm.loop !41

.loopexit399:                                     ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.qr = tail call fastcc i32 @ma_channel_map_get_spatial_channel_count(ptr noundef %i.qj, i32 noundef %i.qf) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %.not246 = icmp eq i32 %i.qr, 0
  br i1 %.not246, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit399
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !558
  %i.qu = call i32 @ma_channel_map_find_channel_position(i32 noundef %.lcssa, ptr noundef %i.qt, i8 noundef zeroext 5, ptr noundef nonnull %i.a)
  %.not247 = icmp eq i32 %i.qu, 0
  br i1 %.not247, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qv = uitofp i32 %i.qr to float
  %i.qw = fdiv float 1.000000e+00, %i.qv          ; 2 uses
  br i1 %.not17.i.i324, label %.loopexit, label %.lr.ph447

.lr.ph447:                                        ; preds = %bb.by
  %i.qx = icmp eq ptr %i.qj, null
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.qz = load i32, ptr %i.a, align 4
  %i.ra = zext i32 %i.qz to i64
  %i.rb = fmul nnan float %i.qw, 4.096000e+03
  %i.rc = fptosi float %i.rb to i32
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph447, %ma_is_spatial_channel_position.exit348.thread382
  %i.rd = phi i32 [ %i.qf, %.lr.ph447 ], [ %i.ry, %ma_is_spatial_channel_position.exit348.thread382 ] ; 9 uses
  %indvars.iv529 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next530, %ma_is_spatial_channel_position.exit348.thread382 ] ; 4 uses
  br i1 %i.qx, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.re = trunc nuw i64 %indvars.iv529 to i32
  %i.rf = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.rd, i32 noundef %i.re)
  br label %ma_channel_map_get_channel.exit339

bb.cb:                                            ; preds = %bb.bz
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv529
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit339

ma_channel_map_get_channel.exit339:               ; preds = %bb.ca, %bb.cb
  %.0.i338 = phi i8 [ %i.rf, %bb.ca ], [ %i.rh, %bb.cb ] ; 4 uses
  switch i8 %.0.i338, label %bb.cc [
    i8 5, label %ma_is_spatial_channel_position.exit348.thread382
    i8 1, label %ma_is_spatial_channel_position.exit348.thread382
    i8 0, label %ma_is_spatial_channel_position.exit348.thread382
  ]

bb.cc:                                            ; preds = %ma_channel_map_get_channel.exit339
  %i.ri = icmp ugt i8 %.0.i338, 19
  br i1 %i.ri, label %ma_is_spatial_channel_position.exit348.thread382, label %.preheader.i341

.preheader.i341:                                  ; preds = %bb.cc
  %i.rj = zext nneg i8 %.0.i338 to i64
  %i.rk = shl nuw nsw i64 1, %i.rj                ; 2 uses
  %i.rl = and i64 %i.rk, 777180
  %or.cond393 = icmp eq i64 %i.rl, 0
  br i1 %or.cond393, label %ma_is_spatial_channel_position.exit348, label %ma_is_spatial_channel_position.exit348.thread

ma_is_spatial_channel_position.exit348:           ; preds = %.preheader.i341
  %i.rm = and i64 %i.rk, 263168
  %.not20.i345 = icmp eq i64 %i.rm, 0
  %i.rn = icmp samesign ult i8 %.0.i338, 13
  %or.cond.i346.not = and i1 %.not20.i345, %i.rn
  br i1 %or.cond.i346.not, label %ma_is_spatial_channel_position.exit348.thread382, label %ma_is_spatial_channel_position.exit348.thread

ma_is_spatial_channel_position.exit348.thread:    ; preds = %.preheader.i341, %ma_is_spatial_channel_position.exit348
  %i.ro = load i32, ptr %2, align 8, !tbaa !562
  %i.rp = icmp eq i32 %i.ro, 5
  %i.rq = load ptr, ptr %i.qy, align 8, !tbaa !119
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv529
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !134
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.ra ; 4 uses
  br i1 %i.rp, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %ma_is_spatial_channel_position.exit348.thread
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !349
  %i.rv = fcmp oeq float %i.ru, 0.000000e+00
  br i1 %i.rv, label %bb.ce, label %ma_is_spatial_channel_position.exit348.thread382

bb.ce:                                            ; preds = %bb.cd
  store float %i.qw, ptr %i.rt, align 4, !tbaa !349
  br label %ma_is_spatial_channel_position.exit348.thread382

bb.cf:                                            ; preds = %ma_is_spatial_channel_position.exit348.thread
  %i.rw = load i32, ptr %i.rt, align 4, !tbaa !118
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.cg, label %ma_is_spatial_channel_position.exit348.thread382

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.rc, ptr %i.rt, align 4, !tbaa !118
  %.pre542 = load i32, ptr %i.i, align 4, !tbaa !561
  br label %ma_is_spatial_channel_position.exit348.thread382

ma_is_spatial_channel_position.exit348.thread382: ; preds = %bb.cc, %ma_channel_map_get_channel.exit339, %ma_channel_map_get_channel.exit339, %ma_channel_map_get_channel.exit339, %bb.ce, %bb.cd, %bb.cg, %bb.cf, %ma_is_spatial_channel_position.exit348
  %i.ry = phi i32 [ %i.rd, %bb.cc ], [ %i.rd, %ma_channel_map_get_channel.exit339 ], [ %i.rd, %ma_channel_map_get_channel.exit339 ], [ %i.rd, %ma_channel_map_get_channel.exit339 ], [ %i.rd, %bb.ce ], [ %i.rd, %bb.cd ], [ %.pre542, %bb.cg ], [ %i.rd, %bb.cf ], [ %i.rd, %ma_is_spatial_channel_position.exit348 ] ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.rz = zext i32 %i.ry to i64
  %i.sa = icmp samesign ult i64 %indvars.iv.next530, %i.rz
  br i1 %i.sa, label %bb.bz, label %.loopexit, !llvm.loop !2074

.loopexit:                                        ; preds = %ma_is_spatial_channel_position.exit348.thread382, %bb.by, %bb.bx, %.loopexit399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge432, %ma_channel_map_get_channel.exit.i.i328, %ma_channel_map_get_channel.exit.us.i.i333, %.preheader409.lr.ph, %.preheader410, %bb.ai, %bb.k, %._crit_edge429, %.loopexit, %._crit_edge444, %ma_zero_memory_default.exit256, %bb.a
  %.1229 = phi i32 [ 0, %bb.k ], [ -2, %bb.a ], [ %i.c, %ma_zero_memory_default.exit256 ], [ 0, %._crit_edge444 ], [ 0, %.loopexit ], [ -2, %bb.ai ], [ 0, %._crit_edge429 ], [ 0, %.preheader410 ], [ 0, %.preheader409.lr.ph ], [ 0, %ma_channel_map_get_channel.exit.us.i.i333 ], [ 0, %ma_channel_map_get_channel.exit.i.i328 ], [ 0, %._crit_edge432 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.1229
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2, 1) i32 @ma_channel_map_build_shuffle_table(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %4, null
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq i32 %3, 0
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %.loopexit49, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp eq ptr %2, null                     ; 3 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.preheader.split.us.split.us, label %.preheader.split.us.split.preheader

.preheader.split.us.split.preheader:              ; preds = %.preheader
  %wide.trip.count115 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %1 to i64
  %wide.trip.count105 = zext i32 %1 to i64
  %wide.trip.count110 = zext i32 %1 to i64
  br label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader
  %i.f = icmp ugt i32 %1, 8
  %wide.trip.count155 = zext i32 %3 to i64        ; 2 uses
  br i1 %i.f, label %.preheader.split.us.split.us.split.us, label %.preheader.split.us.split.us.split.preheader

.preheader.split.us.split.us.split.preheader:     ; preds = %.preheader.split.us.split.us
  %exitcond117.peel.not = icmp eq i32 %1, 1
  %exitcond117.peel129.not = icmp eq i32 %1, 2
  %cond182 = icmp eq i32 %1, 1
  br label %.preheader.split.us.split.us.split

.preheader.split.us.split.us.split.us:            ; preds = %.preheader.split.us.split.us, %..loopexit_crit_edge.split.us.us.us.split.us87
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %..loopexit_crit_edge.split.us.us.us.split.us87 ], [ 0, %.preheader.split.us.split.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv152 ; 4 uses
  store i8 -1, ptr %i.g, align 1, !tbaa !119
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.split.us.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv152
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.peel

bb.c:                                             ; preds = %.preheader.split.us.split.us.split.us
  %i.j = trunc nuw i64 %indvars.iv152 to i32
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.j)
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.peel

ma_channel_map_get_channel.exit45.us.us.us.us85.peel: ; preds = %bb.c, %bb.b
  %.0.i.us.us.us = phi i8 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  switch i8 %.0.i.us.us.us, label %.peel.next139.preheader [
    i8 2, label %.split.us.us.us.split.us88
    i8 11, label %.peel.next139.sink.split
    i8 3, label %.split.us.us.us.split.us88.fold.split
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.peel.next139.sink.split

.peel.next139.sink.split:                         ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel, %bb.d
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel ]
  store i8 %.sink, ptr %i.g, align 1, !tbaa !119
  br label %.peel.next139.preheader

.peel.next139.preheader:                          ; preds = %.peel.next139.sink.split, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.peel.next139

.peel.next139:                                    ; preds = %.peel.next139.preheader, %bb.j
  %.03651.us.us.us.us76 = phi i32 [ %i.r, %bb.j ], [ 2, %.peel.next139.preheader ] ; 7 uses
  %i.l = icmp ult i32 %.03651.us.us.us.us76, 8
  br i1 %i.l, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %.peel.next139
  %i.m = icmp ult i32 %.03651.us.us.us.us76, 32
  br i1 %i.m, label %bb.f, label %ma_channel_map_get_channel.exit45.us.us.us.us85

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.03651.us.us.us.us76 to i8
  %i.o = add nuw nsw i8 %i.n, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85

switch.lookup:                                    ; preds = %.peel.next139
  %switch.tableidx = add nsw i32 %.03651.us.us.us.us76, -1
  %switch.cast = zext nneg i32 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 3389824514196483, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85

ma_channel_map_get_channel.exit45.us.us.us.us85:  ; preds = %switch.lookup, %bb.f, %bb.e
  %.0.i44.us.us.us.us86 = phi i8 [ 0, %bb.e ], [ %switch.masked, %switch.lookup ], [ %i.o, %bb.f ] ; 3 uses
  %i.p = icmp eq i8 %.0.i.us.us.us, %.0.i44.us.us.us.us86
  br i1 %i.p, label %.split.us.us.us.split.us88.loopexit, label %bb.g

bb.g:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85
  switch i8 %.0.i.us.us.us, label %bb.j [
    i8 2, label %bb.i
    i8 11, label %bb.i
    i8 3, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  switch i8 %.0.i44.us.us.us.us86, label %bb.j [
    i8 3, label %.sink.split
    i8 12, label %.sink.split
  ]

bb.i:                                             ; preds = %bb.g, %bb.g
  switch i8 %.0.i44.us.us.us.us86, label %bb.j [
    i8 2, label %.sink.split
    i8 11, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.i, %bb.i, %bb.h, %bb.h
  %i.q = trunc i32 %.03651.us.us.us.us76 to i8
  store i8 %i.q, ptr %i.g, align 1, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %i.r = add nuw i32 %.03651.us.us.us.us76, 1     ; 2 uses
  %exitcond136.not = icmp eq i32 %i.r, %1
  br i1 %exitcond136.not, label %..loopexit_crit_edge.split.us.us.us.split.us87, label %.peel.next139, !llvm.loop !2077

.split.us.us.us.split.us88.loopexit:              ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85
  %i.s = trunc i32 %.03651.us.us.us.us76 to i8
  br label %.split.us.us.us.split.us88

.split.us.us.us.split.us88.fold.split:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.split.us.us.us.split.us88

.split.us.us.us.split.us88:                       ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel, %.split.us.us.us.split.us88.fold.split, %.split.us.us.us.split.us88.loopexit
  %.03651.us.us.us.us76.lcssa = phi i8 [ %i.s, %.split.us.us.us.split.us88.loopexit ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel ], [ 1, %.split.us.us.us.split.us88.fold.split ]
  store i8 %.03651.us.us.us.us76.lcssa, ptr %i.g, align 1, !tbaa !119
  br label %..loopexit_crit_edge.split.us.us.us.split.us87

..loopexit_crit_edge.split.us.us.us.split.us87:   ; preds = %bb.j, %.split.us.us.us.split.us88
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit49, label %.preheader.split.us.split.us.split.us, !llvm.loop !2078

.preheader.split.us.split.us.split:               ; preds = %.preheader.split.us.split.us.split.preheader, %..loopexit_crit_edge.split.us.us.us.split.us
  %indvars.iv131 = phi i64 [ 0, %.preheader.split.us.split.us.split.preheader ], [ %indvars.iv.next132, %..loopexit_crit_edge.split.us.us.us.split.us ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv131 ; 5 uses
  store i8 -1, ptr %i.t, align 1, !tbaa !119
  br i1 %i.d, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.split.us.split.us.split
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv131
  %i.v = load i8, ptr %i.u, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit.us.us

bb.l:                                             ; preds = %.preheader.split.us.split.us.split
  %i.w = trunc nuw i64 %indvars.iv131 to i32
  %i.x = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.w)
  br label %ma_channel_map_get_channel.exit.us.us

ma_channel_map_get_channel.exit.us.us:            ; preds = %bb.l, %bb.k
  %.0.i.us.us = phi i8 [ %i.x, %bb.l ], [ %i.v, %bb.k ] ; 5 uses
  br i1 %cond182, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1: ; preds = %ma_channel_map_get_channel.exit.us.us
  %i.y = icmp eq i8 %.0.i.us.us, 1
  br i1 %i.y, label %.split.us.us.us.split.us, label %..loopexit_crit_edge.split.us.us.us.split.us

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2: ; preds = %ma_channel_map_get_channel.exit.us.us
  switch i8 %.0.i.us.us, label %bb.n [
    i8 2, label %.split.us.us.us.split.us
    i8 11, label %bb.m
  ]

bb.m:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2
  store i8 0, ptr %i.t, align 1, !tbaa !119
  br label %bb.n

bb.n:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2, %bb.m
  br i1 %exitcond117.peel.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel127

ma_channel_map_get_channel.exit45.us.us.us.us.peel127: ; preds = %bb.n
  switch i8 %.0.i.us.us, label %bb.p [
    i8 3, label %.split.us.us.us.split.us
    i8 12, label %bb.o
  ]

bb.o:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel127
  store i8 1, ptr %i.t, align 1, !tbaa !119
  br label %bb.p

bb.p:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel127, %bb.o
  br i1 %exitcond117.peel129.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %.peel.next118

.peel.next118:                                    ; preds = %bb.p, %bb.y
  %.03651.us.us.us.us = phi i32 [ %i.ak, %bb.y ], [ 2, %bb.p ] ; 14 uses
  switch i32 %1, label %bb.u [
    i32 7, label %bb.t
    i32 6, label %bb.q
    i32 5, label %bb.r
    i32 3, label %switch.lookup.i68.i.us.us.us.us
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %.peel.next118
  %i.z = icmp ult i32 %.03651.us.us.us.us, 6
  br i1 %i.z, label %switch.lookup197, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.r:                                             ; preds = %.peel.next118
  %i.aa = icmp ult i32 %.03651.us.us.us.us, 5
  br i1 %i.aa, label %switch.lookup202, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.s:                                             ; preds = %.peel.next118
  %i.ab = icmp ult i32 %.03651.us.us.us.us, 4
  br i1 %i.ab, label %switch.lookup207, label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup.i68.i.us.us.us.us:                  ; preds = %.peel.next118
  %switch.idx.cast.i69.i.us.us.us.us = trunc nuw nsw i32 %.03651.us.us.us.us to i8
  %switch.offset.i70.i.us.us.us.us = add nuw nsw i8 %switch.idx.cast.i69.i.us.us.us.us, 2
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.t:                                             ; preds = %.peel.next118
  %i.ac = icmp ult i32 %.03651.us.us.us.us, 7
  br i1 %i.ac, label %switch.lookup211, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.u:                                             ; preds = %.peel.next118
  %i.ad = icmp ult i32 %.03651.us.us.us.us, 8
  br i1 %i.ad, label %switch.lookup216, label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup197:                                 ; preds = %bb.q
  %i.ae = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt199 = zext nneg i32 %i.ae to i48
  %switch.downshift200 = lshr i48 13241468322562, %switch.shiftamt199
  %switch.masked201 = trunc i48 %switch.downshift200 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup202:                                 ; preds = %bb.r
  %i.af = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt204 = zext nneg i32 %i.af to i40
  %switch.downshift205 = lshr i40 30165697282, %switch.shiftamt204
  %switch.masked206 = trunc i40 %switch.downshift205 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup207:                                 ; preds = %bb.s
  %switch.shiftamt208 = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.downshift209 = lshr i32 168035074, %switch.shiftamt208
  %switch.masked210 = trunc i32 %switch.downshift209 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup211:                                 ; preds = %bb.t
  %i.ag = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt213 = zext nneg i32 %i.ag to i56
  %switch.downshift214 = lshr i56 3389837382255362, %switch.shiftamt213
  %switch.masked215 = trunc i56 %switch.downshift214 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup216:                                 ; preds = %bb.u
  %i.ah = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt218 = zext nneg i32 %i.ah to i64
  %switch.downshift219 = lshr i64 867795075634299650, %switch.shiftamt218
  %switch.masked220 = trunc i64 %switch.downshift219 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

ma_channel_map_get_channel.exit45.us.us.us.us:    ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %switch.lookup216, %switch.lookup211, %switch.lookup207, %switch.lookup202, %switch.lookup197, %switch.lookup.i68.i.us.us.us.us
  %.0.i44.us.us.us.us = phi i8 [ %switch.masked206, %switch.lookup202 ], [ %switch.offset.i70.i.us.us.us.us, %switch.lookup.i68.i.us.us.us.us ], [ %switch.masked210, %switch.lookup207 ], [ %switch.masked220, %switch.lookup216 ], [ %switch.masked201, %switch.lookup197 ], [ %switch.masked215, %switch.lookup211 ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.ai = icmp eq i8 %.0.i.us.us, %.0.i44.us.us.us.us
  br i1 %i.ai, label %.split.us.us.us.split.us.loopexit, label %bb.v

bb.v:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us
  switch i8 %.0.i.us.us, label %bb.y [
    i8 2, label %bb.x
    i8 11, label %bb.x
    i8 3, label %bb.w
    i8 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  switch i8 %.0.i44.us.us.us.us, label %bb.y [
    i8 3, label %.sink.split183
    i8 12, label %.sink.split183
  ]

bb.x:                                             ; preds = %bb.v, %bb.v
  switch i8 %.0.i44.us.us.us.us, label %bb.y [
    i8 2, label %.sink.split183
    i8 11, label %.sink.split183
  ]
end_hunk_0
