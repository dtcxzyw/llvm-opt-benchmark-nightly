loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@LAPACKE_ctr_trans:bb.a
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
  %i.aj = select i1 %.not76, i64 8, i64 0         ; 2 uses
  %i.ak = shl nsw i64 %i.ai, 3
  %i.al = select i1 %.not76, i64 %i.ak, i64 0
  %i.am = shl nsw i64 %i.ai, 3
  %i.an = getelementptr i8, ptr %6, i64 %i.aj
  %i.ao = getelementptr i8, ptr %4, i64 %i.al
  %i.ap = getelementptr i8, ptr %6, i64 %i.aj
  %ident.check148 = icmp ne i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block178, %.preheader
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv106 = phi i64 [ %i.ah, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 5 uses
  %smin181 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.aq = zext i32 %smin181 to i64                ; 2 uses
  %i.ar = shl i64 %indvar, 3
  %scevgep155.a = getelementptr i8, ptr %i.an, i64 %i.ar ; 2 uses
  %smin156 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.as = zext i32 %smin156 to i64
  %i.at = shl nuw nsw i64 %i.as, 3                ; 2 uses
  %scevgep157 = getelementptr i8, ptr %scevgep155.a, i64 %i.at
  %i.au = mul i64 %i.am, %indvar
  %scevgep158 = getelementptr i8, ptr %i.ao, i64 %i.au ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.at
  %smin149 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.av = zext i32 %smin149 to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ax = shl i64 %indvar, 3
  %scevgep150 = getelementptr i8, ptr %i.ap, i64 %i.ax ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.ay = add i64 %indvars.iv.next107, %.neg
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %5)
  %i.ba = icmp sgt i32 %.79, 0
  br i1 %i.ba, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 2 uses
  %i.bb = mul nsw i64 %indvars.iv106, %i.ai
  %wide.trip.count104 = zext i32 %smin to i64     ; 3 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %4, i64 %i.bb ; 11 uses
  %invariant.gep119 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv106 ; 11 uses
  %min.iters.check163 = icmp ult i32 %smin, 24
  br i1 %min.iters.check163, label %scalar.ph.preheader, label %vector.scevcheck147

vector.scevcheck147:                              ; preds = %.lr.ph88
  %mul.result152 = shl nsw i64 %i.aw, 3
  %mul.overflow153 = icmp ugt i64 %i.aw, 2305843009213693951
  %i.bc = getelementptr i8, ptr %scevgep150, i64 %mul.result152
  %i.bd = icmp ult ptr %i.bc, %scevgep150
  %i.be = or i1 %i.bd, %mul.overflow153
  %i.bf = or i1 %ident.check148, %i.be
  br i1 %i.bf, label %scalar.ph.preheader, label %vector.memcheck154

vector.memcheck154:                               ; preds = %vector.scevcheck147
  %bound0160 = icmp ult ptr %scevgep155.a, %scevgep159
  %bound1161 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %scalar.ph.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck154
  %n.vec166 = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next177, %vector.body167 ] ; 4 uses
  %i.bg = or disjoint i64 %index168, 4            ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep117, i64 %index168
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep117, i64 %i.bg
  %wide.vec169.a = load <8 x float>, ptr %i.bh, align 4, !alias.scope !10
  %wide.vec172 = load <8 x float>, ptr %i.bi, align 4, !alias.scope !10
  %i.bj = getelementptr [8 x i8], ptr %invariant.gep119, i64 %index168
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bg
  store <8 x float> %wide.vec169.a, ptr %i.bj, align 4, !alias.scope !13, !noalias !10
  store <8 x float> %wide.vec172, ptr %i.bk, align 4, !alias.scope !13, !noalias !10
  %index.next177 = add nuw i64 %index168, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next177, %n.vec166
  br i1 %i.bl, label %middle.block178, label %vector.body167, !llvm.loop !15

middle.block178:                                  ; preds = %vector.body167
  %cmp.n179 = icmp eq i64 %n.vec166, %wide.trip.count104
  br i1 %cmp.n179, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck154, %vector.scevcheck147, %.lr.ph88, %middle.block178
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck154 ], [ 0, %vector.scevcheck147 ], [ 0, %.lr.ph88 ], [ %n.vec166, %middle.block178 ] ; 3 uses
  %xtraiter182 = and i64 %i.aq, 7                 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph.prol ], [ %indvars.iv99.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter184 = phi i64 [ %prol.iter184.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep118.prol = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.bm = mul nsw i64 %indvars.iv99.prol, %i.ag
  %gep120.prol = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bm
  %i.bn = load <2 x float>, ptr %gep118.prol, align 4
  store <2 x float> %i.bn, ptr %gep120.prol, align 4
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter184.next = add i64 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i64 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !18

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv99.ph, %i.aq
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.7, %scalar.ph ], [ %indvars.iv99.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bq = mul nsw i64 %indvars.iv99, %i.ag
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bq
  %i.br = load <2 x float>, ptr %gep118, align 4
  store <2 x float> %i.br, ptr %gep120, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bs = mul nsw i64 %indvars.iv.next100, %i.ag
  %gep120.1 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bs
  %i.bt = load <2 x float>, ptr %gep118.1, align 4
  store <2 x float> %i.bt, ptr %gep120.1, align 4
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.bu = mul nsw i64 %indvars.iv.next100.1, %i.ag
  %gep120.2 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bu
  %i.bv = load <2 x float>, ptr %gep118.2, align 4
  store <2 x float> %i.bv, ptr %gep120.2, align 4
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.bw = mul nsw i64 %indvars.iv.next100.2, %i.ag
  %gep120.3 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.bw
  %i.bx = load <2 x float>, ptr %gep118.3, align 4
  store <2 x float> %i.bx, ptr %gep120.3, align 4
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %gep118.4 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.by = mul nsw i64 %indvars.iv.next100.3, %i.ag
  %gep120.4 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.by
  %i.bz = load <2 x float>, ptr %gep118.4, align 4
  store <2 x float> %i.bz, ptr %gep120.4, align 4
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99, 5 ; 2 uses
  %gep118.5 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.ca = mul nsw i64 %indvars.iv.next100.4, %i.ag
  %gep120.5 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ca
  %i.cb = load <2 x float>, ptr %gep118.5, align 4
  store <2 x float> %i.cb, ptr %gep120.5, align 4
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99, 6 ; 2 uses
  %gep118.6 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.cc = mul nsw i64 %indvars.iv.next100.5, %i.ag
  %gep120.6 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.cc
  %i.cd = load <2 x float>, ptr %gep118.6, align 4
  store <2 x float> %i.cd, ptr %gep120.6, align 4
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99, 7 ; 2 uses
  %gep118.7 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.ce = mul nsw i64 %indvars.iv.next100.6, %i.ag
  %gep120.7 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ce
  %i.cf = load <2 x float>, ptr %gep118.7, align 4
  store <2 x float> %i.cf, ptr %gep120.7, align 4
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7, %wide.trip.count104
  br i1 %exitcond105.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !20

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.cg = add nuw i64 %indvars.iv94, %i.o
  %i.ch = sub i64 %wide.trip.count, %i.cg         ; 7 uses
  %i.ci = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep127.a = getelementptr i8, ptr %i.z, i64 %i.ci
  %i.cj = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.ck = shl i64 %i.cj, 3
  %scevgep128 = getelementptr i8, ptr %6, i64 %i.ck
  %i.cl = mul i64 %i.w, %indvars.iv94
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.cl
  %i.cm = mul i64 %i.y, %indvars.iv94
  %scevgep130 = getelementptr i8, ptr %i.ab, i64 %i.cm
  %i.cn = sub i64 %i.t, %indvars.iv94             ; 2 uses
  %i.co = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.co ; 2 uses
  %i.cp = mul i64 %i.w, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %i.ad, i64 %i.cp ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.cq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.cr = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.cr ; 12 uses
  %invariant.gep115 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv94 ; 12 uses
  %min.iters.check = icmp ult i64 %i.ch, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %mul.result = shl i64 %i.cn, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.cn, 2305843009213693951
  %i.cs = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ct = icmp ult ptr %i.cs, %scevgep
  %8 = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %9 = icmp ult ptr %8, %scevgep123
  %10 = or i1 %9, %mul.overflow
  %i.cu = or i1 %i.ct, %ident.check
  %i.cv = or i1 %i.cu, %10
  br i1 %i.cv, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep127.a, %scevgep130
  %bound1 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check131 = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ch, 12
  %n.vec = and i64 %i.ch, -16                     ; 4 uses
  %i.cw = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = add nuw i64 %indvars.iv, %index         ; 3 uses
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cx
  %i.da = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cy
  %wide.vec = load <16 x float>, ptr %i.cz, align 4, !alias.scope !21
  %wide.vec133 = load <16 x float>, ptr %i.da, align 4, !alias.scope !21
  %i.db = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cx
  %i.dc = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.cy
  store <16 x float> %wide.vec, ptr %i.db, align 4, !alias.scope !24, !noalias !21
  store <16 x float> %wide.vec133, ptr %i.dc, align 4, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.ch, -4                   ; 3 uses
  %i.de = add i64 %indvars.iv, %n.vec138
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.df = add nuw i64 %indvars.iv, %index139      ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.df
  %wide.vec140 = load <8 x float>, ptr %i.dg, align 4, !alias.scope !21
  %i.dh = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.df
  store <8 x float> %wide.vec140, ptr %i.dh, align 4, !alias.scope !24, !noalias !21
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n145 = icmp eq i64 %i.ch, %n.vec138
  br i1 %cmp.n145, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %iter.check ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %vector.memcheck ], [ %i.cw, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ] ; 4 uses
  %i.dj = sub i64 %wide.trip.count, %indvars.iv91.ph
  %xtraiter = and i64 %i.dj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91.prol
  %i.dk = mul nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dk
  %i.dl = load <2 x float>, ptr %gep.prol, align 4
  store <2 x float> %i.dl, ptr %gep116.prol, align 4
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !29

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ]
  %i.dm = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.7, %vec.epilog.scalar.ph ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.do = mul nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.do
  %i.dp = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.dp, ptr %gep116, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.dq = mul nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dq
  %i.dr = load <2 x float>, ptr %gep.1, align 4
  store <2 x float> %i.dr, ptr %gep116.1, align 4
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.ds = mul nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ds
  %i.dt = load <2 x float>, ptr %gep.2, align 4
  store <2 x float> %i.dt, ptr %gep116.2, align 4
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.du = mul nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.du
  %i.dv = load <2 x float>, ptr %gep.3, align 4
  store <2 x float> %i.dv, ptr %gep116.3, align 4
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.3
  %i.dw = mul nsw i64 %indvars.iv.next92.3, %i.p
  %gep116.4 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dw
  %i.dx = load <2 x float>, ptr %gep.4, align 4
  store <2 x float> %i.dx, ptr %gep116.4, align 4
  %indvars.iv.next92.4 = add nuw nsw i64 %indvars.iv91, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.4
  %i.dy = mul nsw i64 %indvars.iv.next92.4, %i.p
  %gep116.5 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.dy
  %i.dz = load <2 x float>, ptr %gep.5, align 4
  store <2 x float> %i.dz, ptr %gep116.5, align 4
  %indvars.iv.next92.5 = add nuw nsw i64 %indvars.iv91, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.5
  %i.ea = mul nsw i64 %indvars.iv.next92.5, %i.p
  %gep116.6 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ea
  %i.eb = load <2 x float>, ptr %gep.6, align 4
  store <2 x float> %i.eb, ptr %gep116.6, align 4
  %indvars.iv.next92.6 = add nuw nsw i64 %indvars.iv91, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.6
  %i.ec = mul nsw i64 %indvars.iv.next92.6, %i.p
  %gep116.7 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ec
  %i.ed = load <2 x float>, ptr %gep.7, align 4
  store <2 x float> %i.ed, ptr %gep116.7, align 4
  %indvars.iv.next92.7 = add nuw nsw i64 %indvars.iv91, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next92.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !31

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !9, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !9, !16}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9, !16, !17}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !9, !16, !17}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !9, !16}
!31 = distinct !{!31, !9}
end_hunk_0
