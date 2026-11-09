Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@flush_large:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph86, %.loopexit75
  %.06185 = phi i32 [ 0, %.lr.ph86 ], [ %.lcssa114, %.loopexit75 ] ; 7 uses
  %i.i = zext i32 %.06185 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.k, %i.l
  br i1 %.not.i, label %large_instruction_change.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.c, align 4, !tbaa !15
  %switch.selectcmp.i = icmp eq i32 %i.k, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 8
  %switch.selectcmp12.i = icmp eq i32 %i.k, 0
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 6, i32 %switch.select.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  store i32 %i.n, ptr %i.d, align 4, !tbaa !10
  %i.o = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i.i = icmp slt i32 %i.m, %i.o
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i.i, label %insert_value_in_array.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sdiv i32 %i.n, 2
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !10
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i.i, i64 noundef %i.s, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !19
  %.pre1.i.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit.i

insert_value_in_array.exit.i:                     ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %i.n, %bb.c ], [ %.pre1.i.i, %bb.d ]
  %i.v = phi ptr [ %.pre.i.i, %bb.c ], [ %i.t, %bb.d ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  store i32 %switch.select13.i, ptr %i.y, align 4, !tbaa !10
  br label %large_instruction_change.exit

large_instruction_change.exit:                    ; preds = %bb.b, %insert_value_in_array.exit.i
  %i.z = icmp slt i32 %.06185, %1
  br i1 %i.z, label %.lr.ph, label %.loopexit75

.lr.ph:                                           ; preds = %large_instruction_change.exit
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !10
  %i.ab = sub i32 %1, %.06185                     ; 2 uses
  %wide.trip.count = zext i32 %i.ab to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ac = load i32, ptr %gep, align 4, !tbaa !10
  %i.ad = icmp eq i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.f, label %.critedge.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !80

.critedge.split.loop.exit:                        ; preds = %bb.e
  %indvars92.le = trunc i64 %indvars.iv to i32    ; 2 uses
  %i.ae = add nuw nsw i32 %.06185, %indvars92.le
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.split.loop.exit
  %.060.lcssa = phi i32 [ %indvars92.le, %.critedge.split.loop.exit ], [ %i.ab, %bb.f ] ; 5 uses
  %.lcssa = phi i32 [ %i.ae, %.critedge.split.loop.exit ], [ %1, %bb.f ] ; 3 uses
  %i.af = icmp samesign ult i32 %.060.lcssa, 3
  br i1 %i.af, label %.preheader74, label %bb.h

.preheader74:                                     ; preds = %.critedge
  %.not90 = icmp eq i32 %.060.lcssa, 0
  br i1 %.not90, label %.loopexit75, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader74, %insert_value_in_array.exit
  %.05983 = phi i32 [ %i.au, %insert_value_in_array.exit ], [ 0, %.preheader74 ] ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 4 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !10
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i = icmp slt i32 %i.ag, %i.ai
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !19  ; 2 uses
  br i1 %.not.i.i, label %insert_value_in_array.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph84
  %i.aj = sdiv i32 %i.ah, 2
  %i.ak = add nsw i32 %i.aj, %i.ah                ; 2 uses
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !10
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 2
  %i.an = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i, i64 noundef %i.am, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !19
  %.pre1.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit

insert_value_in_array.exit:                       ; preds = %.lr.ph84, %bb.g
  %i.ao = phi i32 [ %i.ah, %.lr.ph84 ], [ %.pre1.i, %bb.g ]
  %i.ap = phi ptr [ %.pre.i, %.lr.ph84 ], [ %i.an, %bb.g ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  store i32 2, ptr %i.as, align 4, !tbaa !10
  %i.at = add nuw nsw i32 %.05983, %.06185
  tail call fastcc void @write_three_large(ptr noundef %0, i32 noundef %i.at)
  %i.au = add nuw i32 %.05983, 1                  ; 2 uses
  %exitcond94.not = icmp eq i32 %i.au, %.060.lcssa
  br i1 %exitcond94.not, label %.loopexit75, label %.lr.ph84, !llvm.loop !81

bb.h:                                             ; preds = %.critedge
  %i.av = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 4 uses
  store i32 %i.aw, ptr %i.d, align 4, !tbaa !10
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i66 = icmp slt i32 %i.av, %i.ax
  %.pre.i67 = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i66, label %insert_value_in_array.exit69, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = sdiv i32 %i.aw, 2
  %i.az = add nsw i32 %i.ay, %i.aw                ; 2 uses
  store i32 %i.az, ptr %i.e, align 4, !tbaa !10
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i67, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !19
  %.pre1.i68 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit69

insert_value_in_array.exit69:                     ; preds = %bb.h, %bb.i
  %i.bd = phi i32 [ %i.aw, %bb.h ], [ %.pre1.i68, %bb.i ]
  %i.be = phi ptr [ %.pre.i67, %bb.h ], [ %i.bc, %bb.i ]
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  store i32 5, ptr %i.bh, align 4, !tbaa !10
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1                    ; 4 uses
  store i32 %i.bj, ptr %i.g, align 8, !tbaa !10
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !10
  %.not.i.i70 = icmp slt i32 %i.bi, %i.bk
  %.pre.i71 = load ptr, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i70, label %insert_value_in_array.exit73, label %bb.j

bb.j:                                             ; preds = %insert_value_in_array.exit69
  %i.bl = sdiv i32 %i.bj, 2
  %i.bm = add nsw i32 %i.bl, %i.bj                ; 2 uses
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !10
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i71, i64 noundef %i.bo, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !19
  %.pre1.i72 = load i32, ptr %i.g, align 8, !tbaa !10
  br label %insert_value_in_array.exit73

insert_value_in_array.exit73:                     ; preds = %insert_value_in_array.exit69, %bb.j
  %i.bq = phi i32 [ %i.bj, %insert_value_in_array.exit69 ], [ %.pre1.i72, %bb.j ]
  %i.br = phi ptr [ %.pre.i71, %insert_value_in_array.exit69 ], [ %i.bp, %bb.j ]
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  store i32 %.060.lcssa, ptr %i.bu, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %insert_value_in_array.exit73, %bb.k
  %.182 = phi i32 [ 0, %insert_value_in_array.exit73 ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bv = add nuw nsw i32 %.182, %.06185
  tail call fastcc void @write_three_large(ptr noundef %0, i32 noundef %i.bv)
  %i.bw = add nuw i32 %.182, 1                    ; 2 uses
  %exitcond93.not = icmp eq i32 %i.bw, %.060.lcssa
  br i1 %exitcond93.not, label %.loopexit75, label %bb.k, !llvm.loop !82

.loopexit75:                                      ; preds = %bb.k, %insert_value_in_array.exit, %large_instruction_change.exit, %.preheader74
  %.lcssa114 = phi i32 [ %.06185, %large_instruction_change.exit ], [ %.lcssa, %insert_value_in_array.exit ], [ %.lcssa, %.preheader74 ], [ %.lcssa, %bb.k ] ; 2 uses
  %i.bx = icmp slt i32 %.lcssa114, %1
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.loopexit75, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq i32 %i.bz, %1
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ca = sub nsw i32 %i.bz, %1                   ; 7 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12412 ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 23 uses
  %i.ce = sext i32 %1 to i64                      ; 6 uses
  %wide.trip.count104 = zext nneg i32 %i.ca to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ca, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89
  %i.cf = shl nuw nsw i64 %wide.trip.count104, 2  ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 12412  ; 3 uses
  %i.ci = mul nuw nsw i64 %wide.trip.count104, 12 ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 124    ; 3 uses
  %i.cl = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 12412  ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 %i.cl
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cf
  %i.cq = getelementptr i8, ptr %i.cp, i64 12412  ; 2 uses
  %i.cr = mul nsw i64 %i.ce, 12                   ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 124    ; 2 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.cr
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ci
  %i.cw = getelementptr i8, ptr %i.cv, i64 124    ; 2 uses
  %bound0284 = icmp ult ptr %i.cc, %i.ck
  %bound1285 = icmp ult ptr %i.cd, %i.ch
  %found.conflict286 = and i1 %bound0284, %bound1285
  %bound0288 = icmp ult ptr %i.cc, %i.cq
  %bound1289 = icmp ult ptr %i.cn, %i.ch
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %found.conflict286, %found.conflict290
  %bound0292 = icmp ult ptr %i.cc, %i.cw
  %bound1293 = icmp ult ptr %i.ct, %i.ch
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.cd, %i.cq
  %bound1297 = icmp ult ptr %i.cn, %i.ck
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.cd, %i.cw
  %bound1301 = icmp ult ptr %i.ct, %i.ck
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count104, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cx = add nsw i64 %index, %i.ce               ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cx
  %wide.load = load <8 x i32>, ptr %i.cy, align 4, !tbaa !10, !alias.scope !91
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index
  store <8 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !10, !alias.scope !92, !noalias !93
  %.idx = mul nsw i64 %i.cx, 12
  %i.da = getelementptr inbounds i8, ptr %i.cd, i64 %.idx
  %wide.vec = load <24 x i32>, ptr %i.da, align 4, !tbaa !10, !alias.scope !94
  %.idx306 = mul nuw nsw i64 %index, 12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx306
  store <24 x i32> %wide.vec, ptr %i.db, align 4, !tbaa !10, !alias.scope !95, !noalias !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph89, %middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count104, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dd = add nsw i64 %indvars.iv101.ph, %i.ce    ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv101.ph
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !10
  %i.dh = mul nsw i64 %i.dd, 3                    ; 3 uses
  %i.di = mul nuw nsw i64 %indvars.iv101.ph, 3    ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dh
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !10
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.di
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr [4 x i8], ptr %i.cd, i64 %i.dh
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.di
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !10
  %i.dr = getelementptr [4 x i8], ptr %i.cd, i64 %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.di
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !10
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph.preheader ], [ %indvars.iv.next102.prol, %scalar.ph.prol ]
  %i.dw = add nsw i64 %wide.trip.count104, -1
  %i.dx = icmp eq i64 %indvars.iv101.ph, %i.dw
  br i1 %i.dx, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %scalar.ph ], [ %indvars.iv101.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dy = add nsw i64 %indvars.iv101, %i.ce       ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv101
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !10
  %i.ec = mul nsw i64 %i.dy, 3                    ; 3 uses
  %i.ed = mul nuw nsw i64 %indvars.iv101, 3       ; 3 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ec
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ed
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !10
  %i.eh = getelementptr [4 x i8], ptr %i.cd, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ed
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !10
  %i.em = getelementptr [4 x i8], ptr %i.cd, i64 %i.ec
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !10
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ed
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.eo, ptr %i.eq, align 4, !tbaa !10
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 3 uses
  %i.er = add nsw i64 %indvars.iv.next102, %i.ce  ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next102
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !10
  %i.ev = mul nsw i64 %i.er, 3                    ; 3 uses
  %i.ew = mul nuw nsw i64 %indvars.iv.next102, 3  ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ew
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !10
  %i.fa = getelementptr [4 x i8], ptr %i.cd, i64 %i.ev
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !10
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ew
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !10
  %i.ff = getelementptr [4 x i8], ptr %i.cd, i64 %i.ev
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !10
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ew
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !10
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond105.not.1 = icmp eq i64 %indvars.iv.next102.1, %wide.trip.count104
  br i1 %exitcond105.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !90

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge, %.preheader
  %.pre-phi = phi i32 [ %i.ca, %.preheader ], [ 0, %._crit_edge ], [ %i.ca, %middle.block ], [ %i.ca, %scalar.ph ], [ %i.ca, %scalar.ph.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.by, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @is_quite_large(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 3                        ; 7 uses
  %.not = icmp slt i32 %i.a, %2
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %positive_int.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %positive_int.exit.thread

positive_int.exit.thread:                         ; preds = %bb.b
  %i.e = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12 ; 0 uses
  br label %.preheader.1

bb.c:                                             ; preds = %bb.b
  %i.f = xor i32 %i.b, -1
  br label %positive_int.exit

positive_int.exit:                                ; preds = %.preheader.preheader, %bb.c
  %.sink18 = phi i32 [ %i.f, %bb.c ], [ %i.b, %.preheader.preheader ]
  %.sink17 = phi i32 [ 2, %bb.c ], [ -1, %.preheader.preheader ]
  %i.g = shl nuw i32 %.sink18, 1
  %i.h = add i32 %i.g, %.sink17
  %i.i = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %positive_int.exit.thread, %positive_int.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10   ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %positive_int.exit.1, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %bb.e, label %positive_int.exit.thread.1

positive_int.exit.thread.1:                       ; preds = %bb.d
  %i.o = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12 ; 0 uses
  br label %.preheader.2

bb.e:                                             ; preds = %bb.d
  %i.p = xor i32 %i.l, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %.preheader.1, %bb.e
  %.sink20 = phi i32 [ %i.p, %bb.e ], [ %i.l, %.preheader.1 ]
  %.sink19 = phi i32 [ 2, %bb.e ], [ -1, %.preheader.1 ]
  %i.q = shl nuw i32 %.sink20, 1
  %i.r = add i32 %i.q, %.sink19
  %i.s = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12
  %i.t = icmp ugt i32 %i.r, %i.s
  br i1 %i.t, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %positive_int.exit.1, %positive_int.exit.thread.1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10   ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %positive_int.exit.2, label %bb.f

bb.f:                                             ; preds = %.preheader.2
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %bb.g, label %positive_int.exit.thread.2

positive_int.exit.thread.2:                       ; preds = %bb.f
  %i.y = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = xor i32 %i.v, -1
  br label %positive_int.exit.2

positive_int.exit.2:                              ; preds = %.preheader.2, %bb.g
  %.sink22 = phi i32 [ %i.z, %bb.g ], [ %i.v, %.preheader.2 ]
  %.sink21 = phi i32 [ 2, %bb.g ], [ -1, %.preheader.2 ]
  %i.aa = shl nuw i32 %.sink22, 1
  %i.ab = add i32 %i.aa, %.sink21
  %i.ac = tail call i32 @Ptngc_magic(i32 noundef %i.a) #12
  %i.ad = icmp ugt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %positive_int.exit.2, %positive_int.exit.thread.2
  br label %.loopexit

.loopexit:                                        ; preds = %positive_int.exit, %positive_int.exit.1, %positive_int.exit.2, %bb.h, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 0, %bb.h ], [ 1, %positive_int.exit ], [ 1, %positive_int.exit.1 ], [ 1, %positive_int.exit.2 ]
  ret i32 %.07
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @write_three_large(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16508
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 7 uses
  %i.d = mul nsw i32 %1, 3
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10   ; 3 uses
  switch i32 %i.b, label %.preheader [
    i32 0, label %.preheader34
    i32 1, label %.preheader36
  ]

.preheader36:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !10   ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 4 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !10
  %i.m = load i32, ptr %i.j, align 4, !tbaa !10
  %.not.i.i26 = icmp slt i32 %i.k, %i.m
  %.pre.i27 = load ptr, ptr %i.h, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i26, label %insert_value_in_array.exit29, label %bb.e

.preheader34:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !10   ; 2 uses
  %i.r = add nsw i32 %i.q, 1                      ; 4 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !10
  %i.s = load i32, ptr %i.p, align 4, !tbaa !10
  %.not.i.i = icmp slt i32 %i.q, %i.s
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i, label %insert_value_in_array.exit, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !10   ; 2 uses
  %i.x = add nsw i32 %i.w, 1                      ; 4 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !10
  %i.y = load i32, ptr %i.v, align 4, !tbaa !10
  %.not.i.i30 = icmp slt i32 %i.w, %i.y
  %.pre.i31 = load ptr, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i30, label %insert_value_in_array.exit33, label %bb.h

bb.b:                                             ; preds = %.preheader34
  %i.z = sdiv i32 %i.r, 2
  %i.aa = add nsw i32 %i.z, %i.r                  ; 2 uses
  store i32 %i.aa, ptr %i.p, align 4, !tbaa !10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i, i64 noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !19
  %.pre1.i = load i32, ptr %i.o, align 8, !tbaa !10
  br label %insert_value_in_array.exit

insert_value_in_array.exit:                       ; preds = %.preheader34, %bb.b
  %i.ae = phi i32 [ %i.r, %.preheader34 ], [ %.pre1.i, %bb.b ]
  %.pre.i.1 = phi ptr [ %.pre.i, %.preheader34 ], [ %i.ad, %bb.b ] ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %.pre.i.1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  store i32 %i.g, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = load i32, ptr %i.o, align 8, !tbaa !10  ; 2 uses
  %i.am = add nsw i32 %i.al, 1                    ; 4 uses
  store i32 %i.am, ptr %i.o, align 8, !tbaa !10
  %i.an = load i32, ptr %i.p, align 4, !tbaa !10
  %.not.i.i.1 = icmp slt i32 %i.al, %i.an
  br i1 %.not.i.i.1, label %insert_value_in_array.exit.1, label %bb.c

bb.c:                                             ; preds = %insert_value_in_array.exit
  %i.ao = sdiv i32 %i.am, 2
  %i.ap = add nsw i32 %i.ao, %i.am                ; 2 uses
  store i32 %i.ap, ptr %i.p, align 4, !tbaa !10
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i.1, i64 noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.as, ptr %i.n, align 8, !tbaa !19
  %.pre1.i.1 = load i32, ptr %i.o, align 8, !tbaa !10
  br label %insert_value_in_array.exit.1

insert_value_in_array.exit.1:                     ; preds = %bb.c, %insert_value_in_array.exit
  %i.at = phi i32 [ %i.am, %insert_value_in_array.exit ], [ %.pre1.i.1, %bb.c ]
  %.pre.i.2 = phi ptr [ %.pre.i.1, %insert_value_in_array.exit ], [ %i.as, %bb.c ] ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr %.pre.i.2, i64 %i.au
end_hunk_0
begin_hunk_1_@write_three_large:bb.a

insert_value_in_array.exit29:                     ; preds = %.preheader36, %bb.e
  %i.bn = phi i32 [ %i.l, %.preheader36 ], [ %.pre1.i28, %bb.e ]
  %.pre.i27.1 = phi ptr [ %.pre.i27, %.preheader36 ], [ %i.bm, %bb.e ] ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %.pre.i27.1, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  store i32 %i.g, ptr %i.bq, align 4, !tbaa !10
  %i.br = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !10
  %i.bu = load i32, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 4 uses
  store i32 %i.bv, ptr %i.i, align 8, !tbaa !10
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !10
  %.not.i.i26.1 = icmp slt i32 %i.bu, %i.bw
  br i1 %.not.i.i26.1, label %insert_value_in_array.exit29.1, label %bb.f

bb.f:                                             ; preds = %insert_value_in_array.exit29
  %i.bx = sdiv i32 %i.bv, 2
  %i.by = add nsw i32 %i.bx, %i.bv                ; 2 uses
  store i32 %i.by, ptr %i.j, align 4, !tbaa !10
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i27.1, i64 noundef %i.ca, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !19
  %.pre1.i28.1 = load i32, ptr %i.i, align 8, !tbaa !10
  br label %insert_value_in_array.exit29.1

insert_value_in_array.exit29.1:                   ; preds = %bb.f, %insert_value_in_array.exit29
  %i.cc = phi i32 [ %i.bv, %insert_value_in_array.exit29 ], [ %.pre1.i28.1, %bb.f ]
  %.pre.i27.2 = phi ptr [ %.pre.i27.1, %insert_value_in_array.exit29 ], [ %i.cb, %bb.f ] ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %.pre.i27.2, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  store i32 %i.bt, ptr %i.cf, align 4, !tbaa !10
  %i.cg = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !10 ; 2 uses
  %i.cj = load i32, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1                    ; 4 uses
  store i32 %i.ck, ptr %i.i, align 8, !tbaa !10
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !10
  %.not.i.i26.2 = icmp slt i32 %i.cj, %i.cl
  br i1 %.not.i.i26.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %insert_value_in_array.exit29.1
  %i.cm = sdiv i32 %i.ck, 2
  %i.cn = add nsw i32 %i.cm, %i.ck                ; 2 uses
  store i32 %i.cn, ptr %i.j, align 4, !tbaa !10
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  %i.cq = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i27.2, i64 noundef %i.cp, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !19
  %.pre1.i28.2 = load i32, ptr %i.i, align 8, !tbaa !10
  br label %.loopexit

bb.h:                                             ; preds = %.preheader
  %i.cr = sdiv i32 %i.x, 2
  %i.cs = add nsw i32 %i.cr, %i.x                 ; 2 uses
  store i32 %i.cs, ptr %i.v, align 4, !tbaa !10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i31, i64 noundef %i.cu, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cv, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %insert_value_in_array.exit33

insert_value_in_array.exit33:                     ; preds = %.preheader, %bb.h
  %i.cw = phi i32 [ %i.x, %.preheader ], [ %.pre1.i32, %bb.h ]
  %.pre.i31.1 = phi ptr [ %.pre.i31, %.preheader ], [ %i.cv, %bb.h ] ; 3 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %.pre.i31.1, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  store i32 %i.g, ptr %i.cz, align 4, !tbaa !10
  %i.da = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10
  %i.dd = load i32, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %i.de = add nsw i32 %i.dd, 1                    ; 4 uses
  store i32 %i.de, ptr %i.u, align 8, !tbaa !10
  %i.df = load i32, ptr %i.v, align 4, !tbaa !10
  %.not.i.i30.1 = icmp slt i32 %i.dd, %i.df
  br i1 %.not.i.i30.1, label %insert_value_in_array.exit33.1, label %bb.i

bb.i:                                             ; preds = %insert_value_in_array.exit33
  %i.dg = sdiv i32 %i.de, 2
  %i.dh = add nsw i32 %i.dg, %i.de                ; 2 uses
  store i32 %i.dh, ptr %i.v, align 4, !tbaa !10
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i31.1, i64 noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.dk, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32.1 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %insert_value_in_array.exit33.1

insert_value_in_array.exit33.1:                   ; preds = %bb.i, %insert_value_in_array.exit33
  %i.dl = phi i32 [ %i.de, %insert_value_in_array.exit33 ], [ %.pre1.i32.1, %bb.i ]
  %.pre.i31.2 = phi ptr [ %.pre.i31.1, %insert_value_in_array.exit33 ], [ %i.dk, %bb.i ] ; 3 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %.pre.i31.2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  store i32 %i.dc, ptr %i.do, align 4, !tbaa !10
  %i.dp = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ds = load i32, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %i.dt = add nsw i32 %i.ds, 1                    ; 4 uses
  store i32 %i.dt, ptr %i.u, align 8, !tbaa !10
  %i.du = load i32, ptr %i.v, align 4, !tbaa !10
  %.not.i.i30.2 = icmp slt i32 %i.ds, %i.du
  br i1 %.not.i.i30.2, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %insert_value_in_array.exit33.1
  %i.dv = sdiv i32 %i.dt, 2
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  store i32 %i.dw, ptr %i.v, align 4, !tbaa !10
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %i.dz = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i31.2, i64 noundef %i.dy, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.dz, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32.2 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %insert_value_in_array.exit33.1, %bb.j, %insert_value_in_array.exit29.1, %bb.g, %insert_value_in_array.exit.1, %bb.d
  %.sink50 = phi i32 [ %.pre1.i.2, %bb.d ], [ %.pre1.i28.2, %bb.g ], [ %i.bb, %insert_value_in_array.exit.1 ], [ %i.ck, %insert_value_in_array.exit29.1 ], [ %i.dt, %insert_value_in_array.exit33.1 ], [ %.pre1.i32.2, %bb.j ]
  %.sink48 = phi ptr [ %i.bh, %bb.d ], [ %i.cq, %bb.g ], [ %.pre.i.2, %insert_value_in_array.exit.1 ], [ %.pre.i27.2, %insert_value_in_array.exit29.1 ], [ %.pre.i31.2, %insert_value_in_array.exit33.1 ], [ %i.dz, %bb.j ]
  %.sink = phi i32 [ %i.az, %bb.d ], [ %i.ci, %bb.g ], [ %i.az, %insert_value_in_array.exit.1 ], [ %i.ci, %insert_value_in_array.exit29.1 ], [ %i.dr, %insert_value_in_array.exit33.1 ], [ %i.dr, %bb.j ]
  %i.ea = sext i32 %.sink50 to i64
  %i.eb = getelementptr [4 x i8], ptr %.sink48, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  store i32 %.sink, ptr %i.ec, align 4, !tbaa !10
  ret void
}

declare i32 @bwlzh_get_buflen(i32 noundef) local_unnamed_addr #2

declare void @bwlzh_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bwlzh_compress_no_lz77(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @base_compress(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 3)) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 9 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [25 x i32], align 16              ; 19 uses
  %i.d = alloca [25 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 24, ptr %2, align 1, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 8, ptr %i.f, align 1, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit120
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit120 ] ; 3 uses
  %.075152 = phi i32 [ 3, %bb.a ], [ %.7, %.loopexit120 ] ; 2 uses
  %.091151 = phi i32 [ 0, %bb.a ], [ %.495, %.loopexit120 ] ; 2 uses
  %indvars171 = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, i8 0, i64 100, i1 false)
  %i.g = icmp sgt i32 %1, %indvars171
  br i1 %i.g, label %.lr.ph140, label %.loopexit120

.lr.ph140:                                        ; preds = %bb.b, %bb.e
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.e ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.176136 = phi i32 [ %.5, %bb.e ], [ %.075152, %bb.b ] ; 4 uses
  %.080135 = phi i32 [ %.282111, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.083134 = phi i32 [ %.184, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.085133 = phi i32 [ %.590109, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.192132 = phi i32 [ %.394107, %bb.e ], [ %.091151, %bb.b ] ; 2 uses
  %i.h = icmp eq i32 %.083134, 0
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph140
  %i.i = icmp eq i32 %.080135, 0
  br i1 %i.i, label %.lr.ph, label %.thread114

.thread114:                                       ; preds = %bb.c
  %i.j = add nsw i32 %.080135, -1
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %.lr.ph ], [ %indvars.iv158, %bb.c ] ; 2 uses
  %.079123 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.c ]
  %.186122 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv160
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %spec.select = call i32 @llvm.umax.i32(i32 %i.l, i32 %.186122) ; 2 uses
  %i.m = add nuw nsw i32 %.079123, 1              ; 2 uses
  %i.n = icmp ne i32 %i.m, 192
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.next161 to i32
  %i.p = icmp sgt i32 %1, %i.o
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = add i32 %spec.select, 1
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.q, i32 2) ; 4 uses
  %i.r = sext i32 %.176136 to i64
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  store i32 %spec.store.select, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  %i.t = add i32 %spec.store.select, -1           ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.t, ptr noundef nonnull %i.a, i32 noundef 25) #12
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i, %._crit_edge
  %.02228.i = phi i32 [ %i.u, %.peel.next.i ], [ 1, %._crit_edge ]
  call void @Ptngc_largeint_mul(i32 noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 25) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, ptr noundef nonnull align 16 dereferenceable(100) %i.b, i64 100, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.t, ptr noundef nonnull %i.a, i32 noundef 25) #12
  %i.u = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 24
  br i1 %exitcond.not.i, label %.lr.ph33.i, label %.peel.next.i, !llvm.loop !0

.lr.ph33.i:                                       ; preds = %.peel.next.i, %.loopexit.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.loopexit.i.1 ], [ 0, %.peel.next.i ] ; 4 uses
  %.032.i = phi i32 [ %.3.i.1, %.loopexit.i.1 ], [ 0, %.peel.next.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 8, !tbaa !10   ; 5 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph33.i
  %i.x = and i32 %i.w, 255
  %.not25.i = icmp eq i32 %i.x, 0
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32
  %i.y = shl nuw nsw i32 %indvars.iv.i.tr, 2      ; 4 uses
  %i.z = or disjoint i32 %i.y, 1
  %.2.i = select i1 %.not25.i, i32 %.032.i, i32 %i.z
  %i.aa = and i32 %i.w, 65280
  %.not25.1.i = icmp eq i32 %i.aa, 0
  %i.ab = or disjoint i32 %i.y, 2
  %.2.1.i = select i1 %.not25.1.i, i32 %.2.i, i32 %i.ab
  %i.ac = and i32 %i.w, 16711680
  %.not25.2.i = icmp eq i32 %i.ac, 0
  %i.ad = or disjoint i32 %i.y, 3
  %.2.2.i = select i1 %.not25.2.i, i32 %.2.1.i, i32 %i.ad
  %.not25.3.i = icmp ult i32 %i.w, 16777216
  %i.ae = or disjoint i32 %i.y, 4
  %.2.3.i = select i1 %.not25.3.i, i32 %.2.2.i, i32 %i.ae
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph33.i
  %.3.i = phi i32 [ %.032.i, %.lr.ph33.i ], [ %.2.3.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10 ; 5 uses
  %.not.i.1 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.1, label %.loopexit.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.loopexit.i
  %i.ah = and i32 %i.ag, 255
  %.not25.i.1 = icmp eq i32 %i.ah, 0
  %indvars.iv.i.tr.1 = trunc i64 %indvars.iv.next.i to i32
  %i.ai = shl nuw nsw i32 %indvars.iv.i.tr.1, 2   ; 4 uses
  %i.aj = or disjoint i32 %i.ai, 1
  %.2.i.1 = select i1 %.not25.i.1, i32 %.3.i, i32 %i.aj
  %i.ak = and i32 %i.ag, 65280
  %.not25.1.i.1 = icmp eq i32 %i.ak, 0
  %i.al = or disjoint i32 %i.ai, 2
  %.2.1.i.1 = select i1 %.not25.1.i.1, i32 %.2.i.1, i32 %i.al
  %i.am = and i32 %i.ag, 16711680
  %.not25.2.i.1 = icmp eq i32 %i.am, 0
  %i.an = or disjoint i32 %i.ai, 3
  %.2.2.i.1 = select i1 %.not25.2.i.1, i32 %.2.1.i.1, i32 %i.an
  %.not25.3.i.1 = icmp ult i32 %i.ag, 16777216
  %i.ao = add nuw nsw i32 %i.ai, 4
  %.2.3.i.1 = select i1 %.not25.3.i.1, i32 %.2.2.i.1, i32 %i.ao
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %.preheader.i.1, %.loopexit.i
  %.3.i.1 = phi i32 [ %.3.i, %.loopexit.i ], [ %.2.3.i.1, %.preheader.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond37.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 24
  br i1 %exitcond37.not.i.1, label %bb.d, label %.lr.ph33.i, !llvm.loop !1

bb.d:                                             ; preds = %.loopexit.i.1
  %i.ap = add nsw i32 %.176136, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph140
  call void @Ptngc_largeint_mul(i32 noundef %.085133, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 25) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, ptr noundef nonnull align 16 dereferenceable(100) %i.d, i64 100, i1 false), !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.d, %.thread114
  %.3113 = phi i32 [ %.176136, %.thread114 ], [ %i.ap, %bb.d ], [ %.176136, %.thread ] ; 3 uses
  %.282111 = phi i32 [ %i.j, %.thread114 ], [ 7, %bb.d ], [ %.080135, %.thread ]
  %.590109 = phi i32 [ %.085133, %.thread114 ], [ %spec.store.select, %bb.d ], [ %.085133, %.thread ] ; 2 uses
  %.394107 = phi i32 [ %.192132, %.thread114 ], [ %.3.i.1, %bb.d ], [ %.192132, %.thread ] ; 7 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv158
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  call void @Ptngc_largeint_add(i32 noundef %i.ar, ptr noundef nonnull %i.c, i32 noundef 25) #12
  %i.as = add nsw i32 %.083134, 1                 ; 2 uses
  %i.at = icmp eq i32 %i.as, 24
  br i1 %i.at, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit
  %.not154 = icmp eq i32 %.394107, 0
  br i1 %.not154, label %._crit_edge130, label %iter.check223

iter.check223:                                    ; preds = %.preheader
  %i.au = sext i32 %.3113 to i64                  ; 5 uses
  %i.av = zext i32 %.394107 to i64                ; 5 uses
  %min.iters.check200 = icmp ult i32 %.394107, 4
  br i1 %min.iters.check200, label %.lr.ph129.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check223
  %min.iters.check202 = icmp ult i32 %.394107, 16
  br i1 %min.iters.check202, label %vec.epilog.ph227, label %vector.ph203

vector.ph203:                                     ; preds = %vector.main.loop.iter.check201
  %i.aw = and i64 %i.av, 12
  %n.vec204 = and i64 %i.av, 4294967280           ; 5 uses
  %i.ax = add nsw i64 %n.vec204, %i.au            ; 2 uses
  %i.ay = trunc nuw i64 %n.vec204 to i32          ; 2 uses
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.au
  br label %vector.body205

vector.body205:                                   ; preds = %vector.ph203, %vector.body205
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next219, %vector.body205 ] ; 6 uses
  %vec.ind207 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph203 ], [ %vec.ind.next220, %vector.body205 ] ; 5 uses
  %i.az = lshr exact i64 %index206, 2
  %i.ba = lshr exact i64 %index206, 2
  %i.bb = lshr exact i64 %index206, 2
  %i.bc = lshr exact i64 %index206, 2
  %i.bd = and i64 %i.az, 1073741820
  %i.be = and i64 %i.ba, 1073741820
  %i.bf = and i64 %i.bb, 1073741820
  %i.bg = and i64 %i.bc, 1073741820
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bh, align 16, !tbaa !10
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !10
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !10
  %broadcast.splatinsert215 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat216 = shufflevector <4 x i32> %broadcast.splatinsert215, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !10
  %broadcast.splatinsert217 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat218 = shufflevector <4 x i32> %broadcast.splatinsert217, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bs = shl <4 x i32> %vec.ind207, splat (i32 3)
  %step.add208 = shl <4 x i32> %vec.ind207, splat (i32 3)
  %step.add.2209 = shl <4 x i32> %vec.ind207, splat (i32 3)
  %i.bt = shl <4 x i32> %vec.ind207, splat (i32 3)
  %i.bu = and <4 x i32> %i.bs, splat (i32 24)
  %i.bv = and <4 x i32> %step.add208, splat (i32 24)
  %i.bw = and <4 x i32> %step.add.2209, splat (i32 24)
  %i.bx = and <4 x i32> %i.bt, splat (i32 24)
  %i.by = lshr <4 x i32> %broadcast.splat212, %i.bu
  %i.bz = lshr <4 x i32> %broadcast.splat214, %i.bv
  %i.ca = lshr <4 x i32> %broadcast.splat216, %i.bw
  %i.cb = lshr <4 x i32> %broadcast.splat218, %i.bx
  %i.cc = trunc <4 x i32> %i.by to <4 x i8>
  %i.cd = trunc <4 x i32> %i.bz to <4 x i8>
  %i.ce = trunc <4 x i32> %i.ca to <4 x i8>
  %i.cf = trunc <4 x i32> %i.cb to <4 x i8>
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index206 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store <4 x i8> %i.cc, ptr %gep, align 1, !tbaa !25
  store <4 x i8> %i.cd, ptr %i.cg, align 1, !tbaa !25
  store <4 x i8> %i.ce, ptr %i.ch, align 1, !tbaa !25
  store <4 x i8> %i.cf, ptr %i.ci, align 1, !tbaa !25
  %index.next219 = add nuw i64 %index206, 16      ; 2 uses
  %vec.ind.next220 = add nuw <4 x i32> %vec.ind207, splat (i32 16)
  %i.cj = icmp eq i64 %index.next219, %n.vec204
  br i1 %i.cj, label %middle.block221, label %vector.body205, !llvm.loop !98

middle.block221:                                  ; preds = %vector.body205
  %cmp.n222 = icmp eq i64 %n.vec204, %i.av
  br i1 %cmp.n222, label %._crit_edge130.loopexit, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block221
  %min.epilog.iters.check226 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check226, label %.lr.ph129.preheader, label %vec.epilog.ph227, !prof !106

vec.epilog.ph227:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check224
  %vec.epilog.resume.val228 = phi i64 [ %n.vec204, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check201 ]
  %bc.resume.val229 = phi i32 [ %i.ay, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check201 ]
  %n.vec230 = and i64 %i.av, 4294967292           ; 4 uses
  %i.ck = add nsw i64 %n.vec230, %i.au            ; 2 uses
  %i.cl = trunc nuw i64 %n.vec230 to i32
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %bc.resume.val229, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction233 = add nuw <4 x i32> %broadcast.splat232, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep249 = getelementptr i8, ptr %2, i64 %i.au
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph227
  %index235 = phi i64 [ %vec.epilog.resume.val228, %vec.epilog.ph227 ], [ %index.next239, %vec.epilog.vector.body234 ] ; 3 uses
  %vec.ind236 = phi <4 x i32> [ %induction233, %vec.epilog.ph227 ], [ %vec.ind.next240, %vec.epilog.vector.body234 ] ; 2 uses
  %i.cm = lshr exact i64 %index235, 2
  %i.cn = and i64 %i.cm, 1073741823
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = shl <4 x i32> %vec.ind236, splat (i32 3)
  %i.cr = and <4 x i32> %i.cq, splat (i32 24)
  %i.cs = lshr <4 x i32> %broadcast.splat238, %i.cr
  %i.ct = trunc <4 x i32> %i.cs to <4 x i8>
  %gep250 = getelementptr i8, ptr %invariant.gep249, i64 %index235
  store <4 x i8> %i.ct, ptr %gep250, align 1, !tbaa !25
  %index.next239 = add nuw i64 %index235, 4       ; 2 uses
  %vec.ind.next240 = add nuw <4 x i32> %vec.ind236, splat (i32 4)
  %i.cu = icmp eq i64 %index.next239, %n.vec230
  br i1 %i.cu, label %vec.epilog.middle.block241, label %vec.epilog.vector.body234, !llvm.loop !99

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body234
  %cmp.n242 = icmp eq i64 %n.vec230, %i.av
  br i1 %cmp.n242, label %._crit_edge130.loopexit, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %iter.check223, %vec.epilog.iter.check224, %vec.epilog.middle.block241
  %indvars.iv163.ph = phi i64 [ %i.au, %iter.check223 ], [ %i.ax, %vec.epilog.iter.check224 ], [ %i.ck, %vec.epilog.middle.block241 ]
  %.1128.ph = phi i32 [ 0, %iter.check223 ], [ %i.ay, %vec.epilog.iter.check224 ], [ %i.cl, %vec.epilog.middle.block241 ]
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph129 ], [ %indvars.iv163.ph, %.lr.ph129.preheader ] ; 2 uses
  %.1128 = phi i32 [ %i.de, %.lr.ph129 ], [ %.1128.ph, %.lr.ph129.preheader ] ; 3 uses
  %i.cv = lshr i32 %.1128, 2
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = shl i32 %.1128, 3
  %i.da = and i32 %i.cz, 24
  %i.db = lshr i32 %i.cy, %i.da
  %i.dc = trunc i32 %i.db to i8
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %indvars.iv163
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !25
  %i.de = add nuw i32 %.1128, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %.394107
  br i1 %exitcond.not, label %._crit_edge130.loopexit, label %.lr.ph129, !llvm.loop !100

._crit_edge130.loopexit:                          ; preds = %.lr.ph129, %vec.epilog.middle.block241, %middle.block221
  %indvars.iv.next164.lcssa = phi i64 [ %i.ck, %vec.epilog.middle.block241 ], [ %i.ax, %middle.block221 ], [ %indvars.iv.next164, %.lr.ph129 ]
  %i.df = trunc nsw i64 %indvars.iv.next164.lcssa to i32
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge130.loopexit, %.preheader
  %.4.lcssa = phi i32 [ %.3113, %.preheader ], [ %i.df, %._crit_edge130.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, i8 0, i64 100, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %._crit_edge130
  %.184 = phi i32 [ 0, %._crit_edge130 ], [ %i.as, %.loopexit ] ; 3 uses
  %.5 = phi i32 [ %.4.lcssa, %._crit_edge130 ], [ %.3113, %.loopexit ] ; 4 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 3 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next159 to i32
  %i.dh = icmp sgt i32 %1, %i.dg
  br i1 %i.dh, label %.lr.ph140, label %._crit_edge141, !llvm.loop !101

._crit_edge141:                                   ; preds = %bb.e
  %.not = icmp eq i32 %.184, 0
  br i1 %.not, label %.loopexit120, label %bb.f

bb.f:                                             ; preds = %._crit_edge141
  %i.di = call fastcc i32 @base_bytes(i32 noundef %.590109, i32 noundef %.184) ; 6 uses
  %.not155 = icmp eq i32 %i.di, 0
  br i1 %.not155, label %.loopexit120, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.dj = sext i32 %.5 to i64                     ; 5 uses
  %i.dk = zext i32 %i.di to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.di, 4
  br i1 %min.iters.check, label %.lr.ph149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.di, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.dk, 12
  %n.vec = and i64 %i.dk, 4294967280              ; 5 uses
  %i.dm = add nsw i64 %n.vec, %i.dj               ; 2 uses
  %i.dn = trunc nuw i64 %n.vec to i32             ; 2 uses
  %invariant.gep251 = getelementptr i8, ptr %2, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.do = lshr exact i64 %index, 2
  %i.dp = lshr exact i64 %index, 2
  %i.dq = lshr exact i64 %index, 2
  %i.dr = lshr exact i64 %index, 2
  %i.ds = and i64 %i.do, 1073741820
  %i.dt = and i64 %i.dp, 1073741820
  %i.du = and i64 %i.dq, 1073741820
  %i.dv = and i64 %i.dr, 1073741820
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ds
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ed = load i32, ptr %i.dw, align 16, !tbaa !10
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ee = load i32, ptr %i.dy, align 4, !tbaa !10
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = load i32, ptr %i.ea, align 8, !tbaa !10
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !10
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = shl <4 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 3)
  %step.add.2 = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.ei = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.ej = and <4 x i32> %i.eh, splat (i32 24)
  %i.ek = and <4 x i32> %step.add, splat (i32 24)
  %i.el = and <4 x i32> %step.add.2, splat (i32 24)
  %i.em = and <4 x i32> %i.ei, splat (i32 24)
  %i.en = lshr <4 x i32> %broadcast.splat, %i.ej
  %i.eo = lshr <4 x i32> %broadcast.splat183, %i.ek
  %i.ep = lshr <4 x i32> %broadcast.splat185, %i.el
  %i.eq = lshr <4 x i32> %broadcast.splat187, %i.em
  %i.er = trunc <4 x i32> %i.en to <4 x i8>
  %i.es = trunc <4 x i32> %i.eo to <4 x i8>
  %i.et = trunc <4 x i32> %i.ep to <4 x i8>
  %i.eu = trunc <4 x i32> %i.eq to <4 x i8>
  %gep252 = getelementptr i8, ptr %invariant.gep251, i64 %index ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep252, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %gep252, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %gep252, i64 12
  store <4 x i8> %i.er, ptr %gep252, align 1, !tbaa !25
  store <4 x i8> %i.es, ptr %i.ev, align 1, !tbaa !25
  store <4 x i8> %i.et, ptr %i.ew, align 1, !tbaa !25
  store <4 x i8> %i.eu, ptr %i.ex, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 16)
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  br i1 %cmp.n, label %.loopexit120.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph149.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.dn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %i.dk, 4294967292           ; 4 uses
  %i.ez = add nsw i64 %n.vec188, %i.dj            ; 2 uses
  %i.fa = trunc nuw i64 %n.vec188 to i32
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i32> %broadcast.splat190, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep253 = getelementptr i8, ptr %2, i64 %i.dj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind192 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next196, %vec.epilog.vector.body ] ; 2 uses
  %i.fb = lshr exact i64 %index191, 2
  %i.fc = and i64 %i.fb, 1073741823
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !10
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ff = shl <4 x i32> %vec.ind192, splat (i32 3)
  %i.fg = and <4 x i32> %i.ff, splat (i32 24)
  %i.fh = lshr <4 x i32> %broadcast.splat194, %i.fg
  %i.fi = trunc <4 x i32> %i.fh to <4 x i8>
  %gep254 = getelementptr i8, ptr %invariant.gep253, i64 %index191
  store <4 x i8> %i.fi, ptr %gep254, align 1, !tbaa !25
  %index.next195 = add nuw i64 %index191, 4       ; 2 uses
  %vec.ind.next196 = add nuw <4 x i32> %vec.ind192, splat (i32 4)
  %i.fj = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n197 = icmp eq i64 %n.vec188, %i.dk
  br i1 %cmp.n197, label %.loopexit120.loopexit, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv167.ph = phi i64 [ %i.dj, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.2147.ph = phi i32 [ 0, %iter.check ], [ %i.dn, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.lr.ph149 ], [ %indvars.iv167.ph, %.lr.ph149.preheader ] ; 2 uses
  %.2147 = phi i32 [ %i.ft, %.lr.ph149 ], [ %.2147.ph, %.lr.ph149.preheader ] ; 3 uses
  %i.fk = lshr i32 %.2147, 2
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !10
  %i.fo = shl i32 %.2147, 3
  %i.fp = and i32 %i.fo, 24
  %i.fq = lshr i32 %i.fn, %i.fp
  %i.fr = trunc i32 %i.fq to i8
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %2, i64 %indvars.iv167
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !25
  %i.ft = add nuw i32 %.2147, 1                   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.ft, %i.di
  br i1 %exitcond170.not, label %.loopexit120.loopexit, label %.lr.ph149, !llvm.loop !104

.loopexit120.loopexit:                            ; preds = %.lr.ph149, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next168.lcssa = phi i64 [ %i.ez, %vec.epilog.middle.block ], [ %i.dm, %middle.block ], [ %indvars.iv.next168, %.lr.ph149 ]
  %i.fu = trunc nsw i64 %indvars.iv.next168.lcssa to i32
  br label %.loopexit120

.loopexit120:                                     ; preds = %bb.b, %.loopexit120.loopexit, %bb.f, %._crit_edge141
  %.495 = phi i32 [ %.394107, %._crit_edge141 ], [ 0, %bb.f ], [ %i.di, %.loopexit120.loopexit ], [ %.091151, %bb.b ]
  %.7 = phi i32 [ %.5, %._crit_edge141 ], [ %.5, %bb.f ], [ %i.fu, %.loopexit120.loopexit ], [ %.075152, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond172.not, label %bb.g, label %bb.b, !llvm.loop !105

bb.g:                                             ; preds = %.loopexit120
  store i32 %.7, ptr %3, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Ptngc_unpack_array_xtc3(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 7 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [3 x i32], align 8                ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.xtc3_context, align 8       ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16508
  store i32 0, ptr %i.h, align 4, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load <2 x i8>, ptr %0, align 1, !tbaa !25 ; 2 uses
  %i.l = load <2 x i8>, ptr %i.j, align 1, !tbaa !25 ; 2 uses
  %i.m = shufflevector <2 x i8> %i.k, <2 x i8> %i.l, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = shufflevector <2 x i8> %i.k, <2 x i8> %i.l, <2 x i32> <i32 1, i32 3>
  %i.o = zext <2 x i8> %i.n to <2 x i32>
  %i.p = shl nuw nsw <2 x i32> %i.o, splat (i32 8)
  %i.q = tail call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 1 %i.i, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison)
  %i.r = shufflevector <3 x i16> %i.q, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.s = zext <2 x i16> %i.r to <2 x i32>
  %i.t = shl nuw <2 x i32> %i.s, splat (i32 16)
  %i.u = or disjoint <2 x i32> %i.p, %i.t
  %i.v = zext <2 x i8> %i.m to <2 x i32>
  %i.w = or disjoint <2 x i32> %i.u, %i.v
  %i.x = add nsw <2 x i32> %i.w, splat (i32 1)
  %i.y = sdiv <2 x i32> %i.x, splat (i32 2)       ; 2 uses
  %i.z = and <2 x i8> %i.m, splat (i8 1)
  %i.aa = icmp eq <2 x i8> %i.z, zeroinitializer
  %i.ab = sub nsw <2 x i32> zeroinitializer, %i.y
  %i.ac = select <2 x i1> %i.aa, <2 x i32> %i.ab, <2 x i32> %i.y
  store <2 x i32> %i.ac, ptr %i.a, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw i32 %i.am, 16
  %i.ao = or disjoint i32 %i.aj, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.af
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = sdiv i32 %i.aq, 2                       ; 2 uses
  %i.as = and i32 %i.af, 1
  %i.at = icmp eq i32 %i.as, 0
  %i.au = sub nsw i32 0, %i.ar
  %spec.select.i.2 = select i1 %i.at, i32 %i.au, i32 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.select.i.2, ptr %i.av, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = sdiv i32 %2, 3                          ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 1            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.be, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bc, i32 noundef %i.ay, ptr noundef %i.bf) #12
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bi = phi ptr [ %i.bh, %bb.b ], [ %i.ba, %bb.a ] ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 1            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not109 = icmp eq i32 %i.bj, 0
  br i1 %.not109, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load i32, ptr %i.bl, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.bq, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bo, i32 noundef %i.bj, ptr noundef %i.br) #12
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.b, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi ptr [ %i.bt, %bb.d ], [ %i.bl, %bb.c ] ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 1            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %.not110 = icmp eq i32 %i.bv, 0
  br i1 %.not110, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 5 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8, !tbaa !37
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !25
  %i.ca = icmp eq i8 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.by, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 9 ; 2 uses
  %i.ce = sext i32 %i.bv to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cf, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cd, i32 noundef %i.bv, ptr noundef %i.cg) #12
  %i.ch = sext i32 %i.cc to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ch ; 2 uses
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.bv, ptr noundef %i.cb)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.cj = phi ptr [ %i.ci, %bb.g ], [ %.pre, %bb.h ], [ %i.bx, %bb.e ] ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 1            ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %.not111 = icmp eq i32 %i.ck, 0
  br i1 %.not111, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 5 ; 2 uses
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !37
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.cp = icmp eq i8 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.cn, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 3 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !37
  %i.ct = sext i32 %i.ck to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cu, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cs, i32 noundef %i.ck, ptr noundef %i.cv) #12
  %i.cw = sext i32 %i.cr to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.cw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.ck, ptr noundef %i.cq)
  %.pre172 = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.cy = phi ptr [ %i.cx, %bb.k ], [ %.pre172, %bb.l ], [ %i.cm, %bb.i ] ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 1            ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %.not112 = icmp eq i32 %i.cz, 0
  br i1 %.not112, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 5 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !37
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !25
  %i.de = icmp eq i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = load i32, ptr %i.dc, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 9 ; 3 uses
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !37
  %i.di = sext i32 %i.cz to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dh, i32 noundef %i.cz, ptr noundef %i.dk) #12
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.cz, ptr noundef %i.df)
  %.pre173 = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.dn = phi ptr [ %i.dm, %bb.o ], [ %.pre173, %bb.p ], [ %i.db, %bb.m ] ; 4 uses
  %i.do = load i32, ptr %i.dn, align 1            ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !33
  %.not113 = icmp eq i32 %i.do, 0
  br i1 %.not113, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !37
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !25
  %i.dt = icmp eq i8 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.dw = sext i32 %i.do to i64
  %i.dx = shl nsw i64 %i.dw, 2
  %i.dy = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dx, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dv, i32 noundef %i.do, ptr noundef %i.dy) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.do, ptr noundef %i.du)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.dz = load i32, ptr %i.az, align 8            ; 2 uses
  %i.ea = icmp sgt i32 %2, 2
  %i.eb = icmp sgt i32 %i.dz, 0
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.u
  %i.ed = load ptr, ptr %4, align 8, !tbaa !23
  %.old = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ek = zext nneg i32 %i.dz to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph148, %.loopexit121
  %indvars.iv169 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next170, %.loopexit121 ] ; 2 uses
  %.086146 = phi i32 [ 0, %.lr.ph148 ], [ %.389, %.loopexit121 ] ; 11 uses
  %.090145 = phi i32 [ 0, %.lr.ph148 ], [ %.292, %.loopexit121 ] ; 11 uses
  %.093144 = phi i32 [ 0, %.lr.ph148 ], [ %.194, %.loopexit121 ] ; 13 uses
  %.096142 = phi i32 [ 0, %.lr.ph148 ], [ %.197, %.loopexit121 ] ; 9 uses
  %.098141 = phi i32 [ 0, %.lr.ph148 ], [ %.199, %.loopexit121 ] ; 13 uses
  %.0100140 = phi i32 [ 0, %.lr.ph148 ], [ %.1101, %.loopexit121 ] ; 12 uses
  %.0102139 = phi i32 [ %i.ax, %.lr.ph148 ], [ %.3105, %.loopexit121 ] ; 10 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv169
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10 ; 3 uses
  %i.en = icmp eq i32 %i.em, 0                    ; 2 uses
  switch i32 %i.em, label %.fold.split [
    i32 3, label %.preheader120
    i32 0, label %bb.w
    i32 2, label %bb.w
    i32 5, label %bb.z
    i32 1, label %bb.ab
    i32 4, label %bb.ad
    i32 6, label %.loopexit121
    i32 7, label %bb.ae
    i32 8, label %bb.af
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.eo = icmp ne i32 %.0100140, 0
  %or.cond5 = select i1 %i.en, i1 %i.eo, i1 false
  %spec.store.select = zext i1 %or.cond5 to i32
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.086146, i32 noundef %spec.store.select, i32 noundef %3, i32 noundef %.096142)
  %i.ep = add nsw i32 %.0102139, -1               ; 2 uses
  %i.eq = add nsw i32 %.086146, 3                 ; 2 uses
  %.not115 = icmp eq i32 %i.em, 2
  br i1 %.not115, label %.loopexit121, label %.preheader120

.preheader120:                                    ; preds = %bb.v, %bb.w
  %.187185 = phi i32 [ %i.eq, %bb.w ], [ %.086146, %bb.v ] ; 4 uses
  %.1103184 = phi i32 [ %i.ep, %bb.w ], [ %.0102139, %bb.v ]
  %.promoted127 = load i32, ptr %i.c, align 8
  %i.er = icmp sgt i32 %.098141, 0
  br i1 %i.er, label %.lr.ph131, label %bb.y

.lr.ph131:                                        ; preds = %.preheader120
  %i.es = load <2 x i32>, ptr %i.c, align 8
  %.promoted136 = load i32, ptr %i.ej, align 8, !tbaa !10
  %i.et = sext i32 %.187185 to i64
  %i.eu = sext i32 %.090145 to i64
  %wide.trip.count = zext nneg i32 %.098141 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.et
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph131, %bb.x
  %indvars.iv159 = phi i64 [ %i.eu, %.lr.ph131 ], [ %indvars.iv.next160, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.ev = phi i32 [ %.promoted136, %.lr.ph131 ], [ %i.ff, %bb.x ]
  %i.ew = phi <2 x i32> [ %i.es, %.lr.ph131 ], [ %i.fn, %bb.x ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv159 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !10 ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1
  %i.fb = sdiv i32 %i.fa, 2                       ; 2 uses
  %i.fc = and i32 %i.ez, 1
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = sub nsw i32 0, %i.fb
  %spec.select.i119 = select i1 %i.fd, i32 %i.fe, i32 %i.fb
  %i.ff = add nsw i32 %spec.select.i119, %i.ev    ; 3 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 3 ; 2 uses
  %.idx = mul i64 %indvars.iv, 12
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.fg = load <2 x i32>, ptr %i.ex, align 4, !tbaa !10 ; 2 uses
  %i.fh = add nsw <2 x i32> %i.fg, splat (i32 1)
  %i.fi = sdiv <2 x i32> %i.fh, splat (i32 2)     ; 2 uses
  %i.fj = and <2 x i32> %i.fg, splat (i32 1)
  %i.fk = icmp eq <2 x i32> %i.fj, zeroinitializer
  %i.fl = sub nsw <2 x i32> zeroinitializer, %i.fi
  %i.fm = select <2 x i1> %i.fk, <2 x i32> %i.fl, <2 x i32> %i.fi
  %i.fn = add nsw <2 x i32> %i.fm, %i.ew          ; 4 uses
  store <2 x i32> %i.fn, ptr %gep, align 4, !tbaa !10
  %i.fo = getelementptr i8, ptr %gep, i64 8
  store i32 %i.ff, ptr %i.fo, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond164.not, label %._crit_edge, label %bb.x, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.x
  %i.fp = trunc nsw i64 %indvars.iv.next160 to i32
  %i.fq = extractelement <2 x i32> %i.fn, i64 1
  store i32 %i.fq, ptr %i.ei, align 4, !tbaa !10
  store i32 %i.ff, ptr %i.ej, align 8, !tbaa !10
  %i.fr = extractelement <2 x i32> %i.fn, i64 0
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.preheader120
  %.lcssa128 = phi i32 [ %i.fr, %._crit_edge ], [ %.promoted127, %.preheader120 ]
  %.191.lcssa = phi i32 [ %i.fp, %._crit_edge ], [ %.090145, %.preheader120 ]
  store i32 %.lcssa128, ptr %i.c, align 8
  %i.fs = icmp ne i32 %.0100140, 0
  %or.cond7 = select i1 %i.en, i1 %i.fs, i1 false
  br i1 %or.cond7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  %i.ft = add nsw i32 %.187185, -3
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = sext i32 %.187185 to i64                ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fv ; 2 uses
  %i.fy = load <2 x i32>, ptr %i.fw, align 4, !tbaa !10
  %i.fz = load <2 x i32>, ptr %i.fx, align 4, !tbaa !10
  store <2 x i32> %i.fz, ptr %i.fw, align 4, !tbaa !10
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !10
  %i.ga = getelementptr [4 x i8], ptr %1, i64 %i.fu
  %i.gb = getelementptr i8, ptr %i.ga, i64 8      ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !10
  %i.gd = getelementptr [4 x i8], ptr %1, i64 %i.fv
  %i.ge = getelementptr i8, ptr %i.gd, i64 8      ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !10
  store i32 %i.gf, ptr %i.gb, align 4, !tbaa !10
  store i32 %i.gc, ptr %i.ge, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.y
  %i.gg = sub nsw i32 %.1103184, %.098141
  %i.gh = mul nsw i32 %.098141, 3
  %i.gi = add nsw i32 %.187185, %i.gh
  br label %.loopexit121

bb.z:                                             ; preds = %bb.v
  %i.gj = icmp slt i32 %.093144, %.old
  br i1 %i.gj, label %bb.aa, label %.fold.split

bb.aa:                                            ; preds = %bb.z
  %i.gk = add nsw i32 %.093144, 1                 ; 2 uses
  %i.gl = sext i32 %.093144 to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !10 ; 3 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph, label %.loopexit121

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.3125 = phi i32 [ %i.gq, %.lr.ph ], [ 0, %bb.aa ]
  %.288124 = phi i32 [ %i.gp, %.lr.ph ], [ %.086146, %bb.aa ] ; 2 uses
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.288124, i32 noundef 0, i32 noundef %3, i32 noundef %.096142)
  %i.gp = add nsw i32 %.288124, 3                 ; 2 uses
  %i.gq = add nuw nsw i32 %.3125, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gq, %i.gn
  br i1 %exitcond.not, label %.loopexit121.loopexit, label %.lr.ph, !llvm.loop !108

bb.ab:                                            ; preds = %bb.v
  %.old116 = icmp slt i32 %.093144, %.old
  br i1 %.old116, label %bb.ac, label %.fold.split

bb.ac:                                            ; preds = %bb.ab
  %i.gr = add nsw i32 %.093144, 1
  %i.gs = sext i32 %.093144 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !10
  br label %.loopexit121

bb.ad:                                            ; preds = %bb.v
  %i.gv = sub nuw nsw i32 1, %.0100140
  br label %.loopexit121

bb.ae:                                            ; preds = %bb.v
  br label %.loopexit121

bb.af:                                            ; preds = %bb.v
  br label %.loopexit121

.fold.split:                                      ; preds = %bb.z, %bb.ab, %bb.v
  br label %.loopexit121

.loopexit121.loopexit:                            ; preds = %.lr.ph
  %i.gw = sub i32 %.0102139, %i.gn
  br label %.loopexit121

.loopexit121:                                     ; preds = %.loopexit121.loopexit, %bb.aa, %bb.v, %.fold.split, %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.w, %.loopexit
  %.3105 = phi i32 [ %i.gg, %.loopexit ], [ %i.ep, %bb.w ], [ %.0102139, %.fold.split ], [ %.0102139, %bb.ac ], [ %.0102139, %bb.ad ], [ %.0102139, %bb.v ], [ %.0102139, %bb.ae ], [ %.0102139, %bb.af ], [ %.0102139, %bb.aa ], [ %i.gw, %.loopexit121.loopexit ] ; 3 uses
  %.1101 = phi i32 [ %.0100140, %.loopexit ], [ %.0100140, %bb.w ], [ %.0100140, %.fold.split ], [ %.0100140, %bb.ac ], [ %i.gv, %bb.ad ], [ %.0100140, %bb.v ], [ %.0100140, %bb.ae ], [ %.0100140, %bb.af ], [ %.0100140, %bb.aa ], [ %.0100140, %.loopexit121.loopexit ]
  %.199 = phi i32 [ %.098141, %.loopexit ], [ %.098141, %bb.w ], [ %.098141, %.fold.split ], [ %i.gu, %bb.ac ], [ %.098141, %bb.ad ], [ %.098141, %bb.v ], [ %.098141, %bb.ae ], [ %.098141, %bb.af ], [ %.098141, %bb.aa ], [ %.098141, %.loopexit121.loopexit ]
  %.197 = phi i32 [ %.096142, %.loopexit ], [ %.096142, %bb.w ], [ %.096142, %.fold.split ], [ %.096142, %bb.ac ], [ %.096142, %bb.ad ], [ 0, %bb.v ], [ 1, %bb.ae ], [ 2, %bb.af ], [ %.096142, %bb.aa ], [ %.096142, %.loopexit121.loopexit ]
  %.194 = phi i32 [ %.093144, %.loopexit ], [ %.093144, %bb.w ], [ %.093144, %.fold.split ], [ %i.gr, %bb.ac ], [ %.093144, %bb.ad ], [ %.093144, %bb.v ], [ %.093144, %bb.ae ], [ %.093144, %bb.af ], [ %i.gk, %bb.aa ], [ %i.gk, %.loopexit121.loopexit ]
  %.292 = phi i32 [ %.191.lcssa, %.loopexit ], [ %.090145, %bb.w ], [ %.090145, %.fold.split ], [ %.090145, %bb.ac ], [ %.090145, %bb.ad ], [ %.090145, %bb.v ], [ %.090145, %bb.ae ], [ %.090145, %bb.af ], [ %.090145, %bb.aa ], [ %.090145, %.loopexit121.loopexit ]
  %.389 = phi i32 [ %i.gi, %.loopexit ], [ %i.eq, %bb.w ], [ %.086146, %.fold.split ], [ %.086146, %bb.ac ], [ %.086146, %bb.ad ], [ %.086146, %bb.v ], [ %.086146, %bb.ae ], [ %.086146, %bb.af ], [ %.086146, %bb.aa ], [ %i.gp, %.loopexit121.loopexit ]
  %i.gx = icmp sgt i32 %.3105, 0
  %i.gy = icmp samesign ult i64 %indvars.iv.next170, %i.ek
  %i.gz = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %i.gz, label %bb.v, label %._crit_edge149, !llvm.loop !109

._crit_edge149:                                   ; preds = %.loopexit121, %bb.u
  %.0102.lcssa = phi i32 [ %i.ax, %bb.u ], [ %.3105, %.loopexit121 ]
  %i.ha = icmp slt i32 %.0102.lcssa, 0
  br i1 %i.ha, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge149
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 59, i64 1, ptr %i.hb) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.ah:                                            ; preds = %._crit_edge149
  %i.hc = load ptr, ptr %4, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.hc) #12
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.he) #12
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.hg) #12
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.hi) #12
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.hk) #12
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.hm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompress_base_block(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [16385 x i32], align 16           ; 10 uses
  %i.d = alloca [16385 x i32], align 16           ; 4 uses
  %i.e = alloca [16385 x i32], align 16           ; 10 uses
  %i.f = alloca [16385 x i32], align 16           ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.i, ptr %0, align 8, !tbaa !37
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 1879) #12 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.n = load i16, ptr %i.m, align 1              ; 7 uses
  %i.o = zext i16 %i.n to i32                     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25
  %i.r = zext i8 %i.q to i32
  %i.s = icmp ugt i16 %i.n, 16384
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.10, i32 noundef %i.o) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = sdiv i32 %1, 3
  %.off.i = add i32 %1, 2
  %.not109.i = icmp ult i32 %.off.i, 5
  %i.w = add nuw nsw i32 %i.o, 1                  ; 5 uses
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %.not102.i = icmp eq i16 %i.n, 0
  %wide.trip.count.i.i = zext nneg i16 %i.n to i64 ; 4 uses
  br i1 %.not109.i, label %base_decompress.exit, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aa = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ab = add nuw nsw i64 %i.aa, 4
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ac = icmp eq i16 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 32766
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i16 %i.n to i1
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge118.i, %.lr.ph117.preheader.i
  %.0120.i = phi ptr [ %i.fb, %._crit_edge118.i ], [ %i.z, %.lr.ph117.preheader.i ]
  %.059119.i = phi i32 [ %i.fk, %._crit_edge118.i ], [ 0, %.lr.ph117.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph117.i
  %.1115.i = phi ptr [ %.0120.i, %.lr.ph117.i ], [ %i.fb, %._crit_edge.i ] ; 3 uses
  %.061114.i = phi i32 [ 0, %.lr.ph117.i ], [ %.162.i, %._crit_edge.i ]
  %.063113.i = phi i32 [ 0, %.lr.ph117.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.065112.i = phi i32 [ %.059119.i, %.lr.ph117.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.066111.i = phi i32 [ %i.v, %.lr.ph117.i ], [ %i.fj, %._crit_edge.i ] ; 11 uses
  %.067110.i = phi i32 [ 0, %.lr.ph117.i ], [ %.269.i, %._crit_edge.i ]
  %i.ad = icmp eq i32 %.063113.i, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %.1115.i, align 1         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1115.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.y, i1 false)
  br i1 %.not102.i, label %base_bytes.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %cond = icmp eq i16 %i.n, 1
  br i1 %cond, label %.lr.ph33.i.i.epil.preheader, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.f, %.peel.next.i.i
  %.02228.i.i = phi i32 [ %i.ah, %.peel.next.i.i ], [ 1, %bb.f ]
  call void @Ptngc_largeint_mul(i32 noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.w) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.y, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %i.ah = add nuw nsw i32 %.02228.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, %i.o
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i.preheader, label %.peel.next.i.i, !llvm.loop !0

.lr.ph33.i.i.preheader:                           ; preds = %.peel.next.i.i
  br i1 %i.ac, label %.lr.ph33.i.i.epil.preheader, label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.i.i.preheader, %.loopexit.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 4 uses
  %.032.i.i = phi i32 [ %.3.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !10 ; 5 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph33.i.i
  %i.ak = and i32 %i.aj, 255
  %.not25.i.i = icmp eq i32 %i.ak, 0
  %indvars.iv.i.tr.i = trunc i64 %indvars.iv.i.i to i32
  %i.al = shl i32 %indvars.iv.i.tr.i, 2           ; 4 uses
  %i.am = or disjoint i32 %i.al, 1
  %.2.i.i = select i1 %.not25.i.i, i32 %.032.i.i, i32 %i.am
  %i.an = and i32 %i.aj, 65280
  %.not25.1.i.i = icmp eq i32 %i.an, 0
  %i.ao = or disjoint i32 %i.al, 2
  %.2.1.i.i = select i1 %.not25.1.i.i, i32 %.2.i.i, i32 %i.ao
  %i.ap = and i32 %i.aj, 16711680
  %.not25.2.i.i = icmp eq i32 %i.ap, 0
  %i.aq = or disjoint i32 %i.al, 3
  %.2.2.i.i = select i1 %.not25.2.i.i, i32 %.2.1.i.i, i32 %i.aq
  %.not25.3.i.i = icmp ult i32 %i.aj, 16777216
  %i.ar = or disjoint i32 %i.al, 4
  %.2.3.i.i = select i1 %.not25.3.i.i, i32 %.2.2.i.i, i32 %i.ar
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.3.i.i = phi i32 [ %.032.i.i, %.lr.ph33.i.i ], [ %.2.3.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10 ; 5 uses
  %.not.i.i.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i.1, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.loopexit.i.i
  %i.au = and i32 %i.at, 255
  %.not25.i.i.1 = icmp eq i32 %i.au, 0
  %indvars.iv.i.tr.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.av = shl i32 %indvars.iv.i.tr.i.1, 2         ; 4 uses
  %i.aw = or disjoint i32 %i.av, 1
  %.2.i.i.1 = select i1 %.not25.i.i.1, i32 %.3.i.i, i32 %i.aw
  %i.ax = and i32 %i.at, 65280
  %.not25.1.i.i.1 = icmp eq i32 %i.ax, 0
  %i.ay = or disjoint i32 %i.av, 2
  %.2.1.i.i.1 = select i1 %.not25.1.i.i.1, i32 %.2.i.i.1, i32 %i.ay
  %i.az = and i32 %i.at, 16711680
  %.not25.2.i.i.1 = icmp eq i32 %i.az, 0
  %i.ba = or disjoint i32 %i.av, 3
  %.2.2.i.i.1 = select i1 %.not25.2.i.i.1, i32 %.2.1.i.i.1, i32 %i.ba
  %.not25.3.i.i.1 = icmp ult i32 %i.at, 16777216
  %i.bb = add i32 %i.av, 4
  %.2.3.i.i.1 = select i1 %.not25.3.i.i.1, i32 %.2.2.i.i.1, i32 %i.bb
  br label %.loopexit.i.i.1

.loopexit.i.i.1:                                  ; preds = %.preheader.i.i.1, %.loopexit.i.i
  %.3.i.i.1 = phi i32 [ %.3.i.i, %.loopexit.i.i ], [ %.2.3.i.i.1, %.preheader.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %base_bytes.exit.i.loopexit.unr-lcssa, label %.lr.ph33.i.i, !llvm.loop !1
end_hunk_1
begin_hunk_2_@decompress_base_block:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bq, i1 false)
  %i.br = icmp sgt i32 %.066111.i, 0
  br i1 %i.br, label %bb.i, label %base_bytes.exit101.i

bb.i:                                             ; preds = %bb.h
  %i.bs = add i32 %.162.i, -1                     ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %exitcond.peel.not.i78.i = icmp eq i32 %.066111.i, 1
  br i1 %exitcond.peel.not.i78.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i

.lr.ph33.preheader.i82.i:                         ; preds = %.peel.next.i79.i, %bb.i
  %wide.trip.count.i83.i = zext nneg i32 %.066111.i to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count.i83.i, 1
  %i.bt = icmp eq i32 %.066111.i, 1
  br i1 %i.bt, label %.lr.ph33.i84.i.epil.preheader, label %.lr.ph33.preheader.i82.i.new

.lr.ph33.preheader.i82.i.new:                     ; preds = %.lr.ph33.preheader.i82.i
  %unroll_iter21 = and i64 %wide.trip.count.i83.i, 2147483646
  br label %.lr.ph33.i84.i

.peel.next.i79.i:                                 ; preds = %bb.i, %.peel.next.i79.i
  %.02228.i80.i = phi i32 [ %i.bu, %.peel.next.i79.i ], [ 1, %bb.i ]
  call void @Ptngc_largeint_mul(i32 noundef %.162.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.bo) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.bq, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %i.bu = add nuw nsw i32 %.02228.i80.i, 1        ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.bu, %.066111.i
  br i1 %exitcond.not.i81.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i, !llvm.loop !0

.lr.ph33.i84.i:                                   ; preds = %.loopexit.i97.i.1, %.lr.ph33.preheader.i82.i.new
  %indvars.iv.i85.i = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %indvars.iv.next.i99.i.1, %.loopexit.i97.i.1 ] ; 4 uses
  %.032.i86.i = phi i32 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %.3.i98.i.1, %.loopexit.i97.i.1 ] ; 2 uses
  %niter22 = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %niter22.next.1, %.loopexit.i97.i.1 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !10 ; 5 uses
  %.not.i87.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i87.i, label %.loopexit.i97.i, label %.preheader.i88.i

.preheader.i88.i:                                 ; preds = %.lr.ph33.i84.i
  %i.bx = and i32 %i.bw, 255
  %.not25.i89.i = icmp eq i32 %i.bx, 0
  %indvars.iv.i85.tr.i = trunc i64 %indvars.iv.i85.i to i32
  %i.by = shl i32 %indvars.iv.i85.tr.i, 2         ; 4 uses
  %i.bz = or disjoint i32 %i.by, 1
  %.2.i90.i = select i1 %.not25.i89.i, i32 %.032.i86.i, i32 %i.bz
  %i.ca = and i32 %i.bw, 65280
  %.not25.1.i91.i = icmp eq i32 %i.ca, 0
  %i.cb = or disjoint i32 %i.by, 2
  %.2.1.i92.i = select i1 %.not25.1.i91.i, i32 %.2.i90.i, i32 %i.cb
  %i.cc = and i32 %i.bw, 16711680
  %.not25.2.i93.i = icmp eq i32 %i.cc, 0
  %i.cd = or disjoint i32 %i.by, 3
  %.2.2.i94.i = select i1 %.not25.2.i93.i, i32 %.2.1.i92.i, i32 %i.cd
  %.not25.3.i95.i = icmp ult i32 %i.bw, 16777216
  %i.ce = or disjoint i32 %i.by, 4
  %.2.3.i96.i = select i1 %.not25.3.i95.i, i32 %.2.2.i94.i, i32 %i.ce
  br label %.loopexit.i97.i

.loopexit.i97.i:                                  ; preds = %.preheader.i88.i, %.lr.ph33.i84.i
  %.3.i98.i = phi i32 [ %.032.i86.i, %.lr.ph33.i84.i ], [ %.2.3.i96.i, %.preheader.i88.i ] ; 2 uses
  %indvars.iv.next.i99.i = or disjoint i64 %indvars.iv.i85.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i99.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !10 ; 5 uses
  %.not.i87.i.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i87.i.1, label %.loopexit.i97.i.1, label %.preheader.i88.i.1

.preheader.i88.i.1:                               ; preds = %.loopexit.i97.i
  %i.ch = and i32 %i.cg, 255
  %.not25.i89.i.1 = icmp eq i32 %i.ch, 0
  %indvars.iv.i85.tr.i.1 = trunc i64 %indvars.iv.next.i99.i to i32
  %i.ci = shl i32 %indvars.iv.i85.tr.i.1, 2       ; 4 uses
  %i.cj = or disjoint i32 %i.ci, 1
  %.2.i90.i.1 = select i1 %.not25.i89.i.1, i32 %.3.i98.i, i32 %i.cj
  %i.ck = and i32 %i.cg, 65280
  %.not25.1.i91.i.1 = icmp eq i32 %i.ck, 0
  %i.cl = or disjoint i32 %i.ci, 2
  %.2.1.i92.i.1 = select i1 %.not25.1.i91.i.1, i32 %.2.i90.i.1, i32 %i.cl
  %i.cm = and i32 %i.cg, 16711680
  %.not25.2.i93.i.1 = icmp eq i32 %i.cm, 0
  %i.cn = or disjoint i32 %i.ci, 3
  %.2.2.i94.i.1 = select i1 %.not25.2.i93.i.1, i32 %.2.1.i92.i.1, i32 %i.cn
  %.not25.3.i95.i.1 = icmp ult i32 %i.cg, 16777216
  %i.co = add i32 %i.ci, 4
  %.2.3.i96.i.1 = select i1 %.not25.3.i95.i.1, i32 %.2.2.i94.i.1, i32 %i.co
  br label %.loopexit.i97.i.1

.loopexit.i97.i.1:                                ; preds = %.preheader.i88.i.1, %.loopexit.i97.i
  %.3.i98.i.1 = phi i32 [ %.3.i98.i, %.loopexit.i97.i ], [ %.2.3.i96.i.1, %.preheader.i88.i.1 ] ; 3 uses
  %indvars.iv.next.i99.i.1 = add nuw nsw i64 %indvars.iv.i85.i, 2 ; 2 uses
  %niter22.next.1 = add i64 %niter22, 2           ; 2 uses
  %niter22.ncmp.1 = icmp eq i64 %niter22.next.1, %unroll_iter21
  br i1 %niter22.ncmp.1, label %base_bytes.exit101.i.loopexit.unr-lcssa, label %.lr.ph33.i84.i, !llvm.loop !1

base_bytes.exit101.i.loopexit.unr-lcssa:          ; preds = %.loopexit.i97.i.1
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %base_bytes.exit101.i, label %.lr.ph33.i84.i.epil.preheader

.lr.ph33.i84.i.epil.preheader:                    ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.lr.ph33.preheader.i82.i
  %indvars.iv.i85.i.epil.init = phi i64 [ 0, %.lr.ph33.preheader.i82.i ], [ %indvars.iv.next.i99.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %.032.i86.i.epil.init = phi i32 [ 0, %.lr.ph33.preheader.i82.i ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %.066111.i to i1
  call void @llvm.assume(i1 %lcmp.mod20)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !10 ; 5 uses
  %.not.i87.i.epil = icmp eq i32 %i.cq, 0
  br i1 %.not.i87.i.epil, label %base_bytes.exit101.i, label %.preheader.i88.i.epil

.preheader.i88.i.epil:                            ; preds = %.lr.ph33.i84.i.epil.preheader
  %i.cr = and i32 %i.cq, 255
  %.not25.i89.i.epil = icmp eq i32 %i.cr, 0
  %indvars.iv.i85.tr.i.epil = trunc i64 %indvars.iv.i85.i.epil.init to i32
  %i.cs = shl i32 %indvars.iv.i85.tr.i.epil, 2    ; 4 uses
  %i.ct = or disjoint i32 %i.cs, 1
  %.2.i90.i.epil = select i1 %.not25.i89.i.epil, i32 %.032.i86.i.epil.init, i32 %i.ct
  %i.cu = and i32 %i.cq, 65280
  %.not25.1.i91.i.epil = icmp eq i32 %i.cu, 0
  %i.cv = or disjoint i32 %i.cs, 2
  %.2.1.i92.i.epil = select i1 %.not25.1.i91.i.epil, i32 %.2.i90.i.epil, i32 %i.cv
  %i.cw = and i32 %i.cq, 16711680
  %.not25.2.i93.i.epil = icmp eq i32 %i.cw, 0
  %i.cx = or disjoint i32 %i.cs, 3
  %.2.2.i94.i.epil = select i1 %.not25.2.i93.i.epil, i32 %.2.1.i92.i.epil, i32 %i.cx
  %.not25.3.i95.i.epil = icmp ult i32 %i.cq, 16777216
  %i.cy = add i32 %i.cs, 4
  %.2.3.i96.i.epil = select i1 %.not25.3.i95.i.epil, i32 %.2.2.i94.i.epil, i32 %i.cy
  br label %base_bytes.exit101.i

base_bytes.exit101.i:                             ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.preheader.i88.i.epil, %.lr.ph33.i84.i.epil.preheader, %bb.h
  %.0.lcssa.i77.i = phi i32 [ 0, %bb.h ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ], [ %.032.i86.i.epil.init, %.lr.ph33.i84.i.epil.preheader ], [ %.2.3.i96.i.epil, %.preheader.i88.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.j:                                             ; preds = %base_bytes.exit101.i, %bb.g
  %.269.i = phi i32 [ %.0.lcssa.i77.i, %base_bytes.exit101.i ], [ %.168.i, %bb.g ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.y, i1 false)
  %i.cz = sdiv i32 %.269.i, 4
  %.not75.i = icmp sle i32 %i.cz, %i.o
  %i.da = icmp sgt i32 %.269.i, 0
  %or.cond.i = and i1 %i.da, %.not75.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.loopexit103.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %.269.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.db = icmp ult i32 %.269.i, 4
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 9 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.3, %.lr.ph.i ]
  %i.dc = lshr exact i64 %indvars.iv.i, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  %i.df = zext i8 %i.de to i32
  %i.dg = and i64 %i.dc, 1073741823
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !10
  %i.dj = or i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !10
  %i.dk = lshr exact i64 %indvars.iv.i, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !25
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = and i64 %i.dk, 1073741823
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = or i32 %i.dp, %i.ds
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !10
  %i.du = lshr exact i64 %indvars.iv.i, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = and i64 %i.du, 1073741823
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = or i32 %i.dz, %i.ec
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !10
  %i.ee = lshr exact i64 %indvars.iv.i, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !25
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 24
  %i.ek = and i64 %i.ee, 1073741823
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10
  %i.en = or i32 %i.ej, %i.em
  store i32 %i.en, ptr %i.el, align 4, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter27.next.3 = add i64 %niter27, 4           ; 2 uses
  %niter27.ncmp.3 = icmp eq i64 %niter27.next.3, %unroll_iter26
  br i1 %niter27.ncmp.3, label %.loopexit103.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !110

.loopexit103.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit103.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.loopexit103.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter23, 0
  call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.eo = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.ep = lshr i64 %indvars.iv.i.epil, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i.epil
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25
  %i.es = zext i8 %i.er to i32
  %i.et = shl i32 %i.eo, 3
  %i.eu = and i32 %i.et, 24
  %i.ev = shl nuw i32 %i.es, %i.eu
  %i.ew = and i64 %i.ep, 1073741823
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.ez = or i32 %i.ev, %i.ey
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !10
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter23
  br i1 %epil.iter.cmp.not, label %.loopexit103.i, label %.lr.ph.i.epil, !llvm.loop !111

.loopexit103.i:                                   ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.j
  %i.fa = sext i32 %.269.i to i64
  %i.fb = getelementptr inbounds i8, ptr %.2.i, i64 %i.fa ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.066111.i, i32 %i.o) ; 3 uses
  %i.fc = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fc, label %.lr.ph108.preheader.i, label %._crit_edge.i

.lr.ph108.preheader.i:                            ; preds = %.loopexit103.i
  %i.fd = sext i32 %.066111.i to i64
  %smin.i = call i64 @llvm.smin.i64(i64 %i.fd, i64 %wide.trip.count.i.i)
  %i.fe = sext i32 %.065112.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.l, i64 %i.fe
  br label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i, %.lr.ph108.preheader.i
  %indvars.iv126.i = phi i64 [ %smin.i, %.lr.ph108.preheader.i ], [ %indvars.iv.next127.i, %.lr.ph108.i ] ; 2 uses
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, -1 ; 2 uses
  %i.ff = call i32 @Ptngc_largeint_div(i32 noundef %.162.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.w) #12
  %.idx.i = mul i64 %indvars.iv.next127.i, 12
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i
  store i32 %i.ff, ptr %gep.i, align 4, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.ab, i1 false), !tbaa !10
  %i.fg = icmp sgt i64 %indvars.iv126.i, 1
  br i1 %i.fg, label %.lr.ph108.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph108.i, %.loopexit103.i
  %i.fh = mul nsw i32 %spec.select.i, 3
  %i.fi = add nsw i32 %i.fh, %.065112.i
  %i.fj = sub nsw i32 %.066111.i, %spec.select.i  ; 2 uses
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %._crit_edge118.i, label %bb.d, !llvm.loop !113

._crit_edge118.i:                                 ; preds = %._crit_edge.i
  %i.fk = add nuw nsw i32 %.059119.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.fk, 3
  br i1 %exitcond128.not.i, label %base_decompress.exit.loopexit, label %.lr.ph117.i, !llvm.loop !114

base_decompress.exit.loopexit:                    ; preds = %._crit_edge118.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %base_decompress.exit

base_decompress.exit:                             ; preds = %base_decompress.exit.loopexit, %bb.c
  %i.fl = phi ptr [ %.pre, %base_decompress.exit.loopexit ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.fm = sext i32 %i.h to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  store ptr %i.fn, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_one_large(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef %9, i32 noundef range(i32 0, 3) %10) unnamed_addr #7 {
bb.a:
  switch i32 %10, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 4, !tbaa !10     ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !10
  %i.g = load <2 x i32>, ptr %5, align 4, !tbaa !10
  %i.h = add nsw <2 x i32> %i.g, %i.f
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = add nsw i32 %i.l, %i.j
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, splat (i32 1)
  %i.u = sdiv <2 x i32> %i.t, splat (i32 2)       ; 2 uses
  %i.v = and <2 x i32> %i.s, splat (i32 1)
  %i.w = icmp eq <2 x i32> %i.v, zeroinitializer
  %i.x = sub nsw <2 x i32> zeroinitializer, %i.u
  %i.y = select <2 x i1> %i.w, <2 x i32> %i.x, <2 x i32> %i.u
  %i.z = load <2 x i32>, ptr %4, align 4, !tbaa !10
  %i.aa = add nsw <2 x i32> %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = sdiv i32 %i.ad, 2                       ; 2 uses
  %i.af = and i32 %i.ac, 1
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = sub nsw i32 0, %i.ae
  %spec.select.i57 = select i1 %i.ag, i32 %i.ah, i32 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = add nsw i32 %spec.select.i57, %i.aj
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %.not55 = icmp eq ptr %i.am, null
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %.neg = mul i32 %9, -3
  %i.aq = add i32 %.neg, %7
  %i.ar = mul nuw nsw i32 %8, 3
  %i.as = add i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10
  %i.aw = load <2 x i32>, ptr %i.ap, align 4, !tbaa !10 ; 2 uses
  %i.ax = add nsw <2 x i32> %i.aw, splat (i32 1)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 2)     ; 2 uses
  %i.az = and <2 x i32> %i.aw, splat (i32 1)
  %i.ba = icmp eq <2 x i32> %i.az, zeroinitializer
  %i.bb = sub nsw <2 x i32> zeroinitializer, %i.ay
  %i.bc = select <2 x i1> %i.ba, <2 x i32> %i.bb, <2 x i32> %i.ay
  %i.bd = add i32 %i.as, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = add nsw <2 x i32> %i.bc, %i.bi
  %i.bk = getelementptr i8, ptr %i.ap, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !10 ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sdiv i32 %i.bm, 2                       ; 2 uses
  %i.bo = and i32 %i.bl, 1
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i60 = select i1 %i.bp, i32 %i.bq, i32 %i.bn
  %i.br = add i32 %i.as, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = add nsw i32 %spec.select.i60, %i.bu
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.e
  %.sink64 = phi i32 [ %i.p, %bb.e ], [ %i.an, %bb.g ], [ %i.c, %bb.c ]
  %.sink63 = phi ptr [ %2, %bb.e ], [ %3, %bb.g ], [ %1, %bb.c ]
  %.sroa.12.0.ph = phi i32 [ %i.ak, %bb.e ], [ %i.bv, %bb.g ], [ %i.m, %bb.c ]
  %i.bw = phi <2 x i32> [ %i.aa, %bb.e ], [ %i.bj, %bb.g ], [ %i.h, %bb.c ]
  %i.bx = add nsw i32 %.sink64, 3
  store i32 %i.bx, ptr %.sink63, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.sroa.12.0 = phi i32 [ 0, %bb.f ], [ %.sroa.12.0.ph, %.sink.split ] ; 2 uses
  %i.by = phi <2 x i32> [ zeroinitializer, %bb.f ], [ %i.bw, %.sink.split ] ; 2 uses
  store <2 x i32> %i.by, ptr %4, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bz = sext i32 %7 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bz ; 2 uses
  store <2 x i32> %i.by, ptr %i.ca, align 4, !tbaa !10
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 %.sroa.12.0, ptr %i.cb, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare ptr @Ptngc_warnrealloc_x(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @base_bytes(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add nsw i32 %1, 1                        ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.e, i1 false)
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %0, -1                           ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %.lr.ph33.preheader, label %.peel.next

.lr.ph33.preheader:                               ; preds = %.peel.next, %bb.b
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph33

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.02228 = phi i32 [ %i.i, %.peel.next ], [ 1, %bb.b ]
  call void @Ptngc_largeint_mul(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.e, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %i.i = add nuw nsw i32 %.02228, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %.lr.ph33.preheader, label %.peel.next, !llvm.loop !0

.lr.ph33:                                         ; preds = %.loopexit.1, %.lr.ph33.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %indvars.iv.next.1, %.loopexit.1 ] ; 4 uses
  %.032 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %.3.1, %.loopexit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10   ; 5 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

end_hunk_2
begin_hunk_3_@base_bytes:bb.a
  %lcmp.mod44 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10 ; 5 uses
  %.not.epil = icmp eq i32 %i.am, 0
  br i1 %.not.epil, label %._crit_edge, label %.preheader.epil

.preheader.epil:                                  ; preds = %.lr.ph33.epil.preheader
  %i.an = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 4 uses
  %i.ao = and i32 %i.am, 255
  %.not25.epil = icmp eq i32 %i.ao, 0
  %i.ap = trunc i64 %i.an to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %.2.epil = select i1 %.not25.epil, i32 %.032.epil.init, i32 %i.aq
  %i.ar = and i32 %i.am, 65280
  %.not25.1.epil = icmp eq i32 %i.ar, 0
  %i.as = trunc i64 %i.an to i32
  %i.at = or disjoint i32 %i.as, 2
  %.2.1.epil = select i1 %.not25.1.epil, i32 %.2.epil, i32 %i.at
  %i.au = and i32 %i.am, 16711680
  %.not25.2.epil = icmp eq i32 %i.au, 0
  %i.av = trunc i64 %i.an to i32
  %i.aw = or disjoint i32 %i.av, 3
  %.2.2.epil = select i1 %.not25.2.epil, i32 %.2.1.epil, i32 %i.aw
  %.not25.3.epil = icmp ult i32 %i.am, 16777216
  %i.ax = trunc i64 %i.an to i32
  %i.ay = add i32 %i.ax, 4
  %.2.3.epil = select i1 %.not25.3.epil, i32 %.2.2.epil, i32 %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.epil, %.lr.ph33.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %.032.epil.init, %.lr.ph33.epil.preheader ], [ %.2.3.epil, %.preheader.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.lcssa
}

declare void @Ptngc_largeint_mul(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Ptngc_largeint_add(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bwlzh_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Ptngc_largeint_div(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16, !35}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"xtc3_context", !12, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !12, i64 32, !7, i64 40, !7, i64 44, !12, i64 48, !7, i64 56, !7, i64 60, !12, i64 64, !7, i64 72, !7, i64 76, !12, i64 80, !7, i64 88, !7, i64 92, !6, i64 96, !6, i64 108, !7, i64 120, !6, i64 124, !6, i64 12412, !7, i64 16508}
!14 = !{!13, !7, i64 120}
!15 = !{!13, !7, i64 16508}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!13, !7, i64 8}
!23 = !{!13, !12, i64 0}
!24 = !{!13, !7, i64 24}
!25 = !{!6, !6, i64 0}
!26 = !{!13, !12, i64 16}
!27 = !{!13, !7, i64 40}
!28 = !{!13, !12, i64 32}
!29 = !{!13, !7, i64 56}
!30 = !{!13, !12, i64 48}
!31 = !{!13, !7, i64 72}
!32 = !{!13, !12, i64 64}
!33 = !{!13, !7, i64 88}
!34 = !{!13, !12, i64 80}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16, !20, !21}
!42 = distinct !{!42, !16, !20, !21}
!43 = distinct !{!43, !16, !20, !21}
!44 = distinct !{!44, !16, !21, !20}
!45 = distinct !{!45, !16, !20, !21}
!46 = distinct !{!46, !16, !20, !21}
!47 = distinct !{!47, !16, !21, !20}
!48 = distinct !{!48, !16, !21, !20}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16, !20, !21}
!51 = distinct !{!51, !16, !20, !21}
!52 = distinct !{!52, !16, !21, !20}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16, !20, !21}
!55 = distinct !{!55, !16, !20, !21}
!56 = distinct !{!56, !16, !21, !20}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16, !20, !21}
!61 = distinct !{!61, !16, !20, !21}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16, !21, !20}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16, !20, !21}
!66 = distinct !{!66, !16, !20, !21}
!67 = distinct !{!67, !16, !21, !20}
!68 = distinct !{!68, !16, !20, !21}
!69 = distinct !{!69, !16, !20, !21}
!70 = distinct !{!70, !16, !21, !20}
!71 = distinct !{!71, !16, !20, !21}
!72 = distinct !{!72, !16, !20, !21}
!73 = distinct !{!73, !16, !21, !20}
!74 = distinct !{!74, !16, !20, !21}
!75 = distinct !{!75, !16, !20, !21}
!76 = distinct !{!76, !16, !21, !20}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!"branch_weights", i32 4, i32 28}
!79 = !{!"branch_weights", i32 8, i32 8}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !84}
!89 = distinct !{!89, !16, !20, !21}
!90 = distinct !{!90, !16, !20}
!91 = !{!85}
!92 = !{!86}
!93 = !{!88, !85, !87}
!94 = !{!87}
!95 = !{!88}
!96 = !{!85, !87}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16, !20, !21}
!99 = distinct !{!99, !16, !20, !21}
!100 = distinct !{!100, !16, !21, !20}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16, !20, !21}
!103 = distinct !{!103, !16, !20, !21}
!104 = distinct !{!104, !16, !21, !20}
!105 = distinct !{!105, !16}
!106 = !{!"branch_weights", i32 4, i32 12}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !115}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = !{!"llvm.loop.unroll.disable"}
end_hunk_3
