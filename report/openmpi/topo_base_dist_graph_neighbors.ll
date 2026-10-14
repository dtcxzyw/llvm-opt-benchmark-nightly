Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_dist_graph_neighbors?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -13, 1) i32 @mca_topo_base_dist_graph_neighbors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(address) %6) local_unnamed_addr #0 {
bb.a:
  %7 = ptrtoaddr ptr %5 to i64                    ; 5 uses
  %8 = ptrtoaddr ptr %6 to i64                    ; 3 uses
  %9 = ptrtoaddr ptr %2 to i64                    ; 5 uses
  %10 = ptrtoaddr ptr %3 to i64                   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = and i32 %i.f, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.i) ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57
  %.036 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.k) ; 6 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 17 uses
  %11 = ptrtoaddr ptr %i.n to i64                 ; 4 uses
  %.not47 = icmp eq ptr %3, inttoptr (i64 2 to ptr)
  br i1 %.not47, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count67 = zext nneg i32 %spec.select to i64 ; 5 uses
  %min.iters.check122 = icmp ult i32 %spec.select, 8
  %i.o = sub i64 %11, %9
  %diff.check120 = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check122, i1 true, i1 %diff.check120
  br i1 %or.cond, label %.lr.ph.split.us.preheader193, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec124 = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body125 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index126 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.p, align 4, !tbaa !59
  %wide.load128 = load <4 x i32>, ptr %i.q, align 4, !tbaa !59
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index126 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load127, ptr %i.r, align 4, !tbaa !59
  store <4 x i32> %wide.load128, ptr %i.s, align 4, !tbaa !59
  %index.next129 = add nuw i64 %index126, 8       ; 2 uses
  %i.t = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.t, label %middle.block130, label %vector.body125, !llvm.loop !8

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %n.vec124, %wide.trip.count67
  br i1 %cmp.n131, label %.preheader, label %.lr.ph.split.us.preheader193

.lr.ph.split.us.preheader193:                     ; preds = %.lr.ph.split.us.preheader, %middle.block130
  %indvars.iv64.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec124, %middle.block130 ] ; 3 uses
  %xtraiter200 = and i64 %wide.trip.count67, 3    ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader193, %.lr.ph.split.us.prol
  %indvars.iv64.prol = phi i64 [ %indvars.iv.next65.prol, %.lr.ph.split.us.prol ], [ %indvars.iv64.ph, %.lr.ph.split.us.preheader193 ] ; 3 uses
  %prol.iter202 = phi i64 [ %prol.iter202.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader193 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv64.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.prol
  store i32 %i.v, ptr %i.w, align 4, !tbaa !59
  %indvars.iv.next65.prol = add nuw nsw i64 %indvars.iv64.prol, 1 ; 2 uses
  %prol.iter202.next = add i64 %prol.iter202, 1   ; 2 uses
  %prol.iter202.cmp.not = icmp eq i64 %prol.iter202.next, %xtraiter200
  br i1 %prol.iter202.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !9

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader193
  %indvars.iv64.unr = phi i64 [ %indvars.iv64.ph, %.lr.ph.split.us.preheader193 ], [ %indvars.iv.next65.prol, %.lr.ph.split.us.prol ]
  %i.x = sub nsw i64 %indvars.iv64.ph, %wide.trip.count67
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65.3, %.lr.ph.split.us ], [ %indvars.iv64.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv64
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !59
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next65
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next65
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !59
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next65.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next65.1
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !59
  %indvars.iv.next65.2 = add nuw nsw i64 %indvars.iv64, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next65.2
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next65.2
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !59
  %indvars.iv.next65.3 = add nuw nsw i64 %indvars.iv64, 4 ; 2 uses
  %exitcond68.not.3 = icmp eq i64 %indvars.iv.next65.3, %wide.trip.count67
  br i1 %exitcond68.not.3, label %.preheader, label %.lr.ph.split.us, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64 ; 6 uses
  %12 = ptrtoaddr ptr %i.am to i64                ; 2 uses
  %.not48 = icmp eq ptr %i.am, null
  %wide.trip.count62 = zext nneg i32 %spec.select to i64 ; 10 uses
  br i1 %.not48, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i32 %spec.select, 32
  br i1 %min.iters.check, label %.lr.ph.split.split.preheader196, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split.preheader
  %i.an = sub i64 %9, %10
  %diff.check = icmp ugt i64 %i.an, -32
  %i.ao = sub i64 %11, %9
  %diff.check95 = icmp ugt i64 %i.ao, -32
  %conflict.rdx = or i1 %diff.check, %diff.check95
  %i.ap = sub i64 %9, %12
  %diff.check96 = icmp ugt i64 %i.ap, -32
  %conflict.rdx97 = or i1 %conflict.rdx, %diff.check96
  %i.aq = sub i64 %11, %10
  %diff.check98 = icmp ugt i64 %i.aq, -32
  %conflict.rdx99 = or i1 %conflict.rdx97, %diff.check98
  %i.ar = sub i64 %12, %10
  %diff.check100 = icmp ugt i64 %i.ar, -32
  %conflict.rdx101 = or i1 %conflict.rdx99, %diff.check100
  br i1 %conflict.rdx101, label %.lr.ph.split.split.preheader196, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count62, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !59
  %wide.load102 = load <4 x i32>, ptr %i.at, align 4, !tbaa !59
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !59
  store <4 x i32> %wide.load102, ptr %i.av, align 4, !tbaa !59
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load103 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !59
  %wide.load104 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !59
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %wide.load103, ptr %i.ay, align 4, !tbaa !59
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count62
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.split.preheader196

.lr.ph.split.split.preheader196:                  ; preds = %vector.memcheck, %.lr.ph.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count62, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol

.lr.ph.split.split.prol:                          ; preds = %.lr.ph.split.split.preheader196
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.ph
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !59
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.ph
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !59
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.split.prol.loopexit

.lr.ph.split.split.prol.loopexit:                 ; preds = %.lr.ph.split.split.prol, %.lr.ph.split.split.preheader196
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.split.preheader196 ], [ %indvars.iv.next.prol, %.lr.ph.split.split.prol ]
  %i.bh = add nsw i64 %wide.trip.count62, -1
  %i.bi = icmp eq i64 %indvars.iv.ph, %i.bh
  br i1 %i.bi, label %.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %min.iters.check108 = icmp ult i32 %spec.select, 8
  %i.bj = sub i64 %11, %9
  %diff.check106 = icmp ugt i64 %i.bj, -32
  %or.cond185 = select i1 %min.iters.check108, i1 true, i1 %diff.check106
  br i1 %or.cond185, label %.lr.ph.split.split.us.preheader194, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.split.split.us.preheader
  %n.vec110 = and i64 %wide.trip.count62, 2147483640 ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !59
  %wide.load114 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !59
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load113, ptr %i.bm, align 4, !tbaa !59
  store <4 x i32> %wide.load114, ptr %i.bn, align 4, !tbaa !59
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bo, label %middle.block116, label %vector.body111, !llvm.loop !12

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count62
  br i1 %cmp.n117, label %.preheader, label %.lr.ph.split.split.us.preheader194

.lr.ph.split.split.us.preheader194:               ; preds = %.lr.ph.split.split.us.preheader, %middle.block116
  %indvars.iv59.ph = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec110, %middle.block116 ] ; 3 uses
  %xtraiter198 = and i64 %wide.trip.count62, 3    ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader194, %.lr.ph.split.split.us.prol
  %indvars.iv59.prol = phi i64 [ %indvars.iv.next60.prol, %.lr.ph.split.split.us.prol ], [ %indvars.iv59.ph, %.lr.ph.split.split.us.preheader194 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.prol ], [ 0, %.lr.ph.split.split.us.preheader194 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv59.prol
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv59.prol
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !59
  %indvars.iv.next60.prol = add nuw nsw i64 %indvars.iv59.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter198
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol, !llvm.loop !13

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader194
  %indvars.iv59.unr = phi i64 [ %indvars.iv59.ph, %.lr.ph.split.split.us.preheader194 ], [ %indvars.iv.next60.prol, %.lr.ph.split.split.us.prol ]
  %i.bs = sub nsw i64 %indvars.iv59.ph, %wide.trip.count62
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.3, %.lr.ph.split.split.us ], [ %indvars.iv59.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv59
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv59
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !59
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next60
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !59
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next60
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !59
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next60.1
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next60.1
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !59
  %indvars.iv.next60.2 = add nuw nsw i64 %indvars.iv59, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next60.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !59
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next60.2
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !59
  %indvars.iv.next60.3 = add nuw nsw i64 %indvars.iv59, 4 ; 2 uses
  %exitcond63.not.3 = icmp eq i64 %indvars.iv.next60.3, %wide.trip.count62
  br i1 %exitcond63.not.3, label %.preheader, label %.lr.ph.split.split.us, !llvm.loop !14

.preheader:                                       ; preds = %.lr.ph.split.split.prol.loopexit, %.lr.ph.split.split, %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %middle.block116, %middle.block130, %bb.b
  %i.cg = icmp sgt i32 %.036, 0
  br i1 %i.cg, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65 ; 17 uses
  %13 = ptrtoaddr ptr %i.ci to i64                ; 4 uses
  %.not45 = icmp eq ptr %6, inttoptr (i64 2 to ptr)
  br i1 %.not45, label %.lr.ph52.split.us.preheader, label %.lr.ph52.split

.lr.ph52.split.us.preheader:                      ; preds = %.lr.ph52
  %wide.trip.count82 = zext nneg i32 %.036 to i64 ; 5 uses
  %min.iters.check174 = icmp ult i32 %.036, 8
  %i.cj = sub i64 %13, %7
  %diff.check172 = icmp ugt i64 %i.cj, -32
  %or.cond186 = select i1 %min.iters.check174, i1 true, i1 %diff.check172
  br i1 %or.cond186, label %.lr.ph52.split.us.preheader188, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph52.split.us.preheader
  %n.vec176 = and i64 %wide.trip.count82, 2147483640 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index178 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !59
  %wide.load180 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !59
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index178 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %wide.load179, ptr %i.cm, align 4, !tbaa !59
  store <4 x i32> %wide.load180, ptr %i.cn, align 4, !tbaa !59
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.co, label %middle.block182, label %vector.body177, !llvm.loop !15

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count82
  br i1 %cmp.n183, label %.loopexit, label %.lr.ph52.split.us.preheader188

.lr.ph52.split.us.preheader188:                   ; preds = %.lr.ph52.split.us.preheader, %middle.block182
  %indvars.iv79.ph = phi i64 [ 0, %.lr.ph52.split.us.preheader ], [ %n.vec176, %middle.block182 ] ; 3 uses
  %xtraiter209 = and i64 %wide.trip.count82, 3    ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph52.split.us.prol.loopexit, label %.lr.ph52.split.us.prol

.lr.ph52.split.us.prol:                           ; preds = %.lr.ph52.split.us.preheader188, %.lr.ph52.split.us.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph52.split.us.prol ], [ %indvars.iv79.ph, %.lr.ph52.split.us.preheader188 ] ; 3 uses
  %prol.iter211 = phi i64 [ %prol.iter211.next, %.lr.ph52.split.us.prol ], [ 0, %.lr.ph52.split.us.preheader188 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv79.prol
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv79.prol
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !59
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter211.next = add i64 %prol.iter211, 1   ; 2 uses
  %prol.iter211.cmp.not = icmp eq i64 %prol.iter211.next, %xtraiter209
  br i1 %prol.iter211.cmp.not, label %.lr.ph52.split.us.prol.loopexit, label %.lr.ph52.split.us.prol, !llvm.loop !16

.lr.ph52.split.us.prol.loopexit:                  ; preds = %.lr.ph52.split.us.prol, %.lr.ph52.split.us.preheader188
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph52.split.us.preheader188 ], [ %indvars.iv.next80.prol, %.lr.ph52.split.us.prol ]
  %i.cs = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %.loopexit, label %.lr.ph52.split.us

.lr.ph52.split.us:                                ; preds = %.lr.ph52.split.us.prol.loopexit, %.lr.ph52.split.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph52.split.us ], [ %indvars.iv79.unr, %.lr.ph52.split.us.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv79
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv79
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !59
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next80
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !59
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next80
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !59
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next80.1
  %i.db = load i32, ptr %i.da, align 4, !tbaa !59
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next80.1
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !59
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next80.2
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !59
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next80.2
  store i32 %i.de, ptr %i.df, align 4, !tbaa !59
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond83.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count82
  br i1 %exitcond83.not.3, label %.loopexit, label %.lr.ph52.split.us, !llvm.loop !17

.lr.ph52.split:                                   ; preds = %.lr.ph52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66 ; 6 uses
  %14 = ptrtoaddr ptr %i.dh to i64                ; 2 uses
  %.not46 = icmp eq ptr %i.dh, null
  %wide.trip.count77 = zext nneg i32 %.036 to i64 ; 10 uses
  br i1 %.not46, label %.lr.ph52.split.split.us.preheader, label %.lr.ph52.split.split.preheader

.lr.ph52.split.split.preheader:                   ; preds = %.lr.ph52.split
  %min.iters.check144 = icmp ult i32 %.036, 32
  br i1 %min.iters.check144, label %.lr.ph52.split.split.preheader191, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.lr.ph52.split.split.preheader
  %i.di = sub i64 %7, %8
  %diff.check134 = icmp ugt i64 %i.di, -32
  %i.dj = sub i64 %13, %7
  %diff.check135 = icmp ugt i64 %i.dj, -32
  %conflict.rdx136 = or i1 %diff.check134, %diff.check135
  %i.dk = sub i64 %7, %14
  %diff.check137 = icmp ugt i64 %i.dk, -32
  %conflict.rdx138 = or i1 %conflict.rdx136, %diff.check137
  %i.dl = sub i64 %13, %8
  %diff.check139 = icmp ugt i64 %i.dl, -32
  %conflict.rdx140 = or i1 %conflict.rdx138, %diff.check139
  %i.dm = sub i64 %14, %8
  %diff.check141 = icmp ugt i64 %i.dm, -32
  %conflict.rdx142 = or i1 %conflict.rdx140, %diff.check141
  br i1 %conflict.rdx142, label %.lr.ph52.split.split.preheader191, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck133
  %n.vec146 = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index148 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !59
  %wide.load150 = load <4 x i32>, ptr %i.do, align 4, !tbaa !59
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %wide.load149, ptr %i.dp, align 4, !tbaa !59
  store <4 x i32> %wide.load150, ptr %i.dq, align 4, !tbaa !59
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index148 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load151 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !59
  %wide.load152 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !59
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index148 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %wide.load151, ptr %i.dt, align 4, !tbaa !59
  store <4 x i32> %wide.load152, ptr %i.du, align 4, !tbaa !59
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.dv, label %middle.block154, label %vector.body147, !llvm.loop !18

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %n.vec146, %wide.trip.count77
  br i1 %cmp.n155, label %.loopexit, label %.lr.ph52.split.split.preheader191

.lr.ph52.split.split.preheader191:                ; preds = %vector.memcheck133, %.lr.ph52.split.split.preheader, %middle.block154
  %indvars.iv69.ph = phi i64 [ 0, %vector.memcheck133 ], [ 0, %.lr.ph52.split.split.preheader ], [ %n.vec146, %middle.block154 ] ; 7 uses
  %xtraiter203 = and i64 %wide.trip.count77, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.lr.ph52.split.split.prol.loopexit, label %.lr.ph52.split.split.prol

.lr.ph52.split.split.prol:                        ; preds = %.lr.ph52.split.split.preheader191
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv69.ph
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !59
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv69.ph
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !59
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv69.ph
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !59
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv69.ph
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !59
  %indvars.iv.next70.prol = or disjoint i64 %indvars.iv69.ph, 1
  br label %.lr.ph52.split.split.prol.loopexit

.lr.ph52.split.split.prol.loopexit:               ; preds = %.lr.ph52.split.split.prol, %.lr.ph52.split.split.preheader191
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %.lr.ph52.split.split.preheader191 ], [ %indvars.iv.next70.prol, %.lr.ph52.split.split.prol ]
  %i.ec = add nsw i64 %wide.trip.count77, -1
  %i.ed = icmp eq i64 %indvars.iv69.ph, %i.ec
  br i1 %i.ed, label %.loopexit, label %.lr.ph52.split.split

.lr.ph52.split.split.us.preheader:                ; preds = %.lr.ph52.split
  %min.iters.check160 = icmp ult i32 %.036, 8
  %i.ee = sub i64 %13, %7
  %diff.check158 = icmp ugt i64 %i.ee, -32
  %or.cond187 = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  br i1 %or.cond187, label %.lr.ph52.split.split.us.preheader189, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph52.split.split.us.preheader
  %n.vec162 = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index164 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load165 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !59
  %wide.load166 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !59
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index164 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x i32> %wide.load165, ptr %i.eh, align 4, !tbaa !59
  store <4 x i32> %wide.load166, ptr %i.ei, align 4, !tbaa !59
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.ej, label %middle.block168, label %vector.body163, !llvm.loop !19

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count77
  br i1 %cmp.n169, label %.loopexit, label %.lr.ph52.split.split.us.preheader189

.lr.ph52.split.split.us.preheader189:             ; preds = %.lr.ph52.split.split.us.preheader, %middle.block168
  %indvars.iv74.ph = phi i64 [ 0, %.lr.ph52.split.split.us.preheader ], [ %n.vec162, %middle.block168 ] ; 3 uses
  %xtraiter206 = and i64 %wide.trip.count77, 3    ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %.lr.ph52.split.split.us.prol.loopexit, label %.lr.ph52.split.split.us.prol

.lr.ph52.split.split.us.prol:                     ; preds = %.lr.ph52.split.split.us.preheader189, %.lr.ph52.split.split.us.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph52.split.split.us.prol ], [ %indvars.iv74.ph, %.lr.ph52.split.split.us.preheader189 ] ; 3 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %.lr.ph52.split.split.us.prol ], [ 0, %.lr.ph52.split.split.us.preheader189 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv74.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !59
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv74.prol
  store i32 %i.el, ptr %i.em, align 4, !tbaa !59
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %.lr.ph52.split.split.us.prol.loopexit, label %.lr.ph52.split.split.us.prol, !llvm.loop !20

.lr.ph52.split.split.us.prol.loopexit:            ; preds = %.lr.ph52.split.split.us.prol, %.lr.ph52.split.split.us.preheader189
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph52.split.split.us.preheader189 ], [ %indvars.iv.next75.prol, %.lr.ph52.split.split.us.prol ]
  %i.en = sub nsw i64 %indvars.iv74.ph, %wide.trip.count77
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %.loopexit, label %.lr.ph52.split.split.us

.lr.ph52.split.split.us:                          ; preds = %.lr.ph52.split.split.us.prol.loopexit, %.lr.ph52.split.split.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph52.split.split.us ], [ %indvars.iv74.unr, %.lr.ph52.split.split.us.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv74
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !59
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv74
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !59
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next75
  %i.et = load i32, ptr %i.es, align 4, !tbaa !59
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next75
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !59
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next75.1
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !59
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next75.1
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !59
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next75.2
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !59
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next75.2
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !59
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count77
  br i1 %exitcond78.not.3, label %.loopexit, label %.lr.ph52.split.split.us, !llvm.loop !21

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.prol.loopexit, %.lr.ph.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split ], [ %indvars.iv.unr, %.lr.ph.split.split.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !59
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !59
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !59
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !59
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !59
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count62
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph.split.split, !llvm.loop !22

.lr.ph52.split.split:                             ; preds = %.lr.ph52.split.split.prol.loopexit, %.lr.ph52.split.split
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %.lr.ph52.split.split ], [ %indvars.iv69.unr, %.lr.ph52.split.split.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv69
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !59
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv69
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !59
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv69
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !59
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv69
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !59
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next70
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !59
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next70
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !59
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next70
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !59
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next70
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !59
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count77
  br i1 %exitcond73.not.1, label %.loopexit, label %.lr.ph52.split.split, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph52.split.split.prol.loopexit, %.lr.ph52.split.split, %.lr.ph52.split.split.us.prol.loopexit, %.lr.ph52.split.split.us, %.lr.ph52.split.us.prol.loopexit, %.lr.ph52.split.us, %middle.block154, %middle.block168, %middle.block182, %.preheader, %bb.a
  %.034 = phi i32 [ -13, %bb.a ], [ 0, %.preheader ], [ 0, %middle.block182 ], [ 0, %middle.block168 ], [ 0, %middle.block154 ], [ 0, %.lr.ph52.split.split.us.prol.loopexit ], [ 0, %.lr.ph52.split.us.prol.loopexit ], [ 0, %.lr.ph52.split.us ], [ 0, %.lr.ph52.split.split.us ], [ 0, %.lr.ph52.split.split ], [ 0, %.lr.ph52.split.split.prol.loopexit ]
  ret i32 %.034
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !60, !61, !62}
!9 = distinct !{!9, !63}
!10 = distinct !{!10, !60, !61}
!11 = distinct !{!11, !60, !61, !62}
!12 = distinct !{!12, !60, !61, !62}
!13 = distinct !{!13, !63}
!14 = distinct !{!14, !60, !61}
!15 = distinct !{!15, !60, !61, !62}
!16 = distinct !{!16, !63}
!17 = distinct !{!17, !60, !61}
!18 = distinct !{!18, !60, !61, !62}
!19 = distinct !{!19, !60, !61, !62}
!20 = distinct !{!20, !63}
!21 = distinct !{!21, !60, !61}
!22 = distinct !{!22, !60, !61}
!23 = distinct !{!23, !60, !61}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!"p1 _ZTS12opal_class_t", !24, i64 0}
!26 = !{!"opal_object_t", !25, i64 0, !5, i64 8}
!27 = !{!"p1 _ZTS19opal_hash_element_t", !24, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"p1 _ZTS24opal_hash_type_methods_t", !24, i64 0}
!30 = !{!"opal_hash_table_t", !26, i64 0, !27, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !29, i64 64}
!31 = !{!"p1 _ZTS11opal_info_t", !24, i64 0}
!32 = !{!"opal_infosubscriber_t", !26, i64 0, !30, i64 16, !31, i64 88}
!33 = !{!"opal_mutex_t", !26, i64 0, !4, i64 16, !5, i64 56}
!34 = !{!"p1 omnipotent char", !24, i64 0}
!35 = !{!"ompi_comm_extended_cid_t", !28, i64 0, !4, i64 8}
!36 = !{!"ompi_comm_extended_cid_block_t", !35, i64 0, !28, i64 16, !4, i64 24, !4, i64 25}
!37 = !{!"p1 int", !24, i64 0}
!38 = !{!"p1 _ZTS12ompi_group_t", !24, i64 0}
!39 = !{!"p1 _ZTS19ompi_communicator_t", !24, i64 0}
!40 = !{!"p1 _ZTS17opal_hash_table_t", !24, i64 0}
!41 = !{!"p1 _ZTS22mca_topo_base_module_t", !24, i64 0}
!42 = !{!"any p2 pointer", !24, i64 0}
!43 = !{!"p2 _ZTS20ompi_peruse_handle_t", !42, i64 0}
!44 = !{!"p1 _ZTS17ompi_errhandler_t", !24, i64 0}
!45 = !{!"p1 _ZTS14mca_pml_comm_t", !24, i64 0}
!46 = !{!"p1 _ZTS14mca_mtl_comm_t", !24, i64 0}
!47 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !24, i64 0}
!48 = !{!"p1 _ZTS15ompi_instance_t", !24, i64 0}
!49 = !{!"p1 _ZTS13opal_object_t", !24, i64 0}
!50 = !{!"_Bool", !4, i64 0}
!51 = !{!"ompi_communicator_t", !32, i64 0, !33, i64 96, !34, i64 160, !35, i64 168, !36, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !37, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !38, i64 264, !38, i64 272, !39, i64 280, !40, i64 288, !41, i64 296, !43, i64 304, !44, i64 312, !5, i64 320, !45, i64 328, !46, i64 336, !47, i64 344, !48, i64 352, !49, i64 360, !5, i64 368, !5, i64 372, !50, i64 376, !50, i64 377, !50, i64 378}
!52 = !{!51, !41, i64 296}
!53 = !{!4, !4, i64 0}
!54 = !{!51, !5, i64 224}
!55 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !26, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !5, i64 48, !5, i64 52, !50, i64 56}
!56 = !{!55, !5, i64 48}
!57 = !{!55, !5, i64 52}
!58 = !{!55, !37, i64 16}
!59 = !{!5, !5, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
