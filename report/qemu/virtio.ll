Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio?download=true
inline.NumInlined: 440
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@qemu_get_virtqueue_element:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = load i32, ptr %3, align 8
  store i32 %i.aj, ptr %i.u, align 8
  %.not45 = icmp eq i32 %i.c, 0
  br i1 %.not45, label %.preheader37, label %.lr.ph

.lr.ph:                                           ; preds = %virtqueue_alloc_element.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

.preheader37.loopexit:                            ; preds = %bb.k
  %.pre = load i32, ptr %i.z, align 4
  br label %.preheader37

.preheader37:                                     ; preds = %.preheader37.loopexit, %virtqueue_alloc_element.exit
  %i.al = phi i32 [ %i.au, %.preheader37.loopexit ], [ 0, %virtqueue_alloc_element.exit ]
  %i.am = phi i32 [ %.pre, %.preheader37.loopexit ], [ %i.f, %virtqueue_alloc_element.exit ]
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %.preheader36, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader37
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8208
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.038 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.k ] ; 2 uses
  %i.ao = sext i32 %.038 to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.ac, align 8
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ao
  store i64 %i.aq, ptr %i.as, align 8
  %i.at = add nuw i32 %.038, 1                    ; 2 uses
  %i.au = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.k, label %.preheader37.loopexit, !llvm.loop !44

.preheader36.loopexit:                            ; preds = %bb.l
  %.pre49 = load i32, ptr %i.aa, align 8
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.loopexit, %.preheader37
  %i.aw = phi i32 [ %i.be, %.preheader36.loopexit ], [ 0, %.preheader37 ]
  %i.ax = phi i32 [ %.pre49, %.preheader36.loopexit ], [ %i.al, %.preheader37 ]
  %.not47 = icmp eq i32 %i.ax, 0
  br i1 %.not47, label %.preheader, label %.lr.ph42

bb.l:                                             ; preds = %.lr.ph40, %bb.l
  %.139 = phi i32 [ 0, %.lr.ph40 ], [ %i.bd, %bb.l ] ; 2 uses
  %i.ay = sext i32 %.139 to i64                   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ae, align 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ay
  store i64 %i.ba, ptr %i.bc, align 8
  %i.bd = add nuw i32 %.139, 1                    ; 2 uses
  %i.be = load i32, ptr %i.z, align 4             ; 2 uses
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %.preheader36.loopexit, !llvm.loop !45

.preheader.loopexit:                              ; preds = %.lr.ph42
  %.pre50 = load i32, ptr %i.z, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader36
  %i.bg = phi i32 [ %.pre50, %.preheader.loopexit ], [ %i.aw, %.preheader36 ]
  %.not48 = icmp eq i32 %i.bg, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph44

.lr.ph42:                                         ; preds = %.preheader36, %.lr.ph42
  %.241 = phi i32 [ %i.bq, %.lr.ph42 ], [ 0, %.preheader36 ] ; 2 uses
  %i.bh = load ptr, ptr %i.ag, align 8
  %i.bi = sext i32 %.241 to i64                   ; 3 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bi
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr [16 x i8], ptr %3, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 16408
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bm, ptr %i.bp, align 8
  %i.bq = add nuw i32 %.241, 1                    ; 2 uses
  %i.br = load i32, ptr %i.aa, align 8
  %i.bs = icmp ult i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph42, label %.preheader.loopexit, !llvm.loop !46

.lr.ph44:                                         ; preds = %.preheader, %.lr.ph44
  %.343 = phi i32 [ %i.cc, %.lr.ph44 ], [ 0, %.preheader ] ; 2 uses
  %i.bt = load ptr, ptr %i.ai, align 8
  %i.bu = sext i32 %.343 to i64                   ; 3 uses
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bu
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr [16 x i8], ptr %3, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 32792
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.ai, align 8
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.by, ptr %i.cb, align 8
  %i.cc = add nuw i32 %.343, 1                    ; 2 uses
  %i.cd = load i32, ptr %i.z, align 4
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph44, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph44, %.preheader
  %i.cf = getelementptr i8, ptr %0, i64 168
  %.val = load i64, ptr %i.cf, align 8
  %i.cg = and i64 %.val, 17179869184
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ci = call i32 @qemu_get_be32(ptr noundef %1) #25
  store i32 %i.ci, ptr %i.ch, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  call void @virtqueue_map(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i64 @qemu_get_buffer(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @virtqueue_alloc_element(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 55
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.45, i32 noundef 1725, ptr noundef nonnull @__PRETTY_FUNCTION__.virtqueue_alloc_element) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %0, 7
  %i.c = and i64 %i.b, -8                         ; 2 uses
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = add i64 %i.f, %i.h                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.d, 4
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = shl nuw nsw i64 %i.g, 4
  %i.m = add i64 %i.k, %i.l
  %i.n = tail call noalias ptr @g_malloc(i64 noundef %i.m) #24 ; 12 uses
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %trace_virtqueue_alloc_element.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.p = load i16, ptr @_TRACE_VIRTQUEUE_ALLOC_ELEMENT_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.p, 0
  br i1 %.not3.i, label %trace_virtqueue_alloc_element.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %trace_virtqueue_alloc_element.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.105, ptr noundef %i.n, i64 noundef range(i64 56, 0) %0, i32 noundef %2, i32 noundef %1) #25
  br label %trace_virtqueue_alloc_element.exit

trace_virtqueue_alloc_element.exit:               ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.aa, ptr %i.ab, align 8
  ret ptr %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_put_virtqueue_element(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.VirtQueueElementOld, align 8 ; 20 uses
  %4 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49160) %i.a, i8 0, i64 49160, i1 false)
  %i.b = load i32, ptr %2, align 8
  store i32 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %.not40 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not40, label %.preheader32, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.l = add i32 %i.d, 2147483647
  %or.cond = icmp ult i32 %i.l, -2147483637
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %5 = ptrtoaddr ptr %i.j to i64
  %6 = sub i64 %4, %5
  %7 = add i64 %6, 15
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = sext i32 %index to i64                   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8
  %wide.load49 = load <2 x i64>, ptr %i.o, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %wide.load, ptr %i.p, align 8
  store <2 x i64> %wide.load49, ptr %i.q, align 8
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.r = icmp eq i32 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader32, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.033.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i32 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.033.prol = phi i32 [ %i.w, %scalar.ph.prol ], [ %.033.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = sext i32 %.033.prol to i64               ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.s
  store i64 %i.u, ptr %i.v, align 8
  %i.w = add nuw i32 %.033.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.033.unr = phi i32 [ %.033.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i32 %.033.ph, %i.d
  %i.y = icmp ugt i32 %i.x, -4
  br i1 %i.y, label %.preheader32, label %scalar.ph

.preheader32:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.not41 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not41, label %.preheader31, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8208 ; 6 uses
  %i.ac = add i32 %i.g, 2147483647
  %or.cond67 = icmp ult i32 %i.ac, -2147483637
  br i1 %or.cond67, label %scalar.ph53.preheader, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph35
  %8 = ptrtoaddr ptr %i.aa to i64
  %9 = sub i64 %4, %8
  %10 = add i64 %9, 8207
  %diff.check52 = icmp ult i64 %10, 31
  br i1 %diff.check52, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck51
  %n.vec56 = and i32 %i.g, -4                     ; 3 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i32 [ 0, %vector.ph55 ], [ %index.next61, %vector.body57 ] ; 2 uses
  %i.ad = sext i32 %index58 to i64                ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load59 = load <2 x i64>, ptr %i.ae, align 8
  %wide.load60 = load <2 x i64>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %wide.load59, ptr %i.ag, align 8
  store <2 x i64> %wide.load60, ptr %i.ah, align 8
  %index.next61 = add nuw i32 %index58, 4         ; 2 uses
  %i.ai = icmp eq i32 %index.next61, %n.vec56
  br i1 %i.ai, label %middle.block62, label %vector.body57, !llvm.loop !50

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i32 %i.g, %n.vec56
  br i1 %cmp.n63, label %.preheader31, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %vector.memcheck51, %.lr.ph35, %middle.block62
  %.134.ph = phi i32 [ 0, %vector.memcheck51 ], [ 0, %.lr.ph35 ], [ %n.vec56, %middle.block62 ] ; 3 uses
  %xtraiter68 = and i32 %i.g, 3                   ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %scalar.ph53.prol.loopexit, label %scalar.ph53.prol

scalar.ph53.prol:                                 ; preds = %scalar.ph53.preheader, %scalar.ph53.prol
  %.134.prol = phi i32 [ %i.an, %scalar.ph53.prol ], [ %.134.ph, %scalar.ph53.preheader ] ; 2 uses
  %prol.iter70 = phi i32 [ %prol.iter70.next, %scalar.ph53.prol ], [ 0, %scalar.ph53.preheader ]
  %i.aj = sext i32 %.134.prol to i64              ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.aj
  store i64 %i.al, ptr %i.am, align 8
  %i.an = add nuw i32 %.134.prol, 1               ; 2 uses
  %prol.iter70.next = add i32 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i32 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %scalar.ph53.prol.loopexit, label %scalar.ph53.prol, !llvm.loop !51

scalar.ph53.prol.loopexit:                        ; preds = %scalar.ph53.prol, %scalar.ph53.preheader
  %.134.unr = phi i32 [ %.134.ph, %scalar.ph53.preheader ], [ %i.an, %scalar.ph53.prol ]
  %i.ao = sub i32 %.134.ph, %i.g
  %i.ap = icmp ugt i32 %i.ao, -4
  br i1 %i.ap, label %.preheader31, label %scalar.ph53

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.033 = phi i32 [ %i.bj, %scalar.ph ], [ %.033.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = sext i32 %.033 to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aq
  store i64 %i.as, ptr %i.at, align 8
  %i.au = add nuw i32 %.033, 1
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.av
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = add nuw i32 %.033, 2
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ba
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = add nuw i32 %.033, 3
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bf
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = add nuw i32 %.033, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.bj, %i.d
  br i1 %exitcond.not.3, label %.preheader32, label %scalar.ph, !llvm.loop !52

.preheader31:                                     ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53, %middle.block62, %.preheader32
  br i1 %.not40, label %.preheader, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader31
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8            ; 5 uses
  %xtraiter71 = and i32 %i.d, 3                   ; 3 uses
  %i.bm = icmp ult i32 %i.d, 4
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph37.new

.lr.ph37.new:                                     ; preds = %.lr.ph37
  %unroll_iter = and i32 %i.d, -4
  br label %bb.c

scalar.ph53:                                      ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53
  %.134 = phi i32 [ %i.cg, %scalar.ph53 ], [ %.134.unr, %scalar.ph53.prol.loopexit ] ; 5 uses
  %i.bn = sext i32 %.134 to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bn
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = add nuw i32 %.134, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = add nuw i32 %.134, 2
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bx
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = add nuw i32 %.134, 3
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cc
  store i64 %i.ce, ptr %i.cf, align 8
  %i.cg = add nuw i32 %.134, 4                    ; 2 uses
  %exitcond44.not.3 = icmp eq i32 %i.cg, %i.g
  br i1 %exitcond44.not.3, label %.preheader31, label %scalar.ph53, !llvm.loop !53

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod72.not = icmp eq i32 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph37
  %.236.epil.init = phi i32 [ 0, %.lr.ph37 ], [ %i.ds, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod73 = icmp ne i32 %xtraiter71, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.236.epil = phi i32 [ %.236.epil.init, %.epil.preheader ], [ %i.cn, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ch = sext i32 %.236.epil to i64              ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr [16 x i8], ptr %3, i64 %i.ch
  %i.cm = getelementptr i8, ptr %i.cl, i64 16408
  store i64 %i.ck, ptr %i.cm, align 8
  %i.cn = add nuw i32 %.236.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter71
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !54

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.preheader31
  br i1 %.not41, label %._crit_edge, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cp = load ptr, ptr %i.co, align 8            ; 5 uses
  %xtraiter75 = and i32 %i.g, 3                   ; 3 uses
  %i.cq = icmp ult i32 %i.g, 4
  br i1 %i.cq, label %.epil.preheader74, label %.lr.ph39.new

.lr.ph39.new:                                     ; preds = %.lr.ph39
  %unroll_iter79 = and i32 %i.g, -4
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph37.new
  %.236 = phi i32 [ 0, %.lr.ph37.new ], [ %i.ds, %bb.c ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph37.new ], [ %niter.next.3, %bb.c ]
  %i.cr = sext i32 %.236 to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr [16 x i8], ptr %3, i64 %i.cr
  %i.cw = getelementptr i8, ptr %i.cv, i64 16408
  store i64 %i.cu, ptr %i.cw, align 8
  %i.cx = or disjoint i32 %.236, 1
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr [16 x i8], ptr %3, i64 %i.cy
  %i.dd = getelementptr i8, ptr %i.dc, i64 16408
  store i64 %i.db, ptr %i.dd, align 8
  %i.de = or disjoint i32 %.236, 2
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr [16 x i8], ptr %3, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.dj, i64 16408
  store i64 %i.di, ptr %i.dk, align 8
  %i.dl = or disjoint i32 %.236, 3
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr [16 x i8], ptr %3, i64 %i.dm
  %i.dr = getelementptr i8, ptr %i.dq, i64 16408
  store i64 %i.dp, ptr %i.dr, align 8
  %i.ds = add nuw i32 %.236, 4                    ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !55

bb.d:                                             ; preds = %bb.d, %.lr.ph39.new
  %.338 = phi i32 [ 0, %.lr.ph39.new ], [ %i.eu, %bb.d ] ; 5 uses
  %niter80 = phi i32 [ 0, %.lr.ph39.new ], [ %niter80.next.3, %bb.d ]
  %i.dt = sext i32 %.338 to i64                   ; 2 uses
  %i.du = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr [16 x i8], ptr %3, i64 %i.dt
  %i.dy = getelementptr i8, ptr %i.dx, i64 32792
  store i64 %i.dw, ptr %i.dy, align 8
  %i.dz = or disjoint i32 %.338, 1
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr [16 x i8], ptr %3, i64 %i.ea
  %i.ef = getelementptr i8, ptr %i.ee, i64 32792
  store i64 %i.ed, ptr %i.ef, align 8
  %i.eg = or disjoint i32 %.338, 2
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr [16 x i8], ptr %3, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 32792
  store i64 %i.ek, ptr %i.em, align 8
  %i.en = or disjoint i32 %.338, 3
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr [16 x i8], ptr %3, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.es, i64 32792
  store i64 %i.er, ptr %i.et, align 8
  %i.eu = add nuw i32 %.338, 4                    ; 2 uses
  %niter80.next.3 = add nuw i32 %niter80, 4       ; 2 uses
  %niter80.ncmp.3 = icmp eq i32 %niter80.next.3, %unroll_iter79
  br i1 %niter80.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod77.not = icmp eq i32 %xtraiter75, 0
  br i1 %lcmp.mod77.not, label %._crit_edge, label %.epil.preheader74

.epil.preheader74:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph39
  %.338.epil.init = phi i32 [ 0, %.lr.ph39 ], [ %i.eu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i32 %xtraiter75, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader74
  %.338.epil = phi i32 [ %.338.epil.init, %.epil.preheader74 ], [ %i.fb, %bb.e ] ; 2 uses
  %epil.iter76 = phi i32 [ 0, %.epil.preheader74 ], [ %epil.iter76.next, %bb.e ]
  %i.ev = sext i32 %.338.epil to i64              ; 2 uses
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr [16 x i8], ptr %3, i64 %i.ev
  %i.fa = getelementptr i8, ptr %i.ez, i64 32792
  store i64 %i.ey, ptr %i.fa, align 8
  %i.fb = add nuw i32 %.338.epil, 1
  %epil.iter76.next = add i32 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i32 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.preheader
  %i.fc = getelementptr i8, ptr %0, i64 168
  %.val = load i64, ptr %i.fc, align 8
  %i.fd = and i64 %.val, 17179869184
  %.not = icmp eq i64 %i.fd, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val30 = load i32, ptr %i.fe, align 8
  tail call void @qemu_put_be32(ptr noundef %1, i32 noundef %.val30) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  call void @qemu_put_buffer(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 49168) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

declare void @qemu_put_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_update_irq(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #25 ; 2 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #25
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 453
  %i.f = load i8, ptr %i.e, align 1, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %virtio_notify_vector.exit, label %virtio_device_disabled.exit.i, !prof !19

virtio_device_disabled.exit.i:                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %virtio_notify_vector.exit, label %bb.b

bb.b:                                             ; preds = %virtio_device_disabled.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %virtio_notify_vector.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.l(ptr noundef %i.n, i16 noundef zeroext -1) #25, !inline_history !22
  br label %virtio_notify_vector.exit

virtio_notify_vector.exit:                        ; preds = %bb.a, %virtio_device_disabled.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @virtio_notify_vector(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #25 ; 2 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #25
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 453
  %i.f = load i8, ptr %i.e, align 1, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %virtio_device_disabled.exit.thread, label %virtio_device_disabled.exit, !prof !19

virtio_device_disabled.exit:                      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %virtio_device_disabled.exit.thread, label %bb.b

bb.b:                                             ; preds = %virtio_device_disabled.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %virtio_device_disabled.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.l(ptr noundef %i.n, i16 noundef zeroext %1) #25
  br label %virtio_device_disabled.exit.thread

virtio_device_disabled.exit.thread:               ; preds = %bb.a, %bb.b, %bb.c, %virtio_device_disabled.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @virtio_set_status(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #25
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.77, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #25
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_virtio_set_status.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_VIRTIO_SET_STATUS_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.d, 0
  br i1 %.not1.i, label %trace_virtio_set_status.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %trace_virtio_set_status.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i8 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.107, ptr noundef %0, i32 noundef %i.g) #25
  br label %trace_virtio_set_status.exit

trace_virtio_set_status.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %.val = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val, 4294967296
  %.not42 = icmp eq i64 %i.i, 0
  br i1 %.not42, label %virtio_validate_features.exit.thread, label %bb.e

bb.e:                                             ; preds = %trace_virtio_set_status.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 8
  %.not = icmp ne i8 %i.l, 0
  %i.m = and i8 %1, 8
  %.not31 = icmp eq i8 %i.m, 0
  %or.cond = or i1 %.not31, %.not
  br i1 %or.cond, label %virtio_validate_features.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @object_get_class(ptr noundef nonnull %0) #25
  %i.o = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.n, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.77, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #25
  %i.p = getelementptr i8, ptr %0, i64 168
  %.val7.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.val7.i, 8589934592
  %.not8.i = icmp eq i64 %i.q, 0
  br i1 %.not8.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load i64, ptr %i.h, align 8
  %i.r = and i64 %.val.i, 8589934592
  %.not9.i = icmp eq i64 %i.r, 0
  br i1 %.not9.i, label %virtio_validate_features.exit.thread39, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i36 = icmp eq ptr %i.t, null
  br i1 %.not.i36, label %virtio_validate_features.exit.thread, label %virtio_validate_features.exit

virtio_validate_features.exit:                    ; preds = %bb.h
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0) #25, !inline_history !61 ; 2 uses
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %virtio_validate_features.exit.thread, label %virtio_validate_features.exit.thread39

virtio_validate_features.exit.thread:             ; preds = %bb.h, %bb.e, %virtio_validate_features.exit, %trace_virtio_set_status.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, 4
  %i.y = zext nneg i8 %i.x to i32
  %i.z = zext i8 %1 to i32                        ; 2 uses
  %i.aa = and i32 %i.z, 4                         ; 3 uses
  %.not33 = icmp eq i32 %i.aa, %i.y
  br i1 %.not33, label %virtio_set_started.exit, label %bb.i

bb.i:                                             ; preds = %virtio_validate_features.exit.thread
  %.not43 = icmp eq i32 %i.aa, 0
  %.lobit = lshr exact i32 %i.aa, 2
  %i.ab = trunc nuw nsw i32 %.lobit to i8
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 0, ptr %i.ac, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 454
  %i.ae = load i8, ptr %i.ad, align 2, !range !13, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %virtio_set_started.exit
end_hunk_0
