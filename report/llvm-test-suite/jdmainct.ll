inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jinit_d_main_controller:bb.a
  %.not34 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46   ; 3 uses
  br i1 %.not34, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 46, ptr %i.q, align 8, !tbaa !40
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !42
  tail call void %i.r(ptr noundef nonnull %0) #2
  %.pre = load i32, ptr %i.m, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %.pre, %bb.e ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !47
  %i.y = shl nsw i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call ptr %i.v(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.aa) #2, !inline_history !48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !47  ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !49
  %i.ah = icmp sgt i32 %i.ad, 0
  br i1 %i.ah, label %.lr.ph.i, label %alloc_funny_pointers.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = add nsw i32 %i.s, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.03132.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bh, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03132.i, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %.03132.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !55
  %i.ap = mul nsw i32 %i.ao, %i.am
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !46
  %i.ar = sdiv i32 %i.ap, %i.aq                   ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.au = mul nsw i32 %i.ar, %i.ak                ; 2 uses
  %i.av = shl nsw i32 %i.au, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = tail call ptr %i.at(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ax) #2, !inline_history !48
  %i.az = sext i32 %i.ar to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !56
  %i.bd = sext i32 %i.au to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03132.i, i64 96
  %i.bi = load i32, ptr %i.w, align 8, !tbaa !47  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next.i, %i.bj
  br i1 %i.bk, label %bb.g, label %alloc_funny_pointers.exit, !llvm.loop !57

alloc_funny_pointers.exit:                        ; preds = %bb.g, %bb.f
  %i.bl = phi i32 [ %i.ad, %bb.f ], [ %i.bi, %bb.g ]
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !46
  %i.bn = add nsw i32 %i.bm, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre38 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %alloc_funny_pointers.exit
  %i.bo = phi i32 [ %i.bl, %alloc_funny_pointers.exit ], [ %.pre38, %bb.h ]
  %.032 = phi i32 [ %i.bn, %alloc_funny_pointers.exit ], [ %i.n, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = icmp sgt i32 %i.bo, 0
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.036 = phi ptr [ %i.bs, %.lr.ph ], [ %i.cl, %bb.j ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.036, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %.036, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !55 ; 2 uses
  %i.bz = mul nsw i32 %i.by, %i.bw
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !46
  %i.cb = sdiv i32 %i.bz, %i.ca
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %.036, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.ch = mul i32 %i.cg, %i.by
  %i.ci = mul nsw i32 %i.cb, %.032
  %i.cj = tail call ptr %i.ce(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.ch, i32 noundef %i.ci) #2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.036, i64 96
  %i.cm = load i32, ptr %i.bp, align 8, !tbaa !47
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.j, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 10 uses
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @process_data_context_main, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph63.i, label %make_funny_pointers.exit

.lr.ph63.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = add nsw i32 %i.i, 2
  %i.u = add nsw i32 %i.i, -2
  %wide.trip.count79.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph63.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next77.i, %._crit_edge.i ] ; 4 uses
  %.05260.i = phi ptr [ %i.n, %.lr.ph63.i ], [ %i.eb, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05260.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %.05260.i, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sdiv i32 %i.z, %i.i                     ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv76.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 10 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv76.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 15 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv76.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 15 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 6 uses
  %i.ak = mul nsw i32 %i.aa, %i.t                 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %.preheader54.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 5 uses
  %min.iters.check44 = icmp ult i32 %i.ak, 8
  br i1 %min.iters.check44, label %.lr.ph.i.preheader, label %vector.memcheck37

vector.memcheck37:                                ; preds = %.lr.ph.preheader.i
  %i.am = sub i64 %i.ad, %i.ag
  %diff.check38 = icmp ult i64 %i.am, 32
  %i.an = sub i64 %i.ag, %i.aj
  %diff.check39 = icmp ult i64 %i.an, 32
  %conflict.rdx40 = or i1 %diff.check38, %diff.check39
  %i.ao = sub i64 %i.ad, %i.aj
  %diff.check41 = icmp ult i64 %i.ao, 32
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  br i1 %conflict.rdx42, label %.lr.ph.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck37
  %n.vec47 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body48 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index49 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load50 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %wide.load51 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x ptr> %wide.load50, ptr %i.ar, align 8, !tbaa !63
  store <2 x ptr> %wide.load51, ptr %i.as, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index49 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %wide.load50, ptr %i.at, align 8, !tbaa !63
  store <2 x ptr> %wide.load51, ptr %i.au, align 8, !tbaa !63
  %index.next52 = add nuw i64 %index49, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.av, label %middle.block53, label %vector.body48, !llvm.loop !64

middle.block53:                                   ; preds = %vector.body48
  %cmp.n54 = icmp eq i64 %n.vec47, %wide.trip.count.i
  br i1 %cmp.n54, label %.preheader54.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck37, %.lr.ph.preheader.i, %middle.block53
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck37 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec47, %middle.block53 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !63
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !67

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ba = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.preheader54.i, label %.lr.ph.i

.preheader54.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block53, %bb.d
  %i.bc = icmp sgt i32 %i.aa, 0
  br i1 %i.bc, label %.lr.ph57.i, label %._crit_edge.i

.lr.ph57.i:                                       ; preds = %.preheader54.i
  %i.bd = shl nuw i32 %i.aa, 1                    ; 2 uses
  %i.be = mul nsw i32 %i.aa, %i.i
  %i.bf = mul nsw i32 %i.aa, %i.u
  %i.bg = sext i32 %i.be to i64                   ; 5 uses
  %i.bh = sext i32 %i.bf to i64                   ; 5 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %wide.trip.count69.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %min.iters.check24 = icmp slt i32 %i.bd, 14
  br i1 %min.iters.check24, label %scalar.ph23.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph57.i
  %i.bi = shl nsw i64 %i.bg, 3                    ; 3 uses
  %i.bj = shl nsw i64 %i.bh, 3                    ; 3 uses
  %i.bk = sub nsw i64 %i.bi, %i.bj
  %diff.check = icmp ult i64 %i.bk, 32
  %i.bl = sub i64 %i.aj, %i.ag
  %diff.check16 = icmp ult i64 %i.bl, 32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.bm = add i64 %i.bj, %i.ag
  %i.bn = add i64 %i.bi, %i.aj
  %i.bo = sub i64 %i.bm, %i.bn
  %diff.check17 = icmp ult i64 %i.bo, 32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  %i.bp = add i64 %i.bi, %i.ag
  %i.bq = add i64 %i.bj, %i.aj
  %i.br = sub i64 %i.bp, %i.bq
  %diff.check19 = icmp ult i64 %i.br, 32
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.bs = sub i64 %i.ag, %i.aj
  %diff.check21 = icmp ult i64 %i.bs, 32
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
  br i1 %conflict.rdx22, label %scalar.ph23.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck
  %n.vec27 = and i64 %wide.trip.count69.i, 2147483644 ; 3 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body28 ] ; 3 uses
  %i.bt = add nsw i64 %index29, %i.bg             ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !63
  %wide.load30 = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !63
  %i.bw = add nsw i64 %index29, %i.bh             ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x ptr> %wide.load, ptr %i.bx, align 8, !tbaa !63
  store <2 x ptr> %wide.load30, ptr %i.by, align 8, !tbaa !63
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load31 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !63
  %wide.load32 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !63
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bt ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x ptr> %wide.load31, ptr %i.cb, align 8, !tbaa !63
  store <2 x ptr> %wide.load32, ptr %i.cc, align 8, !tbaa !63
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.cd, label %middle.block34, label %vector.body28, !llvm.loop !69

middle.block34:                                   ; preds = %vector.body28
  %cmp.n35 = icmp eq i64 %n.vec27, %wide.trip.count69.i
  br i1 %cmp.n35, label %.lr.ph59.preheader.i, label %scalar.ph23.preheader

scalar.ph23.preheader:                            ; preds = %vector.memcheck, %.lr.ph57.i, %middle.block34
  %indvars.iv66.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph57.i ], [ %n.vec27, %middle.block34 ] ; 5 uses
  %xtraiter56 = and i64 %wide.trip.count69.i, 1
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %scalar.ph23.prol.loopexit, label %scalar.ph23.prol

scalar.ph23.prol:                                 ; preds = %scalar.ph23.preheader
  %i.ce = add nsw i64 %indvars.iv66.i.ph, %i.bg   ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !63
  %i.ch = add nsw i64 %indvars.iv66.i.ph, %i.bh   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !63
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ce
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !63
  %indvars.iv.next67.i.prol = or disjoint i64 %indvars.iv66.i.ph, 1
  br label %scalar.ph23.prol.loopexit

scalar.ph23.prol.loopexit:                        ; preds = %scalar.ph23.prol, %scalar.ph23.preheader
  %indvars.iv66.i.unr = phi i64 [ %indvars.iv66.i.ph, %scalar.ph23.preheader ], [ %indvars.iv.next67.i.prol, %scalar.ph23.prol ]
  %i.cm = add nsw i64 %wide.trip.count69.i, -1
  %i.cn = icmp eq i64 %indvars.iv66.i.ph, %i.cm
  br i1 %i.cn, label %.lr.ph59.preheader.i, label %scalar.ph23

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !63 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !63
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !63
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.1
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !63
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.1
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !63
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.2
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.2
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !63
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader54.i, label %.lr.ph.i, !llvm.loop !70

.lr.ph59.preheader.i:                             ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23, %middle.block34
  %i.de = zext nneg i32 %i.aa to i64              ; 5 uses
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph59.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader.i
  %n.vec = and i64 %i.de, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = sub nsw i64 %index, %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.dg, align 8, !tbaa !63
  store <2 x ptr> %broadcast.splat, ptr %i.dh, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.de
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph59.i.preheader

.lr.ph59.i.preheader:                             ; preds = %.lr.ph59.preheader.i, %middle.block
  %indvars.iv71.i.ph = phi i64 [ 0, %.lr.ph59.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph59.i

scalar.ph23:                                      ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i.1, %scalar.ph23 ], [ %indvars.iv66.i.unr, %scalar.ph23.prol.loopexit ] ; 4 uses
  %i.dj = add nsw i64 %indvars.iv66.i, %i.bg      ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !63
  %i.dm = add nsw i64 %indvars.iv66.i, %i.bh      ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !63
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !63
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dj
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !63
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.dr = add nsw i64 %indvars.iv.next67.i, %i.bg ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !63
  %i.du = add nsw i64 %indvars.iv.next67.i, %i.bh ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !63
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !63
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dr
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !63
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %exitcond70.not.i.1 = icmp eq i64 %indvars.iv.next67.i.1, %wide.trip.count69.i
  br i1 %exitcond70.not.i.1, label %.lr.ph59.preheader.i, label %scalar.ph23, !llvm.loop !72

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %.lr.ph59.i ], [ %indvars.iv71.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %i.dz = sub nsw i64 %indvars.iv71.i, %i.de
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.dz
  store ptr %.pre.i, ptr %i.ea, align 8, !tbaa !63
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %i.de
  br i1 %exitcond75.not.i, label %._crit_edge.i, label %.lr.ph59.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph59.i, %middle.block, %.preheader54.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05260.i, i64 96
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %make_funny_pointers.exit, label %bb.d, !llvm.loop !74

make_funny_pointers.exit:                         ; preds = %._crit_edge.i, %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.ec, align 8, !tbaa !75
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 0, ptr %i.ed, align 4, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 0, ptr %i.ee, align 4, !tbaa !77
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @process_data_simple_main, ptr %i.g, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %make_funny_pointers.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.ef, align 8, !tbaa !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.eg, align 4, !tbaa !79
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @process_data_crank_post, ptr %i.eh, align 8, !tbaa !62
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ei = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 4, ptr %i.ej, align 8, !tbaa !40
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !42
  tail call void %i.ek(ptr noundef nonnull %0) #2
  br label %bb.i

end_hunk_0
begin_hunk_1_@process_data_context_main:bb.a
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !79
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !87
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 4, !tbaa !76
  %i.ak = load i32, ptr %2, align 4, !tbaa !4
  %.not50 = icmp ult i32 %i.ak, %3
  br i1 %.not50, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.al, align 4, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.at = load i32, ptr %i.as, align 8, !tbaa !88
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %set_bottom_pointers.exit

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph36.i, label %set_bottom_pointers.exit

.lr.ph36.i:                                       ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !75
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  %wide.trip.count42.i = zext nneg i32 %i.aw to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph36.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next40.i, %._crit_edge.i ] ; 3 uses
  %.02833.i = phi ptr [ %i.az, %.lr.ph36.i ], [ %i.cg, %._crit_edge.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02833.i, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %.02833.i, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !55
  %i.bm = mul nsw i32 %i.bl, %i.bj                ; 3 uses
  %i.bn = sdiv i32 %i.bm, %i.an                   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02833.i, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !89
  %i.bq = urem i32 %i.bp, %i.bm                   ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %spec.select.i = select i1 %i.br, i32 %i.bm, i32 %i.bq ; 2 uses
  %i.bs = icmp eq i64 %indvars.iv39.i, 0
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = add nsw i32 %spec.select.i, -1
  %i.bu = sdiv i32 %i.bt, %i.bn
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bb, align 8, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bw = icmp sgt i32 %i.bn, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv39.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.bz = shl nuw i32 %i.bn, 1                    ; 2 uses
  %i.ca = sext i32 %spec.select.i to i64
  %i.cb = getelementptr [8 x i8], ptr %i.by, i64 %i.ca ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !63 ; 2 uses
  %min.iters.check = icmp slt i32 %i.bz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.cd, align 8, !tbaa !63
  store <2 x ptr> %broadcast.splat, ptr %i.ce, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv.i
  store ptr %.pre.i, ptr %gep.i, align 8, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !91

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.k
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02833.i, i64 96
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %set_bottom_pointers.exit, label %bb.i, !llvm.loop !92

set_bottom_pointers.exit:                         ; preds = %._crit_edge.i, %bb.h, %bb.g
  store i32 1, ptr %i.s, align 4, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %set_bottom_pointers.exit, %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !84
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !75
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !87
  tail call void %i.ck(ptr noundef %0, ptr noundef %i.cq, ptr noundef nonnull %i.cr, i32 noundef %i.ct, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !79
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !87
  %i.cw = icmp ult i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !77
  %i.cz = icmp eq i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.db = load i32, ptr %i.da, align 4, !tbaa !46 ; 5 uses
  br i1 %i.cz, label %bb.n, label %set_wraparound_pointers.exit

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.dm = add nsw i32 %i.db, 1
  %i.dn = add nsw i32 %i.db, 2
  %wide.trip.count55.i = zext nneg i32 %i.dd to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i51, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i51 ] ; 3 uses
  %.04346.i = phi ptr [ %i.dg, %.lr.ph49.i ], [ %i.gm, %._crit_edge.i51 ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.04346.i, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %.04346.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !55
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = sdiv i32 %i.ds, %i.db                   ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv52.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56 ; 9 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 10 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv52.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !56 ; 9 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64              ; 10 uses
  %i.ea = icmp sgt i32 %i.dt, 0
  br i1 %i.ea, label %.lr.ph.i52, label %._crit_edge.i51

.lr.ph.i52:                                       ; preds = %bb.o
  %i.eb = mul nsw i32 %i.dt, %i.dm
  %i.ec = mul nsw i32 %i.dt, %i.dn
  %i.ed = sext i32 %i.eb to i64                   ; 4 uses
  %i.ee = zext nneg i32 %i.dt to i64              ; 8 uses
  %i.ef = sext i32 %i.ec to i64                   ; 4 uses
  %min.iters.check90 = icmp ult i32 %i.dt, 26
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i52
  %i.eg = sub i64 %i.dz, %i.dw
  %diff.check = icmp ult i64 %i.eg, 16
  %i.eh = add nsw i64 %i.ef, %i.ee
  %4 = and i64 %i.eh, 2305843009213693950
  %diff.check60 = icmp eq i64 %4, 0
  %conflict.rdx = or i1 %diff.check, %diff.check60
  %i.ei = shl nsw i64 %i.ef, 3                    ; 7 uses
  %i.ej = add i64 %i.ei, %i.dz
  %i.ek = shl nuw nsw i64 %i.ee, 3                ; 6 uses
  %i.el = add i64 %i.ej, %i.ek
  %i.em = sub i64 %i.el, %i.dw
  %diff.check61 = icmp ult i64 %i.em, 16
  %conflict.rdx62 = or i1 %conflict.rdx, %diff.check61
  %i.en = add nsw i64 %i.ed, %i.ee
  %5 = mul nsw i64 %i.en, -8
  %diff.check63 = icmp ult i64 %5, 16
  %conflict.rdx64 = or i1 %conflict.rdx62, %diff.check63
  %i.eo = shl nsw i64 %i.ed, 3                    ; 5 uses
  %i.ep = add i64 %i.eo, %i.dz
  %i.eq = add i64 %i.ep, %i.ek
  %i.er = sub i64 %i.eq, %i.dw
  %diff.check65 = icmp ult i64 %i.er, 16
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  %i.es = add i64 %i.ek, %i.dz
  %i.et = sub i64 %i.es, %i.dw
  %diff.check69 = icmp ult i64 %i.et, 16
  %conflict.rdx70 = or i1 %conflict.rdx66, %diff.check69
  %i.eu = add i64 %i.ei, %i.dw
  %i.ev = add i64 %i.eu, %i.ek
  %i.ew = sub i64 %i.ev, %i.dz
  %diff.check71 = icmp ult i64 %i.ew, 16
  %conflict.rdx72 = or i1 %conflict.rdx70, %diff.check71
  %i.ex = add i64 %i.eo, %i.dw
  %i.ey = add i64 %i.ex, %i.ek
  %i.ez = sub i64 %i.dz, %i.ey
  %diff.check73 = icmp ult i64 %i.ez, 16
  %conflict.rdx74 = or i1 %conflict.rdx72, %diff.check73
  %i.fa = add i64 %i.ek, %i.dw
  %i.fb = sub i64 %i.fa, %i.dz
  %diff.check75 = icmp ult i64 %i.fb, 16
  %conflict.rdx76 = or i1 %conflict.rdx74, %diff.check75
  %i.fc = sub nsw i64 %i.ei, %i.eo
  %diff.check77 = icmp ult i64 %i.fc, 16
  %conflict.rdx78 = or i1 %conflict.rdx76, %diff.check77
  %i.fd = add i64 %i.ei, %i.dw
  %i.fe = add i64 %i.eo, %i.dz
  %i.ff = sub i64 %i.fd, %i.fe
  %diff.check79 = icmp ult i64 %i.ff, 16
  %conflict.rdx80 = or i1 %conflict.rdx78, %diff.check79
  %diff.check81 = icmp ult i64 %i.ei, 16
  %conflict.rdx82 = or i1 %conflict.rdx80, %diff.check81
  %i.fg = add i64 %i.ei, %i.dw
  %i.fh = sub i64 %i.dz, %i.fg
  %diff.check83 = icmp ult i64 %i.fh, 16
  %conflict.rdx84 = or i1 %conflict.rdx82, %diff.check83
  %i.fi = add i64 %i.ei, %i.dz
  %i.fj = sub i64 %i.fi, %i.dw                    ; 2 uses
  %i.fk = sub i64 %i.fj, %i.eo
  %diff.check85 = icmp ult i64 %i.fk, 16
  %conflict.rdx86 = or i1 %conflict.rdx84, %diff.check85
  %diff.check87 = icmp ult i64 %i.fj, 16
  %conflict.rdx88 = or i1 %conflict.rdx86, %diff.check87
  br i1 %conflict.rdx88, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %n.vec93 = and i64 %i.ee, 2147483646            ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body94 ] ; 6 uses
  %i.fl = add nsw i64 %index95, %i.ed             ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fl
  %wide.load = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !63
  %i.fn = sub nsw i64 %index95, %i.ee             ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fn
  store <2 x ptr> %wide.load, ptr %i.fo, align 8, !tbaa !63
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fl
  %wide.load96 = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !63
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fn
  store <2 x ptr> %wide.load96, ptr %i.fq, align 8, !tbaa !63
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index95
  %wide.load97 = load <2 x ptr>, ptr %i.fr, align 8, !tbaa !63
  %i.fs = add nsw i64 %index95, %i.ef             ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fs
  store <2 x ptr> %wide.load97, ptr %i.ft, align 8, !tbaa !63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index95
  %wide.load98 = load <2 x ptr>, ptr %i.fu, align 8, !tbaa !63
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fs
  store <2 x ptr> %wide.load98, ptr %i.fv, align 8, !tbaa !63
  %index.next99 = add nuw i64 %index95, 2         ; 2 uses
  %i.fw = icmp eq i64 %index.next99, %n.vec93
  br i1 %i.fw, label %middle.block100, label %vector.body94, !llvm.loop !93

middle.block100:                                  ; preds = %vector.body94
  %cmp.n101 = icmp eq i64 %n.vec93, %i.ee
  br i1 %cmp.n101, label %._crit_edge.i51, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %.lr.ph.i52, %middle.block100
  %indvars.iv.i54.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i52 ], [ %n.vec93, %middle.block100 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %scalar.ph89 ], [ %indvars.iv.i54.ph, %scalar.ph89.preheader ] ; 6 uses
  %i.fx = add nsw i64 %indvars.iv.i54, %i.ed      ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !63
  %i.ga = sub nsw i64 %indvars.iv.i54, %i.ee      ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.ga
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !63
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fx
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !63
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ga
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !63
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i54
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !63
  %i.gh = add nsw i64 %indvars.iv.i54, %i.ef      ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gh
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !63
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i54
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !63
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.gh
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !63
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %i.ee
  br i1 %exitcond.not.i56, label %._crit_edge.i51, label %scalar.ph89, !llvm.loop !94

._crit_edge.i51:                                  ; preds = %scalar.ph89, %middle.block100, %bb.o
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.04346.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.o, !llvm.loop !95

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i51, %bb.m, %bb.n
  %i.gn = load i32, ptr %i.cm, align 8, !tbaa !75
  %i.go = xor i32 %i.gn, 1
  store i32 %i.go, ptr %i.cm, align 8, !tbaa !75
  store i32 0, ptr %i.c, align 8, !tbaa !78
  %i.gp = add nsw i32 %i.db, 1
  store i32 %i.gp, ptr %i.cr, align 4, !tbaa !79
  %i.gq = add nsw i32 %i.db, 2
  store i32 %i.gq, ptr %i.cs, align 8, !tbaa !87
  store i32 2, ptr %i.s, align 4, !tbaa !76
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %set_wraparound_pointers.exit, %bb.l, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !78
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #2
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  tail call void %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef %i.l, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %i.s = load i32, ptr %i.r, align 4, !tbaa !79
  %.not19 = icmp ult i32 %i.s, %i.l
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !78
  store i32 0, ptr %i.r, align 4, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_crank_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  tail call void %i.d(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"jpeg_decompress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !16, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !18, i64 184, !6, i64 192, !6, i64 224, !6, i64 256, !5, i64 288, !11, i64 296, !5, i64 304, !5, i64 308, !6, i64 312, !6, i64 328, !6, i64 344, !5, i64 360, !5, i64 364, !6, i64 368, !19, i64 370, !19, i64 372, !5, i64 376, !6, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !20, i64 408, !5, i64 416, !6, i64 424, !5, i64 456, !5, i64 460, !5, i64 464, !6, i64 468, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !26, i64 568, !27, i64 576, !28, i64 584, !29, i64 592, !30, i64 600, !31, i64 608}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!32 = !{!33, !11, i64 0}
!33 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !34, i64 88}
!34 = !{!"long", !6, i64 0}
!35 = !{!9, !22, i64 536}
!36 = !{!37, !11, i64 0}
!37 = !{!"", !38, i64 0, !6, i64 16, !5, i64 96, !5, i64 100, !6, i64 104, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132}
!38 = !{!"jpeg_d_main_controller", !11, i64 0, !11, i64 8}
!39 = !{!9, !10, i64 0}
!40 = !{!41, !5, i64 40}
!41 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !34, i64 128, !16, i64 136, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164}
!42 = !{!41, !11, i64 0}
!43 = !{!9, !29, i64 592}
end_hunk_1
