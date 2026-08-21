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
  %i.u = select i1 %.not76, i64 8, i64 0          ; 4 uses
  %i.v = shl nsw i64 %i.r, 3
  %i.w = add nsw i64 %i.v, 8                      ; 2 uses
  %i.x = shl nuw nsw i64 %wide.trip.count, 3
  %i.y = shl nsw i64 %i.r, 3
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
  %i.ag = sext i32 %7 to i64                      ; 9 uses
  %i.ah = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.ai = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.ae to i64
  %i.aj = select i1 %.not76, i64 8, i64 0
  %i.ak = shl nsw i64 %i.ai, 3
  %i.al = select i1 %.not76, i64 %i.ak, i64 0
  %i.am = shl nsw i64 %i.ai, 3
  %i.an = getelementptr i8, ptr %6, i64 %i.aj
  %i.ao = getelementptr i8, ptr %4, i64 %i.al
  %ident.check144 = icmp ne i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block172, %.preheader
  %indvars.iv.next103 = add nuw nsw i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i32 %indvar, 1
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar.a = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next.a, %.loopexit ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv106 = phi i64 [ %i.ah, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 2 uses
  %i.ap = shl i64 %indvar.a, 3
  %scevgep150 = getelementptr i8, ptr %i.an, i64 %i.ap
  %8 = trunc i64 %indvar.a to i32
  %9 = add i32 %8, 1
  %smin151 = tail call i32 @llvm.smin.i32(i32 %5, i32 %9)
  %i.aq = zext i32 %smin151 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep150, i64 %i.ar
  %i.as = mul i64 %i.am, %indvar.a
  %scevgep153 = getelementptr i8, ptr %i.ao, i64 %i.as
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.ar
  %10 = add i32 %indvar, 1
  %smin145 = tail call i32 @llvm.smin.i32(i32 %5, i32 %10)
  %i.at = zext i32 %smin145 to i64
  %i.au = add nsw i64 %i.at, -1                   ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.av = add i64 %indvars.iv.next107, %.neg
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %5)
  %i.ax = icmp sgt i32 %.79, 0
  br i1 %i.ax, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 2 uses
  %i.ay = mul nsw i64 %indvars.iv106, %i.ai
  %wide.trip.count104 = zext i32 %smin to i64     ; 5 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %4, i64 %i.ay ; 12 uses
  %invariant.gep119 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv106 ; 14 uses
  %min.iters.check158 = icmp ult i32 %smin, 24
  br i1 %min.iters.check158, label %scalar.ph.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.lr.ph88
  %mul.result147 = shl nsw i64 %i.au, 3
  %mul.overflow148 = icmp ugt i64 %i.au, 2305843009213693951
  %i.az = getelementptr i8, ptr %invariant.gep119, i64 %mul.result147
  %i.ba = icmp ult ptr %i.az, %invariant.gep119
  %i.bb = or i1 %i.ba, %mul.overflow148
  %i.bc = or i1 %ident.check144, %i.bb
  br i1 %i.bc, label %scalar.ph.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %vector.scevcheck143
  %bound0155 = icmp ult ptr %invariant.gep119, %scevgep154
  %bound1156 = icmp ult ptr %invariant.gep117, %scevgep152
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %scalar.ph.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck149
  %n.vec160 = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next171, %vector.body161 ] ; 4 uses
  %i.bd = or disjoint i64 %index162, 4            ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %invariant.gep117, i64 %index162
  %i.bf = getelementptr [8 x i8], ptr %invariant.gep117, i64 %i.bd
  %wide.vec163 = load <8 x float>, ptr %i.be, align 4, !alias.scope !10
  %wide.vec166 = load <8 x float>, ptr %i.bf, align 4, !alias.scope !10
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep119, i64 %index162
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bd
  store <8 x float> %wide.vec163, ptr %i.bg, align 4, !alias.scope !13, !noalias !10
  store <8 x float> %wide.vec166, ptr %i.bh, align 4, !alias.scope !13, !noalias !10
  %index.next171 = add nuw i64 %index162, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next171, %n.vec160
  br i1 %i.bi, label %middle.block172, label %vector.body161, !llvm.loop !15

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
  %i.bj = mul nsw i64 %indvars.iv99.prol, %i.ag
  %gep120.prol = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bj
  %i.bk = load <2 x float>, ptr %gep118.prol, align 4
  store <2 x float> %i.bk, ptr %gep120.prol, align 4
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !18

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.prol, %scalar.ph.prol ]
  %i.bl = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %i.bm = icmp ugt i64 %i.bl, -8
  br i1 %i.bm, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.7, %scalar.ph ], [ %indvars.iv99.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bn = mul nsw i64 %indvars.iv99, %i.ag
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bn
  %i.bo = load <2 x float>, ptr %gep118, align 4
  store <2 x float> %i.bo, ptr %gep120, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bp = mul nsw i64 %indvars.iv.next100, %i.ag
  %gep120.1 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bp
  %i.bq = load <2 x float>, ptr %gep118.1, align 4
  store <2 x float> %i.bq, ptr %gep120.1, align 4
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.br = mul nsw i64 %indvars.iv.next100.1, %i.ag
  %gep120.2 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.br
  %i.bs = load <2 x float>, ptr %gep118.2, align 4
  store <2 x float> %i.bs, ptr %gep120.2, align 4
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.bt = mul nsw i64 %indvars.iv.next100.2, %i.ag
  %gep120.3 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bt
  %i.bu = load <2 x float>, ptr %gep118.3, align 4
  store <2 x float> %i.bu, ptr %gep120.3, align 4
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %gep118.4 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.bv = mul nsw i64 %indvars.iv.next100.3, %i.ag
  %gep120.4 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bv
  %i.bw = load <2 x float>, ptr %gep118.4, align 4
  store <2 x float> %i.bw, ptr %gep120.4, align 4
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99, 5 ; 2 uses
  %gep118.5 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.bx = mul nsw i64 %indvars.iv.next100.4, %i.ag
  %gep120.5 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bx
  %i.by = load <2 x float>, ptr %gep118.5, align 4
  store <2 x float> %i.by, ptr %gep120.5, align 4
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99, 6 ; 2 uses
  %gep118.6 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.bz = mul nsw i64 %indvars.iv.next100.5, %i.ag
  %gep120.6 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bz
  %i.ca = load <2 x float>, ptr %gep118.6, align 4
  store <2 x float> %i.ca, ptr %gep120.6, align 4
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99, 7 ; 2 uses
  %gep118.7 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.cb = mul nsw i64 %indvars.iv.next100.6, %i.ag
  %gep120.7 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.cb
  %i.cc = load <2 x float>, ptr %gep118.7, align 4
  store <2 x float> %i.cc, ptr %gep120.7, align 4
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7, %wide.trip.count104
  br i1 %exitcond105.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !20

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.cd = add nuw i64 %indvars.iv94, %i.o
  %i.ce = sub i64 %wide.trip.count, %i.cd         ; 7 uses
  %i.cf = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep124 = getelementptr i8, ptr %i.z, i64 %i.cf
  %i.cg = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.ch = shl i64 %i.cg, 3
  %scevgep125 = getelementptr i8, ptr %6, i64 %i.ch
  %i.ci = mul i64 %i.w, %indvars.iv94
  %scevgep126 = getelementptr i8, ptr %i.aa, i64 %i.ci
  %i.cj = mul i64 %i.y, %indvars.iv94
  %scevgep127 = getelementptr i8, ptr %i.ab, i64 %i.cj
  %i.ck = sub i64 %i.t, %indvars.iv94             ; 2 uses
  %i.cl = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.cl ; 2 uses
  %i.cm = mul i64 %i.w, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %i.ad, i64 %i.cm ; 2 uses
  %i.cn = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.cn, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.co = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.co ; 12 uses
  %invariant.gep115 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv94 ; 12 uses
  %min.iters.check = icmp ult i64 %i.ce, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %mul.result = shl i64 %i.ck, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ck, 2305843009213693951
  %i.cp = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cq = icmp ult ptr %i.cp, %scevgep
  %i.cr = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.cs = icmp ult ptr %i.cr, %scevgep123
  %i.ct = or i1 %i.cs, %mul.overflow
  %i.cu = or i1 %i.cq, %ident.check
  %i.cv = or i1 %i.cu, %i.ct
  br i1 %i.cv, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep124, %scevgep127
  %bound1 = icmp ult ptr %scevgep126, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i64 %i.ce, 16
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %i.ce, 12
  %n.vec = and i64 %i.ce, -16                     ; 4 uses
  %i.cx = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = add nuw i64 %indvars.iv, %index         ; 3 uses
  %i.cz = add i64 %i.cy, 8                        ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cy
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cz
  %wide.vec = load <16 x float>, ptr %i.da, align 4, !alias.scope !21
  %wide.vec130 = load <16 x float>, ptr %i.db, align 4, !alias.scope !21
  %i.dc = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cy
end_hunk_0
