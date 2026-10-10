Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/operators.ompif?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@residual_and_restriction:bb.a
  %min.iters.check258 = icmp ult i32 %i.y, 8
  %i.oq = trunc nsw i64 %i.op to i32
  %i.or = icmp ugt i64 %i.op, 4294967295
  %n.vec260 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n265 = icmp eq i64 %n.vec260, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge206.split
  %.0193207 = phi i32 [ %i.qb, %._crit_edge206.split ], [ 0, %.preheader198.preheader ] ; 2 uses
  %i.os = lshr exact i32 %.0193207, 1
  %i.ot = mul nsw i32 %i.os, %i.u
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader198, %..preheader196_crit_edge
  %.0192205 = phi i32 [ 0, %.preheader198 ], [ %i.pm, %..preheader196_crit_edge ] ; 2 uses
  %i.ou = lshr exact i32 %.0192205, 1
  %i.ov = mul nsw i32 %i.ou, %i.s
  %i.ow = add i32 %i.ov, %i.ot                    ; 8 uses
  br i1 %min.iters.check258, label %scalar.ph257.preheader, label %vector.scevcheck256

vector.scevcheck256:                              ; preds = %.preheader197
  %i.ox = add i32 %i.ow, %i.oq
  %i.oy = icmp slt i32 %i.ox, %i.ow
  %i.oz = or i1 %i.oy, %i.or
  br i1 %i.oz, label %scalar.ph257.preheader, label %vector.body261

vector.body261:                                   ; preds = %vector.scevcheck256, %vector.body261
  %index262 = phi i64 [ %index.next263, %vector.body261 ], [ 0, %vector.scevcheck256 ] ; 2 uses
  %i.pa = trunc nuw nsw i64 %index262 to i32
  %i.pb = add i32 %i.ow, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <2 x double> zeroinitializer, ptr %i.pd, align 8, !tbaa !28
  store <2 x double> zeroinitializer, ptr %i.pe, align 8, !tbaa !28
  %index.next263 = add nuw i64 %index262, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next263, %n.vec260
  br i1 %i.pf, label %middle.block264, label %vector.body261, !llvm.loop !199

middle.block264:                                  ; preds = %vector.body261
  br i1 %cmp.n265, label %..preheader196_crit_edge, label %scalar.ph257.preheader

scalar.ph257.preheader:                           ; preds = %vector.scevcheck256, %.preheader197, %middle.block264
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck256 ], [ 0, %.preheader197 ], [ %n.vec260, %middle.block264 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph257.prol.loopexit, label %scalar.ph257.prol

scalar.ph257.prol:                                ; preds = %scalar.ph257.preheader, %scalar.ph257.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph257.prol ], [ %indvars.iv.ph, %scalar.ph257.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph257.prol ], [ 0, %scalar.ph257.preheader ]
  %i.pg = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ph = add i32 %i.ow, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pi
  store double 0.000000e+00, ptr %i.pj, align 8, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph257.prol.loopexit, label %scalar.ph257.prol, !llvm.loop !200

scalar.ph257.prol.loopexit:                       ; preds = %scalar.ph257.prol, %scalar.ph257.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph257.preheader ], [ %indvars.iv.next.prol, %scalar.ph257.prol ]
  %i.pk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.pl = icmp ugt i64 %i.pk, -4
  br i1 %i.pl, label %..preheader196_crit_edge, label %scalar.ph257.preheader.new

scalar.ph257.preheader.new:                       ; preds = %scalar.ph257.prol.loopexit
  %invariant.op = add i32 1, %i.ow
  %invariant.op272 = add i32 2, %i.ow
  %invariant.op274 = add i32 3, %i.ow
  br label %scalar.ph257

..preheader196_crit_edge:                         ; preds = %scalar.ph257.prol.loopexit, %scalar.ph257, %middle.block264
  %i.pm = add nuw nsw i32 %.0192205, 2            ; 2 uses
  %i.pn = icmp slt i32 %i.pm, %i.ak
  br i1 %i.pn, label %.preheader197, label %._crit_edge206.split, !llvm.loop !197

scalar.ph257:                                     ; preds = %scalar.ph257, %scalar.ph257.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph257.preheader.new ], [ %indvars.iv.next.3, %scalar.ph257 ] ; 5 uses
  %i.po = trunc nuw nsw i64 %indvars.iv to i32
  %i.pp = add i32 %i.ow, %i.po
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pq
  store double 0.000000e+00, ptr %i.pr, align 8, !tbaa !28
  %i.ps = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.ps, %invariant.op
  %i.pt = sext i32 %.reass to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pt
  store double 0.000000e+00, ptr %i.pu, align 8, !tbaa !28
  %i.pv = trunc i64 %indvars.iv to i32
  %.reass273 = add i32 %i.pv, %invariant.op272
  %i.pw = sext i32 %.reass273 to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pw
  store double 0.000000e+00, ptr %i.px, align 8, !tbaa !28
  %i.py = trunc i64 %indvars.iv to i32
  %.reass275 = add i32 %i.py, %invariant.op274
  %i.pz = sext i32 %.reass275 to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pz
  store double 0.000000e+00, ptr %i.qa, align 8, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..preheader196_crit_edge, label %scalar.ph257, !llvm.loop !201

._crit_edge206.split:                             ; preds = %..preheader196_crit_edge
  %i.qb = add nuw nsw i32 %.0193207, 2            ; 2 uses
  %i.qc = icmp slt i32 %i.qb, %i.ai
  br i1 %i.qc, label %.preheader198, label %._crit_edge.split, !llvm.loop !198

._crit_edge.split:                                ; preds = %._crit_edge206.split, %._crit_edge206.split.us.us, %.preheader198.lr.ph, %.preheader198.lr.ph.split.split, %bb.b
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count240
  br i1 %exitcond241.not, label %._crit_edge213, label %bb.b, !llvm.loop !202

._crit_edge213:                                   ; preds = %._crit_edge.split, %bb.a
  %i.qd = tail call i64 (...) @CycleTime() #10
  %i.qe = sub i64 %i.qd, %i.a
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.b ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !32
  %i.qi = add i64 %i.qe, %i.qh
  store i64 %i.qi, ptr %i.qg, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @restriction(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.._crit_edge111_crit_edge

.._crit_edge111_crit_edge:                        ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge111

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = sext i32 %3 to i64
  %i.i = sext i32 %2 to i64
  %wide.trip.count119 = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge107.split
  %indvars.iv116 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next117, %._crit_edge107.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.f, i64 %indvars.iv116
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr [216 x i8], ptr %i.l, i64 %i.g ; 11 uses
  %i.n = getelementptr i8, ptr %i.m, i64 260
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %i.p = getelementptr i8, ptr %i.m, i64 264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34   ; 3 uses
  %i.r = getelementptr i8, ptr %i.m, i64 268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 236
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39   ; 3 uses
  %i.v = getelementptr i8, ptr %i.m, i64 240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !7
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35 ; 21 uses
  %i.af = load i32, ptr %i.ab, align 8, !tbaa !34 ; 14 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.h
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 17 uses
  %i.ak = add i32 %i.af, 1                        ; 2 uses
  %i.al = add i32 %i.ak, %i.ae                    ; 3 uses
  %i.am = mul i32 %i.al, %i.aa
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.an ; 24 uses
  %i.ap = getelementptr i8, ptr %i.m, i64 392
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 3 uses
  %i.at = add i32 %i.q, 1
  %i.au = add i32 %i.at, %i.s
  %i.av = mul i32 %i.au, %i.o
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw ; 2 uses
  %i.ay = icmp sgt i32 %i.y, 0
  br i1 %i.ay, label %.preheader102.lr.ph, label %._crit_edge107.split

.preheader102.lr.ph:                              ; preds = %bb.b
  %i.az = icmp slt i32 %i.w, 1
  %i.ba = icmp slt i32 %i.u, 1
  %brmerge = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %brmerge, label %._crit_edge107.split, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.preheader102.lr.ph
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 5 uses
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bc = shl i32 %i.ae, 1
  %i.bd = shl i32 %i.af, 1
  %i.be = add i32 %i.af, 1
  %i.bf = add i32 %i.ae, 1
  %i.bg = add i32 %i.af, %i.ae
  %i.bh = shl nsw i64 %i.aw, 3
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.bh
  %i.bi = add nsw i64 %i.aw, %wide.trip.count
  %i.bj = shl nsw i64 %i.bi, 3
  %scevgep128 = getelementptr i8, ptr %i.as, i64 %i.bj
  %i.bk = shl nsw i64 %i.an, 3                    ; 9 uses
  %scevgep130 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %i.bl = shl i32 %i.ae, 1
  %i.bm = shl i32 %i.af, 1
  %scevgep132 = getelementptr i8, ptr %i.aj, i64 -8
  %i.bn = shl nuw nsw i64 %wide.trip.count, 4
  %i.bo = add nsw i64 %i.bn, %i.bk                ; 8 uses
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %i.bo
  %scevgep135 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %i.bp = add i32 %i.af, %i.ae
  %scevgep137 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.bo
  %scevgep140 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %i.bq = add i32 %i.ae, 1
  %scevgep142 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.bo
  %scevgep145 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %scevgep147 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.bo
  %scevgep150 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %scevgep152 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.bo
  %scevgep155 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %scevgep157 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.bo
  %scevgep160 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %scevgep162 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.bo
  %scevgep165 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %scevgep167 = getelementptr i8, ptr %i.aj, i64 -8
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.bo
  %i.br = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.bs = insertelement <4 x i32> %i.br, i32 1, i64 0
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.be, i64 2 ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 17
  %i.bu = trunc nsw i64 %i.bb to i32
  %i.bv = trunc nsw i64 %i.bb to i32
  %i.bw = icmp ugt i64 %i.bb, 4294967295
  %mul.result = shl i32 %i.bv, 1                  ; 5 uses
  %i.bx = insertelement <4 x i32> poison, i32 %mul.result, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %4, -2                         ; 2 uses
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge105
  %.0106 = phi i32 [ %i.kd, %._crit_edge105 ], [ 0, %.preheader102.preheader ] ; 5 uses
  %i.bz = mul i32 %i.bl, %.0106                   ; 8 uses
  %i.ca = add i32 %i.al, %i.bz
  %i.cb = add i32 %i.bp, %i.bz
  %i.cc = add i32 %i.bq, %i.bz
  %i.cd = add i32 %i.ae, %i.bz
  %i.ce = add i32 %i.ak, %i.bz
  %i.cf = add i32 %i.af, %i.bz
  %i.cg = or disjoint i32 %i.bz, 1
  %i.ch = mul i32 %i.bc, %.0106                   ; 5 uses
  %i.ci = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ck = or disjoint <4 x i32> %i.bt, %i.cj
  %i.cl = add <4 x i32> %i.bt, %i.cj
  %i.cm = shufflevector <4 x i32> %i.ck, <4 x i32> %i.cl, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.cn = add i32 %i.bf, %i.ch
  %i.co = add i32 %i.bg, %i.ch
  %i.cp = add i32 %i.al, %i.ch
  %i.cq = mul i32 %.0106, %i.s                    ; 2 uses
  %i.cr = mul i32 %.0106, %i.ae
  %invariant.op = add <4 x i32> %i.cm, %i.by
  br label %.preheader

.preheader:                                       ; preds = %.preheader102, %._crit_edge
  %.098104 = phi i32 [ 0, %.preheader102 ], [ %i.kc, %._crit_edge ] ; 6 uses
  %i.cs = mul i32 %i.q, %.098104
  %i.ct = add i32 %i.cq, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 3                    ; 2 uses
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.cv ; 8 uses
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.cv ; 8 uses
  %i.cw = mul i32 %i.bm, %.098104                 ; 8 uses
  %i.cx = add i32 %i.ca, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.cz
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.cz
  %i.da = add i32 %i.cb, %i.cw
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 3                    ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.dc
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.dc
  %i.dd = add i32 %i.cc, %i.cw
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3                    ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.df
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.df
  %i.dg = add i32 %i.cd, %i.cw
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3                    ; 2 uses
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.di
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.di
  %i.dj = add i32 %i.ce, %i.cw
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 3                    ; 2 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.dl
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.dl
  %i.dm = add i32 %i.cf, %i.cw
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 3                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.do
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.do
  %i.dp = add i32 %i.cg, %i.cw
  %i.dq = sext i32 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 3                    ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.dr
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.dr
  %i.ds = add i32 %i.bz, %i.cw
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.du
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.du
  %i.dv = mul i32 %.098104, %i.q
  %i.dw = add i32 %i.dv, %i.cq                    ; 4 uses
  %i.dx = mul i32 %.098104, %i.af
  %reass.add = add i32 %i.dx, %i.cr               ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.dy = add i32 %i.dw, %i.bu
  %i.dz = icmp slt i32 %i.dy, %i.dw
  %i.ea = mul i32 %i.bd, %.098104                 ; 5 uses
  %i.eb = add i32 %i.cp, %i.ea                    ; 2 uses
  %i.ec = add i32 %i.co, %i.ea                    ; 2 uses
  %i.ed = add i32 %i.cn, %i.ea                    ; 2 uses
  %i.ee = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eg = add <4 x i32> %i.cm, %i.ef
  %i.eh = add i32 %i.ch, %i.ea                    ; 2 uses
  %i.ei = add i32 %i.eh, %mul.result
  %i.ej = icmp slt i32 %i.ei, %i.eh
  %.reass = add <4 x i32> %i.ef, %invariant.op
  %i.ek = icmp slt <4 x i32> %.reass, %i.eg
  %i.el = add i32 %i.ed, %mul.result
  %i.em = icmp slt i32 %i.el, %i.ed
  %i.en = add i32 %i.ec, %mul.result
  %i.eo = icmp slt i32 %i.en, %i.ec
  %i.ep = add i32 %i.eb, %mul.result
  %i.eq = icmp slt i32 %i.ep, %i.eb
  %i.er = bitcast <4 x i1> %i.ek to i4
  %i.es = icmp ne i4 %i.er, 0
  %op.rdx = or i1 %i.es, %i.ej
  %op.rdx197 = or i1 %i.dz, %i.em
  %op.rdx198 = or i1 %i.eo, %i.eq
  %op.rdx199 = or i1 %op.rdx, %op.rdx197
  %op.rdx200 = or i1 %op.rdx198, %i.bw
  %op.rdx201 = or i1 %op.rdx199, %op.rdx200
  br i1 %op.rdx201, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep127, %scevgep134
  %bound1 = icmp ult ptr %scevgep131, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %bound0170 = icmp ult ptr %scevgep127, %scevgep139
  %bound1171 = icmp ult ptr %scevgep136, %scevgep129
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx = or i1 %found.conflict, %found.conflict172
  %bound0173 = icmp ult ptr %scevgep127, %scevgep144
  %bound1174 = icmp ult ptr %scevgep141, %scevgep129
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx, %found.conflict175
  %bound0177 = icmp ult ptr %scevgep127, %scevgep149
  %bound1178 = icmp ult ptr %scevgep146, %scevgep129
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep127, %scevgep154
  %bound1182 = icmp ult ptr %scevgep151, %scevgep129
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep127, %scevgep159
  %bound1186 = icmp ult ptr %scevgep156, %scevgep129
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %scevgep127, %scevgep164
  %bound1190 = icmp ult ptr %scevgep161, %scevgep129
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %scevgep127, %scevgep169
  %bound1194 = icmp ult ptr %scevgep166, %scevgep129
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  br i1 %conflict.rdx196, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.et = trunc i64 %index to i32                 ; 3 uses
  %i.eu = or disjoint i32 %i.et, 1
  %i.ev = add i32 %i.dw, %i.et
  %i.ew = add i32 %reass.add, %i.et
  %i.ex = add i32 %reass.add, %i.eu
  %i.ey = shl i32 %i.ew, 1                        ; 4 uses
  %i.ez = shl i32 %i.ex, 1                        ; 4 uses
  %i.fa = sext i32 %i.ey to i64
  %i.fb = sext i32 %i.ez to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fa
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fb
  %i.fe = load double, ptr %i.fc, align 8, !tbaa !28, !alias.scope !218
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !28, !alias.scope !218
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ff, i64 1
  %i.fi = or disjoint i32 %i.ey, 1                ; 3 uses
  %i.fj = or disjoint i32 %i.ez, 1                ; 3 uses
  %i.fk = sext i32 %i.fi to i64
  %i.fl = sext i32 %i.fj to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fk
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fl
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !28, !alias.scope !219
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !28, !alias.scope !219
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1
  %i.fs = fadd <2 x double> %i.fh, %i.fr
  %i.ft = add nsw i32 %i.ey, %i.af                ; 2 uses
  %i.fu = add nsw i32 %i.ez, %i.af                ; 2 uses
  %i.fv = sext i32 %i.ft to i64
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fv
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fw
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !28, !alias.scope !220
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !28, !alias.scope !220
  %i.gb = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.ga, i64 1
  %i.gd = fadd <2 x double> %i.fs, %i.gc
  %i.ge = add nsw i32 %i.fi, %i.af                ; 2 uses
  %i.gf = add nsw i32 %i.fj, %i.af                ; 2 uses
  %i.gg = sext i32 %i.ge to i64
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gg
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gh
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !28, !alias.scope !221
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !28, !alias.scope !221
  %i.gm = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fadd <2 x double> %i.gd, %i.gn
  %i.gp = add nsw i32 %i.ey, %i.ae
  %i.gq = add nsw i32 %i.ez, %i.ae
  %i.gr = sext i32 %i.gp to i64
  %i.gs = sext i32 %i.gq to i64
end_hunk_0
begin_hunk_1_@restriction:bb.a
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hc
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hd
  %i.hg = load double, ptr %i.he, align 8, !tbaa !28, !alias.scope !223
  %i.hh = load double, ptr %i.hf, align 8, !tbaa !28, !alias.scope !223
  %i.hi = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hh, i64 1
  %i.hk = fadd <2 x double> %i.gz, %i.hj
  %i.hl = add nsw i32 %i.ft, %i.ae
  %i.hm = add nsw i32 %i.fu, %i.ae
  %i.hn = sext i32 %i.hl to i64
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hn
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ho
  %i.hr = load double, ptr %i.hp, align 8, !tbaa !28, !alias.scope !224
  %i.hs = load double, ptr %i.hq, align 8, !tbaa !28, !alias.scope !224
  %i.ht = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = fadd <2 x double> %i.hk, %i.hu
  %i.hw = add nsw i32 %i.ge, %i.ae
  %i.hx = add nsw i32 %i.gf, %i.ae
  %i.hy = sext i32 %i.hw to i64
  %i.hz = sext i32 %i.hx to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hy
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hz
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !28, !alias.scope !225
  %i.id = load double, ptr %i.ib, align 8, !tbaa !28, !alias.scope !225
  %i.ie = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.id, i64 1
  %i.ig = fadd <2 x double> %i.hv, %i.if
  %i.ih = fmul <2 x double> %i.ig, splat (double 1.250000e-01)
  %i.ii = sext i32 %i.ev to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ii
  store <2 x double> %i.ih, ptr %i.ij, align 8, !tbaa !28, !alias.scope !226, !noalias !227
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %scalar.ph.preheader, label %vector.body, !llvm.loop !213

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.im = add i32 %i.dw, %i.il
  %reass.add101 = add i32 %reass.add, %i.il
  %reass.mul = shl i32 %reass.add101, 1           ; 4 uses
  %i.in = sext i32 %reass.mul to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !28
  %i.iq = or disjoint i32 %reass.mul, 1           ; 3 uses
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !28
  %i.iu = fadd double %i.ip, %i.it
  %i.iv = add nsw i32 %reass.mul, %i.af           ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !28
  %i.iz = fadd double %i.iu, %i.iy
  %i.ja = add nsw i32 %i.iq, %i.af                ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !28
  %i.je = fadd double %i.iz, %i.jd
  %i.jf = add nsw i32 %reass.mul, %i.ae
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !28
  %i.jj = fadd double %i.je, %i.ji
  %i.jk = add nsw i32 %i.iq, %i.ae
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !28
  %i.jo = fadd double %i.jj, %i.jn
  %i.jp = add nsw i32 %i.iv, %i.ae
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !28
  %i.jt = fadd double %i.jo, %i.js
  %i.ju = add nsw i32 %i.ja, %i.ae
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !28
  %i.jy = fadd double %i.jt, %i.jx
  %i.jz = fmul double %i.jy, 1.250000e-01
  %i.ka = sext i32 %i.im to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ka
  store double %i.jz, ptr %i.kb, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !214

._crit_edge:                                      ; preds = %scalar.ph
  %i.kc = add nuw nsw i32 %.098104, 1             ; 2 uses
  %exitcond114.not = icmp eq i32 %i.kc, %i.w
  br i1 %exitcond114.not, label %._crit_edge105, label %.preheader, !llvm.loop !215

._crit_edge105:                                   ; preds = %._crit_edge
  %i.kd = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond115.not = icmp eq i32 %i.kd, %i.y
  br i1 %exitcond115.not, label %._crit_edge107.split, label %.preheader102, !llvm.loop !216

._crit_edge107.split:                             ; preds = %._crit_edge105, %.preheader102.lr.ph, %bb.b
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge111, label %bb.b, !llvm.loop !217

._crit_edge111:                                   ; preds = %._crit_edge107.split, %.._crit_edge111_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge111_crit_edge ], [ %i.g, %._crit_edge107.split ]
  %i.ke = tail call i64 (...) @CycleTime() #10
  %i.kf = sub i64 %i.ke, %i.a
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %.pre-phi ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !32
  %i.kj = add i64 %i.kf, %i.ki
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @restriction_betas(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.._crit_edge223_crit_edge

.._crit_edge223_crit_edge:                        ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge223

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count251 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge219.split
  %indvars.iv248 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next249, %._crit_edge219.split ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv248
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.b ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39   ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !38   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.h ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !34 ; 27 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35 ; 30 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 9 uses
  %i.aj = mul i32 %i.ae, %i.aa
  %i.ak = sext i32 %i.aj to i64                   ; 6 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = mul i32 %i.ac, %i.aa
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = sext i32 %i.aa to i64                   ; 6 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27 ; 3 uses
  %i.av = mul i32 %i.r, %i.n
  %i.aw = sext i32 %i.av to i64                   ; 6 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = mul i32 %i.p, %i.n
  %i.az = sext i32 %i.ay to i64                   ; 6 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = sext i32 %i.n to i64                    ; 6 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %i.x, 0
  br i1 %i.bd, label %.preheader200.lr.ph, label %._crit_edge219.split

.preheader200.lr.ph:                              ; preds = %bb.b
  %i.be = icmp slt i32 %i.v, 1
  %i.bf = icmp slt i32 %i.t, 1
  %brmerge = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %brmerge, label %.preheader199.lr.ph, label %.preheader200.preheader

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 5 uses
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bh = shl i32 %i.ae, 1
  %i.bi = shl i32 %i.ac, 1
  %i.bj = add i32 %i.ac, %i.ae
  %i.bk = add nsw i64 %i.bb, %i.az
  %i.bl = add nsw i64 %i.bk, %i.aw                ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep372 = getelementptr i8, ptr %i.au, i64 %i.bm
  %i.bn = add nsw i64 %i.bl, %wide.trip.count
  %i.bo = shl nsw i64 %i.bn, 3
  %scevgep374 = getelementptr i8, ptr %i.au, i64 %i.bo
  %i.bp = shl nsw i64 %i.ap, 3                    ; 2 uses
  %i.bq = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.br = add nsw i64 %i.bp, %i.bq
  %i.bs = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.bt = add nsw i64 %i.br, %i.bs                ; 4 uses
  %scevgep376 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %i.bu = add i32 %i.ac, %i.ae
  %i.bv = shl i32 %i.ae, 1
  %i.bw = shl i32 %i.ac, 1
  %scevgep378 = getelementptr i8, ptr %i.ai, i64 -8
  %i.bx = shl nuw nsw i64 %wide.trip.count, 4
  %i.by = add nsw i64 %i.bx, %i.bp
  %i.bz = add nsw i64 %i.by, %i.bq
  %i.ca = add nsw i64 %i.bz, %i.bs                ; 4 uses
  %scevgep379 = getelementptr i8, ptr %scevgep378, i64 %i.ca
  %scevgep381 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep383 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep384 = getelementptr i8, ptr %scevgep383, i64 %i.ca
  %scevgep386 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep388 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep389 = getelementptr i8, ptr %scevgep388, i64 %i.ca
  %scevgep391 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep393 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.ca
  %min.iters.check412 = icmp ult i32 %i.t, 17
  %i.cb = trunc nsw i64 %i.bg to i32
  %i.cc = trunc nsw i64 %i.bg to i32
  %mul.result369 = shl i32 %i.cc, 1               ; 4 uses
  %i.cd = icmp ugt i64 %i.bg, 4294967295
  %3 = add nsw i64 %wide.trip.count, -1
  %n.vec414 = and i64 %3, -2                      ; 2 uses
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge203
  %.0182204 = phi i32 [ %i.ha, %._crit_edge203 ], [ 0, %.preheader200.preheader ] ; 5 uses
  %i.ce = mul i32 %i.bv, %.0182204                ; 4 uses
  %i.cf = add i32 %i.bu, %i.ce
  %i.cg = add i32 %i.ae, %i.ce
  %i.ch = add i32 %i.ac, %i.ce
  %i.ci = mul i32 %i.bh, %.0182204                ; 4 uses
  %i.cj = add i32 %i.ac, %i.ci
  %i.ck = add i32 %i.ae, %i.ci
  %i.cl = add i32 %i.bj, %i.ci
  %i.cm = mul i32 %.0182204, %i.r                 ; 2 uses
  %i.cn = mul i32 %.0182204, %i.ae
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader200, %._crit_edge
  %.0185202 = phi i32 [ 0, %.preheader200 ], [ %i.gz, %._crit_edge ] ; 6 uses
  %i.co = mul i32 %i.p, %.0185202
  %i.cp = add i32 %i.cm, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 3                    ; 2 uses
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.cr ; 4 uses
  %scevgep375 = getelementptr i8, ptr %scevgep374, i64 %i.cr ; 4 uses
  %i.cs = mul i32 %i.bw, %.0185202                ; 4 uses
  %i.ct = add i32 %i.cf, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 3                    ; 2 uses
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.cv
  %scevgep380 = getelementptr i8, ptr %scevgep379, i64 %i.cv
  %i.cw = add i32 %i.cg, %i.cs
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 3                    ; 2 uses
  %scevgep382 = getelementptr i8, ptr %scevgep381, i64 %i.cy
  %scevgep385 = getelementptr i8, ptr %scevgep384, i64 %i.cy
  %i.cz = add i32 %i.ch, %i.cs
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3                    ; 2 uses
  %scevgep387 = getelementptr i8, ptr %scevgep386, i64 %i.db
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.db
  %i.dc = add i32 %i.ce, %i.cs
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3                    ; 2 uses
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.de
  %scevgep395 = getelementptr i8, ptr %scevgep394, i64 %i.de
  %i.df = mul nsw i32 %.0185202, %i.p
  %i.dg = add i32 %i.df, %i.cm                    ; 4 uses
  %i.dh = mul i32 %.0185202, %i.ac
  %reass.add193 = add i32 %i.dh, %i.cn            ; 3 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.scevcheck367

vector.scevcheck367:                              ; preds = %.preheader197
  %i.di = mul i32 %i.bi, %.0185202                ; 4 uses
  %i.dj = add i32 %i.cl, %i.di                    ; 2 uses
  %i.dk = add i32 %i.ck, %i.di                    ; 2 uses
  %i.dl = add i32 %i.cj, %i.di                    ; 2 uses
  %i.dm = add i32 %i.ci, %i.di                    ; 2 uses
  %i.dn = add i32 %i.dg, %i.cb
  %i.do = icmp slt i32 %i.dn, %i.dg
  %i.dp = add i32 %i.dm, %mul.result369
  %i.dq = icmp slt i32 %i.dp, %i.dm
  %i.dr = or i1 %i.dq, %i.cd
  %i.ds = add i32 %i.dl, %mul.result369
  %i.dt = icmp slt i32 %i.ds, %i.dl
  %i.du = add i32 %i.dk, %mul.result369
  %i.dv = icmp slt i32 %i.du, %i.dk
  %i.dw = add i32 %i.dj, %mul.result369
  %i.dx = icmp slt i32 %i.dw, %i.dj
  %i.dy = or i1 %i.do, %i.dr
  %i.dz = or i1 %i.dt, %i.dy
  %i.ea = or i1 %i.dv, %i.dz
  %i.eb = or i1 %i.dx, %i.ea
  br i1 %i.eb, label %scalar.ph411.preheader, label %vector.memcheck371

vector.memcheck371:                               ; preds = %vector.scevcheck367
  %bound0396 = icmp ult ptr %scevgep373, %scevgep380
  %bound1397 = icmp ult ptr %scevgep377, %scevgep375
  %found.conflict398 = and i1 %bound0396, %bound1397
  %bound0399 = icmp ult ptr %scevgep373, %scevgep385
  %bound1400 = icmp ult ptr %scevgep382, %scevgep375
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %found.conflict398, %found.conflict401
  %bound0403 = icmp ult ptr %scevgep373, %scevgep390
  %bound1404 = icmp ult ptr %scevgep387, %scevgep375
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %scevgep373, %scevgep395
  %bound1408 = icmp ult ptr %scevgep392, %scevgep375
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  br i1 %conflict.rdx410, label %scalar.ph411.preheader, label %vector.body415

vector.body415:                                   ; preds = %vector.memcheck371, %vector.body415
  %index416 = phi i64 [ %index.next417, %vector.body415 ], [ 0, %vector.memcheck371 ] ; 2 uses
  %i.ec = trunc i64 %index416 to i32              ; 3 uses
  %i.ed = or disjoint i32 %i.ec, 1
  %i.ee = add i32 %i.dg, %i.ec
  %i.ef = add i32 %reass.add193, %i.ec
  %i.eg = add i32 %reass.add193, %i.ed
  %i.eh = shl i32 %i.ef, 1                        ; 3 uses
  %i.ei = shl i32 %i.eg, 1                        ; 3 uses
  %i.ej = sext i32 %i.eh to i64
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ej
  %i.em = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ek
  %i.en = load double, ptr %i.el, align 8, !tbaa !28, !alias.scope !259
  %i.eo = load double, ptr %i.em, align 8, !tbaa !28, !alias.scope !259
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eo, i64 1
  %i.er = add nsw i32 %i.eh, %i.ac                ; 2 uses
  %i.es = add nsw i32 %i.ei, %i.ac                ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.et
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eu
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !28, !alias.scope !260
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !28, !alias.scope !260
  %i.ez = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ey, i64 1
  %i.fb = fadd <2 x double> %i.eq, %i.fa
  %i.fc = add nsw i32 %i.eh, %i.ae
  %i.fd = add nsw i32 %i.ei, %i.ae
  %i.fe = sext i32 %i.fc to i64
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.fe
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ff
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !28, !alias.scope !261
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !28, !alias.scope !261
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1
  %i.fm = fadd <2 x double> %i.fb, %i.fl
  %i.fn = add nsw i32 %i.er, %i.ae
  %i.fo = add nsw i32 %i.es, %i.ae
  %i.fp = sext i32 %i.fn to i64
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.fp
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.fq
  %i.ft = load double, ptr %i.fr, align 8, !tbaa !28, !alias.scope !262
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !28, !alias.scope !262
  %i.fv = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1
  %i.fx = fadd <2 x double> %i.fm, %i.fw
  %i.fy = fmul <2 x double> %i.fx, splat (double 2.500000e-01)
  %i.fz = sext i32 %i.ee to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.fz
  store <2 x double> %i.fy, ptr %i.ga, align 8, !tbaa !28, !alias.scope !263, !noalias !264
  %index.next417 = add nuw i64 %index416, 2       ; 2 uses
  %i.gb = icmp eq i64 %index.next417, %n.vec414
  br i1 %i.gb, label %scalar.ph411.preheader, label %vector.body415, !llvm.loop !234

scalar.ph411.preheader:                           ; preds = %vector.body415, %vector.memcheck371, %vector.scevcheck367, %.preheader197
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck371 ], [ 0, %vector.scevcheck367 ], [ 0, %.preheader197 ], [ %n.vec414, %vector.body415 ]
  br label %scalar.ph411

scalar.ph411:                                     ; preds = %scalar.ph411.preheader, %scalar.ph411
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph411 ], [ %indvars.iv.ph, %scalar.ph411.preheader ] ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.gd = add i32 %i.dg, %i.gc
  %reass.add194 = add i32 %reass.add193, %i.gc
  %reass.mul195 = shl i32 %reass.add194, 1        ; 3 uses
  %i.ge = sext i32 %reass.mul195 to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !28
  %i.gh = add nsw i32 %reass.mul195, %i.ac        ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !28
  %i.gl = fadd double %i.gg, %i.gk
  %i.gm = add nsw i32 %reass.mul195, %i.ae
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !28
  %i.gq = fadd double %i.gl, %i.gp
  %i.gr = add nsw i32 %i.gh, %i.ae
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !28
  %i.gv = fadd double %i.gq, %i.gu
  %i.gw = fmul double %i.gv, 2.500000e-01
  %i.gx = sext i32 %i.gd to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.gx
  store double %i.gw, ptr %i.gy, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph411, !llvm.loop !235

._crit_edge:                                      ; preds = %scalar.ph411
  %i.gz = add nuw nsw i32 %.0185202, 1            ; 2 uses
  %exitcond232.not = icmp eq i32 %i.gz, %i.v
  br i1 %exitcond232.not, label %._crit_edge203, label %.preheader197, !llvm.loop !236

._crit_edge203:                                   ; preds = %._crit_edge
  %i.ha = add nuw nsw i32 %.0182204, 1            ; 2 uses
  %exitcond233.not = icmp eq i32 %i.ha, %i.x
  br i1 %exitcond233.not, label %.preheader199.lr.ph, label %.preheader200, !llvm.loop !237

.preheader199.lr.ph:                              ; preds = %._crit_edge203, %.preheader200.lr.ph
  %.pn272.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.pn272 = load ptr, ptr %.pn272.in, align 8, !tbaa !27 ; 9 uses
  %.pn271 = getelementptr inbounds [8 x i8], ptr %.pn272, i64 %i.ak
  %.pn270 = getelementptr inbounds [8 x i8], ptr %.pn271, i64 %i.an
  %i.hb = getelementptr inbounds [8 x i8], ptr %.pn270, i64 %i.ap ; 12 uses
  %.pn269.in = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.pn269 = load ptr, ptr %.pn269.in, align 8, !tbaa !27 ; 3 uses
  %.pn268 = getelementptr inbounds [8 x i8], ptr %.pn269, i64 %i.aw
  %.pn = getelementptr inbounds [8 x i8], ptr %.pn268, i64 %i.az
  %i.hc = getelementptr inbounds [8 x i8], ptr %.pn, i64 %i.bb ; 2 uses
  %i.hd = icmp slt i32 %i.v, 1
  %i.he = icmp slt i32 %i.t, 1
  %brmerge227 = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %brmerge227, label %.preheader198.lr.ph, label %.preheader199.preheader

.preheader199.preheader:                          ; preds = %.preheader199.lr.ph
  %wide.trip.count237 = zext nneg i32 %i.t to i64 ; 5 uses
  %i.hf = add nsw i64 %wide.trip.count237, -1     ; 3 uses
  %i.hg = shl i32 %i.ae, 1
  %i.hh = shl i32 %i.ac, 1
  %i.hi = add i32 %i.ae, 1
  %i.hj = add nsw i64 %i.bb, %i.az
  %i.hk = add nsw i64 %i.hj, %i.aw                ; 2 uses
  %i.hl = shl nsw i64 %i.hk, 3
  %scevgep319 = getelementptr i8, ptr %.pn269, i64 %i.hl
  %i.hm = add nsw i64 %i.hk, %wide.trip.count237
  %i.hn = shl nsw i64 %i.hm, 3
  %scevgep321 = getelementptr i8, ptr %.pn269, i64 %i.hn
  %i.ho = shl nsw i64 %i.ap, 3                    ; 2 uses
  %i.hp = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.hq = add nsw i64 %i.ho, %i.hp
  %i.hr = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.hs = add nsw i64 %i.hq, %i.hr                ; 4 uses
  %scevgep323 = getelementptr i8, ptr %.pn272, i64 %i.hs
  %i.ht = add i32 %i.ae, 1
  %i.hu = shl i32 %i.ae, 1
  %i.hv = shl i32 %i.ac, 1
  %scevgep325 = getelementptr i8, ptr %.pn272, i64 -8
  %i.hw = shl nuw nsw i64 %wide.trip.count237, 4
  %i.hx = add nsw i64 %i.hw, %i.ho
  %i.hy = add nsw i64 %i.hx, %i.hp
  %i.hz = add nsw i64 %i.hy, %i.hr                ; 4 uses
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.hz
  %scevgep328 = getelementptr i8, ptr %.pn272, i64 %i.hs
  %scevgep330 = getelementptr i8, ptr %.pn272, i64 -8
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.hz
  %scevgep333 = getelementptr i8, ptr %.pn272, i64 %i.hs
  %scevgep335 = getelementptr i8, ptr %.pn272, i64 -8
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.hz
  %scevgep338 = getelementptr i8, ptr %.pn272, i64 %i.hs
  %scevgep340 = getelementptr i8, ptr %.pn272, i64 -8
  %scevgep341 = getelementptr i8, ptr %scevgep340, i64 %i.hz
  %min.iters.check359 = icmp ult i32 %i.t, 17
  %i.ia = trunc nsw i64 %i.hf to i32
  %i.ib = trunc nsw i64 %i.hf to i32
  %mul.result316 = shl i32 %i.ib, 1               ; 4 uses
  %i.ic = icmp ugt i64 %i.hf, 4294967295
  %4 = add nsw i64 %wide.trip.count237, -1
  %n.vec361 = and i64 %4, -2                      ; 2 uses
  br label %.preheader199

.preheader199:                                    ; preds = %.preheader199.preheader, %._crit_edge210
  %.1183211 = phi i32 [ %i.mz, %._crit_edge210 ], [ 0, %.preheader199.preheader ] ; 5 uses
  %i.id = mul i32 %i.hu, %.1183211                ; 4 uses
  %i.ie = add i32 %i.ht, %i.id
  %i.if = add i32 %i.ae, %i.id
  %i.ig = or disjoint i32 %i.id, 1
  %i.ih = mul i32 %i.hg, %.1183211                ; 4 uses
  %i.ii = or disjoint i32 %i.ih, 1
  %i.ij = add i32 %i.ae, %i.ih
  %i.ik = add i32 %i.hi, %i.ih
  %i.il = mul i32 %.1183211, %i.r                 ; 2 uses
  %i.im = mul i32 %.1183211, %i.ae
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader199, %._crit_edge208
  %.1186209 = phi i32 [ 0, %.preheader199 ], [ %i.my, %._crit_edge208 ] ; 6 uses
  %i.in = mul i32 %i.p, %.1186209
  %i.io = add i32 %i.il, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3                    ; 2 uses
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.iq ; 4 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.iq ; 4 uses
  %i.ir = mul i32 %i.hv, %.1186209                ; 4 uses
  %i.is = add i32 %i.ie, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = shl nsw i64 %i.it, 3                    ; 2 uses
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.iu
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.iu
  %i.iv = add i32 %i.if, %i.ir
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.ix
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.ix
  %i.iy = add i32 %i.ig, %i.ir
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i64 %i.iz, 3                    ; 2 uses
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.ja
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.ja
  %i.jb = add i32 %i.id, %i.ir
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.jd
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.jd
  %i.je = mul nsw i32 %.1186209, %i.p
  %i.jf = add i32 %i.je, %i.il                    ; 4 uses
  %i.jg = mul i32 %.1186209, %i.ac
  %reass.add190 = add i32 %i.jg, %i.im            ; 3 uses
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.scevcheck314

vector.scevcheck314:                              ; preds = %.preheader196
  %i.jh = mul i32 %i.hh, %.1186209                ; 4 uses
  %i.ji = add i32 %i.ik, %i.jh                    ; 2 uses
  %i.jj = add i32 %i.ij, %i.jh                    ; 2 uses
  %i.jk = add i32 %i.ii, %i.jh                    ; 2 uses
  %i.jl = add i32 %i.ih, %i.jh                    ; 2 uses
  %i.jm = add i32 %i.jf, %i.ia
  %i.jn = icmp slt i32 %i.jm, %i.jf
  %i.jo = add i32 %i.jl, %mul.result316
  %i.jp = icmp slt i32 %i.jo, %i.jl
  %i.jq = or i1 %i.jp, %i.ic
  %i.jr = add i32 %i.jk, %mul.result316
  %i.js = icmp slt i32 %i.jr, %i.jk
  %i.jt = add i32 %i.jj, %mul.result316
  %i.ju = icmp slt i32 %i.jt, %i.jj
  %i.jv = add i32 %i.ji, %mul.result316
  %i.jw = icmp slt i32 %i.jv, %i.ji
  %i.jx = or i1 %i.jn, %i.jq
  %i.jy = or i1 %i.js, %i.jx
  %i.jz = or i1 %i.ju, %i.jy
  %i.ka = or i1 %i.jw, %i.jz
  br i1 %i.ka, label %scalar.ph358.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %vector.scevcheck314
  %bound0343 = icmp ult ptr %scevgep320, %scevgep327
  %bound1344 = icmp ult ptr %scevgep324, %scevgep322
  %found.conflict345 = and i1 %bound0343, %bound1344
  %bound0346 = icmp ult ptr %scevgep320, %scevgep332
  %bound1347 = icmp ult ptr %scevgep329, %scevgep322
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %found.conflict345, %found.conflict348
  %bound0350 = icmp ult ptr %scevgep320, %scevgep337
  %bound1351 = icmp ult ptr %scevgep334, %scevgep322
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %scevgep320, %scevgep342
  %bound1355 = icmp ult ptr %scevgep339, %scevgep322
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  br i1 %conflict.rdx357, label %scalar.ph358.preheader, label %vector.body362

vector.body362:                                   ; preds = %vector.memcheck318, %vector.body362
  %index363 = phi i64 [ %index.next364, %vector.body362 ], [ 0, %vector.memcheck318 ] ; 2 uses
  %i.kb = trunc i64 %index363 to i32              ; 3 uses
  %i.kc = or disjoint i32 %i.kb, 1
  %i.kd = add i32 %i.jf, %i.kb
  %i.ke = add i32 %reass.add190, %i.kb
  %i.kf = add i32 %reass.add190, %i.kc
  %i.kg = shl i32 %i.ke, 1                        ; 3 uses
  %i.kh = shl i32 %i.kf, 1                        ; 3 uses
  %i.ki = sext i32 %i.kg to i64
  %i.kj = sext i32 %i.kh to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ki
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kj
  %i.km = load double, ptr %i.kk, align 8, !tbaa !28, !alias.scope !265
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !28, !alias.scope !265
  %i.ko = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kp = insertelement <2 x double> %i.ko, double %i.kn, i64 1
  %i.kq = or disjoint i32 %i.kg, 1                ; 2 uses
  %i.kr = or disjoint i32 %i.kh, 1                ; 2 uses
  %i.ks = sext i32 %i.kq to i64
  %i.kt = sext i32 %i.kr to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ks
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kt
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !28, !alias.scope !266
  %i.kx = load double, ptr %i.kv, align 8, !tbaa !28, !alias.scope !266
  %i.ky = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  %i.la = fadd <2 x double> %i.kp, %i.kz
  %i.lb = add nsw i32 %i.kg, %i.ae
  %i.lc = add nsw i32 %i.kh, %i.ae
  %i.ld = sext i32 %i.lb to i64
  %i.le = sext i32 %i.lc to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ld
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.le
  %i.lh = load double, ptr %i.lf, align 8, !tbaa !28, !alias.scope !267
  %i.li = load double, ptr %i.lg, align 8, !tbaa !28, !alias.scope !267
  %i.lj = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %i.li, i64 1
  %i.ll = fadd <2 x double> %i.la, %i.lk
  %i.lm = add nsw i32 %i.kq, %i.ae
  %i.ln = add nsw i32 %i.kr, %i.ae
  %i.lo = sext i32 %i.lm to i64
  %i.lp = sext i32 %i.ln to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.lo
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.lp
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !28, !alias.scope !268
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !28, !alias.scope !268
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lt, i64 1
  %i.lw = fadd <2 x double> %i.ll, %i.lv
  %i.lx = fmul <2 x double> %i.lw, splat (double 2.500000e-01)
  %i.ly = sext i32 %i.kd to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.ly
  store <2 x double> %i.lx, ptr %i.lz, align 8, !tbaa !28, !alias.scope !269, !noalias !270
  %index.next364 = add nuw i64 %index363, 2       ; 2 uses
  %i.ma = icmp eq i64 %index.next364, %n.vec361
  br i1 %i.ma, label %scalar.ph358.preheader, label %vector.body362, !llvm.loop !244

scalar.ph358.preheader:                           ; preds = %vector.body362, %vector.memcheck318, %vector.scevcheck314, %.preheader196
  %indvars.iv234.ph = phi i64 [ 0, %vector.memcheck318 ], [ 0, %vector.scevcheck314 ], [ 0, %.preheader196 ], [ %n.vec361, %vector.body362 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %scalar.ph358 ], [ %indvars.iv234.ph, %scalar.ph358.preheader ] ; 2 uses
  %i.mb = trunc nuw nsw i64 %indvars.iv234 to i32 ; 2 uses
  %i.mc = add i32 %i.jf, %i.mb
  %reass.add191 = add i32 %reass.add190, %i.mb
  %reass.mul192 = shl i32 %reass.add191, 1        ; 3 uses
  %i.md = sext i32 %reass.mul192 to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !28
  %i.mg = or disjoint i32 %reass.mul192, 1        ; 2 uses
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !28
  %i.mk = fadd double %i.mf, %i.mj
  %i.ml = add nsw i32 %reass.mul192, %i.ae
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !28
  %i.mp = fadd double %i.mk, %i.mo
  %i.mq = add nsw i32 %i.mg, %i.ae
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !28
  %i.mu = fadd double %i.mp, %i.mt
  %i.mv = fmul double %i.mu, 2.500000e-01
  %i.mw = sext i32 %i.mc to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.mw
  store double %i.mv, ptr %i.mx, align 8, !tbaa !28
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge208, label %scalar.ph358, !llvm.loop !245

._crit_edge208:                                   ; preds = %scalar.ph358
  %i.my = add nuw nsw i32 %.1186209, 1            ; 2 uses
  %exitcond239.not = icmp eq i32 %i.my, %i.v
  br i1 %exitcond239.not, label %._crit_edge210, label %.preheader196, !llvm.loop !246

._crit_edge210:                                   ; preds = %._crit_edge208
  %i.mz = add nuw nsw i32 %.1183211, 1            ; 2 uses
  %exitcond240.not = icmp eq i32 %i.mz, %i.x
  br i1 %exitcond240.not, label %.preheader198.lr.ph, label %.preheader199, !llvm.loop !247

.preheader198.lr.ph:                              ; preds = %._crit_edge210, %.preheader199.lr.ph
  %.pn278.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.pn278 = load ptr, ptr %.pn278.in, align 8, !tbaa !27 ; 9 uses
  %.pn277 = getelementptr inbounds [8 x i8], ptr %.pn278, i64 %i.ak
  %.pn276 = getelementptr inbounds [8 x i8], ptr %.pn277, i64 %i.an
  %i.na = getelementptr inbounds [8 x i8], ptr %.pn276, i64 %i.ap ; 12 uses
  %.pn275.in = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %.pn275 = load ptr, ptr %.pn275.in, align 8, !tbaa !27 ; 3 uses
  %.pn274 = getelementptr inbounds [8 x i8], ptr %.pn275, i64 %i.aw
  %.pn273 = getelementptr inbounds [8 x i8], ptr %.pn274, i64 %i.az
  %i.nb = getelementptr inbounds [8 x i8], ptr %.pn273, i64 %i.bb ; 2 uses
  %i.nc = icmp slt i32 %i.v, 1
  %i.nd = icmp slt i32 %i.t, 1
  %brmerge230 = select i1 %i.nc, i1 true, i1 %i.nd
  br i1 %brmerge230, label %._crit_edge219.split, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.preheader198.lr.ph
  %wide.trip.count244 = zext nneg i32 %i.t to i64 ; 5 uses
  %i.ne = add nsw i64 %wide.trip.count244, -1     ; 3 uses
  %i.nf = shl i32 %i.ae, 1
  %i.ng = shl i32 %i.ac, 1
  %i.nh = add i32 %i.ac, 1
  %i.ni = add nsw i64 %i.bb, %i.az
  %i.nj = add nsw i64 %i.ni, %i.aw                ; 2 uses
  %i.nk = shl nsw i64 %i.nj, 3
  %scevgep = getelementptr i8, ptr %.pn275, i64 %i.nk
  %i.nl = add nsw i64 %i.nj, %wide.trip.count244
  %i.nm = shl nsw i64 %i.nl, 3
  %scevgep281 = getelementptr i8, ptr %.pn275, i64 %i.nm
  %i.nn = shl nsw i64 %i.ap, 3                    ; 2 uses
  %i.no = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.np = add nsw i64 %i.nn, %i.no
  %i.nq = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.nr = add nsw i64 %i.np, %i.nq                ; 4 uses
  %scevgep283 = getelementptr i8, ptr %.pn278, i64 %i.nr
  %i.ns = add i32 %i.ac, 1
  %i.nt = shl i32 %i.ae, 1
  %i.nu = shl i32 %i.ac, 1
  %scevgep285 = getelementptr i8, ptr %.pn278, i64 -8
  %i.nv = shl nuw nsw i64 %wide.trip.count244, 4
  %i.nw = add nsw i64 %i.nv, %i.nn
  %i.nx = add nsw i64 %i.nw, %i.no
  %i.ny = add nsw i64 %i.nx, %i.nq                ; 4 uses
  %scevgep286 = getelementptr i8, ptr %scevgep285, i64 %i.ny
  %scevgep288 = getelementptr i8, ptr %.pn278, i64 %i.nr
  %scevgep290 = getelementptr i8, ptr %.pn278, i64 -8
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.ny
  %scevgep293 = getelementptr i8, ptr %.pn278, i64 %i.nr
  %scevgep295 = getelementptr i8, ptr %.pn278, i64 -8
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.ny
  %scevgep298 = getelementptr i8, ptr %.pn278, i64 %i.nr
  %scevgep300 = getelementptr i8, ptr %.pn278, i64 -8
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.ny
  %min.iters.check = icmp ult i32 %i.t, 17
  %i.nz = trunc nsw i64 %i.ne to i32
  %i.oa = trunc nsw i64 %i.ne to i32
  %mul.result = shl i32 %i.oa, 1                  ; 4 uses
  %i.ob = icmp ugt i64 %i.ne, 4294967295
  %5 = add nsw i64 %wide.trip.count244, -1
  %n.vec = and i64 %5, -2                         ; 2 uses
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge217
  %.2184218 = phi i32 [ %i.sy, %._crit_edge217 ], [ 0, %.preheader198.preheader ] ; 5 uses
  %i.oc = mul i32 %i.nt, %.2184218                ; 4 uses
  %i.od = add i32 %i.ns, %i.oc
  %i.oe = add i32 %i.ac, %i.oc
  %i.of = or disjoint i32 %i.oc, 1
  %i.og = mul i32 %i.nf, %.2184218                ; 4 uses
  %i.oh = or disjoint i32 %i.og, 1
  %i.oi = add i32 %i.ac, %i.og
  %i.oj = add i32 %i.nh, %i.og
  %i.ok = mul i32 %.2184218, %i.r                 ; 2 uses
  %i.ol = mul i32 %.2184218, %i.ae
  br label %.preheader

.preheader:                                       ; preds = %.preheader198, %._crit_edge215
  %.2187216 = phi i32 [ 0, %.preheader198 ], [ %i.sx, %._crit_edge215 ] ; 6 uses
  %i.om = mul i32 %i.p, %.2187216
  %i.on = add i32 %i.ok, %i.om
  %i.oo = sext i32 %i.on to i64
  %i.op = shl nsw i64 %i.oo, 3                    ; 2 uses
  %scevgep280 = getelementptr i8, ptr %scevgep, i64 %i.op ; 4 uses
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.op ; 4 uses
  %i.oq = mul i32 %i.nu, %.2187216                ; 4 uses
  %i.or = add i32 %i.od, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = shl nsw i64 %i.os, 3                    ; 2 uses
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.ot
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.ot
  %i.ou = add i32 %i.oe, %i.oq
  %i.ov = sext i32 %i.ou to i64
  %i.ow = shl nsw i64 %i.ov, 3                    ; 2 uses
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.ow
  %scevgep292 = getelementptr i8, ptr %scevgep291, i64 %i.ow
  %i.ox = add i32 %i.of, %i.oq
  %i.oy = sext i32 %i.ox to i64
  %i.oz = shl nsw i64 %i.oy, 3                    ; 2 uses
  %scevgep294 = getelementptr i8, ptr %scevgep293, i64 %i.oz
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.oz
  %i.pa = add i32 %i.oc, %i.oq
  %i.pb = sext i32 %i.pa to i64
  %i.pc = shl nsw i64 %i.pb, 3                    ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.pc
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.pc
  %i.pd = mul nsw i32 %.2187216, %i.p
  %i.pe = add i32 %i.pd, %i.ok                    ; 4 uses
  %i.pf = mul i32 %.2187216, %i.ac
  %reass.add = add i32 %i.pf, %i.ol               ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.pg = mul i32 %i.ng, %.2187216                ; 4 uses
  %i.ph = add i32 %i.oj, %i.pg                    ; 2 uses
  %i.pi = add i32 %i.oi, %i.pg                    ; 2 uses
  %i.pj = add i32 %i.oh, %i.pg                    ; 2 uses
  %i.pk = add i32 %i.og, %i.pg                    ; 2 uses
  %i.pl = add i32 %i.pe, %i.nz
  %i.pm = icmp slt i32 %i.pl, %i.pe
  %i.pn = add i32 %i.pk, %mul.result
  %i.po = icmp slt i32 %i.pn, %i.pk
  %i.pp = or i1 %i.po, %i.ob
  %i.pq = add i32 %i.pj, %mul.result
  %i.pr = icmp slt i32 %i.pq, %i.pj
  %i.ps = add i32 %i.pi, %mul.result
  %i.pt = icmp slt i32 %i.ps, %i.pi
  %i.pu = add i32 %i.ph, %mul.result
  %i.pv = icmp slt i32 %i.pu, %i.ph
  %i.pw = or i1 %i.pm, %i.pp
  %i.px = or i1 %i.pr, %i.pw
  %i.py = or i1 %i.pt, %i.px
  %i.pz = or i1 %i.pv, %i.py
  br i1 %i.pz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep280, %scevgep287
  %bound1 = icmp ult ptr %scevgep284, %scevgep282
  %found.conflict = and i1 %bound0, %bound1
  %bound0303 = icmp ult ptr %scevgep280, %scevgep292
  %bound1304 = icmp ult ptr %scevgep289, %scevgep282
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx = or i1 %found.conflict, %found.conflict305
  %bound0306 = icmp ult ptr %scevgep280, %scevgep297
  %bound1307 = icmp ult ptr %scevgep294, %scevgep282
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx, %found.conflict308
  %bound0310 = icmp ult ptr %scevgep280, %scevgep302
  %bound1311 = icmp ult ptr %scevgep299, %scevgep282
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  br i1 %conflict.rdx313, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.qa = trunc i64 %index to i32                 ; 3 uses
  %i.qb = or disjoint i32 %i.qa, 1
  %i.qc = add i32 %i.pe, %i.qa
  %i.qd = add i32 %reass.add, %i.qa
  %i.qe = add i32 %reass.add, %i.qb
  %i.qf = shl i32 %i.qd, 1                        ; 3 uses
  %i.qg = shl i32 %i.qe, 1                        ; 3 uses
  %i.qh = sext i32 %i.qf to i64
  %i.qi = sext i32 %i.qg to i64
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qh
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qi
  %i.ql = load double, ptr %i.qj, align 8, !tbaa !28, !alias.scope !271
  %i.qm = load double, ptr %i.qk, align 8, !tbaa !28, !alias.scope !271
  %i.qn = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qo = insertelement <2 x double> %i.qn, double %i.qm, i64 1
  %i.qp = or disjoint i32 %i.qf, 1                ; 2 uses
  %i.qq = or disjoint i32 %i.qg, 1                ; 2 uses
  %i.qr = sext i32 %i.qp to i64
  %i.qs = sext i32 %i.qq to i64
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qr
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qs
  %i.qv = load double, ptr %i.qt, align 8, !tbaa !28, !alias.scope !272
  %i.qw = load double, ptr %i.qu, align 8, !tbaa !28, !alias.scope !272
  %i.qx = insertelement <2 x double> poison, double %i.qv, i64 0
  %i.qy = insertelement <2 x double> %i.qx, double %i.qw, i64 1
  %i.qz = fadd <2 x double> %i.qo, %i.qy
  %i.ra = add nsw i32 %i.qf, %i.ac
  %i.rb = add nsw i32 %i.qg, %i.ac
  %i.rc = sext i32 %i.ra to i64
  %i.rd = sext i32 %i.rb to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rc
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rd
  %i.rg = load double, ptr %i.re, align 8, !tbaa !28, !alias.scope !273
  %i.rh = load double, ptr %i.rf, align 8, !tbaa !28, !alias.scope !273
  %i.ri = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.rh, i64 1
  %i.rk = fadd <2 x double> %i.qz, %i.rj
  %i.rl = add nsw i32 %i.qp, %i.ac
  %i.rm = add nsw i32 %i.qq, %i.ac
  %i.rn = sext i32 %i.rl to i64
  %i.ro = sext i32 %i.rm to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rn
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.ro
  %i.rr = load double, ptr %i.rp, align 8, !tbaa !28, !alias.scope !274
  %i.rs = load double, ptr %i.rq, align 8, !tbaa !28, !alias.scope !274
  %i.rt = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.ru = insertelement <2 x double> %i.rt, double %i.rs, i64 1
  %i.rv = fadd <2 x double> %i.rk, %i.ru
  %i.rw = fmul <2 x double> %i.rv, splat (double 2.500000e-01)
  %i.rx = sext i32 %i.qc to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.rx
  store <2 x double> %i.rw, ptr %i.ry, align 8, !tbaa !28, !alias.scope !275, !noalias !276
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.rz = icmp eq i64 %index.next, %n.vec
  br i1 %i.rz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !254

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv241.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %scalar.ph ], [ %indvars.iv241.ph, %scalar.ph.preheader ] ; 2 uses
  %i.sa = trunc nuw nsw i64 %indvars.iv241 to i32 ; 2 uses
  %i.sb = add i32 %i.pe, %i.sa
  %reass.add189 = add i32 %reass.add, %i.sa
  %reass.mul = shl i32 %reass.add189, 1           ; 3 uses
  %i.sc = sext i32 %reass.mul to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.sc
  %i.se = load double, ptr %i.sd, align 8, !tbaa !28
  %i.sf = or disjoint i32 %reass.mul, 1           ; 2 uses
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !28
  %i.sj = fadd double %i.se, %i.si
  %i.sk = add nsw i32 %reass.mul, %i.ac
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.sl
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !28
  %i.so = fadd double %i.sj, %i.sn
  %i.sp = add nsw i32 %i.sf, %i.ac
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.sq
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !28
  %i.st = fadd double %i.so, %i.ss
  %i.su = fmul double %i.st, 2.500000e-01
  %i.sv = sext i32 %i.sb to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.sv
  store double %i.su, ptr %i.sw, align 8, !tbaa !28
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %._crit_edge215, label %scalar.ph, !llvm.loop !255

._crit_edge215:                                   ; preds = %scalar.ph
  %i.sx = add nuw nsw i32 %.2187216, 1            ; 2 uses
  %exitcond246.not = icmp eq i32 %i.sx, %i.v
  br i1 %exitcond246.not, label %._crit_edge217, label %.preheader, !llvm.loop !256

._crit_edge217:                                   ; preds = %._crit_edge215
  %i.sy = add nuw nsw i32 %.2184218, 1            ; 2 uses
  %exitcond247.not = icmp eq i32 %i.sy, %i.x
  br i1 %exitcond247.not, label %._crit_edge219.split, label %.preheader198, !llvm.loop !257

._crit_edge219.split:                             ; preds = %._crit_edge217, %bb.b, %.preheader198.lr.ph
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %._crit_edge223, label %bb.b, !llvm.loop !258
end_hunk_1
