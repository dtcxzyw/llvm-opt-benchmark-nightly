Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctucan_core?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ctucan_mem_read:bb.a

bb.t:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load i32, ptr %i.bv, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.by = load i32, ptr %i.bx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.p, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.064 = phi i32 [ 0, %bb.b ], [ 33737469, %bb.c ], [ %i.c, %bb.d ], [ %i.e, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ], [ %i.k, %bb.h ], [ %i.r, %bb.i ], [ %i.ae, %bb.j ], [ %storemerge60, %bb.k ], [ %i.by, %bb.u ], [ %i.bw, %bb.t ], [ %i.av, %bb.p ], [ %i.bq, %bb.q ], [ %i.bs, %bb.r ], [ %i.bu, %bb.s ], [ 0, %bb.l ]
  %.tr = trunc nuw nsw i64 %1 to i32
  %i.bz = shl nuw nsw i32 %.tr, 3
  %i.ca = and i32 %i.bz, 24
  %i.cb = lshr i32 %.064, %i.ca
  %i.cc = icmp ult i32 %2, 8
  %i.cd = shl nuw nsw i32 %2, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %notmask = shl nsw i64 -1, %i.ce
  %i.cf = trunc i64 %notmask to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = select i1 %i.cc, i32 %i.cg, i32 -1
  %storemerge61 = and i32 %i.cb, %i.ch
  %i.ci = zext i32 %storemerge61 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  %.0 = phi i64 [ %i.ci, %bb.v ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ctucan_can_receive(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8664
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4194304
  %.not = icmp ne i32 %i.c, 0
  ret i1 %.not
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 -1, 275) i64 @ctucan_receive(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @ctucan_receive.rcv, i8 noundef 0, i64 noundef 80, i1 noundef false) #10
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ctucan_frame2buff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 3
  %i.g = and i32 %i.f, 508
  %i.h = add nuw nsw i32 %i.g, 16                 ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 9
  %i.j = add nuw nsw i32 %i.i, 63488
  %i.k = and i32 %i.j, 63488
  %i.l = tail call zeroext i8 @can_len2dlc(i8 noundef zeroext %i.d) #10
  %i.m = and i8 %i.l, 15
  %i.n = zext nneg i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = load i32, ptr %1, align 8                ; 4 uses
  %.not.i = icmp sgt i32 %i.p, -1                 ; 2 uses
  %i.q = or disjoint i32 %i.o, 64
  %i.r = and i32 %i.p, 536870911
  %i.s = shl i32 %i.p, 18
  %i.t = and i32 %i.s, 536608768
  %.sroa.04.0.i = select i1 %.not.i, i32 %i.o, i32 %i.q
  %.sroa.0.0.i = select i1 %.not.i, i32 %i.t, i32 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, 2
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 9
  %.sroa.04.1.i = or disjoint i32 %.sroa.04.0.i, %i.y
  %i.z = lshr i32 %i.p, 25
  %i.aa = and i32 %i.z, 32
  %.sroa.04.2.i = or disjoint i32 %.sroa.04.1.i, %i.aa
  %i.ab = zext i8 %i.v to i32                     ; 2 uses
  %i.ac = and i32 %i.ab, 16
  %.not35.i = icmp eq i32 %i.ac, 0
  %i.ad = and i32 %i.ab, 1
  %.not36.i = icmp eq i32 %i.ad, 0
  %spec.select.v.i = select i1 %.not36.i, i32 128, i32 640
  %spec.select.i = select i1 %.not35.i, i32 0, i32 %spec.select.v.i
  %.sroa.04.3.i = or i32 %.sroa.04.2.i, %spec.select.i
  store i32 %.sroa.04.3.i, ptr @ctucan_receive.rcv, align 16
  store i32 %.sroa.0.0.i, ptr getelementptr inbounds nuw (i8, ptr @ctucan_receive.rcv, i64 4), align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @ctucan_receive.rcv, i64 16), ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ae, i64 noundef 64, i1 noundef false) #10
  br label %ctucan_frame2buff.exit

ctucan_frame2buff.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ -1, %bb.b ]  ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ah = add i32 %i.ag, %.0.i
  %i.ai = icmp ugt i32 %i.ah, 8192
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -8660 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ctucan_frame2buff.exit
  %i.al = or i32 %i.ak, 2
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds i8, ptr %0, i64 -8648
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = and i32 %i.an, 8
  %i.ap = xor i32 %i.ao, 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -8656 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = or i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds i8, ptr %0, i64 -8576
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 32752
  %.not.i35 = icmp eq i32 %i.av, 0
  %spec.select.i36 = select i1 %.not.i35, i32 0, i32 1024
  %i.aw = xor i32 %i.an, -1
  %i.ax = and i32 %spec.select.i36, %i.aw
  %i.ay = or i32 %i.ax, %i.as                     ; 2 uses
  store i32 %i.ay, ptr %i.aq, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 -8652
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ay, %i.ba
  %.not9.i = icmp ne i32 %i.bb, 0
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8
  %..i = zext i1 %.not9.i to i32
  tail call void @qemu_set_irq(ptr noundef %i.bd, i32 noundef %..i) #10
  %i.be = sext i32 %.0.i to i64
  br label %bb.g

bb.e:                                             ; preds = %ctucan_frame2buff.exit
  %i.bf = and i32 %i.ak, -145                     ; 2 uses
  %i.bg = or disjoint i32 %i.bf, 16
  store i32 %i.bg, ptr %i.aj, align 4
  %i.bh = add i32 %i.ag, 3
  %i.bi = and i32 %i.bh, -4
  %i.bj = icmp eq i32 %i.bi, 8192
  %spec.select = select i1 %i.bj, i32 257, i32 1
  %i.bk = getelementptr inbounds i8, ptr %0, i64 -8648
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = xor i32 %i.bl, -1                       ; 2 uses
  %i.bn = and i32 %spec.select, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %0, i64 -8656 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = or i32 %i.bp, %i.bn                     ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds i8, ptr %0, i64 -8556 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = getelementptr inbounds i8, ptr %0, i64 -8576 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = add i32 %i.bv, 16
  %i.bx = and i32 %i.bw, 32752                    ; 2 uses
  %i.by = and i32 %i.bv, -32753
  %i.bz = or disjoint i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.bu, align 8
  %i.ca = icmp sgt i32 %.0.i, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.cb = getelementptr inbounds i8, ptr %0, i64 -8212 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %0, i64 -20
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %wide.trip.count = zext nneg i32 %.0.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %i.ce = phi i32 [ %i.ag, %.lr.ph ], [ %i.ct, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph ], [ %niter.next.1, %bb.f ]
  %i.cf = getelementptr inbounds nuw i8, ptr @ctucan_receive.rcv, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 2
  %i.ch = add i32 %i.ce, %i.cd
  %i.ci = and i32 %i.ch, 8191
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cj
  store i8 %i.cg, ptr %i.ck, align 1
  %i.cl = add i32 %i.ce, 1
  %i.cm = getelementptr inbounds nuw i8, ptr @ctucan_receive.rcv, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = add i32 %i.cl, %i.cd
  %i.cq = and i32 %i.cp, 8191
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1
  %i.ct = add i32 %i.ce, 2                        ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  store i32 %i.ct, ptr %i.af, align 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa
  %lcmp.mod43 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.cu = getelementptr inbounds nuw i8, ptr @ctucan_receive.rcv, i64 %indvars.iv.next.1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = add i32 %i.ct, %i.cd
  %i.cx = and i32 %i.cw, 8191
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1
  %i.da = add i32 %i.ct, 1
  store i32 %i.da, ptr %i.af, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.db = or i32 %i.bf, 17
  store i32 %i.db, ptr %i.aj, align 4
  %.not.i37 = icmp eq i32 %i.bx, 0
  %spec.select.i38 = select i1 %.not.i37, i32 0, i32 1024
  %i.dc = and i32 %spec.select.i38, %i.bm
  %i.dd = or i32 %i.dc, %i.bq                     ; 2 uses
  store i32 %i.dd, ptr %i.bo, align 8
  %i.de = getelementptr inbounds i8, ptr %0, i64 -8652
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = and i32 %i.dd, %i.df
  %.not9.i39 = icmp ne i32 %i.dg, 0
  %i.dh = getelementptr inbounds i8, ptr %0, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8
  %..i40 = zext i1 %.not9.i39 to i32
  tail call void @qemu_set_irq(ptr noundef %i.di, i32 noundef %..i40) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge, %bb.d
  %.034 = phi i64 [ 1, %._crit_edge ], [ %i.be, %bb.d ], [ 0, %bb.a ]
  ret i64 %.034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -22, 1) i32 @ctucan_connect_to_bus(ptr noundef initializes((8664, 8672)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8664 ; 2 uses
  store ptr @ctucan_bus_client_info, ptr %i.a, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @can_bus_insert_client(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #10
  %.lobit = ashr i32 %i.b, 31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.lobit, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

declare i32 @can_bus_insert_client(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ctucan_disconnect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8664
  %i.b = tail call i32 @can_bus_remove_client(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

declare i32 @can_bus_remove_client(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @ctucan_init(ptr nofree noundef captures(none) initializes((0, 4), (8, 20), (88, 96), (108, 116), (120, 124), (8644, 8664)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8656 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  tail call void @qemu_set_irq(ptr noundef %1, i32 noundef 0) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 34952, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 132
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  store i32 16, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.j, align 8
  store i32 0, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -559038737, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.a, align 8
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ctucan_post_load(ptr nofree noundef captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32752
  %.not.i = icmp eq i32 %i.c, 0
  %spec.select.i = select i1 %.not.i, i32 0, i32 1024
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %spec.select.i, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = or i32 %i.g, %i.i                        ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.j, %i.l
  %.not9.i = icmp ne i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8656
  %i.o = load ptr, ptr %i.n, align 8
  %..i = zext i1 %.not9.i to i32
  tail call void @qemu_set_irq(ptr noundef %i.o, i32 noundef %..i) #10
  ret i32 0
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @can_bus_client_send(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare zeroext i8 @can_dlc2len(i8 noundef zeroext) local_unnamed_addr #5

declare zeroext i8 @can_len2dlc(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
