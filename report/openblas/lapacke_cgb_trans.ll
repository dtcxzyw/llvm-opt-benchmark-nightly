Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_cgb_trans?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_cgb_trans(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp eq ptr %7, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 102, label %.preheader
    i32 101, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.b
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %6) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %.preheader107
  %i.e = add nsw i32 %4, %1
  %i.f = add nsw i32 %4, %3                       ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %6 to i64
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.j = shl nsw i64 %i.i, 3
  %ident.check = icmp ne i32 %6, 1
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.m = add nsw i32 %4, %1
  %i.n = add nsw i32 %4, %3                       ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = sext i32 %6 to i64                       ; 2 uses
  %i.q = sext i32 %8 to i64
  %wide.trip.count137 = zext nneg i32 %i.k to i64
  %i.r = shl nsw i64 %i.p, 3
  %ident.check173 = icmp ne i32 %8, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge115
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135, %._crit_edge115 ] ; 8 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128, %._crit_edge115 ] ; 5 uses
  %i.s = shl nuw nsw i64 %indvars.iv134, 3
  %scevgep182 = getelementptr i8, ptr %7, i64 %i.s ; 2 uses
  %smax183 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.t = zext nneg i32 %smax183 to i64            ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %scevgep184 = getelementptr i8, ptr %scevgep182, i64 %i.u
  %i.v = add nuw nsw i64 %i.t, 1
  %i.w = mul i64 %i.r, %indvars.iv134
  %scevgep187 = getelementptr i8, ptr %5, i64 %i.w ; 2 uses
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.u
  %smax174 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.x = zext nneg i32 %smax174 to i64            ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = shl nuw nsw i64 %indvars.iv134, 3
  %scevgep176 = getelementptr i8, ptr %7, i64 %i.z
  %i.aa = shl nuw nsw i64 %i.x, 3
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.aa ; 2 uses
  %i.ab = trunc i64 %indvars.iv134 to i32
  %i.ac = sub i32 %4, %i.ab
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.af = sub i32 %i.m, %i.ae                     ; 2 uses
  %.not103 = icmp sgt i32 %i.af, %i.n
  %. = select i1 %.not103, i32 %i.o, i32 %i.af
  %i.ag = tail call i32 @llvm.smin.i32(i32 %6, i32 %.) ; 2 uses
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %iter.check213, label %._crit_edge115

iter.check213:                                    ; preds = %bb.c
  %smax193 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.ai = zext nneg i32 %smax193 to i64           ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  %smax129 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.ak = zext nneg i32 %smax129 to i64           ; 7 uses
  %i.al = mul nsw i64 %indvars.iv134, %i.p
  %i.am = getelementptr [8 x i8], ptr %5, i64 %i.al ; 4 uses
  %invariant.gep116 = getelementptr [8 x i8], ptr %7, i64 %indvars.iv134 ; 4 uses
  %sext132 = zext nneg i32 %i.ag to i64           ; 4 uses
  %umax194 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %sext132)
  %i.an = sub nsw i64 %umax194, %i.ai             ; 7 uses
  %min.iters.check195 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check195, label %vec.epilog.scalar.ph215.preheader, label %vector.scevcheck172

vector.scevcheck172:                              ; preds = %iter.check213
  %umax175 = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %sext132)
  %i.ao = xor i64 %i.x, -1
  %i.ap = add nsw i64 %umax175, %i.ao             ; 2 uses
  %mul.result179 = shl nsw i64 %i.ap, 3
  %mul.overflow180 = icmp ugt i64 %i.ap, 2305843009213693951
  %i.aq = getelementptr i8, ptr %scevgep177, i64 %mul.result179
  %i.ar = icmp ult ptr %i.aq, %scevgep177
  %i.as = or i1 %i.ar, %mul.overflow180
  %i.at = or i1 %ident.check173, %i.as
  br i1 %i.at, label %vec.epilog.scalar.ph215.preheader, label %vector.memcheck181

vector.memcheck181:                               ; preds = %vector.scevcheck172
  %umax185 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %sext132)
  %i.au = shl nuw nsw i64 %umax185, 3             ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep182, i64 %i.au
  %scevgep189 = getelementptr i8, ptr %scevgep187, i64 %i.au
  %bound0190 = icmp ult ptr %scevgep184, %scevgep189
  %bound1191 = icmp ult ptr %scevgep188, %scevgep186
  %found.conflict192 = and i1 %bound0190, %bound1191
  br i1 %found.conflict192, label %vec.epilog.scalar.ph215.preheader, label %vector.main.loop.iter.check196

vector.main.loop.iter.check196:                   ; preds = %vector.memcheck181
  %min.iters.check197 = icmp ult i64 %i.an, 16
  br i1 %min.iters.check197, label %vec.epilog.ph217, label %vector.ph198

vector.ph198:                                     ; preds = %vector.main.loop.iter.check196
  %i.av = and i64 %i.an, 12
  %n.vec199 = and i64 %i.an, -16                  ; 4 uses
  %i.aw = add nsw i64 %n.vec199, %i.ak
  br label %vector.body200

vector.body200:                                   ; preds = %vector.ph198, %vector.body200
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next210, %vector.body200 ] ; 2 uses
  %i.ax = add nuw i64 %index201, %i.ak            ; 3 uses
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.am, i64 %i.ax
  %i.ba = getelementptr [8 x i8], ptr %i.am, i64 %i.ay
  %wide.vec202 = load <16 x float>, ptr %i.az, align 4, !alias.scope !22
  %wide.vec205 = load <16 x float>, ptr %i.ba, align 4, !alias.scope !22
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.ax
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.ay
  store <16 x float> %wide.vec202, ptr %i.bb, align 4, !alias.scope !23, !noalias !22
  store <16 x float> %wide.vec205, ptr %i.bc, align 4, !alias.scope !23, !noalias !22
  %index.next210 = add nuw i64 %index201, 16      ; 2 uses
  %i.bd = icmp eq i64 %index.next210, %n.vec199
  br i1 %i.bd, label %middle.block211, label %vector.body200, !llvm.loop !11

middle.block211:                                  ; preds = %vector.body200
  %cmp.n212 = icmp eq i64 %i.an, %n.vec199
  br i1 %cmp.n212, label %._crit_edge115, label %vec.epilog.iter.check214

vec.epilog.iter.check214:                         ; preds = %middle.block211
  %min.epilog.iters.check216 = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check216, label %vec.epilog.scalar.ph215.preheader, label %vec.epilog.ph217, !prof !27

vec.epilog.ph217:                                 ; preds = %vector.main.loop.iter.check196, %vec.epilog.iter.check214
  %vec.epilog.resume.val218 = phi i64 [ %n.vec199, %vec.epilog.iter.check214 ], [ 0, %vector.main.loop.iter.check196 ]
  %n.vec219 = and i64 %i.an, -4                   ; 3 uses
  %i.be = add nsw i64 %n.vec219, %i.ak
  br label %vec.epilog.vector.body220

vec.epilog.vector.body220:                        ; preds = %vec.epilog.vector.body220, %vec.epilog.ph217
  %index221 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph217 ], [ %index.next226, %vec.epilog.vector.body220 ] ; 2 uses
  %i.bf = add nuw i64 %index221, %i.ak            ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.am, i64 %i.bf
  %wide.vec222 = load <8 x float>, ptr %i.bg, align 4, !alias.scope !22
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.bf
  store <8 x float> %wide.vec222, ptr %i.bh, align 4, !alias.scope !23, !noalias !22
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.bi, label %vec.epilog.middle.block227, label %vec.epilog.vector.body220, !llvm.loop !12

vec.epilog.middle.block227:                       ; preds = %vec.epilog.vector.body220
  %cmp.n228 = icmp eq i64 %i.an, %n.vec219
  br i1 %cmp.n228, label %._crit_edge115, label %vec.epilog.scalar.ph215.preheader

vec.epilog.scalar.ph215.preheader:                ; preds = %iter.check213, %vector.scevcheck172, %vector.memcheck181, %vec.epilog.iter.check214, %vec.epilog.middle.block227
  %indvars.iv130.ph = phi i64 [ %i.ak, %iter.check213 ], [ %i.ak, %vector.scevcheck172 ], [ %i.ak, %vector.memcheck181 ], [ %i.aw, %vec.epilog.iter.check214 ], [ %i.be, %vec.epilog.middle.block227 ]
  br label %vec.epilog.scalar.ph215

vec.epilog.scalar.ph215:                          ; preds = %vec.epilog.scalar.ph215.preheader, %vec.epilog.scalar.ph215
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %vec.epilog.scalar.ph215 ], [ %indvars.iv130.ph, %vec.epilog.scalar.ph215.preheader ] ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv130
  %i.bk = mul nuw nsw i64 %indvars.iv130, %i.q
  %gep117 = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.bk
  %i.bl = load <2 x float>, ptr %i.bj, align 4
  store <2 x float> %i.bl, ptr %gep117, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next131, %sext132
  br i1 %i.bm, label %vec.epilog.scalar.ph215, label %._crit_edge115, !llvm.loop !13

._crit_edge115:                                   ; preds = %vec.epilog.scalar.ph215, %middle.block211, %vec.epilog.middle.block227, %bb.c
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %bb.c, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %._crit_edge ] ; 8 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.bn = mul i64 %i.j, %indvars.iv124
  %scevgep148 = getelementptr i8, ptr %7, i64 %i.bn ; 2 uses
  %smax149 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.bo = zext nneg i32 %smax149 to i64           ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  %scevgep150 = getelementptr i8, ptr %scevgep148, i64 %i.bp
  %i.bq = add nuw nsw i64 %i.bo, 1
  %i.br = shl nuw nsw i64 %indvars.iv124, 3
  %scevgep153 = getelementptr i8, ptr %5, i64 %i.br ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.bp
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.bs = zext nneg i32 %smax146 to i64           ; 3 uses
  %i.bt = add nuw nsw i64 %i.bs, 1
  %i.bu = shl nuw nsw i64 %indvars.iv124, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.bu
  %i.bv = shl nuw nsw i64 %i.bs, 3
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.bv ; 2 uses
  %i.bw = trunc i64 %indvars.iv124 to i32
  %i.bx = sub i32 %4, %i.bw
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.ca = sub i32 %i.e, %i.bz                     ; 2 uses
  %.not = icmp sgt i32 %i.ca, %i.f
  %.105 = select i1 %.not, i32 %i.g, i32 %i.ca
  %i.cb = tail call i32 @llvm.smin.i32(i32 %8, i32 %.105) ; 2 uses
  %i.cc = icmp slt i32 %i.by, %i.cb
  br i1 %i.cc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %smax156 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.cd = zext nneg i32 %smax156 to i64           ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.cf = zext nneg i32 %smax to i64              ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %indvars.iv124 ; 4 uses
  %i.cg = mul nsw i64 %indvars.iv124, %i.i
  %i.ch = getelementptr [8 x i8], ptr %7, i64 %i.cg ; 4 uses
  %sext = zext nneg i32 %i.cb to i64              ; 4 uses
  %umax157 = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %sext)
  %i.ci = sub nsw i64 %umax157, %i.cd             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %sext)
  %i.cj = xor i64 %i.bs, -1
  %i.ck = add nsw i64 %umax, %i.cj                ; 2 uses
  %mul.result = shl nsw i64 %i.ck, 3
  %mul.overflow = icmp ugt i64 %i.ck, 2305843009213693951
  %i.cl = getelementptr i8, ptr %scevgep147, i64 %mul.result
  %i.cm = icmp ult ptr %i.cl, %scevgep147
  %i.cn = or i1 %i.cm, %mul.overflow
  %i.co = or i1 %ident.check, %i.cn
  br i1 %i.co, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %umax151 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %sext)
  %i.cp = shl nuw nsw i64 %umax151, 3             ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep148, i64 %i.cp
  %scevgep155 = getelementptr i8, ptr %scevgep153, i64 %i.cp
  %bound0 = icmp ult ptr %scevgep150, %scevgep155
  %bound1 = icmp ult ptr %scevgep154, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check158 = icmp ult i64 %i.ci, 16
  br i1 %min.iters.check158, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cq = and i64 %i.ci, 12
  %n.vec = and i64 %i.ci, -16                     ; 4 uses
  %i.cr = add nsw i64 %n.vec, %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add nuw i64 %index, %i.cf               ; 3 uses
  %i.ct = add i64 %i.cs, 8                        ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs
  %i.cv = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct
  %wide.vec = load <16 x float>, ptr %i.cu, align 4, !alias.scope !28
  %wide.vec160 = load <16 x float>, ptr %i.cv, align 4, !alias.scope !28
  %i.cw = getelementptr [8 x i8], ptr %i.ch, i64 %i.cs
  %i.cx = getelementptr [8 x i8], ptr %i.ch, i64 %i.ct
  store <16 x float> %wide.vec, ptr %i.cw, align 4, !alias.scope !29, !noalias !28
  store <16 x float> %wide.vec160, ptr %i.cx, align 4, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.ci, -4                   ; 3 uses
  %i.cz = add nsw i64 %n.vec164, %i.cf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 2 uses
  %i.da = add nuw i64 %index165, %i.cf            ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.da
  %wide.vec166 = load <8 x float>, ptr %i.db, align 4, !alias.scope !28
  %i.dc = getelementptr [8 x i8], ptr %i.ch, i64 %i.da
  store <8 x float> %wide.vec166, ptr %i.dc, align 4, !alias.scope !29, !noalias !28
  %index.next170 = add nuw i64 %index165, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %i.ci, %n.vec164
  br i1 %cmp.n171, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv121.ph = phi i64 [ %i.cf, %iter.check ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %vector.memcheck ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %vec.epilog.scalar.ph ], [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.de = mul nuw nsw i64 %indvars.iv121, %i.h
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv121
  %i.dg = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.dg, ptr %i.df, align 4
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next122, %sext
  br i1 %i.dh, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge115, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !24, !25, !26}
!12 = distinct !{!12, !24, !25, !26}
!13 = distinct !{!13, !24, !25}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !24, !25, !26}
!19 = distinct !{!19, !24, !25, !26}
!20 = distinct !{!20, !24, !25}
!21 = distinct !{!21, !24}
!22 = !{!9}
!23 = !{!10}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!16}
!29 = !{!17}
end_hunk_0
