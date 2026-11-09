Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z13transfernodesP4meshP8behaviorPdS3_Piii:bb.a
  %i.dg = select i1 %i.df, double %i.az, double %i.de
  store double %i.dg, ptr %i.at, align 8, !tbaa !160
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dh = phi double [ %i.ax, %bb.l ], [ %i.da, %bb.m ]
  %i.di = phi double [ %i.ax, %bb.l ], [ %., %bb.m ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !111
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next94, %i.dk
  br i1 %i.dl, label %bb.i, label %._crit_edge84, !llvm.loop !341

._crit_edge84:                                    ; preds = %bb.n
  %i.dm = fmul double %i.dh, -9.000000e+00
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double 1.000000e+01, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 82672
  store double %i.dn, ptr %i.do, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z10writenodesP4meshP8behaviorPPdS4_PPi(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 82700
  %i.f = load i32, ptr %i.e, align 4, !tbaa !126
  %i.g = zext i32 %i.f to i64
  %i.h = sub i64 %i.d, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.051 = phi i64 [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !63
  %.not58 = icmp eq i32 %i.j, 0
  br i1 %.not58, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.97) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %2, align 8, !tbaa !157
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = shl i64 %.051, 4
  %i.n = and i64 %i.m, 4294967280
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #40 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %_Z9trimalloci.exit

bb.g:                                             ; preds = %bb.f
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit:                               ; preds = %bb.f
  store ptr %i.o, ptr %2, align 8, !tbaa !157
  br label %bb.h

bb.h:                                             ; preds = %_Z9trimalloci.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 82716 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !108  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %3, align 8, !tbaa !157
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = trunc i64 %.051 to i32
  %.tr = shl i32 %i.v, 3
  %i.w = mul i32 %.tr, %i.r
  %i.x = zext i32 %i.w to i64
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #40 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %_Z9trimalloci.exit66

bb.k:                                             ; preds = %bb.j
  %puts.i65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit66:                             ; preds = %bb.j
  store ptr %i.y, ptr %3, align 8, !tbaa !157
  br label %bb.l

bb.l:                                             ; preds = %_Z9trimalloci.exit66, %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %.not59 = icmp eq i32 %i.ab, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %i.ac = icmp eq ptr %.pre, null
  %or.cond = select i1 %.not59, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ad = shl i64 %.051, 2
  %i.ae = and i64 %i.ad, 4294967292
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %_Z9trimalloci.exit68

bb.n:                                             ; preds = %bb.m
  %puts.i67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit68:                             ; preds = %bb.m
  store ptr %i.af, ptr %4, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %_Z9trimalloci.exit68, %bb.l
  %i.ah = phi ptr [ %i.af, %_Z9trimalloci.exit68 ], [ %.pre, %bb.l ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !157
  %i.aj = load ptr, ptr %3, align 8, !tbaa !157   ; 7 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !91
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = add i64 %i.as, %i.ap
  %i.au = urem i64 %i.ap, %i.as
  %i.av = sub i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !93 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !103
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 82740 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !92 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.bi = phi ptr [ %i.bv, %bb.s ], [ %i.am, %bb.o ] ; 2 uses
  %i.bj = phi i32 [ %i.cb, %bb.s ], [ %i.az, %bb.o ] ; 2 uses
  %i.bk = phi ptr [ %i.ca, %bb.s ], [ %i.aw, %bb.o ] ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bf
  br i1 %i.bl, label %._crit_edge83, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = icmp eq i32 %i.bj, 0
  br i1 %i.bm, label %bb.r, label %_Z8traverseP10memorypool.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !98 ; 3 uses
  store ptr %i.bn, ptr %i.an, align 8, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = add i64 %i.as, %i.bp
  %i.br = urem i64 %i.bp, %i.as
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i

_Z8traverseP10memorypool.exit.i:                  ; preds = %bb.r, %bb.q
  %i.bv = phi ptr [ %i.bn, %bb.r ], [ %i.bi, %bb.q ] ; 2 uses
  %i.bw = phi i32 [ %i.bu, %bb.r ], [ %i.bj, %bb.q ]
  %i.bx = phi ptr [ %i.bt, %bb.r ], [ %i.bk, %bb.q ] ; 4 uses
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !96
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz ; 3 uses
  store ptr %i.ca, ptr %i.ax, align 8, !tbaa !102
  %i.cb = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.ba, align 4, !tbaa !103
  %i.cc = icmp eq ptr %i.bx, null
  br i1 %i.cc, label %._crit_edge83, label %bb.s

bb.s:                                             ; preds = %_Z8traverseP10memorypool.exit.i
  %i.cd = load i32, ptr %i.bd, align 4, !tbaa !109
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = icmp eq i32 %i.ch, -32768
  br i1 %i.ci, label %bb.p, label %.lr.ph82, !llvm.loop !3

.lr.ph82:                                         ; preds = %bb.s, %_Z14vertextraverseP4mesh.exit72
  %i.cj = phi ptr [ %i.fj, %_Z14vertextraverseP4mesh.exit72 ], [ %i.bv, %bb.s ]
  %.promoted.i69 = phi ptr [ %i.fo, %_Z14vertextraverseP4mesh.exit72 ], [ %i.ca, %bb.s ]
  %.05081 = phi i32 [ %.1, %_Z14vertextraverseP4mesh.exit72 ], [ %i.bc, %bb.s ] ; 4 uses
  %.05280 = phi ptr [ %i.fl, %_Z14vertextraverseP4mesh.exit72 ], [ %i.bx, %bb.s ] ; 12 uses
  %.05379 = phi i32 [ %.2, %_Z14vertextraverseP4mesh.exit72 ], [ 0, %bb.s ] ; 3 uses
  %.05578 = phi i32 [ %.156, %_Z14vertextraverseP4mesh.exit72 ], [ 0, %bb.s ] ; 3 uses
  %.05280125 = ptrtoaddr ptr %.05280 to i64
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !47
  %.not62 = icmp eq i32 %i.ck, 0
  br i1 %.not62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph82
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !109
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %.05280, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %.not63 = icmp eq i32 %i.cp, -32767
  br i1 %.not63, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph82
  %i.cq = load double, ptr %.05280, align 8, !tbaa !23
  %i.cr = sext i32 %.05578 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cr ; 2 uses
  store double %i.cq, ptr %i.cs, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.05280, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !23
  %i.cv = add nsw i32 %.05578, 2
  %i.cw = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cw, align 8, !tbaa !23
  %i.cx = load i32, ptr %i.q, align 4, !tbaa !108 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.cz = sext i32 %.05379 to i64                 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cx to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.da = shl nsw i64 %i.cz, 3
  %5 = add i64 %i.da, %i.ak
  %i.db = sub i64 %5, %.05280125
  %i.dc = add i64 %i.db, -17
  %diff.check = icmp ult i64 %i.dc, 31
  br i1 %diff.check, label %.lr.ph.preheader128, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.dd = add nsw i64 %n.vec, %i.cz               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.aj, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %wide.load = load <2 x double>, ptr %i.df, align 8, !tbaa !23
  %wide.load126 = load <2 x double>, ptr %i.dg, align 8, !tbaa !23
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %wide.load, ptr %gep, align 8, !tbaa !23
  store <2 x double> %wide.load126, ptr %i.dh, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader128

.lr.ph.preheader128:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv85.ph = phi i64 [ %i.cz, %vector.memcheck ], [ %i.cz, %.lr.ph.preheader ], [ %i.dd, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader128, %.lr.ph.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph.prol ], [ %indvars.iv85.ph, %.lr.ph.preheader128 ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader128 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader128 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %indvars.iv.prol
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !23
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, 1 ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv85.prol
  store double %i.dl, ptr %i.dm, align 8, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !344

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader128
  %indvars.iv.next86.lcssa129.unr = phi i64 [ poison, %.lr.ph.preheader128 ], [ %indvars.iv.next86.prol, %.lr.ph.prol ]
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %.lr.ph.preheader128 ], [ %indvars.iv.next86.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader128 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph ], [ %indvars.iv85.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %indvars.iv
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !23
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv85
  store double %i.dr, ptr %i.ds, align 8, !tbaa !23
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load double, ptr %i.du, align 8, !tbaa !23
  %i.dw = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv85
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !23
  %i.eb = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv85
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store double %i.ea, ptr %i.ec, align 8, !tbaa !23
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.05280, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !23
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, 4 ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv85
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  store double %i.ef, ptr %i.eh, align 8, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !345

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %indvars.iv.next86.lcssa = phi i64 [ %i.dd, %middle.block ], [ %indvars.iv.next86.lcssa129.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next86.3, %.lr.ph ]
  %i.ei = trunc nsw i64 %indvars.iv.next86.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.u
  %.154.lcssa = phi i32 [ %.05379, %bb.u ], [ %i.ei, %._crit_edge.loopexit ]
  %i.ej = load i32, ptr %i.aa, align 4, !tbaa !51
  %.not64 = icmp eq i32 %i.ej, 0
  %.pre91 = load i32, ptr %i.bd, align 4, !tbaa !109 ; 2 uses
  br i1 %.not64, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ek = sext i32 %.pre91 to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.05280, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32
  %i.en = load i32, ptr %i.bb, align 8, !tbaa !30
  %i.eo = sub nsw i32 %.05081, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ep
  store i32 %i.em, ptr %i.eq, align 4, !tbaa !32
  %.pre90 = load i32, ptr %i.bd, align 4, !tbaa !109
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.er = phi i32 [ %.pre90, %bb.v ], [ %.pre91, %._crit_edge ]
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.05280, i64 %i.es
  store i32 %.05081, ptr %i.et, align 4, !tbaa !32
  %i.eu = add nsw i32 %.05081, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.156 = phi i32 [ %i.cv, %bb.w ], [ %.05578, %bb.t ]
  %.2 = phi i32 [ %.154.lcssa, %bb.w ], [ %.05379, %bb.t ]
  %.1 = phi i32 [ %i.eu, %bb.w ], [ %.05081, %bb.t ]
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %i.ev = phi ptr [ %i.fj, %bb.ab ], [ %i.cj, %bb.x ] ; 2 uses
  %.promoted.i6993 = phi ptr [ %i.fo, %bb.ab ], [ %.promoted.i69, %bb.x ] ; 2 uses
  %i.ew = icmp eq ptr %.promoted.i6993, %i.bf
  br i1 %i.ew, label %._crit_edge83, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = load i32, ptr %i.ba, align 4, !tbaa !103 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.aa, label %_Z8traverseP10memorypool.exit.i70

bb.aa:                                            ; preds = %bb.z
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !98 ; 3 uses
  store ptr %i.ez, ptr %i.an, align 8, !tbaa !101
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fc = load i32, ptr %i.aq, align 8, !tbaa !91
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = add i64 %i.fd, %i.fb
  %i.ff = urem i64 %i.fb, %i.fd
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i70

_Z8traverseP10memorypool.exit.i70:                ; preds = %bb.aa, %bb.z
  %i.fj = phi ptr [ %i.ez, %bb.aa ], [ %i.ev, %bb.z ] ; 2 uses
  %i.fk = phi i32 [ %i.fi, %bb.aa ], [ %i.ex, %bb.z ]
  %i.fl = phi ptr [ %i.fh, %bb.aa ], [ %.promoted.i6993, %bb.z ] ; 4 uses
  %i.fm = load i32, ptr %i.bh, align 4, !tbaa !96
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 %i.fn ; 3 uses
  store ptr %i.fo, ptr %i.ax, align 8, !tbaa !102
  %i.fp = add nsw i32 %i.fk, -1
  store i32 %i.fp, ptr %i.ba, align 4, !tbaa !103
  %i.fq = icmp eq ptr %i.fl, null
  br i1 %i.fq, label %._crit_edge83, label %bb.ab

bb.ab:                                            ; preds = %_Z8traverseP10memorypool.exit.i70
  %i.fr = load i32, ptr %i.bd, align 4, !tbaa !109
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [4 x i8], ptr %i.fl, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32
  %i.fw = icmp eq i32 %i.fv, -32768
  br i1 %i.fw, label %bb.y, label %_Z14vertextraverseP4mesh.exit72, !llvm.loop !3

_Z14vertextraverseP4mesh.exit72:                  ; preds = %bb.ab
  br label %.lr.ph82, !llvm.loop !346

._crit_edge83:                                    ; preds = %bb.p, %_Z8traverseP10memorypool.exit.i, %bb.y, %_Z8traverseP10memorypool.exit.i70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z11numbernodesP4meshP8behavior(ptr nofree noundef captures(none) initializes((208, 224), (260, 264)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = add i64 %i.h, %i.e
  %i.j = urem i64 %i.e, %i.h
  %i.k = sub i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236
end_hunk_0
begin_hunk_1_@_Z10writeedgesP4meshP8behaviorPPiS4_:bb.a
  %.2.2 = phi i64 [ %i.hk, %bb.aj ], [ %.2.1, %bb.ad ]
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %i.hl = phi ptr [ %i.hz, %bb.ao ], [ %i.bu, %bb.ak ] ; 2 uses
  %.promoted.i6883 = phi ptr [ %i.ie, %bb.ao ], [ %.promoted.i68, %bb.ak ] ; 2 uses
  %i.hm = icmp eq ptr %.promoted.i6883, %i.am
  br i1 %i.hm, label %._crit_edge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hn = load i32, ptr %i.ak, align 4, !tbaa !103 ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.an, label %_Z8traverseP10memorypool.exit.i69

bb.an:                                            ; preds = %bb.am
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !98 ; 3 uses
  store ptr %i.hp, ptr %i.x, align 8, !tbaa !101
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.hs = load i32, ptr %i.aa, align 8, !tbaa !91
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = urem i64 %i.hr, %i.ht
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load i32, ptr %i.an, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i69

_Z8traverseP10memorypool.exit.i69:                ; preds = %bb.an, %bb.am
  %i.hz = phi ptr [ %i.hp, %bb.an ], [ %i.hl, %bb.am ] ; 2 uses
  %i.ia = phi i32 [ %i.hy, %bb.an ], [ %i.hn, %bb.am ]
  %i.ib = phi ptr [ %i.hx, %bb.an ], [ %.promoted.i6883, %bb.am ] ; 4 uses
  %i.ic = load i32, ptr %i.ao, align 4, !tbaa !96
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %i.id ; 3 uses
  store ptr %i.ie, ptr %i.ah, align 8, !tbaa !102
  %i.if = add nsw i32 %i.ia, -1
  store i32 %i.if, ptr %i.ak, align 4, !tbaa !103
  %i.ig = icmp eq ptr %i.ib, null
  br i1 %i.ig, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_Z8traverseP10memorypool.exit.i69
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !76
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.al, label %_Z16triangletraverseP4mesh.exit71, !llvm.loop !1

_Z16triangletraverseP4mesh.exit71:                ; preds = %bb.ao
  br label %.preheader, !llvm.loop !352

._crit_edge:                                      ; preds = %bb.j, %_Z8traverseP10memorypool.exit.i, %bb.al, %_Z8traverseP10memorypool.exit.i69
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12writevoronoiP4meshP8behaviorPPdS4_PPiS6_S6_S4_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !63
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.101) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !157    ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = shl i64 %i.i, 4
  %i.k = and i64 %i.j, 4294967280
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #40 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_Z9trimalloci.exit

bb.e:                                             ; preds = %bb.d
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit:                               ; preds = %bb.d
  store ptr %i.l, ptr %2, align 8, !tbaa !157
  br label %bb.f

bb.f:                                             ; preds = %_Z9trimalloci.exit, %bb.c
  %i.n = phi ptr [ %i.l, %_Z9trimalloci.exit ], [ %i.f, %bb.c ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !157    ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 82716
  %i.t = load i32, ptr %i.s, align 4, !tbaa !108
  %i.u = trunc i64 %i.r to i32
  %.tr112 = shl i32 %i.u, 3
  %i.v = mul i32 %.tr112, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #40 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %_Z9trimalloci.exit120

bb.h:                                             ; preds = %bb.g
  %puts.i119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit120:                            ; preds = %bb.g
  store ptr %i.x, ptr %3, align 8, !tbaa !157
  %.pre = load ptr, ptr %2, align 8, !tbaa !157
  br label %bb.i

bb.i:                                             ; preds = %_Z9trimalloci.exit120, %bb.f
  %i.z = phi ptr [ %i.x, %_Z9trimalloci.exit120 ], [ %i.o, %bb.f ] ; 5 uses
  %i.aa = phi ptr [ %.pre, %_Z9trimalloci.exit120 ], [ %i.n, %bb.f ]
  %i.ab = ptrtoaddr ptr %i.z to i64
  store ptr null, ptr %4, align 8, !tbaa !98
  %i.ac = load ptr, ptr %0, align 8, !tbaa !89    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !91
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  %i.aj = add i64 %i.ai, %i.af
  %i.ak = urem i64 %i.af, %i.ai
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !93 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 8 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.av = phi ptr [ %i.bi, %bb.m ], [ %i.ac, %bb.i ] ; 2 uses
  %i.aw = phi i32 [ %i.bo, %bb.m ], [ %i.ap, %bb.i ] ; 2 uses
  %i.ax = phi ptr [ %i.bn, %bb.m ], [ %i.am, %bb.i ] ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.as
  br i1 %i.ay, label %._crit_edge150, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %i.aw, 0
  br i1 %i.az, label %bb.l, label %_Z8traverseP10memorypool.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !98 ; 3 uses
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = add i64 %i.bc, %i.ai
  %i.be = urem i64 %i.bc, %i.ai
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i32, ptr %i.at, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i

_Z8traverseP10memorypool.exit.i:                  ; preds = %bb.l, %bb.k
  %i.bi = phi ptr [ %i.ba, %bb.l ], [ %i.av, %bb.k ]
  %i.bj = phi i32 [ %i.bh, %bb.l ], [ %i.aw, %bb.k ]
  %i.bk = phi ptr [ %i.bg, %bb.l ], [ %i.ax, %bb.k ] ; 4 uses
  %i.bl = load i32, ptr %i.au, align 4, !tbaa !96
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %i.an, align 8, !tbaa !102
  %i.bo = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.aq, align 4, !tbaa !103
  %i.bp = icmp eq ptr %i.bk, null
  br i1 %i.bp, label %._crit_edge150, label %bb.m

bb.m:                                             ; preds = %_Z8traverseP10memorypool.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.j, label %.lr.ph149, !llvm.loop !1

.lr.ph149:                                        ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 82716
  %invariant.op.a = add i64 %i.ab, -16
  br label %bb.n

bb.n:                                             ; preds = %_Z16triangletraverseP4mesh.exit124, %.lr.ph149
  %indvars.iv165 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next166, %_Z16triangletraverseP4mesh.exit124 ] ; 2 uses
  %.0104148 = phi i32 [ %i.bu, %.lr.ph149 ], [ %i.fx, %_Z16triangletraverseP4mesh.exit124 ] ; 2 uses
  %.sroa.029.0147 = phi ptr [ %i.bk, %.lr.ph149 ], [ %i.fo, %_Z16triangletraverseP4mesh.exit124 ] ; 4 uses
  %.0105146 = phi i32 [ 0, %.lr.ph149 ], [ %.1106.lcssa, %_Z16triangletraverseP4mesh.exit124 ] ; 2 uses
  %i.bx = load i32, ptr @plus1mod3, align 4, !tbaa !32
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [8 x i8], ptr %.sroa.029.0147, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !76 ; 6 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = load i32, ptr @minus1mod3, align 4, !tbaa !32
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %.sroa.029.0147, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !76 ; 6 uses
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.029.0147, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !76 ; 6 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64
  call void @_Z16findcircumcenterP4meshP8behaviorPdS3_S3_S3_S3_S3_i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.cb, ptr noundef %i.ch, ptr noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.cm = load double, ptr %i.a, align 16, !tbaa !23
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv165 ; 2 uses
  store double %i.cm, ptr %i.cn, align 8, !tbaa !23
  %i.co = load double, ptr %i.bv, align 8, !tbaa !23
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !23
  %i.cq = load i32, ptr %i.bw, align 4, !tbaa !108 ; 4 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.cs = load double, ptr %i.b, align 8, !tbaa !23 ; 4 uses
  %i.ct = load double, ptr %i.c, align 8, !tbaa !23 ; 4 uses
  %i.cu = sext i32 %.0105146 to i64               ; 5 uses
  %i.cv = add nuw i32 %i.cq, 2
  %wide.trip.count = zext i32 %i.cv to i64        ; 3 uses
  %i.cw = zext nneg i32 %i.cq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cx = shl nsw i64 %i.cu, 3
  %.reass = add i64 %i.cx, %invariant.op.a        ; 3 uses
  %8 = sub i64 %i.cc, %.reass
  %diff.check = icmp ugt i64 %8, -16
  %9 = sub i64 %i.ci, %.reass
  %diff.check242 = icmp ugt i64 %9, -16
  %conflict.rdx = or i1 %diff.check, %diff.check242
  %i.cy = sub i64 %i.cl, %.reass
  %diff.check243 = icmp ugt i64 %i.cy, -16
  %conflict.rdx244 = or i1 %conflict.rdx, %diff.check243
  br i1 %conflict.rdx244, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 2147483646              ; 4 uses
  %i.cz = add nsw i64 %n.vec, %i.cu               ; 2 uses
  %i.da = add nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <2 x double> poison, double %i.ct, i64 0
  %broadcast.splat246 = shufflevector <2 x double> %broadcast.splatinsert245, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.gep = getelementptr [8 x i8], ptr %i.z, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = add nuw i64 %index, 2                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.db
  %wide.load = load <2 x double>, ptr %i.dc, align 8, !tbaa !23 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.db
  %wide.load247 = load <2 x double>, ptr %i.dd, align 8, !tbaa !23
  %i.de = fsub <2 x double> %wide.load247, %wide.load
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.de, <2 x double> %wide.load)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.db
  %wide.load248 = load <2 x double>, ptr %i.dg, align 8, !tbaa !23
  %i.dh = fsub <2 x double> %wide.load248, %wide.load
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat246, <2 x double> %i.dh, <2 x double> %i.df)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.di, ptr %gep, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv160.ph = phi i64 [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph ], [ %i.cz, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph ], [ %i.da, %middle.block ] ; 7 uses
  %i.dk = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.ph
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !23 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.ph
  %i.do = load double, ptr %i.dn, align 8, !tbaa !23
  %i.dp = fsub double %i.do, %i.dm
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dp, double %i.dm)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.ph
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !23
  %i.dt = fsub double %i.ds, %i.dm
  %i.du = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dt, double %i.dq)
  %indvars.iv.next161.prol = add nsw i64 %indvars.iv160.ph, 1 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv160.ph
  store double %i.du, ptr %i.dv, align 8, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next161.lcssa256.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next161.prol, %scalar.ph.prol ]
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %scalar.ph.preheader ], [ %indvars.iv.next161.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dw = add nsw i64 %wide.trip.count, -1
  %i.dx = icmp eq i64 %indvars.iv.ph, %i.dw
  br i1 %i.dx, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %scalar.ph ], [ %indvars.iv160.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !23 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !23
  %i.ec = fsub double %i.eb, %i.dz
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ec, double %i.dz)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !23
  %i.eg = fsub double %i.ef, %i.dz
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.eg, double %i.ed)
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv160
  store double %i.eh, ptr %i.ei, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !23 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next
  %i.em = load double, ptr %i.el, align 8, !tbaa !23
  %i.en = fsub double %i.em, %i.ek
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.en, double %i.ek)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !23
  %i.er = fsub double %i.eq, %i.ek
  %i.es = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.er, double %i.eo)
  %indvars.iv.next161.1 = add nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv160
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  store double %i.es, ptr %i.eu, align 8, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !354

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next161.lcssa = phi i64 [ %i.cz, %middle.block ], [ %indvars.iv.next161.lcssa256.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next161.1, %scalar.ph ]
  %i.ev = trunc nsw i64 %indvars.iv.next161.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.1106.lcssa = phi i32 [ %.0105146, %bb.n ], [ %i.ev, %._crit_edge.loopexit ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.029.0147, i64 48
  store i32 %.0104148, ptr %i.ew, align 8, !tbaa !32
  %i.ex = load ptr, ptr %i.ar, align 8, !tbaa !92
  %.promoted.i121 = load ptr, ptr %i.an, align 8, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %._crit_edge
  %i.ey = phi ptr [ %i.fr, %bb.r ], [ %.promoted.i121, %._crit_edge ] ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ex
  br i1 %i.ez, label %._crit_edge150, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = load i32, ptr %i.aq, align 4, !tbaa !103 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.q, label %_Z8traverseP10memorypool.exit.i122

bb.q:                                             ; preds = %bb.p
  %i.fc = load ptr, ptr %i.ad, align 8, !tbaa !101
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !98 ; 2 uses
  store ptr %i.fd, ptr %i.ad, align 8, !tbaa !101
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = load i32, ptr %i.ag, align 8, !tbaa !91
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = add i64 %i.fh, %i.ff
  %i.fj = urem i64 %i.ff, %i.fh
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load i32, ptr %i.at, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i122

_Z8traverseP10memorypool.exit.i122:               ; preds = %bb.q, %bb.p
  %i.fn = phi i32 [ %i.fm, %bb.q ], [ %i.fa, %bb.p ]
  %i.fo = phi ptr [ %i.fl, %bb.q ], [ %i.ey, %bb.p ] ; 4 uses
  %i.fp = load i32, ptr %i.au, align 4, !tbaa !96
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq ; 2 uses
  store ptr %i.fr, ptr %i.an, align 8, !tbaa !102
  %i.fs = add nsw i32 %i.fn, -1
  store i32 %i.fs, ptr %i.aq, align 4, !tbaa !103
  %i.ft = icmp eq ptr %i.fo, null
  br i1 %i.ft, label %._crit_edge150, label %bb.r

bb.r:                                             ; preds = %_Z8traverseP10memorypool.exit.i122
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !76
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.o, label %_Z16triangletraverseP4mesh.exit124, !llvm.loop !1

_Z16triangletraverseP4mesh.exit124:               ; preds = %bb.r
  %i.fx = add i32 %.0104148, 1
  br label %bb.n, !llvm.loop !355

._crit_edge150:                                   ; preds = %bb.j, %_Z8traverseP10memorypool.exit.i, %bb.o, %_Z8traverseP10memorypool.exit.i122
  %i.fy = load i32, ptr %i.d, align 8, !tbaa !63
  %.not114 = icmp eq i32 %i.fy, 0
  br i1 %.not114, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge150
  %puts115 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.102) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge150
  %i.fz = load ptr, ptr %5, align 8, !tbaa !98
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 82704
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !188
  %i.gd = shl i64 %i.gc, 3
  %i.ge = and i64 %i.gd, 4294967288
  %i.gf = tail call noalias ptr @malloc(i64 noundef %i.ge) #40 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.v, label %_Z9trimalloci.exit126

bb.v:                                             ; preds = %bb.u
  %puts.i125 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z9trimalloci.exit126:                            ; preds = %bb.u
  store ptr %i.gf, ptr %5, align 8, !tbaa !98
  br label %bb.w

bb.w:                                             ; preds = %_Z9trimalloci.exit126, %bb.t
  store ptr null, ptr %6, align 8, !tbaa !98
  %i.gh = load ptr, ptr %7, align 8, !tbaa !157   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
end_hunk_1
