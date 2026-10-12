Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dimatcopy_k_ct?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dimatcopy_k_ct(i64 noundef %0, i64 noundef %1, double noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %2, 0.000000e+00
  br i1 %i.c, label %iter.check.preheader, label %bb.c

iter.check.preheader:                             ; preds = %bb.b
  %min.iters.check138 = icmp ugt i64 %0, 3
  %ident.check136.not = icmp eq i64 %4, 1
  %or.cond152 = and i1 %min.iters.check138, %ident.check136.not
  %min.iters.check139 = icmp ult i64 %0, 16
  %i.d = and i64 %0, 12
  %n.vec141 = and i64 %0, 9223372036854775792     ; 4 uses
  %cmp.n146 = icmp eq i64 %0, %n.vec141
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec147 = and i64 %0, 9223372036854775804     ; 3 uses
  %cmp.n150 = icmp eq i64 %0, %n.vec147
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge96
  %.07197 = phi i64 [ %i.aq, %._crit_edge96 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07197 ; 11 uses
  br i1 %or.cond152, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.body142

vector.body142:                                   ; preds = %vector.main.loop.iter.check, %vector.body142
  %index143 = phi i64 [ %index.next144, %vector.body142 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %index143 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store <4 x double> zeroinitializer, ptr %i.f, align 8, !tbaa !22
  store <4 x double> zeroinitializer, ptr %i.g, align 8, !tbaa !22
  store <4 x double> zeroinitializer, ptr %i.h, align 8, !tbaa !22
  store <4 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !22
  %index.next144 = add nuw i64 %index143, 16      ; 2 uses
  %i.j = icmp eq i64 %index.next144, %n.vec141
  br i1 %i.j, label %middle.block145, label %vector.body142, !llvm.loop !8

middle.block145:                                  ; preds = %vector.body142
  br i1 %cmp.n146, label %._crit_edge96, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block145
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec141, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.e, i64 %index148
  store <4 x double> zeroinitializer, ptr %i.k, align 8, !tbaa !22
  %index.next149 = add nuw i64 %index148, 4       ; 2 uses
  %i.l = icmp eq i64 %index.next149, %n.vec147
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n150, label %._crit_edge96, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06993.ph = phi i64 [ 0, %iter.check ], [ %n.vec141, %vec.epilog.iter.check ], [ %n.vec147, %vec.epilog.middle.block ] ; 4 uses
  %i.m = sub nsw i64 %0, %.06993.ph
  %xtraiter162 = and i64 %i.m, 7                  ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.06993.prol = phi i64 [ %i.p, %vec.epilog.scalar.ph.prol ], [ %.06993.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.n = mul nsw i64 %.06993.prol, %4
  %i.o = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.n
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !22
  %i.p = add nuw nsw i64 %.06993.prol, 1          ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !10

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.06993.unr = phi i64 [ %.06993.ph, %vec.epilog.scalar.ph.preheader ], [ %i.p, %vec.epilog.scalar.ph.prol ]
  %i.q = sub nsw i64 %.06993.ph, %0
  %i.r = icmp ugt i64 %i.q, -8
  br i1 %i.r, label %._crit_edge96, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.06993 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.06993.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.s = mul nsw i64 %.06993, %4
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.s
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !22
  %i.u = add nuw nsw i64 %.06993, 1
  %i.v = mul nsw i64 %i.u, %4
  %i.w = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.v
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !22
  %i.x = add nuw nsw i64 %.06993, 2
  %i.y = mul nsw i64 %i.x, %4
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.y
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !22
  %i.aa = add nuw nsw i64 %.06993, 3
  %i.ab = mul nsw i64 %i.aa, %4
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ab
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !22
  %i.ad = add nuw nsw i64 %.06993, 4
  %i.ae = mul nsw i64 %i.ad, %4
  %i.af = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ae
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !22
  %i.ag = add nuw nsw i64 %.06993, 5
  %i.ah = mul nsw i64 %i.ag, %4
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ah
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !22
  %i.aj = add nuw nsw i64 %.06993, 6
  %i.ak = mul nsw i64 %i.aj, %4
  %i.al = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ak
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !22
  %i.am = add nuw nsw i64 %.06993, 7
  %i.an = mul nsw i64 %i.am, %4
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.an
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !22
  %i.ap = add nuw nsw i64 %.06993, 8              ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %i.ap, %0
  br i1 %exitcond105.not.7, label %._crit_edge96, label %vec.epilog.scalar.ph, !llvm.loop !11

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block145
  %i.aq = add nuw nsw i64 %.07197, 1              ; 2 uses
  %exitcond106.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond106.not, label %.loopexit, label %iter.check, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  %i.ar = fcmp oeq double %2, 1.000000e+00
  br i1 %i.ar, label %.lr.ph92.preheader, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.c
  %ident.check.not = icmp eq i64 %4, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph85

.lr.ph92.preheader:                               ; preds = %bb.c
  %ident.check120.not = icmp eq i64 %4, 1
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %._crit_edge89
  %.091 = phi ptr [ %i.ci, %._crit_edge89 ], [ %3, %.lr.ph92.preheader ] ; 7 uses
  %.17290 = phi i64 [ %i.cj, %._crit_edge89 ], [ 0, %.lr.ph92.preheader ] ; 7 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17290 ; 6 uses
  %i.at = icmp slt i64 %.17290, %0
  br i1 %i.at, label %.lr.ph88.preheader, label %._crit_edge89

.lr.ph88.preheader:                               ; preds = %.lr.ph92
  %5 = sub nsw i64 %0, %.17290                    ; 3 uses
  %min.iters.check122 = icmp ugt i64 %5, 7
  %or.cond153 = and i1 %min.iters.check122, %ident.check120.not
  br i1 %or.cond153, label %vector.ph123, label %.lr.ph88.preheader155

vector.ph123:                                     ; preds = %.lr.ph88.preheader
  %n.vec124 = and i64 %5, -8                      ; 3 uses
  %i.au = add i64 %.17290, %n.vec124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.av = add nuw i64 %.17290, %index126          ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %wide.load127 = load <4 x double>, ptr %i.aw, align 8, !tbaa !22
  %wide.load128 = load <4 x double>, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %i.av ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %wide.load129 = load <4 x double>, ptr %i.ay, align 8, !tbaa !22
  %wide.load130 = load <4 x double>, ptr %i.az, align 8, !tbaa !22
  store <4 x double> %wide.load129, ptr %i.aw, align 8, !tbaa !22
  store <4 x double> %wide.load130, ptr %i.ax, align 8, !tbaa !22
  store <4 x double> %wide.load127, ptr %i.ay, align 8, !tbaa !22
  store <4 x double> %wide.load128, ptr %i.az, align 8, !tbaa !22
  %index.next131 = add nuw i64 %index126, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.ba, label %middle.block132, label %vector.body125, !llvm.loop !13

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %5, %n.vec124
  br i1 %cmp.n133, label %._crit_edge89, label %.lr.ph88.preheader155

.lr.ph88.preheader155:                            ; preds = %.lr.ph88.preheader, %middle.block132
  %.17086.ph = phi i64 [ %.17290, %.lr.ph88.preheader ], [ %i.au, %middle.block132 ] ; 4 uses
  %i.bb = sub i64 %0, %.17086.ph
  %xtraiter159 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol

.lr.ph88.prol:                                    ; preds = %.lr.ph88.preheader155, %.lr.ph88.prol
  %.17086.prol = phi i64 [ %i.bh, %.lr.ph88.prol ], [ %.17086.ph, %.lr.ph88.preheader155 ] ; 3 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.lr.ph88.prol ], [ 0, %.lr.ph88.preheader155 ]
  %i.bc = mul nsw i64 %.17086.prol, %4
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bc ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %.17086.prol ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !22
  store double %i.bg, ptr %i.bd, align 8, !tbaa !22
  store double %i.be, ptr %i.bf, align 8, !tbaa !22
  %i.bh = add nuw nsw i64 %.17086.prol, 1         ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol, !llvm.loop !14

.lr.ph88.prol.loopexit:                           ; preds = %.lr.ph88.prol, %.lr.ph88.preheader155
  %.17086.unr = phi i64 [ %.17086.ph, %.lr.ph88.preheader155 ], [ %i.bh, %.lr.ph88.prol ]
  %i.bi = sub i64 %.17086.ph, %0
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88
  %.17086 = phi i64 [ %i.ch, %.lr.ph88 ], [ %.17086.unr, %.lr.ph88.prol.loopexit ] ; 6 uses
  %i.bk = mul nsw i64 %.17086, %4
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %.17086 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !22
  store double %i.bo, ptr %i.bl, align 8, !tbaa !22
  store double %i.bm, ptr %i.bn, align 8, !tbaa !22
  %i.bp = add nuw nsw i64 %.17086, 1              ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %4
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %i.bp ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !22
  store double %i.bu, ptr %i.br, align 8, !tbaa !22
  store double %i.bs, ptr %i.bt, align 8, !tbaa !22
  %i.bv = add nuw nsw i64 %.17086, 2              ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %4
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %i.bv ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  store double %i.ca, ptr %i.bx, align 8, !tbaa !22
  store double %i.by, ptr %i.bz, align 8, !tbaa !22
  %i.cb = add nuw nsw i64 %.17086, 3              ; 2 uses
  %i.cc = mul nsw i64 %i.cb, %4
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cc ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.091, i64 %i.cb ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22
  store double %i.cg, ptr %i.cd, align 8, !tbaa !22
  store double %i.ce, ptr %i.cf, align 8, !tbaa !22
  %i.ch = add nuw nsw i64 %.17086, 4              ; 2 uses
  %exitcond103.not.3 = icmp eq i64 %i.ch, %0
  br i1 %exitcond103.not.3, label %._crit_edge89, label %.lr.ph88, !llvm.loop !15

._crit_edge89:                                    ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88, %middle.block132, %.lr.ph92
  %i.ci = getelementptr inbounds [8 x i8], ptr %.091, i64 %4
  %i.cj = add nuw nsw i64 %.17290, 1              ; 2 uses
  %exitcond104.not = icmp eq i64 %i.cj, %1
  br i1 %exitcond104.not, label %.loopexit, label %.lr.ph92, !llvm.loop !16

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %._crit_edge
  %.184 = phi ptr [ %i.et, %._crit_edge ], [ %3, %.lr.ph85.preheader ] ; 7 uses
  %.27383 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %.lr.ph85.preheader ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.27383 ; 7 uses
  %i.cl = mul nsw i64 %.27383, %4
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !22
  %i.co = fmul double %2, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !22
  %i.cp = add nuw nsw i64 %.27383, 1              ; 6 uses
  %i.cq = icmp slt i64 %i.cp, %0
  br i1 %i.cq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph85
  %6 = xor i64 %.27383, -1
  %7 = add nsw i64 %0, %6                         ; 3 uses
  %min.iters.check = icmp ugt i64 %7, 7
  %or.cond154 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond154, label %vector.ph, label %.lr.ph.preheader157

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.cr = add i64 %i.cp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add nuw i64 %i.cp, %index               ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ct, align 8, !tbaa !22
  %wide.load116 = load <4 x double>, ptr %i.cu, align 8, !tbaa !22
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %i.cs ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %wide.load117 = load <4 x double>, ptr %i.cv, align 8, !tbaa !22
  %wide.load118 = load <4 x double>, ptr %i.cw, align 8, !tbaa !22
  %i.cx = fmul <4 x double> %broadcast.splat, %wide.load117
  %i.cy = fmul <4 x double> %broadcast.splat, %wide.load118
  store <4 x double> %i.cx, ptr %i.ct, align 8, !tbaa !22
  store <4 x double> %i.cy, ptr %i.cu, align 8, !tbaa !22
  %i.cz = fmul <4 x double> %broadcast.splat, %wide.load
  %i.da = fmul <4 x double> %broadcast.splat, %wide.load116
  store <4 x double> %i.cz, ptr %i.cv, align 8, !tbaa !22
  store <4 x double> %i.da, ptr %i.cw, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader157

.lr.ph.preheader157:                              ; preds = %.lr.ph.preheader, %middle.block
  %.282.ph = phi i64 [ %i.cp, %.lr.ph.preheader ], [ %i.cr, %middle.block ] ; 4 uses
  %i.dc = sub i64 %0, %.282.ph
  %xtraiter = and i64 %i.dc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader157, %.lr.ph.prol
  %.282.prol = phi i64 [ %i.dk, %.lr.ph.prol ], [ %.282.ph, %.lr.ph.preheader157 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader157 ]
  %i.dd = mul nsw i64 %.282.prol, %4
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.dd ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %.282.prol ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !22
  %i.di = fmul double %2, %i.dh
  store double %i.di, ptr %i.de, align 8, !tbaa !22
  %i.dj = fmul double %2, %i.df
  store double %i.dj, ptr %i.dg, align 8, !tbaa !22
  %i.dk = add nuw nsw i64 %.282.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader157
  %.282.unr = phi i64 [ %.282.ph, %.lr.ph.preheader157 ], [ %i.dk, %.lr.ph.prol ]
  %i.dl = sub i64 %.282.ph, %0
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.282 = phi i64 [ %i.es, %.lr.ph ], [ %.282.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dn = mul nsw i64 %.282, %4
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.dn ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %.282 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ds = fmul double %2, %i.dr
  store double %i.ds, ptr %i.do, align 8, !tbaa !22
  %i.dt = fmul double %2, %i.dp
  store double %i.dt, ptr %i.dq, align 8, !tbaa !22
  %i.du = add nuw nsw i64 %.282, 1                ; 2 uses
  %i.dv = mul nsw i64 %i.du, %4
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %i.du ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = fmul double %2, %i.dz
  store double %i.ea, ptr %i.dw, align 8, !tbaa !22
  %i.eb = fmul double %2, %i.dx
  store double %i.eb, ptr %i.dy, align 8, !tbaa !22
  %i.ec = add nuw nsw i64 %.282, 2                ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %4
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %i.ec ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !22
  %i.ei = fmul double %2, %i.eh
  store double %i.ei, ptr %i.ee, align 8, !tbaa !22
  %i.ej = fmul double %2, %i.ef
  store double %i.ej, ptr %i.eg, align 8, !tbaa !22
  %i.ek = add nuw nsw i64 %.282, 3                ; 2 uses
  %i.el = mul nsw i64 %i.ek, %4
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.el ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.184, i64 %i.ek ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !22
  %i.eq = fmul double %2, %i.ep
  store double %i.eq, ptr %i.em, align 8, !tbaa !22
  %i.er = fmul double %2, %i.en
  store double %i.er, ptr %i.eo, align 8, !tbaa !22
  %i.es = add nuw nsw i64 %.282, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.es, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.lr.ph85
  %i.et = getelementptr inbounds [8 x i8], ptr %.184, i64 %4
  %exitcond102.not = icmp eq i64 %i.cp, %1
  br i1 %exitcond102.not, label %.loopexit, label %.lr.ph85, !llvm.loop !20

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge89, %._crit_edge96, %bb.a
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !23, !24, !25}
!9 = distinct !{!9, !23, !24, !25}
!10 = distinct !{!10, !27}
!11 = distinct !{!11, !23, !24}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23, !24, !25}
!14 = distinct !{!14, !27}
!15 = distinct !{!15, !23, !24}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !23, !24, !25}
!18 = distinct !{!18, !27}
!19 = distinct !{!19, !23, !24}
!20 = distinct !{!20, !23}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
