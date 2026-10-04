Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_ctr_trans?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_ctr_trans(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
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
  %i.p = sext i32 %7 to i64                       ; 9 uses
  %.neg121 = sext i1 %.not76 to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %5 to i64                       ; 3 uses
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 7 uses
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %i.s, %wide.trip.count
  %i.u = select i1 %.not76, i64 8, i64 0          ; 3 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 3
  %i.w = shl nsw i64 %i.r, 3
  %8 = add nsw i64 %i.w, 8
  %9 = shl nsw i64 %i.r, 3
  %i.x = getelementptr i8, ptr %6, i64 %i.u
  %i.y = getelementptr i8, ptr %4, i64 %i.u
  %i.z = getelementptr i8, ptr %4, i64 %i.v
  %i.aa = getelementptr i8, ptr %6, i64 %i.u
  %ident.check = icmp ne i32 %7, 1
  br label %bb.h

.preheader80:                                     ; preds = %bb.g
  %i.ab = tail call i32 @llvm.smin.i32(i32 %3, i32 %7) ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %.
  br i1 %i.ac, label %.preheader.preheader, label %.loopexit81

.preheader.preheader:                             ; preds = %.preheader80
  %i.ad = sext i32 %7 to i64                      ; 9 uses
  %i.ae = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.af = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.ab to i64
  %i.ag = select i1 %.not76, i64 8, i64 0
  %i.ah = shl nsw i64 %i.af, 3
  %i.ai = select i1 %.not76, i64 %i.ah, i64 0
  %i.aj = shl nsw i64 %i.af, 3
  %i.ak = getelementptr i8, ptr %6, i64 %i.ag
  %i.al = getelementptr i8, ptr %4, i64 %i.ai
  %ident.check144 = icmp ne i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block172, %.preheader
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv106 = phi i64 [ %i.ae, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 4 uses
  %i.am = shl i64 %indvar, 3
  %scevgep150 = getelementptr i8, ptr %i.ak, i64 %i.am
  %smin151 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.an = zext i32 %smin151 to i64
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 2 uses
  %scevgep152.a = getelementptr i8, ptr %scevgep150, i64 %i.ao
  %i.ap = mul i64 %i.aj, %indvar
  %scevgep153.a = getelementptr i8, ptr %i.al, i64 %i.ap
  %scevgep154 = getelementptr i8, ptr %scevgep153.a, i64 %i.ao
  %smin145 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.aq = zext i32 %smin145 to i64
  %i.ar = add nsw i64 %i.aq, -1                   ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.as = add nsw i64 %indvars.iv.next107, %.neg
  %i.at = trunc nuw nsw i64 %i.as to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %5)
  %i.au = icmp sgt i32 %.79, 0
  br i1 %i.au, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 2 uses
  %i.av = mul nuw nsw i64 %indvars.iv106, %i.af
  %wide.trip.count104 = zext i32 %smin to i64     ; 5 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %4, i64 %i.av ; 12 uses
  %invariant.gep119 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv106 ; 14 uses
  %min.iters.check158 = icmp ult i32 %smin, 24
  br i1 %min.iters.check158, label %scalar.ph.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.lr.ph88
  %mul.result147 = shl nsw i64 %i.ar, 3
  %mul.overflow148 = icmp ugt i64 %i.ar, 2305843009213693951
  %i.aw = getelementptr i8, ptr %invariant.gep119, i64 %mul.result147
  %i.ax = icmp ult ptr %i.aw, %invariant.gep119
  %i.ay = or i1 %i.ax, %mul.overflow148
  %i.az = or i1 %ident.check144, %i.ay
  br i1 %i.az, label %scalar.ph.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %vector.scevcheck143
  %bound0155 = icmp ult ptr %invariant.gep119, %scevgep154
  %bound1156 = icmp ult ptr %invariant.gep117, %scevgep152.a
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %scalar.ph.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck149
  %n.vec160 = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next171, %vector.body161 ] ; 4 uses
  %i.ba = or disjoint i64 %index162, 4            ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep117, i64 %index162
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep117, i64 %i.ba
  %wide.vec163 = load <8 x float>, ptr %i.bb, align 4, !alias.scope !24
  %wide.vec166 = load <8 x float>, ptr %i.bc, align 4, !alias.scope !24
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep119, i64 %index162
  %i.be = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ba
  store <8 x float> %wide.vec163, ptr %i.bd, align 4, !alias.scope !25, !noalias !24
  store <8 x float> %wide.vec166, ptr %i.be, align 4, !alias.scope !25, !noalias !24
  %index.next171 = add nuw i64 %index162, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next171, %n.vec160
  br i1 %i.bf, label %middle.block172, label %vector.body161, !llvm.loop !12

middle.block172:                                  ; preds = %vector.body161
  %cmp.n173 = icmp eq i64 %n.vec160, %wide.trip.count104
  br i1 %cmp.n173, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck149, %vector.scevcheck143, %.lr.ph88, %middle.block172
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph88 ], [ %n.vec160, %middle.block172 ] ; 3 uses
  %xtraiter175 = and i64 %wide.trip.count104, 7   ; 2 uses
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph.prol ], [ %indvars.iv99.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter177 = phi i64 [ %prol.iter177.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep118.prol = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.bg = mul nsw i64 %indvars.iv99.prol, %i.ad
  %gep120.prol = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bg
  %i.bh = load <2 x float>, ptr %gep118.prol, align 4
  store <2 x float> %i.bh, ptr %gep120.prol, align 4
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !13

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.prol, %scalar.ph.prol ]
  %i.bi = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.7, %scalar.ph ], [ %indvars.iv99.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bk = mul nsw i64 %indvars.iv99, %i.ad
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bk
  %i.bl = load <2 x float>, ptr %gep118, align 4
  store <2 x float> %i.bl, ptr %gep120, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bm = mul nsw i64 %indvars.iv.next100, %i.ad
  %gep120.1 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bm
  %i.bn = load <2 x float>, ptr %gep118.1, align 4
  store <2 x float> %i.bn, ptr %gep120.1, align 4
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.bo = mul nsw i64 %indvars.iv.next100.1, %i.ad
  %gep120.2 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bo
  %i.bp = load <2 x float>, ptr %gep118.2, align 4
  store <2 x float> %i.bp, ptr %gep120.2, align 4
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.bq = mul nsw i64 %indvars.iv.next100.2, %i.ad
  %gep120.3 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bq
  %i.br = load <2 x float>, ptr %gep118.3, align 4
  store <2 x float> %i.br, ptr %gep120.3, align 4
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %gep118.4 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.bs = mul nsw i64 %indvars.iv.next100.3, %i.ad
  %gep120.4 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bs
  %i.bt = load <2 x float>, ptr %gep118.4, align 4
  store <2 x float> %i.bt, ptr %gep120.4, align 4
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99, 5 ; 2 uses
  %gep118.5 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.bu = mul nsw i64 %indvars.iv.next100.4, %i.ad
  %gep120.5 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bu
  %i.bv = load <2 x float>, ptr %gep118.5, align 4
  store <2 x float> %i.bv, ptr %gep120.5, align 4
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99, 6 ; 2 uses
  %gep118.6 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.bw = mul nsw i64 %indvars.iv.next100.5, %i.ad
  %gep120.6 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bw
  %i.bx = load <2 x float>, ptr %gep118.6, align 4
  store <2 x float> %i.bx, ptr %gep120.6, align 4
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99, 7 ; 2 uses
  %gep118.7 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.by = mul nsw i64 %indvars.iv.next100.6, %i.ad
  %gep120.7 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.by
  %i.bz = load <2 x float>, ptr %gep118.7, align 4
  store <2 x float> %i.bz, ptr %gep120.7, align 4
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7, %wide.trip.count104
  br i1 %exitcond105.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 11 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.ca = add nuw i64 %indvars.iv94, %i.o
  %i.cb = sub i64 %wide.trip.count, %i.ca         ; 7 uses
  %i.cc = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep124.a = getelementptr i8, ptr %i.x, i64 %i.cc
  %i.cd = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.ce = shl i64 %i.cd, 3
  %scevgep125.a = getelementptr i8, ptr %6, i64 %i.ce
  %i.cf = mul i64 %8, %indvars.iv94
  %scevgep126.a = getelementptr i8, ptr %i.y, i64 %i.cf
  %i.cg = mul i64 %9, %indvars.iv94
  %scevgep127 = getelementptr i8, ptr %i.z, i64 %i.cg
  %i.ch = sub i64 %i.t, %indvars.iv94             ; 2 uses
  %i.ci = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep123 = getelementptr i8, ptr %i.aa, i64 %i.ci ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.cj, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.ck = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.ck ; 12 uses
  %invariant.gep115 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv94 ; 12 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %mul.result = shl i64 %i.ch, 3
  %mul.overflow = icmp ugt i64 %i.ch, 2305843009213693951
  %i.cl = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.cm = icmp ult ptr %i.cl, %scevgep123
  %i.cn = or i1 %i.cm, %mul.overflow
  %i.co = or i1 %ident.check, %i.cn
  br i1 %i.co, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep124.a, %scevgep127
  %bound1 = icmp ult ptr %scevgep126.a, %scevgep125.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.cb, 12
  %n.vec = and i64 %i.cb, -16                     ; 4 uses
  %i.cq = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = add nuw i64 %indvars.iv, %index         ; 3 uses
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cr
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs
  %wide.vec = load <16 x float>, ptr %i.ct, align 4, !alias.scope !29
  %wide.vec130 = load <16 x float>, ptr %i.cu, align 4, !alias.scope !29
  %i.cv = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cr
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cs
  store <16 x float> %wide.vec, ptr %i.cv, align 4, !alias.scope !30, !noalias !29
  store <16 x float> %wide.vec130, ptr %i.cw, align 4, !alias.scope !30, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.cb, -4                   ; 3 uses
  %i.cy = add i64 %indvars.iv, %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = add nuw i64 %indvars.iv, %index135      ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cz
  %wide.vec136 = load <8 x float>, ptr %i.da, align 4, !alias.scope !29
  %i.db = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cz
  store <8 x float> %wide.vec136, ptr %i.db, align 4, !alias.scope !30, !noalias !29
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.cb, %n.vec134
  br i1 %cmp.n141, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %iter.check ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ] ; 4 uses
  %i.dd = sub i64 %wide.trip.count, %indvars.iv91.ph
  %xtraiter = and i64 %i.dd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91.prol
  %i.de = mul nuw nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.de
  %i.df = load <2 x float>, ptr %gep.prol, align 4
  store <2 x float> %i.df, ptr %gep116.prol, align 4
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !20

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ]
  %i.dg = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.dh = icmp ugt i64 %i.dg, -8
  br i1 %i.dh, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.7, %vec.epilog.scalar.ph ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.di = mul nuw nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.di
  %i.dj = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.dj, ptr %gep116, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.dk = mul nuw nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dk
  %i.dl = load <2 x float>, ptr %gep.1, align 4
  store <2 x float> %i.dl, ptr %gep116.1, align 4
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.dm = mul nuw nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dm
  %i.dn = load <2 x float>, ptr %gep.2, align 4
  store <2 x float> %i.dn, ptr %gep116.2, align 4
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.do = mul nuw nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.do
  %i.dp = load <2 x float>, ptr %gep.3, align 4
  store <2 x float> %i.dp, ptr %gep116.3, align 4
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.3
  %i.dq = mul nuw nsw i64 %indvars.iv.next92.3, %i.p
  %gep116.4 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dq
  %i.dr = load <2 x float>, ptr %gep.4, align 4
  store <2 x float> %i.dr, ptr %gep116.4, align 4
  %indvars.iv.next92.4 = add nuw nsw i64 %indvars.iv91, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.4
  %i.ds = mul nuw nsw i64 %indvars.iv.next92.4, %i.p
  %gep116.5 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ds
  %i.dt = load <2 x float>, ptr %gep.5, align 4
  store <2 x float> %i.dt, ptr %gep116.5, align 4
  %indvars.iv.next92.5 = add nuw nsw i64 %indvars.iv91, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.5
  %i.du = mul nuw nsw i64 %indvars.iv.next92.5, %i.p
  %gep116.6 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.du
  %i.dv = load <2 x float>, ptr %gep.6, align 4
  store <2 x float> %i.dv, ptr %gep116.6, align 4
  %indvars.iv.next92.6 = add nuw nsw i64 %indvars.iv91, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.6
  %i.dw = mul nuw nsw i64 %indvars.iv.next92.6, %i.p
  %gep116.7 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dw
  %i.dx = load <2 x float>, ptr %gep.7, align 4
  store <2 x float> %i.dx, ptr %gep116.7, align 4
  %indvars.iv.next92.7 = add nuw nsw i64 %indvars.iv91, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next92.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !22

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
!8 = distinct !{!8, !23}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !23, !26, !27}
!13 = distinct !{!13, !28}
!14 = distinct !{!14, !23, !26}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !23, !26, !27}
!19 = distinct !{!19, !23, !26, !27}
!20 = distinct !{!20, !28}
!21 = distinct !{!21, !23, !26}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!10}
!25 = !{!11}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!16}
!30 = !{!17}
!31 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
