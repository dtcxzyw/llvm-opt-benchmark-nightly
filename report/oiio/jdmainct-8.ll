inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jinit_d_main_controller:bb.a
alloc_funny_pointers.exit:                        ; preds = %bb.j, %bb.i
  %i.by = phi i32 [ %i.aq, %bb.i ], [ %i.bv, %bb.j ]
  %i.bz = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ca = add nsw i32 %i.bz, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre56 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %alloc_funny_pointers.exit
  %i.cb = phi i32 [ %i.by, %alloc_funny_pointers.exit ], [ %.pre56, %bb.k ]
  %.047 = phi i32 [ %i.ca, %alloc_funny_pointers.exit ], [ %i.aa, %bb.k ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.054 = phi ptr [ %i.cf, %.lr.ph ], [ %i.cy, %bb.m ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.054, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %.054, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !60 ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !51
  %i.co = sdiv i32 %i.cm, %i.cn
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %.054, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !65
  %i.cu = mul i32 %i.ct, %i.cl
  %i.cv = mul nsw i32 %i.co, %.047
  %i.cw = tail call ptr %i.cr(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.cu, i32 noundef %i.cv) #3
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.054, i64 96
  %i.cz = load i32, ptr %i.cc, align 8, !tbaa !52
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.m, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 10 uses
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @process_data_context_main, ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph63.i, label %make_funny_pointers.exit

.lr.ph63.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = add nsw i32 %i.i, 2
  %i.u = add nsw i32 %i.i, -2
  %wide.trip.count79.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph63.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next77.i, %._crit_edge.i ] ; 4 uses
  %.05260.i = phi ptr [ %i.n, %.lr.ph63.i ], [ %i.eb, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05260.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.05260.i, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sdiv i32 %i.z, %i.i                     ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv76.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 10 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv76.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61 ; 15 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv76.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61 ; 15 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 6 uses
  %i.ak = mul nsw i32 %i.aa, %i.t                 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %.preheader54.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 5 uses
  %min.iters.check44 = icmp ult i32 %i.ak, 10
  br i1 %min.iters.check44, label %.lr.ph.i.preheader, label %vector.memcheck37

vector.memcheck37:                                ; preds = %.lr.ph.preheader.i
  %i.am = sub i64 %i.ag, %i.ad
  %diff.check38 = icmp ugt i64 %i.am, -32
  %i.an = sub i64 %i.aj, %i.ag
  %diff.check39 = icmp ugt i64 %i.an, -32
  %conflict.rdx40 = or i1 %diff.check38, %diff.check39
  %i.ao = sub i64 %i.aj, %i.ad
  %diff.check41 = icmp ugt i64 %i.ao, -32
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  br i1 %conflict.rdx42, label %.lr.ph.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck37
  %n.vec47 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body48 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index49 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load50 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !68 ; 2 uses
  %wide.load51 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x ptr> %wide.load50, ptr %i.ar, align 8, !tbaa !68
  store <2 x ptr> %wide.load51, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index49 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %wide.load50, ptr %i.at, align 8, !tbaa !68
  store <2 x ptr> %wide.load51, ptr %i.au, align 8, !tbaa !68
  %index.next52 = add nuw i64 %index49, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.av, label %middle.block53, label %vector.body48, !llvm.loop !69

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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !68
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !72

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
  %min.iters.check24 = icmp slt i32 %i.bd, 16
  br i1 %min.iters.check24, label %scalar.ph23.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph57.i
  %i.bi = shl nsw i64 %i.bg, 3                    ; 3 uses
  %i.bj = shl nsw i64 %i.bh, 3                    ; 3 uses
  %i.bk = sub nsw i64 %i.bj, %i.bi
  %diff.check = icmp ugt i64 %i.bk, -32
  %i.bl = sub i64 %i.ag, %i.aj
  %diff.check16 = icmp ugt i64 %i.bl, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.bm = add i64 %i.bj, %i.ag
  %i.bn = add i64 %i.bi, %i.aj
  %i.bo = sub i64 %i.bn, %i.bm
  %diff.check17 = icmp ugt i64 %i.bo, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  %i.bp = add i64 %i.bi, %i.ag
  %i.bq = add i64 %i.bj, %i.aj
  %i.br = sub i64 %i.bq, %i.bp
  %diff.check19 = icmp ugt i64 %i.br, -32
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.bs = sub i64 %i.aj, %i.ag
  %diff.check21 = icmp ugt i64 %i.bs, -32
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
  %wide.load = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !68
  %wide.load30 = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !68
  %i.bw = add nsw i64 %index29, %i.bh             ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x ptr> %wide.load, ptr %i.bx, align 8, !tbaa !68
  store <2 x ptr> %wide.load30, ptr %i.by, align 8, !tbaa !68
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load31 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !68
  %wide.load32 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !68
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bt ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x ptr> %wide.load31, ptr %i.cb, align 8, !tbaa !68
  store <2 x ptr> %wide.load32, ptr %i.cc, align 8, !tbaa !68
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.cd, label %middle.block34, label %vector.body28, !llvm.loop !74

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
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !68
  %i.ch = add nsw i64 %indvars.iv66.i.ph, %i.bh   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !68
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !68
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ce
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !68
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
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !68 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !68
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !68
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !68 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !68
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.1
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !68
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.1
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !68
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.2
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !68 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !68
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.2
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !68
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader54.i, label %.lr.ph.i, !llvm.loop !75

.lr.ph59.preheader.i:                             ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23, %middle.block34
  %i.de = zext nneg i32 %i.aa to i64              ; 5 uses
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
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
  store <2 x ptr> %broadcast.splat, ptr %i.dg, align 8, !tbaa !68
  store <2 x ptr> %broadcast.splat, ptr %i.dh, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !76

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
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !68
  %i.dm = add nsw i64 %indvars.iv66.i, %i.bh      ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !68
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !68
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dj
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !68
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.dr = add nsw i64 %indvars.iv.next67.i, %i.bg ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !68
  %i.du = add nsw i64 %indvars.iv.next67.i, %i.bh ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.du
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !68
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !68
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dr
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !68
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %exitcond70.not.i.1 = icmp eq i64 %indvars.iv.next67.i.1, %wide.trip.count69.i
  br i1 %exitcond70.not.i.1, label %.lr.ph59.preheader.i, label %scalar.ph23, !llvm.loop !77

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %.lr.ph59.i ], [ %indvars.iv71.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %i.dz = sub nsw i64 %indvars.iv71.i, %i.de
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.dz
  store ptr %.pre.i, ptr %i.ea, align 8, !tbaa !68
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %i.de
  br i1 %exitcond75.not.i, label %._crit_edge.i, label %.lr.ph59.i, !llvm.loop !78

._crit_edge.i:                                    ; preds = %.lr.ph59.i, %middle.block, %.preheader54.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05260.i, i64 96
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %make_funny_pointers.exit, label %bb.d, !llvm.loop !79

make_funny_pointers.exit:                         ; preds = %._crit_edge.i, %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.ec, align 8, !tbaa !80
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 0, ptr %i.ed, align 4, !tbaa !81
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 0, ptr %i.ee, align 4, !tbaa !82
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @process_data_simple_main, ptr %i.g, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %make_funny_pointers.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 0, ptr %i.ef, align 8, !tbaa !83
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.eg, align 4, !tbaa !84
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @process_data_crank_post, ptr %i.eh, align 8, !tbaa !67
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ei = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 3, ptr %i.ej, align 8, !tbaa !36
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !40
  tail call void %i.ek(ptr noundef nonnull %0) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_context_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %i.n) #3
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !81
end_hunk_0
