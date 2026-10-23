Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/bignum?download=true
inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN17double_conversion6Bignum6SquareEv:bb.a
  %wide.load.5 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !19
  %wide.load123.5 = load <4 x i32>, ptr %i.af, align 4, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 176
  store <4 x i32> %wide.load.5, ptr %i.ag, align 4, !tbaa !19
  store <4 x i32> %wide.load123.5, ptr %i.ah, align 4, !tbaa !19
  %i.ai = icmp eq i64 %n.vec, 48
  br i1 %i.ai, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 212
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !19
  %wide.load123.6 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  store <4 x i32> %wide.load.6, ptr %i.al, align 4, !tbaa !19
  store <4 x i32> %wide.load123.6, ptr %i.am, align 4, !tbaa !19
  %i.an = icmp eq i64 %n.vec, 56
  br i1 %i.an, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 244
  %wide.load.7 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !19
  %wide.load123.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  store <4 x i32> %wide.load.7, ptr %i.aq, align 4, !tbaa !19
  store <4 x i32> %wide.load123.7, ptr %i.ar, align 4, !tbaa !19
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.preheader51.lr.ph, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader169

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader169: ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

.preheader51.lr.ph:                               ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.at = zext nneg i32 %i.b to i64               ; 3 uses
  %invariant.gep113 = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %invariant.gep115 = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 2 uses
  br label %.preheader51

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader169, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader169 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.av, ptr %gep, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %.preheader51.lr.ph, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !49

.preheader51:                                     ; preds = %.preheader51.lr.ph, %.loopexit
  %indvars.iv84 = phi i64 [ 1, %.preheader51.lr.ph ], [ %indvars.iv.next85, %.loopexit ] ; 5 uses
  %indvars.iv73 = phi i64 [ 0, %.preheader51.lr.ph ], [ %indvars.iv.next74, %.loopexit ] ; 5 uses
  %.058 = phi i64 [ 0, %.preheader51.lr.ph ], [ %i.cc, %.loopexit ] ; 2 uses
  %min.iters.check125 = icmp samesign ult i64 %indvars.iv84, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader51
  %n.vec127 = and i64 %indvars.iv84, 9223372036854775804 ; 4 uses
  %i.aw = sub nsw i64 %indvars.iv73, %n.vec127
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.058, i64 0
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph126 ], [ %i.bk, %vector.body128 ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph126 ], [ %i.bl, %vector.body128 ]
  %i.ay = sub i64 %indvars.iv73, %index129
  %i.az = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = getelementptr i8, ptr %i.az, i64 -12
  %wide.load131 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !19
  %wide.load132 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !19
  %reverse = shufflevector <2 x i32> %wide.load131, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse133 = shufflevector <2 x i32> %wide.load132, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep115, i64 %index129 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %wide.load134 = load <2 x i32>, ptr %i.bc, align 4, !tbaa !19
  %wide.load135 = load <2 x i32>, ptr %i.bd, align 4, !tbaa !19
  %i.be = zext <2 x i32> %reverse to <2 x i64>
  %i.bf = zext <2 x i32> %reverse133 to <2 x i64>
  %i.bg = zext <2 x i32> %wide.load134 to <2 x i64>
  %i.bh = zext <2 x i32> %wide.load135 to <2 x i64>
  %i.bi = mul nuw <2 x i64> %i.bg, %i.be
  %i.bj = mul nuw <2 x i64> %i.bh, %i.bf
  %i.bk = add <2 x i64> %i.bi, %vec.phi           ; 2 uses
  %i.bl = add <2 x i64> %i.bj, %vec.phi130        ; 2 uses
  %index.next136 = add nuw i64 %index129, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.bm, label %middle.block137, label %vector.body128, !llvm.loop !50

middle.block137:                                  ; preds = %vector.body128
  %bin.rdx = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n138 = icmp eq i64 %indvars.iv84, %n.vec127
  br i1 %cmp.n138, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader51, %middle.block137
  %indvars.iv75.ph = phi i64 [ %indvars.iv73, %.preheader51 ], [ %i.aw, %middle.block137 ]
  %indvars.iv71.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec127, %middle.block137 ]
  %.156.ph = phi i64 [ %.058, %.preheader51 ], [ %i.bn, %middle.block137 ]
  br label %scalar.ph124

.preheader:                                       ; preds = %.loopexit, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %.0.lcssa = phi i64 [ 0, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.cc, %.loopexit ]
  %i.bo = icmp sgt i32 %i.c, %i.b
  br i1 %i.bo, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.bp = add nsw i32 %i.b, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.br = sext i16 %i.a to i64                    ; 7 uses
  %i.bs = sext i32 %i.bp to i64
  %wide.trip.count105 = sext i32 %i.c to i64
  %invariant.op = add nsw i64 %i.bs, %i.br
  %wide.trip.count100 = zext i32 %i.b to i64      ; 2 uses
  %invariant.gep117 = getelementptr [4 x i8], ptr %0, i64 %i.br ; 2 uses
  %invariant.gep119 = getelementptr [4 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  br label %bb.d

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph124 ], [ %indvars.iv75.ph, %scalar.ph124.preheader ] ; 2 uses
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %scalar.ph124 ], [ %indvars.iv71.ph, %scalar.ph124.preheader ] ; 2 uses
  %.156 = phi i64 [ %i.by, %scalar.ph124 ], [ %.156.ph, %scalar.ph124.preheader ]
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv75
  %i.bt = load i32, ptr %gep114, align 4, !tbaa !19
  %gep116 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep115, i64 %indvars.iv71
  %i.bu = load i32, ptr %gep116, align 4, !tbaa !19
  %i.bv = zext i32 %i.bt to i64
  %i.bw = zext i32 %i.bu to i64
  %i.bx = mul nuw i64 %i.bw, %i.bv
  %i.by = add i64 %i.bx, %.156                    ; 2 uses
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next72, %indvars.iv84
  br i1 %exitcond83.not, label %.loopexit, label %scalar.ph124, !llvm.loop !51

.loopexit:                                        ; preds = %scalar.ph124, %middle.block137
  %.lcssa121 = phi i64 [ %i.bn, %middle.block137 ], [ %i.by, %scalar.ph124 ] ; 2 uses
  %i.bz = trunc i64 %.lcssa121 to i32
  %i.ca = and i32 %i.bz, 268435455
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv73
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !19
  %i.cc = lshr i64 %.lcssa121, 28                 ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next74, %i.at
  br i1 %exitcond90.not, label %.preheader, label %.preheader51, !llvm.loop !52

._crit_edge67:                                    ; preds = %._crit_edge, %.preheader
  %i.cd = trunc i32 %i.c to i16                   ; 4 uses
  store i16 %i.cd, ptr %0, align 4, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !18
  %i.cg = shl i16 %i.cf, 1
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !18
  %i.ch = icmp sgt i16 %i.cd, 0
  br i1 %i.ch, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge67, %bb.c
  %i.ci = phi i16 [ %i.cn, %bb.c ], [ %i.cd, %._crit_edge67 ] ; 3 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr %0, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !19
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.c, label %_ZN17double_conversion6Bignum5ClampEv.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.cn = add nsw i16 %i.ci, -1                   ; 2 uses
  store i16 %i.cn, ptr %0, align 4, !tbaa !17
  %i.co = icmp sgt i16 %i.ci, 1
  br i1 %i.co, label %.lr.ph.i, label %.critedge.thread3.i, !llvm.loop !1

.critedge.i:                                      ; preds = %._crit_edge67
  %i.cp = icmp eq i16 %i.cd, 0
  br i1 %i.cp, label %.critedge.thread3.i, label %_ZN17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.c, %.critedge.i
  store i16 0, ptr %i.ce, align 2, !tbaa !18
  br label %_ZN17double_conversion6Bignum5ClampEv.exit

_ZN17double_conversion6Bignum5ClampEv.exit:       ; preds = %.lr.ph.i, %.critedge.i, %.critedge.thread3.i
  ret void

bb.d:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph66 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.br, %.lr.ph66 ], [ %indvars.iv.next103, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ 1, %.lr.ph66 ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %.265 = phi i64 [ %.0.lcssa, %.lr.ph66 ], [ %i.du, %._crit_edge ] ; 3 uses
  %i.cq = icmp slt i64 %indvars.iv102, %invariant.op
  br i1 %i.cq, label %.lr.ph62.preheader, label %._crit_edge

.lr.ph62.preheader:                               ; preds = %bb.d
  %1 = xor i64 %indvar, -1
  %2 = add i64 %1, %wide.trip.count100            ; 3 uses
  %min.iters.check142 = icmp ult i64 %2, 4
  br i1 %min.iters.check142, label %.lr.ph62.preheader162, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph62.preheader
  %n.vec144 = and i64 %2, -4                      ; 4 uses
  %i.cr = sub i64 %i.br, %n.vec144
  %i.cs = add i64 %indvars.iv91, %n.vec144
  %i.ct = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.265, i64 0
  %i.cu = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv91
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next155, %vector.body145 ] ; 3 uses
  %vec.phi147 = phi <2 x i64> [ %i.ct, %vector.ph143 ], [ %i.dh, %vector.body145 ]
  %vec.phi148 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.di, %vector.body145 ]
  %i.cv = sub i64 %i.br, %index146
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep117, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = getelementptr i8, ptr %i.cw, i64 -12
  %wide.load149 = load <2 x i32>, ptr %i.cx, align 4, !tbaa !19
  %wide.load150 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !19
  %reverse151 = shufflevector <2 x i32> %wide.load149, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x i32> %wide.load150, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = getelementptr [4 x i8], ptr %i.cu, i64 %index146 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %wide.load153 = load <2 x i32>, ptr %i.cz, align 4, !tbaa !19
  %wide.load154 = load <2 x i32>, ptr %i.da, align 4, !tbaa !19
  %i.db = zext <2 x i32> %reverse151 to <2 x i64>
  %i.dc = zext <2 x i32> %reverse152 to <2 x i64>
  %i.dd = zext <2 x i32> %wide.load153 to <2 x i64>
  %i.de = zext <2 x i32> %wide.load154 to <2 x i64>
  %i.df = mul nuw <2 x i64> %i.dd, %i.db
  %i.dg = mul nuw <2 x i64> %i.de, %i.dc
  %i.dh = add <2 x i64> %i.df, %vec.phi147        ; 2 uses
  %i.di = add <2 x i64> %i.dg, %vec.phi148        ; 2 uses
  %index.next155 = add nuw i64 %index146, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next155, %n.vec144
  br i1 %i.dj, label %middle.block156, label %vector.body145, !llvm.loop !53

middle.block156:                                  ; preds = %vector.body145
  %bin.rdx157 = add <2 x i64> %i.di, %i.dh
  %i.dk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %2, %n.vec144
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph62.preheader162

.lr.ph62.preheader162:                            ; preds = %.lr.ph62.preheader, %middle.block156
  %indvars.iv95.in.ph = phi i64 [ %i.br, %.lr.ph62.preheader ], [ %i.cr, %middle.block156 ]
  %indvars.iv93.ph = phi i64 [ %indvars.iv91, %.lr.ph62.preheader ], [ %i.cs, %middle.block156 ]
  %.361.ph = phi i64 [ %.265, %.lr.ph62.preheader ], [ %i.dk, %middle.block156 ]
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader162, %.lr.ph62
  %indvars.iv95.in = phi i64 [ %indvars.iv95, %.lr.ph62 ], [ %indvars.iv95.in.ph, %.lr.ph62.preheader162 ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.lr.ph62 ], [ %indvars.iv93.ph, %.lr.ph62.preheader162 ] ; 2 uses
  %.361 = phi i64 [ %i.dq, %.lr.ph62 ], [ %.361.ph, %.lr.ph62.preheader162 ]
  %indvars.iv95 = add nsw i64 %indvars.iv95.in, -1
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv95.in
  %i.dl = load i32, ptr %gep118, align 4, !tbaa !19
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv93
  %i.dm = load i32, ptr %gep120, align 4, !tbaa !19
  %i.dn = zext i32 %i.dl to i64
  %i.do = zext i32 %i.dm to i64
  %i.dp = mul nuw i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %.361                    ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block156, %bb.d
  %.3.lcssa = phi i64 [ %.265, %bb.d ], [ %i.dk, %middle.block156 ], [ %i.dq, %.lr.ph62 ] ; 2 uses
  %i.dr = trunc i64 %.3.lcssa to i32
  %i.ds = and i32 %i.dr, 268435455
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv102
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !19
  %i.du = lshr i64 %.3.lcssa, 28
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond106.not, label %._crit_edge67, label %bb.d, !llvm.loop !55
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN17double_conversion6Bignum17AssignPowerUInt16Eti(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !19
  br label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit.sink.split

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  store i16 0, ptr %i.d, align 2, !tbaa !18
  %i.e = zext i16 %1 to i32                       ; 2 uses
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = mul nsw i32 %i.j, %2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04777 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %.04876 = phi i16 [ %i.i, %.lr.ph ], [ %1, %bb.c ]
  %i.i = lshr exact i16 %.04876, 1                ; 3 uses
  %i.j = add nuw nsw i32 %.04777, 1               ; 2 uses
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !56

._crit_edge:                                      ; preds = %.preheader.loopexit, %bb.c
  %.048.lcssa = phi i16 [ %1, %bb.c ], [ %i.i, %.preheader.loopexit ] ; 3 uses
  %.047.lcssa = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader.loopexit ] ; 2 uses
  %.lcssa75 = phi i32 [ %i.e, %bb.c ], [ %i.k, %.preheader.loopexit ]
  %i.n = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.lcssa75, i1 true) ; 2 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %i.p = mul nsw i32 %i.o, %2
  %i.q = icmp sgt i32 %i.p, 3555
  br i1 %i.q, label %bb.d, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %._crit_edge, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit
  %.042 = phi i32 [ %i.r, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit ], [ 1, %._crit_edge ] ; 3 uses
  %.not50 = icmp slt i32 %2, %.042
  %i.r = shl i32 %.042, 1
  br i1 %.not50, label %bb.e, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !57

bb.e:                                             ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.s = ashr i32 %.042, 2                        ; 2 uses
  %i.t = zext i16 %.048.lcssa to i64              ; 9 uses
  %.not98 = icmp eq i32 %i.s, 0
  br i1 %.not98, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.e
  %i.u = or disjoint i32 %i.n, 32
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph89, %bb.h
  %.087 = phi i1 [ false, %.lr.ph89 ], [ %.2, %bb.h ] ; 2 uses
  %.03986 = phi i64 [ %i.t, %.lr.ph89 ], [ %.241, %bb.h ] ; 2 uses
  %.14385 = phi i32 [ %i.s, %.lr.ph89 ], [ %i.ab, %bb.h ] ; 2 uses
  %i.w = mul nuw i64 %.03986, %.03986             ; 3 uses
  %i.x = and i32 %.14385, %2
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i64 %i.w, %i.v
  %i.z = icmp ne i64 %i.y, 0                      ; 2 uses
  %i.aa = select i1 %i.z, i64 1, i64 %i.t
  %.140 = mul i64 %i.aa, %i.w
  %.1 = select i1 %i.z, i1 true, i1 %.087
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.241 = phi i64 [ %.140, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %.2 = phi i1 [ %.1, %bb.g ], [ %.087, %bb.f ]   ; 2 uses
  %i.ab = ashr i32 %.14385, 1                     ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ult i64 %.241, 4294967296
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.f, label %._crit_edge90, !llvm.loop !58

._crit_edge90:                                    ; preds = %bb.h, %bb.e
  %.143.lcssa = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %.039.lcssa = phi i64 [ %i.t, %bb.e ], [ %.241, %bb.h ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %bb.e ], [ %.2, %bb.h ]
  %.not6.i = icmp eq i64 %.039.lcssa, 0
  br i1 %.not6.i, label %_ZN17double_conversion6Bignum12AssignUInt64Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.i
  %indvars = trunc i64 %indvars.iv.next.i to i16  ; 2 uses
  store i16 %indvars, ptr %0, align 4, !tbaa !17
  br label %_ZN17double_conversion6Bignum12AssignUInt64Em.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.057.i = phi i64 [ %.039.lcssa, %.lr.ph.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ag = trunc i64 %.057.i to i32
  %i.ah = and i32 %i.ag, 268435455
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
end_hunk_0
