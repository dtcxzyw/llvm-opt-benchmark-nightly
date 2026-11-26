Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdmainct-16?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@j16init_d_main_controller:bb.a

bb.l:                                             ; preds = %bb.k, %alloc_funny_pointers.exit
  %i.cb = phi i32 [ %i.by, %alloc_funny_pointers.exit ], [ %.pre56, %bb.k ]
  %.047 = phi i32 [ %i.ca, %alloc_funny_pointers.exit ], [ %i.aa, %bb.k ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.054 = phi ptr [ %i.cf, %.lr.ph ], [ %i.cy, %bb.m ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.054, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.054, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51 ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !43
  %i.co = sdiv i32 %i.cm, %i.cn
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %.054, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !84
  %i.cu = mul i32 %i.ct, %i.cl
  %i.cv = mul nsw i32 %i.co, %.047
  %i.cw = tail call ptr %i.cr(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.cu, i32 noundef %i.cv) #3
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.054, i64 96
  %i.cz = load i32, ptr %i.cc, align 8, !tbaa !44
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.m, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 10 uses
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @process_data_context_main, ptr %i.g, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph63.i, label %make_funny_pointers.exit

.lr.ph63.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = add nsw i32 %i.i, 2
  %i.u = add nsw i32 %i.i, -2
  %wide.trip.count79.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph63.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next77.i, %._crit_edge.i ] ; 4 uses
  %.061.i = phi ptr [ %i.n, %.lr.ph63.i ], [ %i.dv, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.061.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %.061.i, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sdiv i32 %i.z, %i.i                     ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv76.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 10 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv76.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 15 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv76.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 15 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 6 uses
  %i.ak = mul nsw i32 %i.aa, %i.t                 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %.preheader54.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 5 uses
  %min.iters.check50 = icmp ult i32 %i.ak, 10
  br i1 %min.iters.check50, label %.lr.ph.i.preheader, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.preheader.i
  %i.am = sub i64 %i.ag, %i.ad
  %diff.check52 = icmp ugt i64 %i.am, -32
  %i.an = sub i64 %i.aj, %i.ag
  %diff.check53 = icmp ugt i64 %i.an, -32
  %conflict.rdx54 = or i1 %diff.check52, %diff.check53
  %i.ao = sub i64 %i.aj, %i.ad
  %diff.check55 = icmp ugt i64 %i.ao, -32
  %conflict.rdx56 = or i1 %conflict.rdx54, %diff.check55
  br i1 %conflict.rdx56, label %.lr.ph.i.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index60 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load61 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %wide.load62 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index60 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x ptr> %wide.load61, ptr %i.ar, align 8, !tbaa !56
  store <2 x ptr> %wide.load62, ptr %i.as, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index60 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %wide.load61, ptr %i.at, align 8, !tbaa !56
  store <2 x ptr> %wide.load62, ptr %i.au, align 8, !tbaa !56
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.av, label %middle.block64, label %vector.body59, !llvm.loop !85

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %n.vec58, %wide.trip.count.i
  br i1 %cmp.n65, label %.preheader54.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck51, %.lr.ph.preheader.i, %middle.block64
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec58, %middle.block64 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !56
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !86

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ba = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.preheader54.i, label %.lr.ph.i

.preheader54.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block64, %bb.d
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
  %2 = add i64 %i.bj, %i.ag
  %3 = add i64 %i.bi, %i.aj
  %4 = sub i64 %3, %2
  %diff.check25 = icmp ugt i64 %4, -32
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.bl = sub i64 %i.ag, %i.aj
  %diff.check26 = icmp ugt i64 %i.bl, -32
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  %5 = sub i64 %i.aj, %i.ag
  %diff.check28 = icmp ugt i64 %5, -32
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  %6 = add i64 %i.bi, %i.ag
  %7 = add i64 %i.bj, %i.aj
  %i.bm = sub i64 %7, %6
  %diff.check30 = icmp ugt i64 %i.bm, -32
  %conflict.rdx31 = or i1 %conflict.rdx29, %diff.check30
  br i1 %conflict.rdx31, label %scalar.ph23.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck
  %n.vec33 = and i64 %wide.trip.count69.i, 2147483644 ; 3 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next39, %vector.body34 ] ; 3 uses
  %i.bn = add nsw i64 %index35, %i.bg             ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !56
  %wide.load36 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !56
  %i.bq = add nsw i64 %index35, %i.bh             ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x ptr> %wide.load, ptr %i.br, align 8, !tbaa !56
  store <2 x ptr> %wide.load36, ptr %i.bs, align 8, !tbaa !56
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bq ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load37 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !56
  %wide.load38 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !56
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bn ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x ptr> %wide.load37, ptr %i.bv, align 8, !tbaa !56
  store <2 x ptr> %wide.load38, ptr %i.bw, align 8, !tbaa !56
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next39, %n.vec33
  br i1 %i.bx, label %middle.block40, label %vector.body34, !llvm.loop !87

middle.block40:                                   ; preds = %vector.body34
  %cmp.n41 = icmp eq i64 %n.vec33, %wide.trip.count69.i
  br i1 %cmp.n41, label %.lr.ph59.preheader.i, label %scalar.ph23.preheader

scalar.ph23.preheader:                            ; preds = %vector.memcheck, %.lr.ph57.i, %middle.block40
  %indvars.iv66.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph57.i ], [ %n.vec33, %middle.block40 ] ; 5 uses
  %xtraiter67 = and i64 %wide.trip.count69.i, 1
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %scalar.ph23.prol.loopexit, label %scalar.ph23.prol

scalar.ph23.prol:                                 ; preds = %scalar.ph23.preheader
  %i.by = add nsw i64 %indvars.iv66.i.ph, %i.bg   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !56
  %i.cb = add nsw i64 %indvars.iv66.i.ph, %i.bh   ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.cb
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !56
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.by
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !56
  %indvars.iv.next67.i.prol = or disjoint i64 %indvars.iv66.i.ph, 1
  br label %scalar.ph23.prol.loopexit

scalar.ph23.prol.loopexit:                        ; preds = %scalar.ph23.prol, %scalar.ph23.preheader
  %indvars.iv66.i.unr = phi i64 [ %indvars.iv66.i.ph, %scalar.ph23.preheader ], [ %indvars.iv.next67.i.prol, %scalar.ph23.prol ]
  %i.cg = add nsw i64 %wide.trip.count69.i, -1
  %i.ch = icmp eq i64 %indvars.iv66.i.ph, %i.cg
  br i1 %i.ch, label %.lr.ph59.preheader.i, label %scalar.ph23

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !56
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !56
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.1
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.1
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !56
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.2
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !56 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.2
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !56
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader54.i, label %.lr.ph.i, !llvm.loop !88

.lr.ph59.preheader.i:                             ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23, %middle.block40
  %i.cy = zext nneg i32 %i.aa to i64              ; 5 uses
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph59.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader.i
  %n.vec = and i64 %i.cy, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = sub nsw i64 %index, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.da, align 8, !tbaa !56
  store <2 x ptr> %broadcast.splat, ptr %i.db, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cy
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph59.i.preheader

.lr.ph59.i.preheader:                             ; preds = %.lr.ph59.preheader.i, %middle.block
  %indvars.iv71.i.ph = phi i64 [ 0, %.lr.ph59.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph59.i

scalar.ph23:                                      ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i.1, %scalar.ph23 ], [ %indvars.iv66.i.unr, %scalar.ph23.prol.loopexit ] ; 4 uses
  %i.dd = add nsw i64 %indvars.iv66.i, %i.bg      ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !56
  %i.dg = add nsw i64 %indvars.iv66.i, %i.bh      ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dg
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !56
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dg
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !56
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dd
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !56
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.dl = add nsw i64 %indvars.iv.next67.i, %i.bg ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !56
  %i.do = add nsw i64 %indvars.iv.next67.i, %i.bh ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.do
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !56
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !56
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dl
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !56
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %exitcond70.not.i.1 = icmp eq i64 %indvars.iv.next67.i.1, %wide.trip.count69.i
  br i1 %exitcond70.not.i.1, label %.lr.ph59.preheader.i, label %scalar.ph23, !llvm.loop !90

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %.lr.ph59.i ], [ %indvars.iv71.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %i.dt = sub nsw i64 %indvars.iv71.i, %i.cy
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.dt
  store ptr %.pre.i, ptr %i.du, align 8, !tbaa !56
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %i.cy
  br i1 %exitcond75.not.i, label %._crit_edge.i, label %.lr.ph59.i, !llvm.loop !91

._crit_edge.i:                                    ; preds = %.lr.ph59.i, %middle.block, %.preheader54.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.061.i, i64 96
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %make_funny_pointers.exit, label %bb.d, !llvm.loop !92

make_funny_pointers.exit:                         ; preds = %._crit_edge.i, %bb.c
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.dw, align 8, !tbaa !59
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 0, ptr %i.dx, align 4, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 0, ptr %i.dy, align 4, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @process_data_simple_main, ptr %i.g, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %make_funny_pointers.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 0, ptr %i.dz, align 8, !tbaa !62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.ea, align 4, !tbaa !63
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @process_data_crank_post, ptr %i.eb, align 8, !tbaa !93
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ec = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 4, ptr %i.ed, align 8, !tbaa !35
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !36
  tail call void %i.ee(ptr noundef nonnull %0) #3
  br label %bb.i
end_hunk_0
