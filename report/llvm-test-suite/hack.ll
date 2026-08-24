Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hack?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@find_inputs:bb.a
  store ptr %i.aa, ptr %5, align 8, !tbaa !24
  br label %common.ret56

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !39
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.ac, i32 noundef %i.ak) #11 ; 3 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.al) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.al) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049 = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ap = shl nsw i32 %4, 1                       ; 2 uses
  %i.aq = tail call i32 @find_inputs(ptr noundef %.049, ptr noundef nonnull %1, ptr noundef %i.ao, i32 noundef %3, i32 noundef %i.ap, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.049) #11
  %i.ar = load ptr, ptr %1, align 8, !tbaa !23
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !39
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.ay = add nsw i32 %i.ax, %i.aw
  %i.az = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.ar, i32 noundef %i.ay) #11 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.az) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.az) #11
  br label %bb.h

common.ret56:                                     ; preds = %bb.h, %._crit_edge
  %common.ret56.op = phi i32 [ undef, %._crit_edge ], [ undef, %bb.h ]
  ret i32 %common.ret56.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %bb.f ] ; 2 uses
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.bc = or disjoint i32 %i.ap, 1
  %i.bd = tail call i32 @find_inputs(ptr noundef %.1, ptr noundef nonnull %1, ptr noundef %i.bb, i32 noundef %3, i32 noundef %i.bc, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.1) #11
  br label %common.ret56
}

declare ptr @sf_append(...) local_unnamed_addr #3

declare ptr @cof_output(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @map_symbolic(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.0106134 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not135 = icmp eq ptr %.0106134, null
  br i1 %.not135, label %._crit_edge143, label %.preheader130

.preheader130:                                    ; preds = %bb.a, %._crit_edge
  %.0106136 = phi ptr [ %.0106, %._crit_edge ], [ %.0106134, %bb.a ] ; 2 uses
  %.0105131 = load ptr, ptr %.0106136, align 8, !tbaa !35 ; 2 uses
  %.not118132 = icmp eq ptr %.0105131, null
  br i1 %.not118132, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader130
  %.pre172 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  br label %.lr.ph

.preheader129:                                    ; preds = %._crit_edge
  %.1107137.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not112138 = icmp eq ptr %.1107137.pre, null
  br i1 %.not112138, label %._crit_edge143, label %.lr.ph142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.b = phi i32 [ %i.e, %bb.c ], [ %.pre172, %.lr.ph.preheader ] ; 2 uses
  %.0105133 = phi ptr [ %.0105, %bb.c ], [ %.0105131, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i32, ptr %.0105133, align 8, !tbaa !49 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  %.not119 = icmp slt i32 %i.c, %i.b
  %or.cond = select i1 %i.d, i1 %.not119, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.13) #11
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %.pre, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0105133, i64 8
  %.0105 = load ptr, ptr %i.f, align 8, !tbaa !35 ; 2 uses
  %.not118 = icmp eq ptr %.0105, null
  br i1 %.not118, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader130
  %i.g = getelementptr inbounds nuw i8, ptr %.0106136, i64 32
  %.0106 = load ptr, ptr %i.g, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %.0106, null
  br i1 %.not, label %.preheader129, label %.preheader130

.lr.ph142:                                        ; preds = %.preheader129, %.lr.ph142
  %.1107141 = phi ptr [ %.1107, %.lr.ph142 ], [ %.1107137.pre, %.preheader129 ] ; 2 uses
  %.0101140 = phi i32 [ %i.l, %.lr.ph142 ], [ 0, %.preheader129 ]
  %.0102139 = phi i32 [ %i.k, %.lr.ph142 ], [ 0, %.preheader129 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.1107141, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40
  %i.j = shl nuw i32 1, %i.i
  %i.k = add nsw i32 %i.j, %.0102139              ; 2 uses
  %i.l = add nuw nsw i32 %.0101140, 1             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1107141, i64 32
  %.1107 = load ptr, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %.not112 = icmp eq ptr %.1107, null
  br i1 %.not112, label %._crit_edge143, label %.lr.ph142

._crit_edge143:                                   ; preds = %.lr.ph142, %bb.a, %.preheader129
  %.0102.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.k, %.lr.ph142 ] ; 8 uses
  %.0101.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.l, %.lr.ph142 ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = add nsw i32 %i.p, %.0102.lcssa           ; 2 uses
  %i.r = icmp slt i32 %i.q, 33
  %i.s = add nsw i32 %i.q, -1
  %i.t = lshr i32 %i.s, 3
  %i.u = and i32 %i.t, 536870908
  %i.v = add nuw nsw i32 %i.u, 8
  %narrow = select i1 %i.r, i32 8, i32 %i.v
  %i.w = zext nneg i32 %narrow to i64
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #13
  %i.y = load i32, ptr %i.o, align 4, !tbaa !46
  %i.z = add nsw i32 %i.y, %.0102.lcssa
  %i.aa = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.x, i32 noundef %i.z) #11 ; 9 uses
  %.2150 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not113151 = icmp eq ptr %.2150, null
  br i1 %.not113151, label %._crit_edge153, label %.preheader

.preheader:                                       ; preds = %._crit_edge143, %._crit_edge149
  %.2152 = phi ptr [ %.2, %._crit_edge149 ], [ %.2150, %._crit_edge143 ] ; 2 uses
  %.1145 = load ptr, ptr %.2152, align 8, !tbaa !35 ; 2 uses
  %.not117146 = icmp eq ptr %.1145, null
  br i1 %.not117146, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader, %.lr.ph148
  %.1147 = phi ptr [ %.1, %.lr.ph148 ], [ %.1145, %.preheader ] ; 3 uses
  %i.ab = load i32, ptr %.1147, align 8, !tbaa !49 ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 30
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = xor i32 %i.ae, -1
  %i.ag = ashr i32 %i.ab, 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.ak, %i.af
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %i.am = load i32, ptr %.1147, align 8, !tbaa !49 ; 2 uses
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = and i32 %i.an, 30
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = xor i32 %i.ap, -1
  %i.ar = ashr i32 %i.am, 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.aa, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = and i32 %i.av, %i.aq
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.1147, i64 8
  %.1 = load ptr, ptr %i.ax, align 8, !tbaa !35   ; 2 uses
  %.not117 = icmp eq ptr %.1, null
  br i1 %.not117, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148, %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.2152, i64 32
  %.2 = load ptr, ptr %i.ay, align 8, !tbaa !34   ; 2 uses
  %.not113 = icmp eq ptr %.2, null
  br i1 %.not113, label %._crit_edge153, label %.preheader

._crit_edge153:                                   ; preds = %._crit_edge149, %._crit_edge143
  %i.az = load ptr, ptr %0, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bc = add nsw i32 %i.bb, %.0102.lcssa
  %i.bd = tail call i32 (ptr, ...) @set_ord(ptr noundef %i.aa) #11
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = sdiv i32 %i.be, 2                       ; 5 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  %i.bh = sub nsw i32 %i.bg, %i.bf
  %i.bi = add nsw i32 %i.bh, %.0101.lcssa         ; 2 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.bk = sub nsw i32 %i.bj, %i.bf
  %i.bl = load i32, ptr @cube, align 8, !tbaa !30
  %i.bm = shl nsw i32 %i.bf, 1
  %i.bn = sub i32 %.0102.lcssa, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = sext i32 %i.bi to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bq) #13 ; 10 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !32 ; 8 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31 ; 3 uses
  %i.bv = sext i32 %1 to i64
  %i.bw = getelementptr [4 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr [4 x i8], ptr %i.br, i64 %i.bp
  %i.ca = getelementptr i8, ptr %i.bz, i64 -4
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !4
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.cb = add nsw i32 %1, -1                      ; 2 uses
  %i.cc = icmp slt i32 %2, %i.cb
  br i1 %i.cc, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %._crit_edge153
  %i.cd = sext i32 %2 to i64                      ; 5 uses
  %i.ce = sext i32 %i.bf to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.cb to i64
  %i.cf = sext i32 %1 to i64                      ; 3 uses
  %i.cg = xor i64 %i.cd, -1
  %i.ch = add nsw i64 %i.cg, %i.cf                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 12
  br i1 %min.iters.check, label %.lr.ph156.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph156.preheader
  %i.ci = shl nsw i64 %i.ce, 2
  %i.cj = add i64 %i.ci, %i.bu
  %i.ck = sub i64 %i.cj, %i.bs
  %diff.check = icmp ugt i64 %i.ck, -32
  br i1 %diff.check, label %.lr.ph156.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -8                      ; 3 uses
  %i.cl = add nsw i64 %n.vec, %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = add i64 %index, %i.cd                   ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x i32>, ptr %i.cn, align 4, !tbaa !4
  %wide.load184 = load <4 x i32>, ptr %i.co, align 4, !tbaa !4
  %i.cp = sub nsw i64 %i.cm, %i.ce
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> %wide.load184, ptr %i.cr, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge157, label %.lr.ph156.preheader185

.lr.ph156.preheader185:                           ; preds = %vector.memcheck, %.lr.ph156.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph156.preheader ], [ %i.cl, %middle.block ] ; 4 uses
  %i.ct = xor i64 %indvars.iv.ph, -1
  %i.cu = add i64 %i.ct, %i.cf
  %i.cv = add nsw i64 %i.cf, -2
  %i.cw = sub nsw i64 %i.cv, %indvars.iv.ph
  %xtraiter = and i64 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader185, %.lr.ph156.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph156.prol ], [ %indvars.iv.ph, %.lr.ph156.preheader185 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader185 ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = sub nsw i64 %indvars.iv.prol, %i.ce
  %i.da = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cz
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !53

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader185
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph156.preheader185 ], [ %indvars.iv.next.prol, %.lr.ph156.prol ]
  %i.db = icmp ult i64 %i.cw, 3
  br i1 %i.db, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph156 ], [ %indvars.iv.unr, %.lr.ph156.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sub nsw i64 %indvars.iv, %i.ce
  %i.df = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = sub nsw i64 %indvars.iv.next, %i.ce
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.di
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = sub nsw i64 %indvars.iv.next.1, %i.ce
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next.2
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = sub nsw i64 %indvars.iv.next.2, %i.ce
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dq
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge157, label %.lr.ph156, !llvm.loop !55

._crit_edge157:                                   ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block, %._crit_edge153
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !39
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4  ; 4 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !23
  %i.dy = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.dx, i32 noundef %i.dw, i32 noundef %.0102.lcssa) #11
  store ptr %i.dy, ptr %0, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !25
  %i.eb = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.ea, i32 noundef %i.dw, i32 noundef %.0102.lcssa) #11
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !33
  %i.ee = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.ed, i32 noundef %i.dw, i32 noundef %.0102.lcssa) #11
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !33
  %.3158 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not114159 = icmp eq ptr %.3158, null
  br i1 %.not114159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %._crit_edge157
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  %i.eg = xor i32 %i.bf, -1
  %i.eh = add i32 %i.ef, %i.eg
  %i.ei = sext i32 %i.eh to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %map_symbolic_cover.exit127
  %indvars.iv169 = phi i64 [ %i.ei, %.lr.ph164.preheader ], [ %indvars.iv.next170, %map_symbolic_cover.exit127 ] ; 2 uses
  %.3162 = phi ptr [ %.3158, %.lr.ph164.preheader ], [ %.3, %map_symbolic_cover.exit127 ] ; 5 uses
  %.0103160 = phi i32 [ %i.dw, %.lr.ph164.preheader ], [ %i.gi, %map_symbolic_cover.exit127 ] ; 4 uses
  %i.ej = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.ek = load ptr, ptr %.3162, align 8, !tbaa !45 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !26 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !28
  %i.ep = load i32, ptr %i.ej, align 8, !tbaa !29
  %i.eq = mul nsw i32 %i.ep, %i.eo                ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %.idx.i = shl nuw nsw i64 %i.er, 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i
  %i.et = icmp sgt i32 %i.eq, 0
  br i1 %i.et, label %.lr.ph.i, label %map_symbolic_cover.exit

.lr.ph.i:                                         ; preds = %.lr.ph164, %.lr.ph.i
  %.011.i = phi ptr [ %i.ex, %.lr.ph.i ], [ %i.em, %.lr.ph164 ] ; 2 uses
  %i.eu = tail call i32 @form_bitvector(ptr noundef %.011.i, i32 noundef %.0103160, i32 noundef 0, ptr noundef readonly %i.ek) ; 0 uses
  %i.ev = load i32, ptr %i.ej, align 8, !tbaa !29
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %.011.i, i64 %i.ew ; 2 uses
  %i.ey = icmp ult ptr %i.ex, %i.es
  br i1 %i.ey, label %.lr.ph.i, label %map_symbolic_cover.exit.loopexit

map_symbolic_cover.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre174 = load ptr, ptr %.3162, align 8, !tbaa !45
  br label %map_symbolic_cover.exit

map_symbolic_cover.exit:                          ; preds = %map_symbolic_cover.exit.loopexit, %.lr.ph164
  %i.ez = phi ptr [ %.pre174, %map_symbolic_cover.exit.loopexit ], [ %i.ek, %.lr.ph164 ] ; 2 uses
  store ptr %i.ej, ptr %0, align 8, !tbaa !23
  %i.fa = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !26 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !28
  %i.ff = load i32, ptr %i.fa, align 8, !tbaa !29
  %i.fg = mul nsw i32 %i.ff, %i.fe                ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %.idx.i120 = shl nuw nsw i64 %i.fh, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i120
  %i.fj = icmp sgt i32 %i.fg, 0
  br i1 %i.fj, label %.lr.ph.i121, label %map_symbolic_cover.exit123

.lr.ph.i121:                                      ; preds = %map_symbolic_cover.exit, %.lr.ph.i121
  %.011.i122 = phi ptr [ %i.fn, %.lr.ph.i121 ], [ %i.fc, %map_symbolic_cover.exit ] ; 2 uses
  %i.fk = tail call i32 @form_bitvector(ptr noundef %.011.i122, i32 noundef %.0103160, i32 noundef 0, ptr noundef readonly %i.ez) ; 0 uses
  %i.fl = load i32, ptr %i.fa, align 8, !tbaa !29
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.011.i122, i64 %i.fm ; 2 uses
  %i.fo = icmp ult ptr %i.fn, %i.fi
  br i1 %i.fo, label %.lr.ph.i121, label %map_symbolic_cover.exit123.loopexit

map_symbolic_cover.exit123.loopexit:              ; preds = %.lr.ph.i121
  %.pre175 = load ptr, ptr %.3162, align 8, !tbaa !45
  br label %map_symbolic_cover.exit123

map_symbolic_cover.exit123:                       ; preds = %map_symbolic_cover.exit123.loopexit, %map_symbolic_cover.exit
  %i.fp = phi ptr [ %.pre175, %map_symbolic_cover.exit123.loopexit ], [ %i.ez, %map_symbolic_cover.exit ]
  store ptr %i.fa, ptr %i.dz, align 8, !tbaa !25
  %i.fq = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !26 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !28
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !29
  %i.fw = mul nsw i32 %i.fv, %i.fu                ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %.idx.i124 = shl nuw nsw i64 %i.fx, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx.i124
  %i.fz = icmp sgt i32 %i.fw, 0
  br i1 %i.fz, label %.lr.ph.i125, label %map_symbolic_cover.exit127

.lr.ph.i125:                                      ; preds = %map_symbolic_cover.exit123, %.lr.ph.i125
  %.011.i126 = phi ptr [ %i.gd, %.lr.ph.i125 ], [ %i.fs, %map_symbolic_cover.exit123 ] ; 2 uses
end_hunk_0
begin_hunk_1_@symbolic_hack_labels:bb.a
  %.07087 = phi i32 [ %.171, %bb.f ], [ 0, %.preheader84 ] ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = lshr i64 %indvars.iv, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = and i32 %i.t, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %.not82 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  br i1 %.not82, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph88
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.af = add nsw i32 %.07087, 1
  %i.ag = sext i32 %.07087 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !18
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph88
  %.not83 = icmp eq ptr %i.ad, null
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ad) #11
  store ptr null, ptr %i.ac, align 8, !tbaa !18
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %.pre115 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.ai = phi i32 [ %i.r, %bb.c ], [ %.pre115, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.aj = phi ptr [ %i.s, %bb.c ], [ %.pre, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %.171 = phi i32 [ %i.af, %bb.c ], [ %.07087, %bb.e ], [ %.07087, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph88, label %.preheader

.lr.ph96:                                         ; preds = %.preheader, %._crit_edge
  %.06995 = phi ptr [ %i.bo, %._crit_edge ], [ %1, %.preheader ] ; 3 uses
  %.294 = phi i32 [ %i.bm, %._crit_edge ], [ %.070.lcssa, %.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.06995, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %.not104 = icmp eq i32 %i.aq, 31
  br i1 %.not104, label %._crit_edge, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.lr.ph96
  %i.ar = getelementptr inbounds nuw i8, ptr %.06995, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.at = sext i32 %.294 to i64                   ; 2 uses
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %bb.i
  %i.au = phi i32 [ %i.aq, %.lr.ph91.preheader ], [ %i.bi, %bb.i ]
  %indvars.iv109 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvars.iv.next110, %bb.i ] ; 4 uses
  %.090 = phi ptr [ %i.as, %.lr.ph91.preheader ], [ %.1, %bb.i ] ; 3 uses
  %i.av = icmp eq ptr %.090, null
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph91
  %i.aw = tail call noalias dereferenceable_or_null(10) ptr @malloc(i64 noundef 10) #13 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv109
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.at
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !18
  %i.ba = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.bb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ba) #11 ; 0 uses
  %.pre116 = load i32, ptr %i.ap, align 8, !tbaa !40
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph91
  %i.bc = load ptr, ptr %.090, align 8, !tbaa !60
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv109
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.at
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.090, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bi = phi i32 [ %.pre116, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.1 = phi ptr [ null, %bb.g ], [ %i.bh, %bb.h ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bj = shl nuw i32 1, %i.bi                    ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next110, %i.bk
  br i1 %i.bl, label %.lr.ph91, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.lr.ph96
  %.lcssa = phi i32 [ -2147483648, %.lr.ph96 ], [ %i.bj, %bb.i ]
  %i.bm = add nsw i32 %.lcssa, %.294              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.06995, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %._crit_edge97.loopexit, label %.lr.ph96

._crit_edge97.loopexit:                           ; preds = %._crit_edge
  %.pre117 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %.pre118 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !39
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %.preheader
  %i.bp = phi i32 [ %i.p, %.preheader ], [ %.pre118, %._crit_edge97.loopexit ]
  %i.bq = phi ptr [ %i.q, %.preheader ], [ %.pre117, %._crit_edge97.loopexit ]
  %.2.lcssa = phi i32 [ %.070.lcssa, %.preheader ], [ %i.bm, %._crit_edge97.loopexit ]
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %4
  br i1 %i.bu, label %.lr.ph102.preheader, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %._crit_edge97
  %i.bv = sext i32 %i.bt to i64
  %wide.trip.count = sext i32 %4 to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.m
  %indvars.iv112 = phi i64 [ %i.bv, %.lr.ph102.preheader ], [ %indvars.iv.next113, %bb.m ] ; 3 uses
  %.3100 = phi i32 [ %.2.lcssa, %.lr.ph102.preheader ], [ %.4, %bb.m ] ; 4 uses
  %i.bw = trunc i64 %indvars.iv112 to i32
  %i.bx = add i32 %5, %i.bw                       ; 2 uses
  %i.by = ashr i32 %i.bx, 5
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %2, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = and i32 %i.bx, 31
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = and i32 %i.cc, %i.ce
  %.not80 = icmp eq i32 %i.cf, 0
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 3 uses
  br i1 %.not80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph102
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cj = add nsw i32 %.3100, 1
  %i.ck = sext i32 %.3100 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ck
  store ptr %i.ch, ptr %i.cl, align 8, !tbaa !18
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph102
  %.not81 = icmp eq ptr %i.ch, null
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ch) #11
  store ptr null, ptr %i.cg, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.4 = phi i32 [ %i.cj, %bb.j ], [ %.3100, %bb.l ], [ %.3100, %bb.k ]
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102

._crit_edge103:                                   ; preds = %bb.m, %._crit_edge97
  tail call void @free(ptr noundef %i.b) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %._crit_edge103
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @disassemble_fsm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.c = sub nsw i32 %i.a, %i.b
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.16, i64 46, i64 1, ptr %i.d) #14 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.17, i64 51, i64 1, ptr %i.f) #14 ; 0 uses
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18) #11
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %.pre282 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre282, %bb.b ], [ %i.a, %bb.a ]
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !32 ; 2 uses
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 16 uses
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.m
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.16, i64 46, i64 1, ptr %i.s) #14 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.17, i64 51, i64 1, ptr %i.u) #14 ; 0 uses
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.19) #11
  %.pre283 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %.pre286 = sext i32 %.pre283 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre286, %bb.d ], [ %i.k, %bb.c ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.pre-phi
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 4 uses
  %i.z = load i32, ptr @cube, align 8, !tbaa !30  ; 2 uses
  %i.aa = icmp slt i32 %i.z, 33
  %i.ab = add nsw i32 %i.z, -1
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = and i32 %i.ac, 536870908
  %i.ae = add nuw nsw i32 %i.ad, 8
  %narrow = select i1 %i.aa, i32 8, i32 %i.ae
  %i.af = zext nneg i32 %narrow to i64
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #13
  %2 = load i32, ptr @cube, align 8, !tbaa !30
  %i.ah = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ag, i32 noundef %2) #11 ; 8 uses
  %i.ai = icmp sgt i32 %i.m, 0                    ; 4 uses
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i32 %i.m, 1
  %i.aj = icmp eq i32 %i.m, 1
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.m, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0192224 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = add nsw i32 %.0192224, %i.y             ; 2 uses
  %i.al = and i32 %i.ak, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = ashr i32 %i.ak, 5
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = or i32 %i.ar, %i.am
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4
  %i.at = or disjoint i32 %.0192224, 1
  %i.au = add nsw i32 %i.at, %i.y                 ; 2 uses
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = ashr i32 %i.au, 5
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 4      ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = or i32 %i.bb, %i.aw
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.bd = add nuw nsw i32 %.0192224, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0192224.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod300 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.be = add nsw i32 %.0192224.epil.init, %i.y   ; 2 uses
  %i.bf = and i32 %i.be, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = ashr i32 %i.be, 5
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.ah, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = or i32 %i.bl, %i.bg
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !43
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 7 uses
  %i.bt = load i32, ptr @cube, align 8, !tbaa !30 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 33
  %i.bv = add nsw i32 %i.bt, -1
  %i.bw = lshr i32 %i.bv, 3
  %i.bx = and i32 %i.bw, 536870908
  %i.by = add nuw nsw i32 %i.bx, 8
  %narrow221 = select i1 %i.bu, i32 8, i32 %i.by
  %i.bz = zext nneg i32 %narrow221 to i64
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bz) #13
  %3 = load i32, ptr @cube, align 8, !tbaa !30
  %i.cb = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ca, i32 noundef %3) #11 ; 7 uses
  br i1 %i.ai, label %.lr.ph227.preheader, label %._crit_edge228

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %xtraiter301 = and i32 %i.m, 1
  %i.cc = icmp eq i32 %i.m, 1
  br i1 %i.cc, label %.lr.ph227.epil.preheader, label %.lr.ph227.preheader.new

.lr.ph227.preheader.new:                          ; preds = %.lr.ph227.preheader
  %unroll_iter304 = and i32 %i.m, 2147483646
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227, %.lr.ph227.preheader.new
  %.1193225 = phi i32 [ 0, %.lr.ph227.preheader.new ], [ %i.cw, %.lr.ph227 ] ; 3 uses
  %niter305 = phi i32 [ 0, %.lr.ph227.preheader.new ], [ %niter305.next.1, %.lr.ph227 ]
  %i.cd = add nsw i32 %.1193225, %i.bs            ; 2 uses
  %i.ce = and i32 %i.cd, 31
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = ashr i32 %i.cd, 5
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = or i32 %i.ck, %i.cf
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !4
  %i.cm = or disjoint i32 %.1193225, 1
  %i.cn = add nsw i32 %i.cm, %i.bs                ; 2 uses
  %i.co = and i32 %i.cn, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = ashr i32 %i.cn, 5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 4      ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = or i32 %i.cu, %i.cp
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !4
  %i.cw = add nuw nsw i32 %.1193225, 2            ; 2 uses
  %niter305.next.1 = add nuw nsw i32 %niter305, 2 ; 2 uses
  %niter305.ncmp.1 = icmp eq i32 %niter305.next.1, %unroll_iter304
  br i1 %niter305.ncmp.1, label %._crit_edge228.loopexit.unr-lcssa, label %.lr.ph227

._crit_edge228.loopexit.unr-lcssa:                ; preds = %.lr.ph227
  %lcmp.mod302.not = icmp eq i32 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %._crit_edge228, label %.lr.ph227.epil.preheader

.lr.ph227.epil.preheader:                         ; preds = %._crit_edge228.loopexit.unr-lcssa, %.lr.ph227.preheader
  %.1193225.epil.init = phi i32 [ 0, %.lr.ph227.preheader ], [ %i.cw, %._crit_edge228.loopexit.unr-lcssa ]
  %lcmp.mod303 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod303)
  %i.cx = add nsw i32 %.1193225.epil.init, %i.bs  ; 2 uses
  %i.cy = and i32 %i.cx, 31
  %i.cz = shl nuw i32 1, %i.cy
  %i.da = ashr i32 %i.cx, 5
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.cb, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 4      ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = or i32 %i.de, %i.cz
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !4
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.lr.ph227.epil.preheader, %._crit_edge228.loopexit.unr-lcssa, %._crit_edge
  %i.dg = load i32, ptr @cube, align 8, !tbaa !30 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 33
  %i.di = add nsw i32 %i.dg, -1
  %i.dj = lshr i32 %i.di, 3
  %i.dk = and i32 %i.dj, 536870908
  %i.dl = add nuw nsw i32 %i.dk, 8
  %narrow222 = select i1 %i.dh, i32 8, i32 %i.dl
  %i.dm = zext nneg i32 %narrow222 to i64
  %i.dn = tail call noalias ptr @malloc(i64 noundef %i.dm) #13
  %4 = load i32, ptr @cube, align 8, !tbaa !30
  %i.do = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dn, i32 noundef %4) #11
  %i.dp = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.do, ptr noundef %i.cb, ptr noundef %i.ah) #11 ; 3 uses
  %i.dq = load i32, ptr @cube, align 8, !tbaa !30
  %i.dr = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.dq) #11 ; 2 uses
  br i1 %i.ai, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %._crit_edge228
  %.not218 = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph241, %bb.n
  %.0180239 = phi ptr [ %i.dr, %.lr.ph241 ], [ %.1181, %bb.n ] ; 2 uses
  %.2194238 = phi i32 [ 0, %.lr.ph241 ], [ %i.gb, %bb.n ] ; 4 uses
  %i.ds = load i32, ptr @cube, align 8, !tbaa !30
  %i.dt = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.ds) #11 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !28
  %i.dz = load i32, ptr %i.du, align 8, !tbaa !29
  %i.ea = mul nsw i32 %i.dz, %i.dy                ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %.idx = shl nsw i64 %i.eb, 2
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 %.idx
  %i.ed = icmp sgt i32 %i.ea, 0
  br i1 %i.ed, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %bb.f
  %i.ee = add nsw i32 %.2194238, %i.bs            ; 2 uses
  %i.ef = ashr i32 %i.ee, 5
  %i.eg = sext i32 %i.ef to i64
  %i.eh = and i32 %i.ee, 31
  %i.ei = shl nuw i32 1, %i.eh
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph232, %bb.j
  %.0230 = phi ptr [ %i.dt, %.lr.ph232 ], [ %.1, %bb.j ] ; 3 uses
  %.0186229 = phi ptr [ %i.dw, %.lr.ph232 ], [ %i.es, %bb.j ] ; 4 uses
  %i.ej = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ah, ptr noundef %.0186229) #11
  %.not219 = icmp eq i32 %i.ej, 0
  br i1 %.not219, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = getelementptr [4 x i8], ptr %.0186229, i64 %i.eg
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = and i32 %i.em, %i.ei
  %.not220 = icmp eq i32 %i.en, 0
  br i1 %.not220, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eo = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0230, ptr noundef nonnull %.0186229) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi ptr [ %i.eo, %bb.i ], [ %.0230, %bb.h ], [ %.0230, %bb.g ] ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !23
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !29
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.0186229, i64 %i.er ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.ec
  br i1 %i.et, label %bb.g, label %._crit_edge233

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  %.0.lcssa = phi ptr [ %i.dt, %bb.f ], [ %.1, %bb.j ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !28 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge233
  %i.ex = load i32, ptr @cube, align 8, !tbaa !30
  %i.ey = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.ex) #11 ; 2 uses
  %i.ez = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.0.lcssa) #11
  %i.fa = tail call ptr (ptr, ...) @complement(ptr noundef %i.ez) #11 ; 2 uses
  %i.fb = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.0.lcssa, ptr noundef %i.ey, ptr noundef %i.fa) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ey) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.fa) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !26 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 12 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !28 ; 2 uses
  %i.fg = load i32, ptr %i.fb, align 8, !tbaa !29
  %i.fh = mul nsw i32 %i.fg, %i.ff                ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %.idx273 = shl nuw nsw i64 %i.fi, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx273
  %i.fk = icmp sgt i32 %i.fh, 0
  br i1 %i.fk, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %bb.k
  %i.fl = add nsw i32 %.2194238, %i.bs            ; 2 uses
  %i.fm = and i32 %i.fl, 31
  %i.fn = shl nuw i32 1, %i.fm
  %i.fo = ashr i32 %i.fl, 5
  %i.fp = sext i32 %i.fo to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph236, %bb.l
  %.1187234 = phi ptr [ %i.fd, %.lr.ph236 ], [ %i.fw, %bb.l ] ; 2 uses
  %i.fq = getelementptr [4 x i8], ptr %.1187234, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 4      ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = or i32 %i.fs, %i.fn
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !4
  %i.fu = load i32, ptr %i.fb, align 8, !tbaa !29
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %.1187234, i64 %i.fv ; 2 uses
  %i.fx = icmp ult ptr %i.fw, %i.fj
  br i1 %i.fx, label %bb.l, label %._crit_edge237.loopexit

._crit_edge237.loopexit:                          ; preds = %bb.l
  %.pre284 = load i32, ptr %i.fe, align 4, !tbaa !28
  br label %._crit_edge237

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit, %bb.k
  %i.fy = phi i32 [ %.pre284, %._crit_edge237.loopexit ], [ %i.ff, %bb.k ]
  %i.fz = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180239, ptr noundef nonnull %i.fb) #11 ; 2 uses
  br i1 %.not218, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge237
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.2194238, i32 noundef %i.ev, i32 noundef %i.fy) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge233, %bb.m, %._crit_edge237
  %.1181 = phi ptr [ %i.fz, %bb.m ], [ %i.fz, %._crit_edge237 ], [ %.0180239, %._crit_edge233 ] ; 2 uses
  %i.gb = add nuw nsw i32 %.2194238, 1            ; 2 uses
  %exitcond279.not = icmp eq i32 %i.gb, %i.m
  br i1 %exitcond279.not, label %._crit_edge242, label %bb.f

._crit_edge242:                                   ; preds = %bb.n, %._crit_edge228
  %.0180.lcssa = phi ptr [ %i.dr, %._crit_edge228 ], [ %.1181, %bb.n ]
  %i.gc = load i32, ptr @cube, align 8, !tbaa !30
  %i.gd = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.gc) #11 ; 2 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !28
  %i.gj = load i32, ptr %i.ge, align 8, !tbaa !29
  %i.gk = mul nsw i32 %i.gj, %i.gi                ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %.idx274 = shl nsw i64 %i.gl, 2
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 %.idx274
  %i.gn = icmp sgt i32 %i.gk, 0
  br i1 %i.gn, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %._crit_edge242, %bb.p
  %.0184245 = phi ptr [ %.1185, %bb.p ], [ %i.gd, %._crit_edge242 ] ; 2 uses
  %.2188244 = phi ptr [ %i.gt, %bb.p ], [ %i.gg, %._crit_edge242 ] ; 3 uses
  %i.go = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %.2188244, ptr noundef %i.cb) #11
  %.not217 = icmp eq i32 %i.go, 0
  br i1 %.not217, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph247
  %i.gp = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0184245, ptr noundef %.2188244) #11
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph247, %bb.o
  %.1185 = phi ptr [ %i.gp, %bb.o ], [ %.0184245, %.lr.ph247 ] ; 2 uses
  %i.gq = load ptr, ptr %0, align 8, !tbaa !23
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !29
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.2188244, i64 %i.gs ; 2 uses
  %i.gu = icmp ult ptr %i.gt, %i.gm
  br i1 %i.gu, label %.lr.ph247, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.p, %._crit_edge242
  %.0184.lcssa = phi ptr [ %i.gd, %._crit_edge242 ], [ %.1185, %bb.p ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0184.lcssa, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.gy = tail call ptr (ptr, i32, i32, ...) @unravel_range(ptr noundef %.0184.lcssa, i32 noundef %i.gx, i32 noundef %i.gx) #11 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28
  %i.hb = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180.lcssa, ptr noundef %i.gy) #11 ; 2 uses
  %.not208 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not208, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge248
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gw, i32 noundef %i.ha) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge248
  br i1 %i.ai, label %.preheader.us, label %._crit_edge267

.preheader.us:                                    ; preds = %bb.r, %._crit_edge263.us
  %.2182266.us = phi ptr [ %.4.us, %._crit_edge263.us ], [ %i.hb, %bb.r ]
  %.3195265.us = phi i32 [ %i.kn, %._crit_edge263.us ], [ 0, %bb.r ] ; 3 uses
  %i.hd = add nsw i32 %.3195265.us, %i.y          ; 2 uses
  %i.he = ashr i32 %i.hd, 5
  %i.hf = add nsw i32 %i.he, 1
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = and i32 %i.hd, 31
  %i.hi = shl nuw i32 1, %i.hh                    ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader.us, %bb.ab
  %.3183261.us = phi ptr [ %.2182266.us, %.preheader.us ], [ %.4.us, %bb.ab ] ; 2 uses
  %.0191260.us = phi i32 [ 0, %.preheader.us ], [ %i.kb, %bb.ab ] ; 4 uses
end_hunk_1
begin_hunk_2_@disassemble_fsm:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !26 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !28
  %i.hq = load i32, ptr %i.hl, align 8, !tbaa !29
  %i.hr = mul nsw i32 %i.hq, %i.hp                ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %.idx275 = shl nsw i64 %i.hs, 2
  %i.ht = getelementptr inbounds i8, ptr %i.hn, i64 %.idx275
  %i.hu = icmp sgt i32 %i.hr, 0
  br i1 %i.hu, label %.lr.ph253.us, label %._crit_edge254.us

bb.t:                                             ; preds = %.lr.ph253.us, %bb.x
  %.2251.us = phi ptr [ %i.hk, %.lr.ph253.us ], [ %.3.us, %bb.x ] ; 4 uses
  %.3189250.us = phi ptr [ %i.hn, %.lr.ph253.us ], [ %i.ix, %bb.x ] ; 6 uses
  %i.hv = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ah, ptr noundef %.3189250.us) #11
  %.not213.us = icmp eq i32 %i.hv, 0
  br i1 %.not213.us, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.hw = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.hg
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = and i32 %i.hx, %i.hi
  %.not214.us = icmp eq i32 %i.hy, 0
  br i1 %.not214.us, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hz = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.kf
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4
  %i.ib = and i32 %i.ia, %i.kh
  %.not215.us = icmp eq i32 %i.ib, 0
  br i1 %.not215.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ic = load i32, ptr %.3189250.us, align 4, !tbaa !4
  %i.id = shl i32 %i.ic, 5
  %i.ie = and i32 %i.id, 32736                    ; 2 uses
  %i.if = icmp samesign ult i32 %i.ie, 33
  %i.ig = add nsw i32 %i.ie, -32
  %i.ih = lshr exact i32 %i.ig, 3
  %i.ii = add nuw nsw i32 %i.ih, 8
  %narrow223.us = select i1 %i.if, i32 8, i32 %i.ii
  %i.ij = zext nneg i32 %narrow223.us to i64
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ij) #13
  %i.il = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ik, ptr noundef nonnull %.3189250.us) #11 ; 6 uses
  %i.im = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.il, ptr noundef %i.il, ptr noundef %i.dp) #11 ; 0 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.hg ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %i.ip = or i32 %i.io, %i.hi
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !4
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.kf ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = or i32 %i.ir, %i.kh
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !4
  %i.it = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.2251.us, ptr noundef %i.il) #11
  tail call void @free(ptr noundef %i.il) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.3.us = phi ptr [ %.2251.us, %bb.t ], [ %i.it, %bb.w ], [ %.2251.us, %bb.u ], [ %.2251.us, %bb.v ] ; 2 uses
  %i.iu = load ptr, ptr %0, align 8, !tbaa !23
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !29
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.iw ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %i.ht
  br i1 %i.iy, label %bb.t, label %._crit_edge254.us

._crit_edge254.us:                                ; preds = %bb.x, %bb.s
  %.2.lcssa.us = phi ptr [ %i.hk, %bb.s ], [ %.3.us, %bb.x ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.2.lcssa.us, i64 12
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !28 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %._crit_edge254.us
  %i.jc = load i32, ptr @cube, align 8, !tbaa !30
  %i.jd = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.jc) #11 ; 2 uses
  %i.je = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.2.lcssa.us) #11
  %i.jf = tail call ptr (ptr, ...) @complement(ptr noundef %i.je) #11 ; 2 uses
  %i.jg = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.2.lcssa.us, ptr noundef %i.jd, ptr noundef %i.jf) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.jd) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.jf) #11
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !26 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !28 ; 2 uses
  %i.jl = load i32, ptr %i.jg, align 8, !tbaa !29
  %i.jm = mul nsw i32 %i.jl, %i.jk                ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %.idx276 = shl nuw nsw i64 %i.jn, 2
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx276
  %i.jp = icmp sgt i32 %i.jm, 0
  br i1 %i.jp, label %.lr.ph258.us, label %._crit_edge259.us

bb.z:                                             ; preds = %.lr.ph258.us, %bb.z
  %.4190256.us = phi ptr [ %i.ji, %.lr.ph258.us ], [ %i.jw, %bb.z ] ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %.4190256.us, i64 %i.km
  %i.jr = getelementptr i8, ptr %i.jq, i64 4      ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = or i32 %i.js, %i.kk
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !4
  %i.ju = load i32, ptr %i.jg, align 8, !tbaa !29
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %.4190256.us, i64 %i.jv ; 2 uses
  %i.jx = icmp ult ptr %i.jw, %i.jo
  br i1 %i.jx, label %bb.z, label %._crit_edge259.us.loopexit

._crit_edge259.us.loopexit:                       ; preds = %bb.z
  %.pre285 = load i32, ptr %i.jj, align 4, !tbaa !28
  br label %._crit_edge259.us

._crit_edge259.us:                                ; preds = %._crit_edge259.us.loopexit, %bb.y
  %i.jy = phi i32 [ %.pre285, %._crit_edge259.us.loopexit ], [ %i.jk, %bb.y ]
  %i.jz = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.3183261.us, ptr noundef nonnull %i.jg) #11 ; 2 uses
  br i1 %.not208, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge259.us
  %i.ka = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.3195265.us, i32 noundef %.0191260.us, i32 noundef %i.ja, i32 noundef %i.jy) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge259.us, %._crit_edge254.us
  %.4.us = phi ptr [ %i.jz, %bb.aa ], [ %i.jz, %._crit_edge259.us ], [ %.3183261.us, %._crit_edge254.us ] ; 3 uses
  %i.kb = add nuw nsw i32 %.0191260.us, 1         ; 2 uses
  %exitcond280.not = icmp eq i32 %i.kb, %i.m
  br i1 %exitcond280.not, label %._crit_edge263.us, label %bb.s

.lr.ph253.us:                                     ; preds = %bb.s
  %i.kc = add nsw i32 %.0191260.us, %i.bs         ; 2 uses
  %i.kd = ashr i32 %i.kc, 5
  %i.ke = add nsw i32 %i.kd, 1
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = and i32 %i.kc, 31
  %i.kh = shl nuw i32 1, %i.kg                    ; 2 uses
  br label %bb.t

.lr.ph258.us:                                     ; preds = %bb.y
  %i.ki = add nsw i32 %.0191260.us, %i.bs         ; 2 uses
  %i.kj = and i32 %i.ki, 31
  %i.kk = shl nuw i32 1, %i.kj
  %i.kl = ashr i32 %i.ki, 5
  %i.km = sext i32 %i.kl to i64
  br label %bb.z

._crit_edge263.us:                                ; preds = %bb.ab
  %i.kn = add nuw nsw i32 %.3195265.us, 1         ; 2 uses
  %exitcond281.not = icmp eq i32 %i.kn, %i.m
  br i1 %exitcond281.not, label %._crit_edge267, label %.preheader.us

._crit_edge267:                                   ; preds = %._crit_edge263.us, %bb.r
  %.2182.lcssa = phi ptr [ %i.hb, %bb.r ], [ %.4.us, %._crit_edge263.us ]
  %.not209 = icmp eq ptr %i.dp, null
  br i1 %.not209, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge267
  tail call void @free(ptr noundef nonnull %i.dp) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge267
  %.not210 = icmp eq ptr %i.ah, null
  br i1 %.not210, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ah) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not211 = icmp eq ptr %i.cb, null
  br i1 %.not211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.cb) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ko = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ko) #11
  store ptr %.2182.lcssa, ptr %0, align 8, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !25
  tail call void (ptr, ...) @sf_free(ptr noundef %i.kq) #11
  %i.kr = load i32, ptr @cube, align 8, !tbaa !30
  %i.ks = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.kr) #11
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !25
  tail call void (...) @setdown_cube() #11
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !32 ; 2 uses
  %.not212 = icmp eq ptr %i.kt, null
  br i1 %.not212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.kt) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.ku = add nsw i32 %i.i, 3                     ; 2 uses
  store i32 %i.ku, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 2
  %i.kx = tail call noalias ptr @malloc(i64 noundef %i.kw) #13 ; 2 uses
  store ptr %i.kx, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !32
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %6 = sext i32 %5 to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %6 ; 3 uses
  store i32 %i.m, ptr %i.ky, align 4, !tbaa !4
  %i.kz = getelementptr i8, ptr %i.ky, i64 4
  store i32 %i.m, ptr %i.kz, align 4, !tbaa !4
  %i.la = sub nsw i32 %i.q, %i.m
  %i.lb = getelementptr i8, ptr %i.ky, i64 8
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !4
  tail call void (...) @cube_setup() #11
  %i.lc = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !26 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !28
  %i.lh = load i32, ptr %i.lc, align 8, !tbaa !29
  %i.li = mul nsw i32 %i.lh, %i.lg                ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %.idx277 = shl nuw nsw i64 %i.lj, 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 %.idx277
  %i.ll = icmp sgt i32 %i.li, 0
  br i1 %i.ll, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.aj, %.lr.ph271
  %.5269 = phi ptr [ %i.lr, %.lr.ph271 ], [ %i.le, %bb.aj ] ; 2 uses
  %i.lm = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.ln = tail call i32 (ptr, ptr, ptr, ptr, ...) @kiss_print_cube(ptr noundef %i.lm, ptr noundef nonnull %0, ptr noundef %.5269, ptr noundef nonnull @.str.23) #11 ; 0 uses
  %i.lo = load ptr, ptr %0, align 8, !tbaa !23
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !29
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %.5269, i64 %i.lq ; 2 uses
  %i.ls = icmp ult ptr %i.lr, %i.lk
  br i1 %i.ls, label %.lr.ph271, label %._crit_edge272

._crit_edge272:                                   ; preds = %.lr.ph271, %bb.aj
  ret i32 undef
}

declare ptr @set_clear(...) local_unnamed_addr #3

declare ptr @set_or(...) local_unnamed_addr #3

declare i32 @setp_implies(...) local_unnamed_addr #3

declare ptr @sf_addset(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @setp_disjoint(...) local_unnamed_addr #3

declare ptr @unravel_range(...) local_unnamed_addr #3

declare ptr @set_diff(...) local_unnamed_addr #3

declare i32 @kiss_print_cube(...) local_unnamed_addr #3

declare ptr @espresso(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }

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
!8 = !{!9, !15, i64 56}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !17, i64 64, !17, i64 72}
!10 = !{!"p1 _ZTS10set_family", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"p1 _ZTS11pair_struct", !11, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 _ZTS15symbolic_struct", !11, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !21, i64 72, !21, i64 80, !13, i64 88, !13, i64 96, !5, i64 104, !5, i64 108, !13, i64 112, !5, i64 120, !5, i64 124}
!21 = !{!"p2 int", !16, i64 0}
!22 = !{!20, !13, i64 88}
!23 = !{!9, !10, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!9, !10, i64 8}
!26 = !{!27, !13, i64 24}
!27 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !10, i64 32}
!28 = !{!27, !5, i64 12}
!29 = !{!27, !5, i64 0}
!30 = !{!20, !5, i64 0}
!31 = !{!20, !5, i64 4}
!32 = !{!20, !13, i64 32}
!33 = !{!9, !10, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS20symbolic_list_struct", !11, i64 0}
!37 = !{!38, !5, i64 4}
!38 = !{!"symbolic_list_struct", !5, i64 0, !5, i64 4, !36, i64 8}
!39 = !{!20, !5, i64 124}
!40 = !{!41, !5, i64 8}
!41 = !{!"symbolic_struct", !36, i64 0, !5, i64 8, !42, i64 16, !5, i64 24, !17, i64 32}
!42 = !{!"p1 _ZTS21symbolic_label_struct", !11, i64 0}
!43 = !{!20, !13, i64 16}
!44 = !{}
!45 = !{!41, !36, i64 0}
!46 = !{!27, !5, i64 4}
!47 = !{!9, !17, i64 72}
!48 = !{!38, !36, i64 8}
!49 = !{!38, !5, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !51}
!56 = !{!9, !17, i64 64}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = !{!41, !42, i64 16}
!60 = !{!61, !12, i64 0}
!61 = !{!"symbolic_label_struct", !12, i64 0, !42, i64 8}
!62 = !{!61, !42, i64 8}
!63 = !{!41, !17, i64 32}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
end_hunk_2
