Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_ztr_trans?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_ztr_trans(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  %i.b = icmp eq ptr %6, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 102                      ; 2 uses
  %i.d = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 117) #3
  %i.e = icmp ne i32 %0, 101
  %or.cond3 = xor i1 %i.c, %i.e
  br i1 %or.cond3, label %.loopexit81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #3
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 117) #3
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit81, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not76 = icmp ne i32 %i.d, 0                   ; 9 uses
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 110) #3
  %.not77 = icmp eq i32 %i.i, 0
  br i1 %.not77, label %.loopexit81, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %. = zext i1 %.not76 to i32                     ; 2 uses
  %i.j = xor i1 %i.c, %i.g
  br i1 %i.j, label %.preheader80, label %.preheader82

.preheader82:                                     ; preds = %bb.g
  %i.k = sub nsw i32 %3, %.
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %7) ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph86, label %.loopexit81

.lr.ph86:                                         ; preds = %.preheader82
  %i.n = tail call i32 @llvm.smin.i32(i32 %3, i32 %5) ; 2 uses
  %i.o = zext i1 %.not76 to i64                   ; 3 uses
  %i.p = sext i32 %7 to i64                       ; 5 uses
  %.neg121 = sext i1 %.not76 to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %5 to i64                       ; 3 uses
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 7 uses
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %i.s, %wide.trip.count
  %i.u = select i1 %.not76, i64 16, i64 0         ; 4 uses
  %i.v = shl nsw i64 %i.r, 4
  %i.w = add nsw i64 %i.v, 16                     ; 2 uses
  %i.x = shl nuw nsw i64 %wide.trip.count, 4
  %i.y = shl nsw i64 %i.r, 4
  %i.z = getelementptr i8, ptr %6, i64 %i.u
  %i.aa = getelementptr i8, ptr %4, i64 %i.u
  %i.ab = getelementptr i8, ptr %4, i64 %i.x
  %i.ac = getelementptr i8, ptr %6, i64 %i.u
  %i.ad = getelementptr i8, ptr %4, i64 %i.u
  %ident.check = icmp ne i32 %7, 1
  br label %bb.h

.preheader80:                                     ; preds = %bb.g
  %i.ae = tail call i32 @llvm.smin.i32(i32 %3, i32 %7) ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %.
  br i1 %i.af, label %.preheader.preheader, label %.loopexit81

.preheader.preheader:                             ; preds = %.preheader80
  %i.ag = sext i32 %7 to i64                      ; 5 uses
  %i.ah = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.ai = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.ae to i64
  %i.aj = select i1 %.not76, i64 16, i64 0
  %i.ak = shl nsw i64 %i.ai, 4
  %i.al = select i1 %.not76, i64 %i.ak, i64 0
  %i.am = shl nsw i64 %i.ai, 4
  %i.an = getelementptr i8, ptr %6, i64 %i.aj
  %i.ao = getelementptr i8, ptr %4, i64 %i.al
  %ident.check134 = icmp ne i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block163, %.preheader
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv106 = phi i64 [ %i.ah, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 4 uses
  %i.ap = shl i64 %indvar, 4
  %scevgep140 = getelementptr i8, ptr %i.an, i64 %i.ap
  %smin141 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.aq = zext i32 %smin141 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 4                ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep140, i64 %i.ar
  %i.as = mul i64 %i.am, %indvar
  %scevgep143 = getelementptr i8, ptr %i.ao, i64 %i.as
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ar
  %smin135 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.at = zext i32 %smin135 to i64
  %i.au = add nsw i64 %i.at, -1                   ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.av = add i64 %indvars.iv.next107, %.neg
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %5)
  %i.ax = icmp sgt i32 %.79, 0
  br i1 %i.ax, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 2 uses
  %i.ay = mul nuw nsw i64 %indvars.iv106, %i.ai
  %wide.trip.count104 = zext i32 %smin to i64     ; 5 uses
  %invariant.gep117 = getelementptr [16 x i8], ptr %4, i64 %i.ay ; 8 uses
  %invariant.gep119 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv106 ; 10 uses
  %min.iters.check149 = icmp ult i32 %smin, 22
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.scevcheck133

vector.scevcheck133:                              ; preds = %.lr.ph88
  %mul.result137 = shl nsw i64 %i.au, 4
  %mul.overflow138 = icmp ugt i64 %i.au, 1152921504606846975
  %i.az = getelementptr i8, ptr %invariant.gep119, i64 %mul.result137
  %i.ba = icmp ult ptr %i.az, %invariant.gep119
  %i.bb = or i1 %i.ba, %mul.overflow138
  %i.bc = or i1 %ident.check134, %i.bb
  br i1 %i.bc, label %scalar.ph148.preheader, label %vector.memcheck139

vector.memcheck139:                               ; preds = %vector.scevcheck133
  %bound0145 = icmp ult ptr %invariant.gep119, %scevgep144
  %bound1146 = icmp ult ptr %invariant.gep117, %scevgep142
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %scalar.ph148.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck139
  %n.vec151 = and i64 %wide.trip.count104, 4294967292 ; 3 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next162, %vector.body152 ] ; 4 uses
  %i.bd = or disjoint i64 %index153, 2            ; 2 uses
  %i.be = getelementptr [16 x i8], ptr %invariant.gep117, i64 %index153
  %i.bf = getelementptr [16 x i8], ptr %invariant.gep117, i64 %i.bd
  %wide.vec154 = load <4 x double>, ptr %i.be, align 8, !alias.scope !23
  %wide.vec157 = load <4 x double>, ptr %i.bf, align 8, !alias.scope !23
  %i.bg = getelementptr [16 x i8], ptr %invariant.gep119, i64 %index153
  %i.bh = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bd
  store <4 x double> %wide.vec154, ptr %i.bg, align 8, !alias.scope !24, !noalias !23
  store <4 x double> %wide.vec157, ptr %i.bh, align 8, !alias.scope !24, !noalias !23
  %index.next162 = add nuw i64 %index153, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next162, %n.vec151
  br i1 %i.bi, label %middle.block163, label %vector.body152, !llvm.loop !12

middle.block163:                                  ; preds = %vector.body152
  %cmp.n164 = icmp eq i64 %n.vec151, %wide.trip.count104
  br i1 %cmp.n164, label %.loopexit, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.memcheck139, %vector.scevcheck133, %.lr.ph88, %middle.block163
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck139 ], [ 0, %vector.scevcheck133 ], [ 0, %.lr.ph88 ], [ %n.vec151, %middle.block163 ] ; 3 uses
  %xtraiter167 = and i64 %wide.trip.count104, 3   ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader, %scalar.ph148.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph148.prol ], [ %indvars.iv99.ph, %scalar.ph148.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %scalar.ph148.prol ], [ 0, %scalar.ph148.preheader ]
  %gep118.prol = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.bj = mul nsw i64 %indvars.iv99.prol, %i.ag
  %gep120.prol = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bj
  %i.bk = load <2 x double>, ptr %gep118.prol, align 8
  store <2 x double> %i.bk, ptr %gep120.prol, align 8
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol, !llvm.loop !13

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph148.preheader ], [ %indvars.iv.next100.prol, %scalar.ph148.prol ]
  %i.bl = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %.loopexit, label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %scalar.ph148 ], [ %indvars.iv99.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %gep118 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bn = mul nsw i64 %indvars.iv99, %i.ag
  %gep120 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bn
  %i.bo = load <2 x double>, ptr %gep118, align 8
  store <2 x double> %i.bo, ptr %gep120, align 8
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bp = mul nsw i64 %indvars.iv.next100, %i.ag
  %gep120.1 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bp
  %i.bq = load <2 x double>, ptr %gep118.1, align 8
  store <2 x double> %i.bq, ptr %gep120.1, align 8
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.br = mul nsw i64 %indvars.iv.next100.1, %i.ag
  %gep120.2 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.br
  %i.bs = load <2 x double>, ptr %gep118.2, align 8
  store <2 x double> %i.bs, ptr %gep120.2, align 8
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.bt = mul nsw i64 %indvars.iv.next100.2, %i.ag
  %gep120.3 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bt
  %i.bu = load <2 x double>, ptr %gep118.3, align 8
  store <2 x double> %i.bu, ptr %gep120.3, align 8
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %exitcond105.not.3 = icmp eq i64 %indvars.iv.next100.3, %wide.trip.count104
  br i1 %exitcond105.not.3, label %.loopexit, label %scalar.ph148, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.bv = add nuw i64 %indvars.iv94, %i.o
  %i.bw = sub i64 %wide.trip.count, %i.bv         ; 3 uses
  %i.bx = shl nuw nsw i64 %indvars.iv94, 5
  %scevgep124 = getelementptr i8, ptr %i.z, i64 %i.bx
  %i.by = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.bz = shl i64 %i.by, 4
  %scevgep125 = getelementptr i8, ptr %6, i64 %i.bz
  %i.ca = mul i64 %i.w, %indvars.iv94
  %scevgep126 = getelementptr i8, ptr %i.aa, i64 %i.ca
  %i.cb = mul i64 %i.y, %indvars.iv94
  %scevgep127 = getelementptr i8, ptr %i.ab, i64 %i.cb
  %i.cc = sub i64 %i.t, %indvars.iv94             ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv94, 5
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.cd ; 2 uses
  %i.ce = mul i64 %i.w, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %i.ad, i64 %i.ce ; 2 uses
  %i.cf = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.cg = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [16 x i8], ptr %4, i64 %i.cg ; 7 uses
  %invariant.gep115 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv94 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %mul.result = shl i64 %i.cc, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.cc, 1152921504606846975
  %i.ch = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ci = icmp ult ptr %i.ch, %scevgep
  %i.cj = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.ck = icmp ult ptr %i.cj, %scevgep123
  %i.cl = or i1 %i.ck, %mul.overflow
  %i.cm = or i1 %i.ci, %ident.check
  %i.cn = or i1 %i.cm, %i.cl
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep124, %scevgep127
  %bound1 = icmp ult ptr %scevgep126, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.co = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = add nuw i64 %indvars.iv, %index         ; 3 uses
  %i.cq = add i64 %i.cp, 4                        ; 2 uses
  %i.cr = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.cp
  %i.cs = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.cq
  %wide.vec = load <8 x double>, ptr %i.cr, align 8, !alias.scope !28
  %wide.vec129 = load <8 x double>, ptr %i.cs, align 8, !alias.scope !28
  %i.ct = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cp
  %i.cu = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cq
  store <8 x double> %wide.vec, ptr %i.ct, align 8, !alias.scope !29, !noalias !28
  store <8 x double> %wide.vec129, ptr %i.cu, align 8, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %.lr.ph ], [ %i.co, %middle.block ] ; 4 uses
  %i.cw = sub i64 %wide.trip.count, %indvars.iv91.ph
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph.prol ], [ %indvars.iv91.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv91.prol
  %i.cx = mul nuw nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cx
  %i.cy = load <2 x double>, ptr %gep.prol, align 8
  store <2 x double> %i.cy, ptr %gep116.prol, align 8
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !19

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.cz = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph ], [ %indvars.iv91.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.db = mul nuw nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.db
  %i.dc = load <2 x double>, ptr %gep, align 8
  store <2 x double> %i.dc, ptr %gep116, align 8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.dd = mul nuw nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.dd
  %i.de = load <2 x double>, ptr %gep.1, align 8
  store <2 x double> %i.de, ptr %gep116.1, align 8
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.df = mul nuw nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.df
  %i.dg = load <2 x double>, ptr %gep.2, align 8
  store <2 x double> %i.dg, ptr %gep116.2, align 8
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.dh = mul nuw nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.dh
  %i.di = load <2 x double>, ptr %gep.3, align 8
  store <2 x double> %i.di, ptr %gep116.3, align 8
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !21

.loopexit81:                                      ; preds = %._crit_edge, %.loopexit, %.preheader82, %.preheader80, %bb.d, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !22}
!9 = distinct !{!9, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !22, !25, !26}
!13 = distinct !{!13, !27}
!14 = distinct !{!14, !22, !25}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !22, !25, !26}
!19 = distinct !{!19, !27}
!20 = distinct !{!20, !22, !25}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!10}
!24 = !{!11}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!16}
!29 = !{!17}
end_hunk_0
