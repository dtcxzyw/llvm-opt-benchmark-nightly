Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_str_trans?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_str_trans(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
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
  %i.o = zext i1 %.not76 to i64                   ; 2 uses
  %i.p = sext i32 %7 to i64                       ; 9 uses
  %.neg121 = sext i1 %.not76 to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %5 to i64                       ; 3 uses
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 6 uses
  %i.s = select i1 %.not76, i64 4, i64 0          ; 2 uses
  %i.t = shl nuw nsw i64 %wide.trip.count, 2
  %i.u = shl nsw i64 %i.r, 2
  %i.v = add nsw i64 %i.u, 4
  %i.w = shl nsw i64 %i.r, 2
  %i.x = getelementptr i8, ptr %6, i64 %i.s
  %i.y = getelementptr i8, ptr %4, i64 %i.s
  %i.z = getelementptr i8, ptr %4, i64 %i.t
  %ident.check.not = icmp eq i32 %7, 1
  br label %bb.h

.preheader80:                                     ; preds = %bb.g
  %i.aa = tail call i32 @llvm.smin.i32(i32 %3, i32 %7) ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %.
  br i1 %i.ab, label %.preheader.preheader, label %.loopexit81

.preheader.preheader:                             ; preds = %.preheader80
  %i.ac = sext i32 %7 to i64                      ; 9 uses
  %i.ad = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.ae = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.aa to i64
  %i.af = select i1 %.not76, i64 4, i64 0
  %i.ag = shl nsw i64 %i.ae, 2
  %i.ah = select i1 %.not76, i64 %i.ag, i64 0
  %i.ai = shl nsw i64 %i.ae, 2
  %i.aj = getelementptr i8, ptr %6, i64 %i.af
  %i.ak = getelementptr i8, ptr %4, i64 %i.ah
  %ident.check137.not = icmp eq i32 %7, 1
  br label %.preheader

.loopexit:                                        ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163, %middle.block159, %vec.epilog.middle.block172, %.preheader
  %indvars.iv.next103 = add nuw nsw i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit81, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv106 = phi i64 [ %i.ad, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 2 uses
  %i.al = shl i64 %indvar, 2
  %scevgep139 = getelementptr i8, ptr %i.aj, i64 %i.al
  %8 = trunc i64 %indvar to i32
  %9 = add i32 %8, 1
  %smin140 = tail call i32 @llvm.smin.i32(i32 %5, i32 %9)
  %i.am = zext i32 %smin140 to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep139, i64 %i.an
  %i.ao = mul i64 %i.ai, %indvar
  %scevgep142 = getelementptr i8, ptr %i.ak, i64 %i.ao
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.an
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.ap = add i64 %indvars.iv.next107, %.neg
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %5)
  %i.ar = icmp sgt i32 %.79, 0
  br i1 %i.ar, label %iter.check162, label %.loopexit

iter.check162:                                    ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 3 uses
  %i.as = mul nsw i64 %indvars.iv106, %i.ae
  %wide.trip.count104 = zext i32 %smin to i64     ; 8 uses
  %invariant.gep117 = getelementptr [4 x i8], ptr %4, i64 %i.as ; 12 uses
  %invariant.gep119 = getelementptr [4 x i8], ptr %6, i64 %indvars.iv106 ; 12 uses
  %min.iters.check147 = icmp ugt i32 %smin, 3
  %or.cond174 = and i1 %min.iters.check147, %ident.check137.not
  br i1 %or.cond174, label %vector.memcheck138, label %vec.epilog.scalar.ph163.preheader

vector.memcheck138:                               ; preds = %iter.check162
  %bound0144 = icmp ult ptr %invariant.gep119, %scevgep143
  %bound1145 = icmp ult ptr %invariant.gep117, %scevgep141
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %vec.epilog.scalar.ph163.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck138
  %min.iters.check149 = icmp ult i32 %smin, 32
  br i1 %min.iters.check149, label %vec.epilog.ph166, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.at = and i64 %wide.trip.count104, 28
  %n.vec151 = and i64 %wide.trip.count104, 4294967264 ; 4 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %invariant.gep117, i64 %index153 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %i.aw = getelementptr i8, ptr %i.au, i64 64
  %i.ax = getelementptr i8, ptr %i.au, i64 96
  %wide.load154 = load <8 x float>, ptr %i.au, align 4, !tbaa !10, !alias.scope !12
  %wide.load155 = load <8 x float>, ptr %i.av, align 4, !tbaa !10, !alias.scope !12
  %wide.load156 = load <8 x float>, ptr %i.aw, align 4, !tbaa !10, !alias.scope !12
  %wide.load157 = load <8 x float>, ptr %i.ax, align 4, !tbaa !10, !alias.scope !12
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep119, i64 %index153 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr i8, ptr %i.ay, i64 64
  %i.bb = getelementptr i8, ptr %i.ay, i64 96
  store <8 x float> %wide.load154, ptr %i.ay, align 4, !tbaa !10, !alias.scope !15, !noalias !12
  store <8 x float> %wide.load155, ptr %i.az, align 4, !tbaa !10, !alias.scope !15, !noalias !12
  store <8 x float> %wide.load156, ptr %i.ba, align 4, !tbaa !10, !alias.scope !15, !noalias !12
  store <8 x float> %wide.load157, ptr %i.bb, align 4, !tbaa !10, !alias.scope !15, !noalias !12
  %index.next158 = add nuw i64 %index153, 32      ; 2 uses
  %i.bc = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.bc, label %middle.block159, label %vector.body152, !llvm.loop !17

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %n.vec151, %wide.trip.count104
  br i1 %cmp.n160, label %.loopexit, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block159
  %min.epilog.iters.check165 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check165, label %vec.epilog.scalar.ph163.preheader, label %vec.epilog.ph166, !prof !20

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check164
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec167 = and i64 %wide.trip.count104, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph166
  %index169 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph166 ], [ %index.next171, %vec.epilog.vector.body168 ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep117, i64 %index169
  %wide.load170 = load <4 x float>, ptr %i.bd, align 4, !tbaa !10, !alias.scope !12
  %i.be = getelementptr [4 x i8], ptr %invariant.gep119, i64 %index169
  store <4 x float> %wide.load170, ptr %i.be, align 4, !tbaa !10, !alias.scope !15, !noalias !12
  %index.next171 = add nuw i64 %index169, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next171, %n.vec167
  br i1 %i.bf, label %vec.epilog.middle.block172, label %vec.epilog.vector.body168, !llvm.loop !21

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body168
  %cmp.n173 = icmp eq i64 %n.vec167, %wide.trip.count104
  br i1 %cmp.n173, label %.loopexit, label %vec.epilog.scalar.ph163.preheader

vec.epilog.scalar.ph163.preheader:                ; preds = %vector.memcheck138, %iter.check162, %vec.epilog.iter.check164, %vec.epilog.middle.block172
  %indvars.iv99.ph = phi i64 [ 0, %iter.check162 ], [ 0, %vector.memcheck138 ], [ %n.vec151, %vec.epilog.iter.check164 ], [ %n.vec167, %vec.epilog.middle.block172 ] ; 4 uses
  %i.bg = sub nsw i64 %wide.trip.count104, %indvars.iv99.ph
  %xtraiter177 = and i64 %i.bg, 7                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol

vec.epilog.scalar.ph163.prol:                     ; preds = %vec.epilog.scalar.ph163.preheader, %vec.epilog.scalar.ph163.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %vec.epilog.scalar.ph163.prol ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph163.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %vec.epilog.scalar.ph163.prol ], [ 0, %vec.epilog.scalar.ph163.preheader ]
  %gep118.prol = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.bh = load float, ptr %gep118.prol, align 4, !tbaa !10
  %i.bi = mul nsw i64 %indvars.iv99.prol, %i.ac
  %gep120.prol = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bi
  store float %i.bh, ptr %gep120.prol, align 4, !tbaa !10
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol, !llvm.loop !22

vec.epilog.scalar.ph163.prol.loopexit:            ; preds = %vec.epilog.scalar.ph163.prol, %vec.epilog.scalar.ph163.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %vec.epilog.scalar.ph163.preheader ], [ %indvars.iv.next100.prol, %vec.epilog.scalar.ph163.prol ]
  %i.bj = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %i.bk = icmp ugt i64 %i.bj, -8
  br i1 %i.bk, label %.loopexit, label %vec.epilog.scalar.ph163

vec.epilog.scalar.ph163:                          ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.7, %vec.epilog.scalar.ph163 ], [ %indvars.iv99.unr, %vec.epilog.scalar.ph163.prol.loopexit ] ; 10 uses
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.bl = load float, ptr %gep118, align 4, !tbaa !10
  %i.bm = mul nsw i64 %indvars.iv99, %i.ac
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bm
  store float %i.bl, ptr %gep120, align 4, !tbaa !10
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.bn = load float, ptr %gep118.1, align 4, !tbaa !10
  %i.bo = mul nsw i64 %indvars.iv.next100, %i.ac
  %gep120.1 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bo
  store float %i.bn, ptr %gep120.1, align 4, !tbaa !10
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.bp = load float, ptr %gep118.2, align 4, !tbaa !10
  %i.bq = mul nsw i64 %indvars.iv.next100.1, %i.ac
  %gep120.2 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bq
  store float %i.bp, ptr %gep120.2, align 4, !tbaa !10
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.br = load float, ptr %gep118.3, align 4, !tbaa !10
  %i.bs = mul nsw i64 %indvars.iv.next100.2, %i.ac
  %gep120.3 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bs
  store float %i.br, ptr %gep120.3, align 4, !tbaa !10
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %gep118.4 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.bt = load float, ptr %gep118.4, align 4, !tbaa !10
  %i.bu = mul nsw i64 %indvars.iv.next100.3, %i.ac
  %gep120.4 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bu
  store float %i.bt, ptr %gep120.4, align 4, !tbaa !10
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99, 5 ; 2 uses
  %gep118.5 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.bv = load float, ptr %gep118.5, align 4, !tbaa !10
  %i.bw = mul nsw i64 %indvars.iv.next100.4, %i.ac
  %gep120.5 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bw
  store float %i.bv, ptr %gep120.5, align 4, !tbaa !10
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99, 6 ; 2 uses
  %gep118.6 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.bx = load float, ptr %gep118.6, align 4, !tbaa !10
  %i.by = mul nsw i64 %indvars.iv.next100.5, %i.ac
  %gep120.6 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.by
  store float %i.bx, ptr %gep120.6, align 4, !tbaa !10
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99, 7 ; 2 uses
  %gep118.7 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.bz = load float, ptr %gep118.7, align 4, !tbaa !10
  %i.ca = mul nsw i64 %indvars.iv.next100.6, %i.ac
  %gep120.7 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.ca
  store float %i.bz, ptr %gep120.7, align 4, !tbaa !10
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7, %wide.trip.count104
  br i1 %exitcond105.not.7, label %.loopexit, label %vec.epilog.scalar.ph163, !llvm.loop !24

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 9 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.cb = add nuw i64 %indvars.iv94, %i.o
  %i.cc = sub i64 %wide.trip.count, %i.cb         ; 7 uses
  %i.cd = shl nuw nsw i64 %indvars.iv94, 3
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.cd
  %i.ce = add nuw i64 %indvars.iv94, %wide.trip.count
  %i.cf = shl i64 %i.ce, 2
  %scevgep123 = getelementptr i8, ptr %6, i64 %i.cf
  %i.cg = mul i64 %i.v, %indvars.iv94
  %scevgep124 = getelementptr i8, ptr %i.y, i64 %i.cg
  %i.ch = mul i64 %i.w, %indvars.iv94
  %scevgep125 = getelementptr i8, ptr %i.z, i64 %i.ch
  %i.ci = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.ci, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.cj = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.cj ; 11 uses
  %invariant.gep115 = getelementptr [4 x i8], ptr %6, i64 %indvars.iv94 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cc, 7
  %or.cond175 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond175, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep125
  %bound1 = icmp ult ptr %scevgep124, %scevgep123
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check126 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph
end_hunk_0
