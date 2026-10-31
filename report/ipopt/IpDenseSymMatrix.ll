Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseSymMatrix?download=true
inline.NumInlined: 571
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Ipopt14DenseSymMatrix12FillIdentityEd:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph18, label %._crit_edge

.lr.ph18:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = add nuw i32 %i.d, 1
  %i.i = add nsw i32 %i.d, -2
  %i.j = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.b
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !126

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.k, align 8, !tbaa !40
  ret void

bb.b:                                             ; preds = %.lr.ph18, %.loopexit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next23, %.loopexit ] ; 4 uses
  %indvars24 = trunc i64 %indvars.iv22 to i32     ; 2 uses
  %i.l = mul nuw nsw i32 %i.d, %indvars24
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store double %1, ptr %i.o, align 8, !tbaa !58
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next23, %i.j
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = trunc i64 %indvars.iv22 to i32
  %i.r = sub i32 %i.i, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 8
  %i.v = mul i32 %i.h, %indvars24
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.u, i1 false), !tbaa !58
  br label %.loopexit
}

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix9AddMatrixEdRKS0_d(ptr noundef nonnull align 8 dereferenceable(97) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %2, double noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 19 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 5 uses
  %i.i = fcmp oeq double %3, 0.000000e+00
  br i1 %i.i, label %.preheader61, label %bb.c

.preheader61:                                     ; preds = %bb.b
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = zext nneg i32 %i.h to i64                ; 6 uses
  %i.o = sub i64 %i.d, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %broadcast.splatinsert148 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat149 = shufflevector <2 x double> %broadcast.splatinsert148, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit158
  %indvars.iv92 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next93, %.loopexit158 ] ; 6 uses
  %i.p = mul nuw nsw i64 %indvars.iv92, %i.n      ; 6 uses
  %i.q = sub nsw i64 %i.n, %indvars.iv92          ; 3 uses
  %min.iters.check145 = icmp ult i64 %i.q, 4
  %or.cond = select i1 %min.iters.check145, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.preheader
  %n.vec147 = and i64 %i.q, -4                    ; 3 uses
  %i.r = add i64 %indvars.iv92, %n.vec147
  %invariant.op173.a = add nuw i64 %indvars.iv92, %i.p
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body150 ] ; 2 uses
  %.reass174.a = add nuw i64 %index151, %invariant.op173.a ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass174.a ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load152 = load <2 x double>, ptr %i.s, align 8, !tbaa !58
  %wide.load153 = load <2 x double>, ptr %i.t, align 8, !tbaa !58
  %i.u = fmul <2 x double> %broadcast.splat149, %wide.load152
  %i.v = fmul <2 x double> %broadcast.splat149, %wide.load153
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass174.a ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !tbaa !58
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !58
  %index.next154 = add nuw i64 %index151, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.y, label %middle.block155, label %vector.body150, !llvm.loop !127

middle.block155:                                  ; preds = %vector.body150
  %cmp.n156 = icmp eq i64 %i.q, %n.vec147
  br i1 %cmp.n156, label %.loopexit158, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %.preheader, %middle.block155
  %indvars.iv94.ph = phi i64 [ %indvars.iv92, %.preheader ], [ %i.r, %middle.block155 ] ; 4 uses
  %i.z = sub i64 %i.n, %indvars.iv94.ph
  %xtraiter165 = and i64 %i.z, 3                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol

scalar.ph144.prol:                                ; preds = %scalar.ph144.preheader, %scalar.ph144.prol
  %indvars.iv94.prol = phi i64 [ %indvars.iv.next95.prol, %scalar.ph144.prol ], [ %indvars.iv94.ph, %scalar.ph144.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph144.prol ], [ 0, %scalar.ph144.preheader ]
  %i.aa = add nuw nsw i64 %indvars.iv94.prol, %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !58
  %i.ad = fmul double %1, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aa
  store double %i.ad, ptr %i.ae, align 8, !tbaa !58
  %indvars.iv.next95.prol = add nuw nsw i64 %indvars.iv94.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol, !llvm.loop !128

scalar.ph144.prol.loopexit:                       ; preds = %scalar.ph144.prol, %scalar.ph144.preheader
  %indvars.iv94.unr = phi i64 [ %indvars.iv94.ph, %scalar.ph144.preheader ], [ %indvars.iv.next95.prol, %scalar.ph144.prol ]
  %i.af = sub i64 %indvars.iv94.ph, %i.n
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %.loopexit158, label %scalar.ph144.preheader.new

scalar.ph144.preheader.new:                       ; preds = %scalar.ph144.prol.loopexit
  %invariant.op175.a = add nuw nsw i64 1, %i.p
  %invariant.op177 = add nuw nsw i64 2, %i.p
  %invariant.op179 = add nuw nsw i64 3, %i.p
  br label %scalar.ph144

.loopexit158:                                     ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144, %middle.block155
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next93, %i.n
  br i1 %exitcond101.not, label %.loopexit, label %.preheader, !llvm.loop !129

scalar.ph144:                                     ; preds = %scalar.ph144, %scalar.ph144.preheader.new
  %indvars.iv94 = phi i64 [ %indvars.iv94.unr, %scalar.ph144.preheader.new ], [ %indvars.iv.next95.3, %scalar.ph144 ] ; 5 uses
  %i.ah = add nuw nsw i64 %indvars.iv94, %i.p     ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !58
  %i.ak = fmul double %1, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ah
  store double %i.ak, ptr %i.al, align 8, !tbaa !58
  %.reass176.a = add nuw nsw i64 %indvars.iv94, %invariant.op175.a ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass176.a
  %i.an = load double, ptr %i.am, align 8, !tbaa !58
  %i.ao = fmul double %1, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass176.a
  store double %i.ao, ptr %i.ap, align 8, !tbaa !58
  %.reass178 = add nuw nsw i64 %indvars.iv94, %invariant.op177 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass178
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !58
  %i.as = fmul double %1, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass178
  store double %i.as, ptr %i.at, align 8, !tbaa !58
  %.reass180 = add nuw nsw i64 %indvars.iv94, %invariant.op179 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass180
  %i.av = load double, ptr %i.au, align 8, !tbaa !58
  %i.aw = fmul double %1, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass180
  store double %i.aw, ptr %i.ax, align 8, !tbaa !58
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %indvars.iv.next95.3, %i.n
  br i1 %exitcond98.not.3, label %.loopexit158, label %scalar.ph144, !llvm.loop !130

bb.c:                                             ; preds = %bb.b
  %i.ay = fcmp oeq double %3, 1.000000e+00
  %i.az = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.ay, label %.preheader63, label %.preheader66

.preheader66:                                     ; preds = %bb.c
  br i1 %i.az, label %.preheader65.lr.ph, label %.loopexit

.preheader65.lr.ph:                               ; preds = %.preheader66
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39 ; 6 uses
  %i.bc = zext nneg i32 %i.h to i64               ; 7 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3                ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = add nsw i64 %i.bc, -1
  br label %.preheader65

.preheader63:                                     ; preds = %bb.c
  br i1 %i.az, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 6 uses
  %i.bi = zext nneg i32 %i.h to i64               ; 7 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 8
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = add nsw i64 %i.bi, -1
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %.loopexit159
  %indvars.iv82 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next83, %.loopexit159 ] ; 9 uses
  %i.bm = mul nuw nsw i64 %indvars.iv82, %i.bi    ; 4 uses
  %i.bn = sub nsw i64 %i.bi, %indvars.iv82        ; 3 uses
  %min.iters.check128 = icmp ult i64 %i.bn, 4
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %.preheader62
  %i.bo = mul i64 %indvars.iv82, %i.bk            ; 2 uses
  %4 = getelementptr i8, ptr %i.bh, i64 %i.bo
  %5 = add nuw i64 %indvars.iv82, 1
  %i.bp = mul i64 %i.bj, %5                       ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.bh, i64 %i.bp
  %scevgep121 = getelementptr i8, ptr %i.c, i64 %i.bo
  %scevgep120 = getelementptr i8, ptr %i.c, i64 %i.bp
  %bound0124 = icmp ult ptr %4, %scevgep120
  %bound1125 = icmp ult ptr %scevgep121, %scevgep122
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck119
  %n.vec130 = and i64 %i.bn, -4                   ; 3 uses
  %i.bq = add i64 %indvars.iv82, %n.vec130
  %invariant.op169 = add nuw i64 %indvars.iv82, %i.bm
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i64 [ 0, %vector.ph129 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %.reass170 = add nuw i64 %index134, %invariant.op169 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass170 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load135 = load <2 x double>, ptr %i.br, align 8, !tbaa !58, !alias.scope !143
  %wide.load136 = load <2 x double>, ptr %i.bs, align 8, !tbaa !58, !alias.scope !143
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.reass170 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.bt, align 8, !tbaa !58, !alias.scope !144, !noalias !143
  %wide.load138 = load <2 x double>, ptr %i.bu, align 8, !tbaa !58, !alias.scope !144, !noalias !143
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load135, <2 x double> %wide.load137)
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load136, <2 x double> %wide.load138)
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !58, !alias.scope !144, !noalias !143
  store <2 x double> %i.bw, ptr %i.bu, align 8, !tbaa !58, !alias.scope !144, !noalias !143
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next139, %n.vec130
  br i1 %i.bx, label %middle.block140, label %vector.body133, !llvm.loop !134

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.bn, %n.vec130
  br i1 %cmp.n141, label %.loopexit159, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.memcheck119, %.preheader62, %middle.block140
  %indvars.iv84.ph = phi i64 [ %indvars.iv82, %vector.memcheck119 ], [ %indvars.iv82, %.preheader62 ], [ %i.bq, %middle.block140 ] ; 5 uses
  %i.by = sub i64 %i.bi, %indvars.iv84.ph
  %xtraiter163 = and i64 %i.by, 1
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader
  %i.bz = add nuw nsw i64 %indvars.iv84.ph, %i.bm ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bz ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !58
  %i.ce = tail call double @llvm.fmuladd.f64(double %1, double %i.cb, double %i.cd)
  store double %i.ce, ptr %i.cc, align 8, !tbaa !58
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.ph, 1
  br label %scalar.ph127.prol.loopexit

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph127.preheader ], [ %indvars.iv.next85.prol, %scalar.ph127.prol ]
  %i.cf = icmp eq i64 %indvars.iv84.ph, %i.bl
  br i1 %i.cf, label %.loopexit159, label %scalar.ph127.preheader.new

scalar.ph127.preheader.new:                       ; preds = %scalar.ph127.prol.loopexit
  %invariant.op171.a = add nuw nsw i64 1, %i.bm
  br label %scalar.ph127

.loopexit159:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block140
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next83, %i.bi
  br i1 %exitcond91.not, label %.loopexit, label %.preheader62, !llvm.loop !135

scalar.ph127:                                     ; preds = %scalar.ph127, %scalar.ph127.preheader.new
  %indvars.iv84 = phi i64 [ %indvars.iv84.unr, %scalar.ph127.preheader.new ], [ %indvars.iv.next85.1, %scalar.ph127 ] ; 3 uses
  %i.cg = add nuw nsw i64 %indvars.iv84, %i.bm    ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cg ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !58
  %i.cl = tail call double @llvm.fmuladd.f64(double %1, double %i.ci, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !58
  %.reass172.a = add nuw nsw i64 %indvars.iv84, %invariant.op171.a ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass172.a
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.reass172.a ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !58
  %i.cq = tail call double @llvm.fmuladd.f64(double %1, double %i.cn, double %i.cp)
  store double %i.cq, ptr %i.co, align 8, !tbaa !58
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %indvars.iv.next85.1, %i.bi
  br i1 %exitcond88.not.1, label %.loopexit159, label %scalar.ph127, !llvm.loop !136

.preheader65:                                     ; preds = %.preheader65.lr.ph, %.loopexit160
  %indvars.iv = phi i64 [ 0, %.preheader65.lr.ph ], [ %indvars.iv.next, %.loopexit160 ] ; 9 uses
  %i.cr = mul nuw nsw i64 %indvars.iv, %i.bc      ; 4 uses
  %i.cs = sub nsw i64 %i.bc, %indvars.iv          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader65
  %i.ct = mul i64 %indvars.iv, %i.be              ; 2 uses
  %6 = getelementptr i8, ptr %i.bb, i64 %i.ct
  %7 = add nuw i64 %indvars.iv, 1
  %i.cu = mul i64 %i.bd, %7                       ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.bb, i64 %i.cu
  %scevgep111 = getelementptr i8, ptr %i.c, i64 %i.ct
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.cu
  %bound0 = icmp ult ptr %6, %scevgep
  %bound1 = icmp ult ptr %scevgep111, %scevgep112
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -4                      ; 3 uses
  %i.cv = add i64 %indvars.iv, %n.vec
  %invariant.op = add nuw i64 %indvars.iv, %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <2 x double>, ptr %i.cw, align 8, !tbaa !58, !alias.scope !145
  %wide.load116 = load <2 x double>, ptr %i.cx, align 8, !tbaa !58, !alias.scope !145
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.cy, align 8, !tbaa !58, !alias.scope !146, !noalias !145
  %wide.load118 = load <2 x double>, ptr %i.cz, align 8, !tbaa !58, !alias.scope !146, !noalias !145
  %i.da = fmul <2 x double> %broadcast.splat, %wide.load117
  %i.db = fmul <2 x double> %broadcast.splat, %wide.load118
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load, <2 x double> %i.da)
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load116, <2 x double> %i.db)
  store <2 x double> %i.dc, ptr %i.cy, align 8, !tbaa !58, !alias.scope !146, !noalias !145
  store <2 x double> %i.dd, ptr %i.cz, align 8, !tbaa !58, !alias.scope !146, !noalias !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.loopexit160, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader65, %middle.block
  %indvars.iv76.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader65 ], [ %i.cv, %middle.block ] ; 5 uses
  %i.df = sub i64 %i.bc, %indvars.iv76.ph
  %xtraiter = and i64 %i.df, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dg = add nuw nsw i64 %indvars.iv76.ph, %i.cr ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !58
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dg ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !58
  %i.dl = fmul double %3, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %1, double %i.di, double %i.dl)
  store double %i.dm, ptr %i.dj, align 8, !tbaa !58
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %i.dn = icmp eq i64 %indvars.iv76.ph, %i.bf
  br i1 %i.dn, label %.loopexit160, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op167 = add nuw nsw i64 1, %i.cr
  br label %scalar.ph

.loopexit160:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, %i.bc
  br i1 %exitcond81.not, label %.loopexit, label %.preheader65, !llvm.loop !141

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv76 = phi i64 [ %indvars.iv76.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next77.1, %scalar.ph ] ; 3 uses
  %i.do = add nuw nsw i64 %indvars.iv76, %i.cr    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.do ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58
  %i.dt = fmul double %3, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %1, double %i.dq, double %i.dt)
  store double %i.du, ptr %i.dr, align 8, !tbaa !58
  %.reass168 = add nuw nsw i64 %indvars.iv76, %invariant.op167 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass168
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !58
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass168 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !58
  %i.dz = fmul double %3, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %1, double %i.dw, double %i.dz)
  store double %i.ea, ptr %i.dx, align 8, !tbaa !58
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next77.1, %i.bc
  br i1 %exitcond.not.1, label %.loopexit160, label %scalar.ph, !llvm.loop !142

.loopexit:                                        ; preds = %.loopexit160, %.loopexit159, %.loopexit158, %.preheader66, %.preheader63, %.preheader61
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.eb, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d(ptr noundef nonnull align 8 dereferenceable(97) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3, double noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.46", align 8    ; 8 uses
  %6 = alloca %"class.std::vector.41", align 8    ; 9 uses
  %7 = alloca %"class.std::vector.46", align 8    ; 8 uses
  %8 = alloca %"class.std::vector.41", align 8    ; 9 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 3 uses
  %i.g = fcmp oeq double %4, 0.000000e+00
  %i.h = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.preheader124, label %.preheader126

.preheader126:                                    ; preds = %bb.a
  br i1 %i.h, label %.preheader125.lr.ph, label %.loopexit

.preheader125.lr.ph:                              ; preds = %.preheader126
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = zext nneg i32 %i.f to i64                ; 3 uses
  br label %.preheader125

.preheader124:                                    ; preds = %bb.a
  br i1 %i.h, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader124
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %indvars.iv160 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next161, %bb.b ] ; 5 uses
  %i.aa = mul nuw nsw i64 %indvars.iv160, %i.z
  br label %bb.c

bb.b:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next161, %i.z
  br i1 %exitcond169.not, label %.loopexit, label %.preheader, !llvm.loop !147

bb.c:                                             ; preds = %.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %indvars.iv162 = phi i64 [ %indvars.iv160, %.preheader ], [ %indvars.iv.next163, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ] ; 4 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !163, !noalias !164
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv162
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167, !noalias !164 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.c
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !170, !noalias !164
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv162
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !172, !noalias !164 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.c
  %.0.i3.i = phi ptr [ %i.ag, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !13, !noalias !164
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !13, !noalias !164
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !163, !noalias !173
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !167, !noalias !173 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.am, null
  br i1 %.not.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !170, !noalias !173
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !172, !noalias !173 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i56, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i53 = phi ptr [ %i.ap, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55 ], [ %i.am, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i3.i53, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt14DenseSymMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d:bb.a
  br i1 %.not.i.i.i7.i105, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106, label %bb.ag

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.fm = load ptr, ptr %6, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i108, label %.noexc90, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fq) #20
  br label %.noexc90

bb.ag:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i104
  %i.fr = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fl to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fu) #20
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106: ; preds = %bb.ag, %_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body110

.noexc90:                                         ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.ez, label %.noexc92, label %bb.ah

bb.ah:                                            ; preds = %.noexc90
  %i.fv = load ptr, ptr %.0.i4.i72, align 8, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef double %i.fx(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79)
          to label %.noexc91 unwind label %bb.al, !inline_history !152

.noexc91:                                         ; preds = %bb.ah
  store double %i.fy, ptr %i.a, align 8, !tbaa !58
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79)
          to label %.noexc92 unwind label %bb.al

.noexc92:                                         ; preds = %.noexc91, %.noexc90
  %i.fz = load double, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit93

_ZNK5Ipopt6Vector3DotERKS0_.exit93:               ; preds = %.noexc92, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i85
  %.0.i83 = phi double [ %i.eu, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i85 ], [ %i.fz, %.noexc92 ]
  %i.ga = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv154
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.dp ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !58
  %i.ge = fmul double %4, %i.gd
  %i.gf = call double @llvm.fmuladd.f64(double %1, double %.0.i83, double %i.ge)
  store double %i.gf, ptr %i.gc, align 8, !tbaa !58
  %.not.i.i94 = icmp eq ptr %.0.i4.i79, null
  br i1 %.not.i.i94, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit93
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i4.i79, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !13
  %i.gi = add nsw i32 %i.gh, -1                   ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !13
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95

bb.aj:                                            ; preds = %bb.ai
  %i.gk = load ptr, ptr %.0.i4.i79, align 8, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95:      ; preds = %bb.aj, %bb.ai, %_ZNK5Ipopt6Vector3DotERKS0_.exit93
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i4.i72, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !13
  %i.gp = add nsw i32 %i.go, -1                   ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !13
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ak, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97

bb.ak:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95
  %i.gr = load ptr, ptr %.0.i4.i72, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95, %bb.ak
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, %i.q
  br i1 %exitcond.not, label %bb.v, label %bb.w, !llvm.loop !160

bb.al:                                            ; preds = %bb.z, %.noexc91, %bb.ah, %bb.y
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.body110:                                         ; preds = %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106, %bb.al
  %eh.lpad-body111 = phi { ptr, i32 } [ %i.gu, %bb.al ], [ %i.ff, %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106 ] ; 3 uses
  %.not.i.i98 = icmp eq ptr %.0.i4.i79, null
  br i1 %.not.i.i98, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99, label %bb.am

bb.am:                                            ; preds = %.body110
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i4.i79, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !13
  %i.gx = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 8, !tbaa !13
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.an, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99

bb.an:                                            ; preds = %bb.am
  %i.gz = load ptr, ptr %.0.i4.i79, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99:      ; preds = %bb.an, %bb.am, %.body110
  %.not.i.i100 = icmp eq ptr %.0.i4.i72, null
  br i1 %.not.i.i100, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i4.i72, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.he = add nsw i32 %i.hd, -1                   ; 2 uses
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !13
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68

.loopexit:                                        ; preds = %bb.v, %bb.b, %.preheader126, %.preheader124
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.hg, align 8, !tbaa !40
  call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split: ; preds = %bb.ao, %bb.u
  %.0.i4.i72198.sink203 = phi ptr [ %.0.i4.i, %bb.u ], [ %.0.i4.i72, %bb.ao ] ; 2 uses
  %.pn48.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body111, %bb.ao ]
  %i.hh = load ptr, ptr %.0.i4.i72198.sink203, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72198.sink203) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split, %bb.ao, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99, %bb.u, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %.pn48.pn = phi { ptr, i32 } [ %eh.lpad-body111, %bb.ao ], [ %eh.lpad-body, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ], [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body111, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99 ], [ %.pn48.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix14HighRankUpdateEbdRKNS_14DenseGenMatrixEd(ptr noundef nonnull align 8 dereferenceable(97) initializes((96, 97)) %0, i1 noundef zeroext %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, double noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.0.in.v = select i1 %1, i64 12, i64 16
  %.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  tail call void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext %1, i32 noundef %i.f, i32 noundef %.0, double noundef %2, ptr noundef %i.h, i32 noundef %i.j, double noundef %4, ptr noundef %i.l, i32 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !40
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

declare void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext, i32 noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix18SpecialAddForLMSR1ERKNS_11DenseVectorERKNS_14DenseGenMatrixE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge34

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 3 uses
  %i.j = add nuw i32 %i.d, 1                      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.d, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.lr.ph33.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph33, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph33.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph33.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.m = load double, ptr %i.l, align 8, !tbaa !58
  %i.n = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.o = mul i32 %i.j, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !58
  %i.s = fadd double %i.m, %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !58
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.unr-lcssa, %.epil.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %i.x = zext nneg i32 %i.d to i64
  %i.y = zext nneg i32 %i.d to i64                ; 5 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 8
  %i.ab = add nsw i64 %i.y, -1
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !58
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = mul i32 %i.j, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !58
  %i.aj = fadd double %i.ad, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.al = load double, ptr %i.ak, align 8, !tbaa !58
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = mul i32 %i.j, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = fadd double %i.al, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph33.unr-lcssa, label %bb.b, !llvm.loop !178

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %i.y
  br i1 %exitcond47.not, label %._crit_edge34, label %bb.c, !llvm.loop !179

._crit_edge34:                                    ; preds = %.loopexit, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.c:                                             ; preds = %.lr.ph33, %.loopexit
  %indvars.iv43 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next44, %.loopexit ] ; 5 uses
  %indvars.iv36 = phi i64 [ 1, %.lr.ph33 ], [ %indvars.iv.next37, %.loopexit ] ; 5 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 3 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next44, %i.x
  br i1 %i.as, label %.lr.ph30, label %.loopexit

.lr.ph30:                                         ; preds = %bb.c
  %i.at = mul nuw nsw i64 %indvars.iv43, %i.y     ; 4 uses
  %i.au = xor i64 %indvars.iv43, -1
  %i.av = add nsw i64 %i.au, %wide.trip.count     ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30
  %3 = mul i64 %indvars.iv43, %i.aa
  %4 = add i64 %3, 8                              ; 2 uses
  %5 = getelementptr i8, ptr %i.w, i64 %4
  %6 = add nuw i64 %indvars.iv43, 1
  %7 = mul i64 %i.z, %6                           ; 2 uses
  %8 = getelementptr i8, ptr %i.w, i64 %7
  %9 = getelementptr i8, ptr %i.u, i64 %4
  %10 = getelementptr i8, ptr %i.u, i64 %7
  %bound0 = icmp ult ptr %5, %10
  %bound1 = icmp ult ptr %9, %8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = add i64 %indvars.iv36, %n.vec
  %invariant.op = add nuw i64 %indvars.iv36, %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x double>, ptr %i.ax, align 8, !tbaa !58, !alias.scope !185
  %wide.load51 = load <2 x double>, ptr %i.ay, align 8, !tbaa !58, !alias.scope !185
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.az, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %wide.load53 = load <2 x double>, ptr %i.ba, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %i.bb = fadd <2 x double> %wide.load, %wide.load52
  %i.bc = fadd <2 x double> %wide.load51, %wide.load53
  store <2 x double> %i.bb, ptr %i.az, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph30, %middle.block
  %indvars.iv38.ph = phi i64 [ %indvars.iv36, %vector.memcheck ], [ %indvars.iv36, %.lr.ph30 ], [ %i.aw, %middle.block ] ; 5 uses
  %i.be = sub i64 %i.y, %indvars.iv38.ph
  %xtraiter55 = and i64 %i.be, 1
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = add nuw nsw i64 %indvars.iv38.ph, %i.at ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !58
  %i.bk = fadd double %i.bh, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !58
  %indvars.iv.next39.prol = add nuw nsw i64 %indvars.iv38.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph.preheader ], [ %indvars.iv.next39.prol, %scalar.ph.prol ]
  %i.bl = icmp eq i64 %indvars.iv38.ph, %i.ab
  br i1 %i.bl, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op57 = add nuw nsw i64 1, %i.at
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv38 = phi i64 [ %indvars.iv38.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next39.1, %scalar.ph ] ; 3 uses
  %i.bm = add nuw nsw i64 %indvars.iv38, %i.at    ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bm ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !58
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.bp, align 8, !tbaa !58
  %.reass58 = add nuw nsw i64 %indvars.iv38, %invariant.op57 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass58
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !58
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass58 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bw = fadd double %i.bt, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !58
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %exitcond42.not.1 = icmp eq i64 %indvars.iv.next39.1, %i.y
  br i1 %exitcond42.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5Ipopt14DenseSymMatrix19HasValidNumbersImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = zext nneg i32 %i.d to i64                ; 5 uses
  %i.i = zext nneg i32 %i.d to i64
  %i.j = add nsw i64 %i.h, -2
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.1.lcssa = phi double [ %i.r, %bb.b ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.av, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %i.h
  br i1 %exitcond32.not, label %._crit_edge, label %bb.b, !llvm.loop !187

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.017.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %.loopexit ]
  %i.k = tail call noundef zeroext i1 @_ZN5Ipopt14IsFiniteNumberEd(double noundef %.017.lcssa)
  ret i1 %i.k

bb.b:                                             ; preds = %.lr.ph23, %.loopexit
  %indvars.iv28 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next29, %.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph23 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.01721 = phi double [ 0.000000e+00, %.lr.ph23 ], [ %.1.lcssa, %.loopexit ]
  %i.l = sub i64 %i.j, %indvars.iv28
  %indvars30 = trunc i64 %indvars.iv28 to i32
  %i.m = mul nuw nsw i32 %i.d, %indvars30
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv28
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  %i.r = fadd double %.01721, %i.q                ; 3 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 3 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next29, %i.i
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.t = xor i64 %indvars.iv28, -1
  %i.u = add nsw i64 %i.t, %i.h
  %i.v = mul nuw nsw i64 %indvars.iv28, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 9 uses
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 2 uses
  %.119.prol = phi double [ %i.x, %.lr.ph.prol ], [ %i.r, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25.prol
  %i.w = load double, ptr %gep.prol, align 8, !tbaa !58
  %i.x = fadd double %.119.prol, %i.w             ; 3 uses
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !188

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %indvars.iv25.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
  %.119.unr = phi double [ %i.r, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.l, 7
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.7, %.lr.ph ], [ %indvars.iv25.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.119 = phi double [ %i.av, %.lr.ph ], [ %.119.unr, %.lr.ph.prol.loopexit ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %i.z = load double, ptr %gep, align 8, !tbaa !58
  %i.aa = fadd double %.119, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ac = load double, ptr %gep.1, align 8, !tbaa !58
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.af = load double, ptr %gep.2, align 8, !tbaa !58
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ai = load double, ptr %gep.3, align 8, !tbaa !58
  %i.aj = fadd double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.al = load double, ptr %gep.4, align 8, !tbaa !58
  %i.am = fadd double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ao = load double, ptr %gep.5, align 8, !tbaa !58
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.ar = load double, ptr %gep.6, align 8, !tbaa !58
  %i.as = fadd double %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.au = load double, ptr %gep.7, align 8, !tbaa !58
  %i.av = fadd double %i.as, %i.au                ; 2 uses
  %indvars.iv.next26.7 = add nuw nsw i64 %indvars.iv25, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next26.7, %i.h
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !189
}

declare noundef zeroext i1 @_ZN5Ipopt14IsFiniteNumberEd(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseSymMatrix18ComputeRowAMaxImplERNS_6VectorEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(205) %1, i1 zeroext %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !51, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
end_hunk_1
