Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/bignum?download=true
inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN17double_conversion6Bignum16MultiplyByUInt64Em:bb.a
  %i.ai = mul i64 %i.h, %i.aa
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nuw i64 %i.d, %i.ao
  %i.aq = and i64 %i.ak, 268435455
  %i.ar = add nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 268435455
  store i32 %i.at, ptr %i.am, align 4, !tbaa !19
  %i.au = lshr i64 %i.ak, 28
  %i.av = lshr i64 %i.ar, 28
  %i.aw = mul i64 %i.h, %i.ao
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.az = icmp sgt i16 %i.ba, 126
  br i1 %i.az, label %._crit_edge.loopexit, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %bb.f
  store i16 %i.bf, ptr %0, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph26
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %.lr.ph26, %bb.f
  %.12532 = phi i64 [ %i.bg, %bb.f ], [ %.lcssa, %.lr.ph26 ] ; 2 uses
  %i.ba = phi i16 [ %i.bf, %bb.f ], [ %i.b, %.lr.ph26 ] ; 3 uses
  %i.bb = trunc i64 %.12532 to i32
  %i.bc = and i32 %i.bb, 268435455
  %i.bd = zext nneg i16 %i.ba to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !19
  %i.bf = add nuw nsw i16 %i.ba, 1                ; 3 uses
  %i.bg = lshr i64 %.12532, 28                    ; 2 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.f, !llvm.loop !3

.loopexit.loopexit:                               ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit
  store i16 %i.bf, ptr %0, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN17double_conversion6Bignum6SquareEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !17     ; 5 uses
  %i.b = sext i16 %i.a to i32                     ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp sgt i16 %i.a, 64
  br i1 %i.d, label %bb.b, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = zext nneg i32 %i.b to i64                ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 17 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 32760                    ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !19
  %wide.load123 = load <4 x i32>, ptr %i.h, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store <4 x i32> %wide.load, ptr %invariant.gep, align 4, !tbaa !19
  store <4 x i32> %wide.load123, ptr %i.i, align 4, !tbaa !19
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.k, align 4, !tbaa !19
  %wide.load123.1 = load <4 x i32>, ptr %i.l, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  store <4 x i32> %wide.load.1, ptr %i.m, align 4, !tbaa !19
  store <4 x i32> %wide.load123.1, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.p, align 4, !tbaa !19
  %wide.load123.2 = load <4 x i32>, ptr %i.q, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store <4 x i32> %wide.load.2, ptr %i.r, align 4, !tbaa !19
  store <4 x i32> %wide.load123.2, ptr %i.s, align 4, !tbaa !19
  %i.t = icmp eq i64 %n.vec, 24
  br i1 %i.t, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 116
  %wide.load.3 = load <4 x i32>, ptr %i.u, align 4, !tbaa !19
  %wide.load123.3 = load <4 x i32>, ptr %i.v, align 4, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  store <4 x i32> %wide.load.3, ptr %i.w, align 4, !tbaa !19
  store <4 x i32> %wide.load123.3, ptr %i.x, align 4, !tbaa !19
  %i.y = icmp eq i64 %n.vec, 32
  br i1 %i.y, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 148
  %wide.load.4 = load <4 x i32>, ptr %i.z, align 4, !tbaa !19
  %wide.load123.4 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store <4 x i32> %wide.load.4, ptr %i.ab, align 4, !tbaa !19
  store <4 x i32> %wide.load123.4, ptr %i.ac, align 4, !tbaa !19
  %i.ad = icmp eq i64 %n.vec, 40
  br i1 %i.ad, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 180
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
  %indvars.iv84 = phi i64 [ 0, %.preheader51.lr.ph ], [ %indvars.iv.next74, %.loopexit ] ; 5 uses
  %indvars.iv73.a = phi i64 [ 1, %.preheader51.lr.ph ], [ %indvars.iv.next85, %.loopexit ] ; 5 uses
  %.058 = phi i64 [ 0, %.preheader51.lr.ph ], [ %i.cc, %.loopexit ] ; 2 uses
  %min.iters.check125 = icmp samesign ult i64 %indvars.iv73.a, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader51
  %n.vec127 = and i64 %indvars.iv73.a, 9223372036854775804 ; 4 uses
  %i.aw = sub nsw i64 %indvars.iv84, %n.vec127
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.058, i64 0
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph126 ], [ %i.bk, %vector.body128 ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph126 ], [ %i.bl, %vector.body128 ]
  %i.ay = sub i64 %indvars.iv84, %index129
  %i.az = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = getelementptr i8, ptr %i.az, i64 -12
  %wide.load131.a = load <2 x i32>, ptr %i.ba, align 4, !tbaa !19
  %wide.load132 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !19
  %reverse = shufflevector <2 x i32> %wide.load131.a, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse133 = shufflevector <2 x i32> %wide.load132, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep115, i64 %index129 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %wide.load134.a = load <2 x i32>, ptr %i.bc, align 4, !tbaa !19
  %wide.load135 = load <2 x i32>, ptr %i.bd, align 4, !tbaa !19
  %i.be = zext <2 x i32> %reverse to <2 x i64>
  %i.bf = zext <2 x i32> %reverse133 to <2 x i64>
  %i.bg = zext <2 x i32> %wide.load134.a to <2 x i64>
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
  %cmp.n138 = icmp eq i64 %indvars.iv73.a, %n.vec127
  br i1 %cmp.n138, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader51, %middle.block137
  %indvars.iv75.ph = phi i64 [ %indvars.iv84, %.preheader51 ], [ %i.aw, %middle.block137 ]
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
  %exitcond83.not = icmp eq i64 %indvars.iv.next72, %indvars.iv73.a
  br i1 %exitcond83.not, label %.loopexit, label %scalar.ph124, !llvm.loop !51

.loopexit:                                        ; preds = %scalar.ph124, %middle.block137
  %.lcssa121 = phi i64 [ %i.bn, %middle.block137 ], [ %i.by, %scalar.ph124 ] ; 2 uses
  %i.bz = trunc i64 %.lcssa121 to i32
  %i.ca = and i32 %i.bz, 268435455
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv84
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !19
  %i.cc = lshr i64 %.lcssa121, 28                 ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv73.a, 1
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
  %indvars.iv91.a = phi i64 [ %.0.lcssa, %.lr.ph66 ], [ %i.dw, %._crit_edge ] ; 3 uses
  %1 = sub nsw i64 %indvars.iv102, %i.bs          ; 4 uses
  %i.cq = icmp slt i64 %1, %i.br
  br i1 %i.cq, label %.lr.ph62.preheader, label %._crit_edge

.lr.ph62.preheader:                               ; preds = %bb.d
  %i.cr = xor i64 %indvar, -1
  %i.cs = add i64 %i.cr, %wide.trip.count100      ; 3 uses
  %min.iters.check142 = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check142, label %.lr.ph62.preheader162, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph62.preheader
  %n.vec144 = and i64 %i.cs, -4                   ; 4 uses
  %i.ct = sub i64 %i.br, %n.vec144
  %i.cu = add i64 %1, %n.vec144
  %i.cv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %indvars.iv91.a, i64 0
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep119, i64 %1
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next155, %vector.body145 ] ; 3 uses
  %vec.phi147.a = phi <2 x i64> [ %i.cv, %vector.ph143 ], [ %i.dj, %vector.body145 ]
  %vec.phi148 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.dk, %vector.body145 ]
  %i.cx = sub i64 %i.br, %index146
  %i.cy = getelementptr [4 x i8], ptr %invariant.gep117, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = getelementptr i8, ptr %i.cy, i64 -12
  %wide.load149.a = load <2 x i32>, ptr %i.cz, align 4, !tbaa !19
  %wide.load150 = load <2 x i32>, ptr %i.da, align 4, !tbaa !19
  %reverse151.a = shufflevector <2 x i32> %wide.load149.a, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x i32> %wide.load150, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.db = getelementptr [4 x i8], ptr %i.cw, i64 %index146 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %wide.load153.a = load <2 x i32>, ptr %i.db, align 4, !tbaa !19
  %wide.load154 = load <2 x i32>, ptr %i.dc, align 4, !tbaa !19
  %i.dd = zext <2 x i32> %reverse151.a to <2 x i64>
  %i.de = zext <2 x i32> %reverse152 to <2 x i64>
  %i.df = zext <2 x i32> %wide.load153.a to <2 x i64>
  %i.dg = zext <2 x i32> %wide.load154 to <2 x i64>
  %i.dh = mul nuw <2 x i64> %i.df, %i.dd
  %i.di = mul nuw <2 x i64> %i.dg, %i.de
  %i.dj = add <2 x i64> %i.dh, %vec.phi147.a      ; 2 uses
  %i.dk = add <2 x i64> %i.di, %vec.phi148        ; 2 uses
  %index.next155 = add nuw i64 %index146, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next155, %n.vec144
  br i1 %i.dl, label %middle.block156, label %vector.body145, !llvm.loop !53

middle.block156:                                  ; preds = %vector.body145
  %bin.rdx157 = add <2 x i64> %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %i.cs, %n.vec144
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph62.preheader162

.lr.ph62.preheader162:                            ; preds = %.lr.ph62.preheader, %middle.block156
  %indvars.iv95.in.ph = phi i64 [ %i.br, %.lr.ph62.preheader ], [ %i.ct, %middle.block156 ]
  %indvars.iv93.ph = phi i64 [ %1, %.lr.ph62.preheader ], [ %i.cu, %middle.block156 ]
  %.361.ph = phi i64 [ %indvars.iv91.a, %.lr.ph62.preheader ], [ %i.dm, %middle.block156 ]
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader162, %.lr.ph62
  %indvars.iv95.in = phi i64 [ %indvars.iv95, %.lr.ph62 ], [ %indvars.iv95.in.ph, %.lr.ph62.preheader162 ] ; 2 uses
  %indvars.iv93.a = phi i64 [ %indvars.iv.next94, %.lr.ph62 ], [ %indvars.iv93.ph, %.lr.ph62.preheader162 ] ; 2 uses
  %.361 = phi i64 [ %i.ds, %.lr.ph62 ], [ %.361.ph, %.lr.ph62.preheader162 ]
  %indvars.iv95 = add nsw i64 %indvars.iv95.in, -1
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv95.in
  %i.dn = load i32, ptr %gep118, align 4, !tbaa !19
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv93.a
  %i.do = load i32, ptr %gep120, align 4, !tbaa !19
  %i.dp = zext i32 %i.dn to i64
  %i.dq = zext i32 %i.do to i64
  %i.dr = mul nuw i64 %i.dq, %i.dp
  %i.ds = add i64 %i.dr, %.361                    ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93.a, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block156, %bb.d
  %.3.lcssa = phi i64 [ %indvars.iv91.a, %bb.d ], [ %i.dm, %middle.block156 ], [ %i.ds, %.lr.ph62 ] ; 2 uses
  %i.dt = trunc i64 %.3.lcssa to i32
  %i.du = and i32 %i.dt, 268435455
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv102
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !19
  %i.dw = lshr i64 %.3.lcssa, 28
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
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
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !19
  %i.aj = lshr i64 %.057.i, 28                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !0

_ZN17double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %._crit_edge90, %._crit_edge.i
  %i.ak = phi i16 [ 0, %._crit_edge90 ], [ %indvars, %._crit_edge.i ] ; 10 uses
  br i1 %.0.lcssa, label %bb.j, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit

bb.j:                                             ; preds = %_ZN17double_conversion6Bignum12AssignUInt64Em.exit
  switch i16 %.048.lcssa, label %bb.l [
    i16 1, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit
    i16 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %0, align 4, !tbaa !17
  store i16 0, ptr %i.d, align 2, !tbaa !18
  br label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp sgt i16 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i54, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i54:                                       ; preds = %bb.l
  %wide.trip.count.i = zext nneg i16 %i.ak to i64 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.an = icmp eq i16 %i.ak, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i54.new

.lr.ph.i54.new:                                   ; preds = %.lr.ph.i54
  %unroll_iter = and i64 %wide.trip.count.i, 32766
  br label %bb.m

.preheader.i.unr-lcssa:                           ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i54
  %indvars.iv.i55.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i56.1, %.preheader.i.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %i.bm, %.preheader.i.unr-lcssa ]
  %lcmp.mod142 = trunc i16 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55.epil.init ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, %i.t
  %i.as = add nuw nsw i64 %i.ar, %.017.i.epil.init ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 268435455
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !19
  %i.av = lshr i64 %i.as, 28
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa136 = phi i64 [ %i.bm, %.preheader.i.unr-lcssa ], [ %i.av, %.epil.preheader ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa136, 0
  br i1 %.not18.i, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i

bb.m:                                             ; preds = %bb.m, %.lr.ph.i54.new
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.i54.new ], [ %indvars.iv.next.i56.1, %bb.m ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i54.new ], [ %i.bm, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i54.new ], [ %niter.next.1, %bb.m ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, %i.t
  %i.ba = add nuw nsw i64 %i.az, %.017.i          ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 268435455
  store i32 %i.bc, ptr %i.aw, align 4, !tbaa !19
  %i.bd = lshr i64 %i.ba, 28
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !19
end_hunk_0
