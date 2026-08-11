inline.NumInlined: 1094
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@virtnet_get_base_stats
define internal void @virtnet_get_base_stats(ptr noundef %0, ptr noundef initializes((0, 16)) %1, ptr noundef initializes((0, 16), (88, 104)) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2904       ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not41 = icmp eq i64 %i.f, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.pre48 = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %.pre48, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.i = and i64 %i.h, 4
  %.not42 = icmp eq i64 %i.i, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %.pre49 = load i64, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i64 [ %.pre49, %bb.f ], [ %i.h, %bb.e ]
  %i.l = and i64 %i.k, 8
  %.not43 = icmp eq i64 %i.l, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %1, i64 104
  store i64 0, ptr %i.m, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr i8, ptr %2, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = and i64 %i.o, 65536
  %.not44 = icmp eq i64 %i.p, 0
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.pre50 = load i64, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = phi i64 [ %.pre50, %bb.j ], [ %i.o, %bb.i ] ; 2 uses
  %i.s = and i64 %i.r, 131072
  %.not45 = icmp eq i64 %i.s, 0
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %2, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.pre51 = load i64, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi i64 [ %.pre51, %bb.l ], [ %i.r, %bb.k ] ; 2 uses
  %i.v = and i64 %i.u, 262144
  %.not46 = icmp eq i64 %i.v, 0
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %.pre52 = load i64, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = phi i64 [ %.pre52, %bb.n ], [ %i.u, %bb.m ]
  %i.y = and i64 %i.x, 524288
  %.not47 = icmp eq i64 %i.y, 0
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr i8, ptr %2, i64 80
  store i64 0, ptr %i.z, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr i8, ptr %0, i64 228
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %0, i64 2668
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8
  tail call void @netdev_stat_queue_sum(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ae, ptr noundef %1, i32 noundef %i.ag, i32 noundef %i.ae, ptr noundef %2) #24
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 1) i32 @virtnet_get_hw_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.scatterlist, align 8        ; 5 uses
  %4 = alloca %struct.scatterlist, align 8        ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 824
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1125899906842624
  %.not96 = icmp eq i64 %i.d, 0
  br i1 %.not96, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, -1                       ; 3 uses
  br i1 %i.e, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 46
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = add nsw i32 %i.i, -1
  %.not97 = icmp eq i16 %i.g, 0
  br i1 %.not97, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.066118 = phi i32 [ %i.j, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %.067116 = phi i32 [ 0, %bb.c ], [ %2, %bb.b ]  ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 44
  %.val = load i16, ptr %i.k, align 4
  %i.l = zext i16 %.val to i32
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = getelementptr i8, ptr %1, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.058100 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %.06099 = phi i32 [ %.067116, %.lr.ph ], [ %i.x, %bb.f ] ; 3 uses
  %.06298 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.f ] ; 2 uses
  %i.p = icmp eq i32 %.06099, %i.m
  %..i = and i32 %.06099, 1
  %.0.i80 = select i1 %i.p, i32 2, i32 %..i
  %i.q = zext nneg i32 %.0.i80 to i64             ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %.not74 = icmp eq i64 %i.s, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %.058100, 1
  %i.u = getelementptr [4 x i8], ptr %i.o, i64 %i.q
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, %.06298
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.163 = phi i32 [ %i.w, %bb.e ], [ %.06298, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.t, %bb.e ], [ %.058100, %bb.d ] ; 3 uses
  %i.x = add i32 %.06099, 1                       ; 2 uses
  %.not = icmp sgt i32 %i.x, %.066118
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.f
  br i1 %i.e, label %._crit_edge.thread, label %_kzalloc_noprof.exit

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.058.lcssa134 = phi i32 [ %.1, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.062.lcssa133 = phi i32 [ %.163, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.067117132 = phi i32 [ %.067116, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.066119130 = phi i32 [ %.066118, %._crit_edge ], [ -1, %bb.c ] ; 2 uses
  %.not97121128 = phi i1 [ false, %._crit_edge ], [ true, %bb.c ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8
  %.not70 = icmp eq i64 %i.z, 0
  br i1 %.not70, label %_kzalloc_noprof.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.aa = getelementptr i8, ptr %1, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add i32 %i.ab, %.062.lcssa133
  %i.ad = add i32 %.058.lcssa134, 1
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.g
  %.067117131 = phi i32 [ %.067117132, %bb.g ], [ %.067117132, %._crit_edge.thread ], [ %.067116, %._crit_edge ]
  %.066119129 = phi i32 [ %.066119130, %bb.g ], [ %.066119130, %._crit_edge.thread ], [ %.066118, %._crit_edge ]
  %.not97121127 = phi i1 [ %.not97121128, %bb.g ], [ %.not97121128, %._crit_edge.thread ], [ false, %._crit_edge ]
  %.264 = phi i32 [ %i.ac, %bb.g ], [ %.062.lcssa133, %._crit_edge.thread ], [ %.163, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ %i.ad, %bb.g ], [ %.058.lcssa134, %._crit_edge.thread ], [ %.1, %._crit_edge ] ; 2 uses
  %i.ae = icmp slt i32 %.2, 0
  %i.af = sext i32 %.2 to i64
  %i.ag = shl nsw i64 %i.af, 4
  %.0.i = select i1 %i.ae, i64 -1, i64 %i.ag
  %i.ah = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -140735340871680, 140735340806146) %.0.i, i32 noundef range(i32 2304, 3584) 3520) #31 ; 6 uses
  %.not71 = icmp eq ptr %i.ah, null
  br i1 %.not71, label %bb.m, label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %_kzalloc_noprof.exit
  %i.ai = sext i32 %.264 to i64                   ; 2 uses
  %i.aj = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -140735340871680, 140735340806146) %i.ai, i32 noundef 3264) #31 ; 5 uses
  %.not72 = icmp eq ptr %i.aj, null
  br i1 %.not72, label %bb.h, label %.preheader

.preheader:                                       ; preds = %_kmalloc_noprof.exit
  br i1 %.not97121127, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %0, i64 44
  %.val79 = load i16, ptr %i.ak, align 4
  %i.al = zext i16 %.val79 to i32
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = getelementptr i8, ptr %1, i64 16
  br label %bb.i

bb.h:                                             ; preds = %_kmalloc_noprof.exit
  tail call void @kfree(ptr noundef nonnull %i.ah) #24
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph105, %virtnet_make_stat_req.exit
  %.161104 = phi i32 [ %.067117131, %.lr.ph105 ], [ %i.ax, %virtnet_make_stat_req.exit ] ; 4 uses
  %.093103 = phi i32 [ 0, %.lr.ph105 ], [ %.295, %virtnet_make_stat_req.exit ] ; 3 uses
  %i.ao = icmp eq i32 %.161104, %i.am
  %..i.i = and i32 %.161104, 1
  %.0.i.i81 = select i1 %i.ao, i32 2, i32 %..i.i
  %i.ap = zext nneg i32 %.0.i.i81 to i64
  %i.aq = getelementptr [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %.not.i82 = icmp eq i64 %i.ar, 0
  br i1 %.not.i82, label %virtnet_make_stat_req.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = trunc i32 %.161104 to i16
  %i.at = sext i32 %.093103 to i64
  %i.au = getelementptr [16 x i8], ptr %i.ah, i64 %i.at ; 2 uses
  store i16 %i.as, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store i64 %i.ar, ptr %i.av, align 8
  %i.aw = add i32 %.093103, 1
  br label %virtnet_make_stat_req.exit

virtnet_make_stat_req.exit:                       ; preds = %bb.i, %bb.j
  %.295 = phi i32 [ %.093103, %bb.i ], [ %i.aw, %bb.j ] ; 2 uses
  %i.ax = add i32 %.161104, 1                     ; 2 uses
  %.not73 = icmp sgt i32 %i.ax, %.066119129
  br i1 %.not73, label %._crit_edge106, label %bb.i, !llvm.loop !178

._crit_edge106:                                   ; preds = %virtnet_make_stat_req.exit, %.preheader
  %.093.lcssa = phi i32 [ 0, %.preheader ], [ %.295, %virtnet_make_stat_req.exit ] ; 4 uses
  br i1 %i.e, label %bb.k, label %virtnet_make_stat_req.exit86

bb.k:                                             ; preds = %._crit_edge106
  %i.ay = getelementptr i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %.not.i85 = icmp eq i64 %i.az, 0
  br i1 %.not.i85, label %virtnet_make_stat_req.exit86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr i8, ptr %0, i64 44
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = shl i16 %i.bb, 1
  %i.bd = sext i32 %.093.lcssa to i64
  %i.be = getelementptr [16 x i8], ptr %i.ah, i64 %i.bd ; 2 uses
  store i16 %i.bc, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  store i64 %i.az, ptr %i.bf, align 8
  %i.bg = add i32 %.093.lcssa, 1
  br label %virtnet_make_stat_req.exit86

virtnet_make_stat_req.exit86:                     ; preds = %bb.l, %bb.k, %._crit_edge106
  %.194 = phi i32 [ %.093.lcssa, %._crit_edge106 ], [ %.093.lcssa, %bb.k ], [ %i.bg, %bb.l ]
  %i.bh = shl i32 %.194, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !23
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %i.ah, i32 noundef %i.bh) #24
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef nonnull %i.aj, i32 noundef %.264) #24
  %i.bi = call fastcc zeroext i1 @virtnet_send_command_reply(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !srcloc !179
  br i1 %i.bi, label %.preheader.i, label %__virtnet_get_hw_stats.exit

.preheader.i:                                     ; preds = %virtnet_make_stat_req.exit86
  %i.bj = ptrtoint ptr %i.aj to i64
  %i.bk = icmp sgt i32 %.264, 0
  br i1 %i.bk, label %.lr.ph.i, label %__virtnet_get_hw_stats.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.021.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.aj, %.preheader.i ] ; 5 uses
  %i.bl = getelementptr i8, ptr %.021.i, i64 2
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = load i8, ptr %.021.i, align 2
  call fastcc void @virtnet_fill_stats(ptr noundef %0, i32 noundef %i.bn, ptr noundef readonly %1, ptr noundef %.021.i, i1 noundef zeroext false, i8 noundef zeroext %i.bo) #25, !srcloc !180
  %i.bp = getelementptr i8, ptr %.021.i, i64 6
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %.021.i, i64 %i.br ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bj
  %i.bv = icmp slt i64 %i.bu, %i.ai
  br i1 %i.bv, label %.lr.ph.i, label %__virtnet_get_hw_stats.exit, !llvm.loop !181

__virtnet_get_hw_stats.exit:                      ; preds = %.lr.ph.i, %virtnet_make_stat_req.exit86, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @kfree(ptr noundef nonnull %i.ah) #24
  call void @kfree(ptr noundef nonnull %i.aj) #24
  br label %bb.m

bb.m:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %__virtnet_get_hw_stats.exit, %bb.h
  %.0 = phi i32 [ 0, %__virtnet_get_hw_stats.exit ], [ -12, %bb.h ], [ 0, %bb.a ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc void @virtnet_fill_stats(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address) %3, i1 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 44
  %.val94 = load i16, ptr %i.c, align 4
  %i.d = zext i16 %.val94 to i32
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = icmp eq i32 %1, %i.e
  %..i.i = and i32 %1, 1
  %.0.i.i = select i1 %i.f, i32 2, i32 %..i.i     ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = zext nneg i32 %.0.i.i to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8              ; 8 uses
  br i1 %4, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0.i.i, 0                   ; 2 uses
  %virtnet_rq_stats_desc_qstat.virtnet_sq_stats_desc_qstat.i = select i1 %i.k, ptr @virtnet_rq_stats_desc_qstat, ptr @virtnet_sq_stats_desc_qstat ; 2 uses
  %..i = select i1 %i.k, i64 2, i64 4
  %i.l = getelementptr i8, ptr %2, i64 56         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv6.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next7.i.1, %bb.d ] ; 3 uses
  %i.m = getelementptr [48 x i8], ptr %virtnet_rq_stats_desc_qstat.virtnet_sq_stats_desc_qstat.i, i64 %indvars.iv6.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr i8, ptr %i.m, i64 32
  %i.r = load i64, ptr %i.q, align 16
  %i.s = getelementptr i8, ptr %3, i64 %i.r
  %i.t = load volatile i64, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.p
  store i64 %i.t, ptr %i.v, align 8
  %i.w = getelementptr [48 x i8], ptr %virtnet_rq_stats_desc_qstat.virtnet_sq_stats_desc_qstat.i, i64 %indvars.iv6.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 88
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %i.w, i64 80
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = getelementptr i8, ptr %3, i64 %i.ab
  %i.ad = load volatile i64, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.l, align 8
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.z
  store i64 %i.ad, ptr %i.af, align 8
  %indvars.iv.next7.i.1 = add nuw nsw i64 %indvars.iv6.i, 2 ; 2 uses
  %exitcond10.not.i.1 = icmp eq i64 %indvars.iv.next7.i.1, %..i
  br i1 %exitcond10.not.i.1, label %virtnet_fill_stats_qstat.exit, label %bb.d, !llvm.loop !182

bb.e:                                             ; preds = %bb.b
  %.not.i = trunc i64 %i.j to i1
  %i.ag = icmp eq i8 %5, 0
  %or.cond.i = and i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.j, 2
  %.not47.i = icmp ne i64 %i.ah, 0
  %i.ai = icmp eq i8 %5, 1
  %or.cond54.i = and i1 %i.ai, %.not47.i
  br i1 %or.cond54.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = and i64 %i.j, 4
  %.not48.i = icmp ne i64 %i.aj, 0
  %i.ak = icmp eq i8 %5, 2
  %or.cond55.i = and i1 %i.ak, %.not48.i
  br i1 %or.cond55.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.j, 8
  %.not49.i = icmp ne i64 %i.al, 0
  %i.am = icmp eq i8 %5, 3
  %or.cond56.i = and i1 %i.am, %.not49.i
  br i1 %or.cond56.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = and i64 %i.j, 65536
  %.not50.i = icmp ne i64 %i.an, 0
  %i.ao = icmp eq i8 %5, 16
  %or.cond57.i = and i1 %i.ao, %.not50.i
  br i1 %or.cond57.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = and i64 %i.j, 131072
  %.not51.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp eq i8 %5, 17
  %or.cond58.i = and i1 %i.aq, %.not51.i
  br i1 %or.cond58.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = and i64 %i.j, 262144
  %.not52.i = icmp ne i64 %i.ar, 0
  %i.as = icmp eq i8 %5, 18
  %or.cond59.i = and i1 %i.as, %.not52.i
  br i1 %or.cond59.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = and i64 %i.j, 524288
  %.not53.i = icmp ne i64 %i.at, 0
  %i.au = icmp eq i8 %5, 19
  %or.cond60.i = and i1 %i.au, %.not53.i
  br i1 %or.cond60.i, label %bb.m, label %virtnet_fill_stats_qstat.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.146.i = phi ptr [ @virtnet_stats_rx_basic_desc_qstat, %bb.e ], [ @virtnet_stats_rx_csum_desc_qstat, %bb.f ], [ @virtnet_stats_rx_gso_desc_qstat, %bb.g ], [ @virtnet_stats_rx_speed_desc_qstat, %bb.h ], [ @virtnet_stats_tx_basic_desc_qstat, %bb.i ], [ @virtnet_stats_tx_csum_desc_qstat, %bb.j ], [ @virtnet_stats_tx_gso_desc_qstat, %bb.k ], [ @virtnet_stats_tx_speed_desc_qstat, %bb.l ] ; 8 uses
  %exitcond.not.i = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.l ]
  %exitcond.not.i.1 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  %exitcond.not.i.2 = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  %i.av = getelementptr i8, ptr %2, i64 56        ; 4 uses
  %i.aw = getelementptr i8, ptr %.146.i, i64 40
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr i8, ptr %.146.i, i64 32
  %i.ba = load i64, ptr %i.az, align 16
  %i.bb = getelementptr i8, ptr %3, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.av, align 8
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ay
  store i64 %i.bc, ptr %i.be, align 8
  br i1 %exitcond.not.i, label %virtnet_fill_stats_qstat.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %.146.i, i64 88
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr i8, ptr %.146.i, i64 80
  %i.bj = load i64, ptr %i.bi, align 16
  %i.bk = getelementptr i8, ptr %3, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.av, align 8
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bh
  store i64 %i.bl, ptr %i.bn, align 8
  br i1 %exitcond.not.i.1, label %virtnet_fill_stats_qstat.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr i8, ptr %.146.i, i64 136
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr i8, ptr %.146.i, i64 128
  %i.bs = load i64, ptr %i.br, align 16
  %i.bt = getelementptr i8, ptr %3, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.av, align 8
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8
  br i1 %exitcond.not.i.2, label %virtnet_fill_stats_qstat.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %.146.i, i64 184
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %.146.i, i64 176
  %i.cb = load i64, ptr %i.ca, align 16
  %i.cc = getelementptr i8, ptr %3, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.av, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.bz
  store i64 %i.cd, ptr %i.cf, align 8
  br label %virtnet_fill_stats_qstat.exit

bb.q:                                             ; preds = %bb.a
  %i.cg = getelementptr i8, ptr %2, i64 4
  %i.ch = getelementptr i8, ptr %2, i64 12
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cj = load i32, ptr %i.cg, align 4            ; 3 uses
  %i.ck = getelementptr i8, ptr %2, i64 8
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 44
  %.val = load i16, ptr %i.cm, align 4
  %i.cn = zext i16 %.val to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = icmp eq i32 %1, %i.co
  %..i95 = and i32 %1, 1
  %.0.i = select i1 %i.cp, i32 2, i32 %..i95      ; 2 uses
  %i.cq = getelementptr i8, ptr %2, i64 16
  %i.cr = zext nneg i32 %.0.i to i64
  %i.cs = getelementptr [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8            ; 7 uses
end_hunk_0
