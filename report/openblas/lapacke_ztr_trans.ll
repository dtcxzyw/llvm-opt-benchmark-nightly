loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@LAPACKE_ztr_trans:bb.a
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
  %i.aj = select i1 %.not76, i64 16, i64 0        ; 2 uses
  %i.ak = shl nsw i64 %i.ai, 4
  %i.al = select i1 %.not76, i64 %i.ak, i64 0
  %i.am = shl nsw i64 %i.ai, 4
  %i.an = getelementptr i8, ptr %6, i64 %i.aj
  %i.ao = getelementptr i8, ptr %4, i64 %i.al
  %i.ap = getelementptr i8, ptr %6, i64 %i.aj
  %ident.check137 = icmp ne i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block168, %.preheader
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv106 = phi i64 [ %i.ah, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 5 uses
  %smin172 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.aq = zext i32 %smin172 to i64                ; 2 uses
  %i.ar = shl i64 %indvar, 4
  %scevgep144.a = getelementptr i8, ptr %i.an, i64 %i.ar ; 2 uses
  %smin145 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.as = zext i32 %smin145 to i64
  %i.at = shl nuw nsw i64 %i.as, 4                ; 2 uses
  %scevgep146 = getelementptr i8, ptr %scevgep144.a, i64 %i.at
  %i.au = mul i64 %i.am, %indvar
  %scevgep147 = getelementptr i8, ptr %i.ao, i64 %i.au ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.at
  %smin138 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.av = zext i32 %smin138 to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ax = shl i64 %indvar, 4
  %scevgep139 = getelementptr i8, ptr %i.ap, i64 %i.ax ; 2 uses
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
  %invariant.gep117 = getelementptr [16 x i8], ptr %4, i64 %i.bb ; 7 uses
  %invariant.gep119 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv106 ; 7 uses
  %min.iters.check153 = icmp ult i32 %smin, 22
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.scevcheck136

vector.scevcheck136:                              ; preds = %.lr.ph88
  %mul.result141 = shl nsw i64 %i.aw, 4
  %mul.overflow142 = icmp ugt i64 %i.aw, 1152921504606846975
  %i.bc = getelementptr i8, ptr %scevgep139, i64 %mul.result141
  %i.bd = icmp ult ptr %i.bc, %scevgep139
  %i.be = or i1 %i.bd, %mul.overflow142
  %i.bf = or i1 %ident.check137, %i.be
  br i1 %i.bf, label %scalar.ph152.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %vector.scevcheck136
  %bound0149 = icmp ult ptr %scevgep144.a, %scevgep148
  %bound1150 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck143
  %n.vec156 = and i64 %wide.trip.count104, 4294967292 ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next167, %vector.body157 ] ; 4 uses
  %i.bg = or disjoint i64 %index158, 2            ; 2 uses
  %i.bh = getelementptr [16 x i8], ptr %invariant.gep117, i64 %index158
  %i.bi = getelementptr [16 x i8], ptr %invariant.gep117, i64 %i.bg
  %wide.vec159.a = load <4 x double>, ptr %i.bh, align 8, !alias.scope !10
  %wide.vec162 = load <4 x double>, ptr %i.bi, align 8, !alias.scope !10
  %i.bj = getelementptr [16 x i8], ptr %invariant.gep119, i64 %index158
  %i.bk = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bg
  store <4 x double> %wide.vec159.a, ptr %i.bj, align 8, !alias.scope !13, !noalias !10
  store <4 x double> %wide.vec162, ptr %i.bk, align 8, !alias.scope !13, !noalias !10
  %index.next167 = add nuw i64 %index158, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next167, %n.vec156
  br i1 %i.bl, label %middle.block168, label %vector.body157, !llvm.loop !15

middle.block168:                                  ; preds = %vector.body157
  %cmp.n169 = icmp eq i64 %n.vec156, %wide.trip.count104
  br i1 %cmp.n169, label %.loopexit, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck143, %vector.scevcheck136, %.lr.ph88, %middle.block168
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %vector.scevcheck136 ], [ 0, %.lr.ph88 ], [ %n.vec156, %middle.block168 ] ; 3 uses
  %xtraiter173 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader, %scalar.ph152.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph152.prol ], [ %indvars.iv99.ph, %scalar.ph152.preheader ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %scalar.ph152.prol ], [ 0, %scalar.ph152.preheader ]
  %gep118.prol = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.bm = mul nsw i64 %indvars.iv99.prol, %i.ag
  %gep120.prol = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bm
  %i.bn = load <2 x double>, ptr %gep118.prol, align 8
  store <2 x double> %i.bn, ptr %gep120.prol, align 8
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol, !llvm.loop !18

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph152.preheader ], [ %indvars.iv.next100.prol, %scalar.ph152.prol ]
  %i.bo = sub nsw i64 %indvars.iv99.ph, %i.aq
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit, label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %scalar.ph152 ], [ %indvars.iv99.unr, %scalar.ph152.prol.loopexit ] ; 6 uses
  %gep118 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bq = mul nsw i64 %indvars.iv99, %i.ag
  %gep120 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bq
  %i.br = load <2 x double>, ptr %gep118, align 8
  store <2 x double> %i.br, ptr %gep120, align 8
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bs = mul nsw i64 %indvars.iv.next100, %i.ag
  %gep120.1 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bs
  %i.bt = load <2 x double>, ptr %gep118.1, align 8
  store <2 x double> %i.bt, ptr %gep120.1, align 8
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.bu = mul nsw i64 %indvars.iv.next100.1, %i.ag
  %gep120.2 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bu
  %i.bv = load <2 x double>, ptr %gep118.2, align 8
  store <2 x double> %i.bv, ptr %gep120.2, align 8
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.bw = mul nsw i64 %indvars.iv.next100.2, %i.ag
  %gep120.3 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.bw
  %i.bx = load <2 x double>, ptr %gep118.3, align 8
  store <2 x double> %i.bx, ptr %gep120.3, align 8
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %exitcond105.not.3 = icmp eq i64 %indvars.iv.next100.3, %wide.trip.count104
  br i1 %exitcond105.not.3, label %.loopexit, label %scalar.ph152, !llvm.loop !20

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.by = add nuw i64 %indvars.iv94, %i.o
  %i.bz = sub i64 %wide.trip.count, %i.by         ; 3 uses
  %i.ca = shl nuw nsw i64 %indvars.iv94, 5
  %scevgep127.a = getelementptr i8, ptr %i.z, i64 %i.ca
  %i.cb = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.cc = shl i64 %i.cb, 4
  %scevgep128 = getelementptr i8, ptr %6, i64 %i.cc
  %i.cd = mul i64 %i.w, %indvars.iv94
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.cd
  %i.ce = mul i64 %i.y, %indvars.iv94
  %scevgep130 = getelementptr i8, ptr %i.ab, i64 %i.ce
  %i.cf = sub i64 %i.t, %indvars.iv94             ; 2 uses
  %i.cg = shl nuw nsw i64 %indvars.iv94, 5
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.cg ; 2 uses
  %i.ch = mul i64 %i.w, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %i.ad, i64 %i.ch ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.cj = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [16 x i8], ptr %4, i64 %i.cj ; 7 uses
  %invariant.gep115 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv94 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %mul.result = shl i64 %i.cf, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.cf, 1152921504606846975
  %i.ck = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cl = icmp ult ptr %i.ck, %scevgep
  %8 = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %9 = icmp ult ptr %8, %scevgep123
  %10 = or i1 %9, %mul.overflow
  %i.cm = or i1 %i.cl, %ident.check
  %i.cn = or i1 %i.cm, %10
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep127.a, %scevgep130
  %bound1 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.co = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = add nuw i64 %indvars.iv, %index         ; 3 uses
  %i.cq = add i64 %i.cp, 4                        ; 2 uses
  %i.cr = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.cp
  %i.cs = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.cq
  %wide.vec = load <8 x double>, ptr %i.cr, align 8, !alias.scope !21
  %wide.vec132 = load <8 x double>, ptr %i.cs, align 8, !alias.scope !21
  %i.ct = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cp
  %i.cu = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cq
  store <8 x double> %wide.vec, ptr %i.ct, align 8, !alias.scope !24, !noalias !21
  store <8 x double> %wide.vec132, ptr %i.cu, align 8, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
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
  %i.cx = mul nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.cx
  %i.cy = load <2 x double>, ptr %gep.prol, align 8
  store <2 x double> %i.cy, ptr %gep116.prol, align 8
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.cz = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph ], [ %indvars.iv91.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.db = mul nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.db
  %i.dc = load <2 x double>, ptr %gep, align 8
  store <2 x double> %i.dc, ptr %gep116, align 8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.dd = mul nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.dd
  %i.de = load <2 x double>, ptr %gep.1, align 8
  store <2 x double> %i.de, ptr %gep116.1, align 8
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.df = mul nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.df
  %i.dg = load <2 x double>, ptr %gep.2, align 8
  store <2 x double> %i.dg, ptr %gep116.2, align 8
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.dh = mul nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.dh
  %i.di = load <2 x double>, ptr %gep.3, align 8
  store <2 x double> %i.di, ptr %gep116.3, align 8
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !29

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
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !9, !16}
!29 = distinct !{!29, !9}
end_hunk_0
