Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph10TruthTable12swapAdjacentEPmS1_i:bb.a
scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.lr.ph ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.071123, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !50
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %indvars.iv
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !50
  %i.fb = add nuw nsw i64 %indvars.iv, %i.cy      ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %.071123, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.fe = add nuw nsw i64 %indvars.iv, %i.cz      ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.fe
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !50
  %i.fg = getelementptr inbounds [8 x i8], ptr %.071123, i64 %i.fe
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !50
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.fb
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !50
  %i.fj = add nsw i64 %indvars.iv, %i.da          ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %.071123, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !50
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.fj
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.cx
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !237

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph131, %scalar.ph200.prol.loopexit, %scalar.ph200, %middle.block215, %bb.a, %bb.e, %.lr.ph127, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph10TruthTable6extendEiSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = shl i64 %i.d, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !49    ; 2 uses
  %i.m = zext nneg i8 %i.l to i64
  %i.n = load i64, ptr %i.c, align 8, !tbaa !37
  %i.o = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %.not.i = icmp eq ptr %i.o, null                ; 2 uses
  br i1 %.not.i, label %_ZNK8DecGraph10TruthTable4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit

_ZNK8DecGraph10TruthTable4dataEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ] ; 13 uses
  %.0.i134 = ptrtoaddr ptr %.0.i to i64
  %i.r = load ptr, ptr %3, align 8, !tbaa !36     ; 15 uses
  %.not.i37 = icmp eq ptr %i.r, null              ; 4 uses
  br i1 %.not.i37, label %_ZNK8DecGraph10TruthTable4dataEv.exit39, label %bb.d

bb.d:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit39

_ZNK8DecGraph10TruthTable4dataEv.exit39:          ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit, %bb.d
  %.0.i38 = phi ptr [ %i.t, %bb.d ], [ null, %_ZNK8DecGraph10TruthTable4dataEv.exit ] ; 11 uses
  %.0.i38133 = ptrtoaddr ptr %.0.i38 to i64
  %i.u = icmp ult i8 %i.l, 6
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit39
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 64) ; 4 uses
  %i.v = getelementptr [8 x i8], ptr @_ZN8DecGraphL11extend_maskE, i64 %i.m
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !50   ; 4 uses
  %sext = shl i64 %i.n, 32
  %i.y = ashr exact i64 %sext, 32                 ; 4 uses
  %.pre = load i64, ptr %.0.i38, align 8, !tbaa !50 ; 3 uses
  %min.iters.check139 = icmp ult i32 %1, 2
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.memcheck136

scalar.ph138.preheader:                           ; preds = %vector.memcheck136, %bb.e
  %xtraiter185 = and i64 %.sroa.speculated, 1
  %i.z = icmp eq i32 %1, 0
  br i1 %i.z, label %scalar.ph138.epil.preheader, label %scalar.ph138.preheader.new

scalar.ph138.preheader.new:                       ; preds = %scalar.ph138.preheader
  %unroll_iter = and i64 %.sroa.speculated, 126
  br label %scalar.ph138

vector.memcheck136:                               ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %.0.i38, i64 8
  %scevgep137 = getelementptr i8, ptr %.0.i, i64 8
  %bound0 = icmp ult ptr %.0.i38, %scevgep137
  %bound1 = icmp ult ptr %.0.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck136
  %n.vec141 = and i64 %.sroa.speculated, 124
  %i.aa = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre, i64 0
  %i.ab = load i64, ptr %.0.i, align 8, !tbaa !50, !alias.scope !251
  %i.ac = and i64 %i.x, %i.ab
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body142 ]
  %vec.phi = phi <2 x i64> [ %i.aa, %vector.ph140 ], [ %i.ah, %vector.body142 ]
  %vec.phi144 = phi <2 x i64> [ zeroinitializer, %vector.ph140 ], [ %i.ai, %vector.body142 ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph140 ], [ %vec.ind.next, %vector.body142 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ad = mul <2 x i64> %vec.ind, %broadcast.splat
  %i.ae = mul <2 x i64> %step.add, %broadcast.splat
  %i.af = lshr <2 x i64> %broadcast.splat146, %i.ad
  %i.ag = lshr <2 x i64> %broadcast.splat146, %i.ae
  %i.ah = or <2 x i64> %i.af, %vec.phi            ; 2 uses
  %i.ai = or <2 x i64> %i.ag, %vec.phi144         ; 2 uses
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.aj = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.aj, label %middle.block148, label %vector.body142, !llvm.loop !240

middle.block148:                                  ; preds = %vector.body142
  %bin.rdx = or <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.ak, ptr %.0.i38, align 8, !tbaa !50, !alias.scope !252, !noalias !251
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %scalar.ph138
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.loopexit, label %scalar.ph138.epil.preheader

scalar.ph138.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %scalar.ph138.preheader
  %.epil.init = phi i64 [ %.pre, %scalar.ph138.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.083.0101.epil.init = phi i64 [ 0, %scalar.ph138.preheader ], [ %i.bk, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod188 = trunc i64 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.al = load i64, ptr %.0.i, align 8, !tbaa !50
  %i.am = and i64 %i.x, %i.al
  %i.an = mul i64 %.sroa.083.0101.epil.init, %i.y
  %i.ao = lshr i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, %.epil.init               ; 2 uses
  store i64 %i.ap, ptr %.0.i38, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph138.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block148
  %.lcssa = phi i64 [ %i.ak, %middle.block148 ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %scalar.ph138.epil.preheader ] ; 2 uses
  br i1 %.not.i37, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit

_ZNK8DecGraph10TruthTable6nWordsEv.exit:          ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = and i64 %i.aw, 34359738352
  %.not94 = icmp eq i64 %i.ax, 0
  br i1 %.not94, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit43

scalar.ph138:                                     ; preds = %scalar.ph138, %scalar.ph138.preheader.new
  %i.ay = phi i64 [ %.pre, %scalar.ph138.preheader.new ], [ %i.bj, %scalar.ph138 ]
  %.sroa.083.0101 = phi i64 [ 0, %scalar.ph138.preheader.new ], [ %i.bk, %scalar.ph138 ] ; 3 uses
  %niter = phi i64 [ 0, %scalar.ph138.preheader.new ], [ %niter.next.1, %scalar.ph138 ]
  %i.az = load i64, ptr %.0.i, align 8, !tbaa !50
  %i.ba = and i64 %i.x, %i.az
  %i.bb = mul i64 %.sroa.083.0101, %i.y
  %i.bc = lshr i64 %i.ba, %i.bb
  %i.bd = or i64 %i.bc, %i.ay                     ; 2 uses
  store i64 %i.bd, ptr %.0.i38, align 8, !tbaa !50
  %i.be = or disjoint i64 %.sroa.083.0101, 1
  %i.bf = load i64, ptr %.0.i, align 8, !tbaa !50
  %i.bg = and i64 %i.x, %i.bf
  %i.bh = mul i64 %i.be, %i.y
  %i.bi = lshr i64 %i.bg, %i.bh
  %i.bj = or i64 %i.bi, %i.bd                     ; 4 uses
  store i64 %i.bj, ptr %.0.i38, align 8, !tbaa !50
  %i.bk = add nuw nsw i64 %.sroa.083.0101, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %scalar.ph138, !llvm.loop !242

_ZNK8DecGraph10TruthTable6nWordsEv.exit43:        ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %i.bl = lshr exact i64 %i.aw, 3
  %4 = and i64 %i.bl, 4294967295                  ; 2 uses
  %5 = add nsw i64 %4, -1                         ; 3 uses
  %.not95102 = icmp ult i64 %5, 4
  br i1 %.not95102, label %.lr.ph104.preheader180, label %vector.ph153

vector.ph153:                                     ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit43
  %n.vec158 = and i64 %5, -4                      ; 3 uses
  %6 = or disjoint i64 %n.vec158, 1
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %.lcssa, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index162 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.0.i38, i64 %index162 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x i64> %broadcast.splat156, ptr %8, align 8, !tbaa !50
  store <2 x i64> %broadcast.splat156, ptr %i.bm, align 8, !tbaa !50
  %index.next163 = add nuw i64 %index162, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.bn, label %middle.block160, label %vector.body157, !llvm.loop !243

middle.block160:                                  ; preds = %vector.body157
  %cmp.n161 = icmp eq i64 %5, %n.vec158
  br i1 %cmp.n161, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %.lr.ph104.preheader180

.lr.ph104.preheader180:                           ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit43, %middle.block160
  %indvars.iv111.ph = phi i64 [ 1, %_ZNK8DecGraph10TruthTable6nWordsEv.exit43 ], [ %6, %middle.block160 ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader180, %.lr.ph104
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph104 ], [ %indvars.iv111.ph, %.lr.ph104.preheader180 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i38, i64 %indvars.iv111
  store i64 %.lcssa, ptr %i.bo, align 8, !tbaa !50
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %.not95 = icmp eq i64 %indvars.iv.next112, %4
  br i1 %.not95, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %.lr.ph104, !llvm.loop !244

bb.f:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit39
  br i1 %.not.i, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit47

_ZNK8DecGraph10TruthTable6nWordsEv.exit47:        ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 3                 ; 4 uses
  %i.bx = trunc i64 %i.bw to i32
  %.not9298 = icmp slt i32 %i.bx, 1
  %sext131 = shl i64 %i.bv, 29
  %i.by = ashr i64 %sext131, 32                   ; 2 uses
  br i1 %.not9298, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit47
  %i.bz = and i64 %i.bw, 2147483647               ; 4 uses
  %i.ca = sub i64 %.0.i38133, %.0.i134
  %i.cb = shl nsw i64 %i.by, 3
  %min.iters.check = icmp samesign ult i64 %i.bz, 4
  %invariant.op = add i64 %i.ca, -1
  %n.vec = and i64 %i.bw, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.sroa.071.0100 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cc = mul i64 %.sroa.071.0100, %i.by
  %i.cd = getelementptr [8 x i8], ptr %.0.i38, i64 %i.cc ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ce = mul i64 %i.cb, %.sroa.071.0100
  %.reass = add i64 %i.ce, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <2 x i64>, ptr %i.cf, align 8, !tbaa !50
  %wide.load135 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !50
  %i.ch = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store <2 x i64> %wide.load, ptr %i.ch, align 8, !tbaa !50
  store <2 x i64> %wide.load135, ptr %i.ci, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50
  %i.cm = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv.prol
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !246

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cn = sub nsw i64 %indvars.iv.ph, %i.bz
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cp = add nuw i64 %.sroa.071.0100, 1          ; 2 uses
  %.not91 = icmp eq i64 %i.cp, %i.h
  br i1 %.not91, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !50
  %i.cs = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !50
  %i.cv = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.1
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !50
  %i.cy = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv.next.1
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.2
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !50
  %i.db = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv.next.2
  store i64 %i.da, ptr %i.db, align 8, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not92.3 = icmp eq i64 %indvars.iv.next.3, %i.bz
  br i1 %.not92.3, label %._crit_edge, label %scalar.ph, !llvm.loop !247

_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread:   ; preds = %._crit_edge, %.lr.ph104, %middle.block160, %bb.f, %_ZNK8DecGraph10TruthTable6nWordsEv.exit47, %.loopexit, %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !66 ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %.not96105 = icmp eq ptr %i.dd, %i.de
  br i1 %.not96105, label %._crit_edge108, label %.lr.ph107

._crit_edge108:                                   ; preds = %.lr.ph107, %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread
  %i.dj = load i64, ptr %i.j, align 8
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %.not.i37, i1 true, i1 %i.dk
  br i1 %i.dl, label %_ZN8DecGraph10TruthTable13resetPositionEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge108
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !49  ; 3 uses
  %i.dq = zext i8 %i.dp to i64                    ; 13 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !52 ; 2 uses
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %i.dq
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dz = sub nuw nsw i64 %i.dq, %i.dx
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef %i.dz)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ea = icmp ugt i64 %i.dx, %i.dq
  br i1 %i.ea, label %bb.j, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ds, %i.eb
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !52
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !52 ; 2 uses
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !47 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3                 ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.dq
  br i1 %i.ej, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.ek = sub nuw nsw i64 %i.dq, %i.ei
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 noundef %i.ek)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit13.i

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.el = icmp ugt i64 %i.ei, %i.dq
  br i1 %i.el, label %bb.n, label %_ZNSt6vectorImSaImEE6resizeEm.exit13.i

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dq ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ed, %i.em
  br i1 %.not.i.i12.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit13.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.em, ptr %i.ec, align 8, !tbaa !52
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit13.i

_ZNSt6vectorImSaImEE6resizeEm.exit13.i:           ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.not19.i = icmp eq i8 %i.dp, 0
  br i1 %.not19.i, label %_ZN8DecGraph10TruthTable13resetPositionEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit13.i
  %i.en = load ptr, ptr %i.dn, align 8, !tbaa !47 ; 7 uses
  %i.eo = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 7 uses
  %min.iters.check166 = icmp ult i8 %i.dp, 8
  %i.ep = ptrtoaddr ptr %i.eo to i64
  %i.eq = ptrtoaddr ptr %i.en to i64
  %i.er = sub i64 %i.eq, %i.ep
  %diff.check164 = icmp ugt i64 %i.er, -32
  %or.cond = select i1 %min.iters.check166, i1 true, i1 %diff.check164
  br i1 %or.cond, label %scalar.ph165.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i
  %n.vec168 = and i64 %i.dq, 252                  ; 3 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next173, %vector.body169 ] ; 3 uses
  %vec.ind171 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph167 ], [ %vec.ind.next174, %vector.body169 ] ; 4 uses
  %step.add172 = add nuw <2 x i64> %vec.ind171, splat (i64 2) ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index170 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x i64> %vec.ind171, ptr %i.es, align 8, !tbaa !50
  store <2 x i64> %step.add172, ptr %i.et, align 8, !tbaa !50
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index170 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x i64> %vec.ind171, ptr %i.eu, align 8, !tbaa !50
  store <2 x i64> %step.add172, ptr %i.ev, align 8, !tbaa !50
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %vec.ind.next174 = add nuw <2 x i64> %vec.ind171, splat (i64 4)
  %i.ew = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.ew, label %middle.block175, label %vector.body169, !llvm.loop !248

middle.block175:                                  ; preds = %vector.body169
  %cmp.n176 = icmp eq i64 %n.vec168, %i.dq
  br i1 %cmp.n176, label %_ZN8DecGraph10TruthTable13resetPositionEv.exit, label %scalar.ph165.preheader

scalar.ph165.preheader:                           ; preds = %.lr.ph.i, %middle.block175
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec168, %middle.block175 ] ; 3 uses
  %xtraiter189 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph165.prol.loopexit, label %scalar.ph165.prol

scalar.ph165.prol:                                ; preds = %scalar.ph165.preheader, %scalar.ph165.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph165.prol ], [ %indvars.iv.i.ph, %scalar.ph165.preheader ] ; 5 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %scalar.ph165.prol ], [ 0, %scalar.ph165.preheader ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.prol
  store i64 %indvars.iv.i.prol, ptr %i.ex, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i.prol
  store i64 %indvars.iv.i.prol, ptr %i.ey, align 8, !tbaa !50
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph165.prol.loopexit, label %scalar.ph165.prol, !llvm.loop !249

scalar.ph165.prol.loopexit:                       ; preds = %scalar.ph165.prol, %scalar.ph165.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph165.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph165.prol ]
  %i.ez = sub nsw i64 %indvars.iv.i.ph, %i.dq
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %_ZN8DecGraph10TruthTable13resetPositionEv.exit, label %scalar.ph165

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph165 ], [ %indvars.iv.i.unr, %scalar.ph165.prol.loopexit ] ; 8 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i
  store i64 %indvars.iv.i, ptr %i.fb, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i64 %indvars.iv.i, ptr %i.fc, align 8, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i
  store i64 %indvars.iv.next.i, ptr %i.fd, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i
  store i64 %indvars.iv.next.i, ptr %i.fe, align 8, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.1
  store i64 %indvars.iv.next.i.1, ptr %i.ff, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i.1
  store i64 %indvars.iv.next.i.1, ptr %i.fg, align 8, !tbaa !50
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.2
  store i64 %indvars.iv.next.i.2, ptr %i.fh, align 8, !tbaa !50
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i.2
  store i64 %indvars.iv.next.i.2, ptr %i.fi, align 8, !tbaa !50
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i59.3 = icmp eq i64 %indvars.iv.next.i.3, %i.dq
  br i1 %.not.i59.3, label %_ZN8DecGraph10TruthTable13resetPositionEv.exit, label %scalar.ph165, !llvm.loop !250

_ZN8DecGraph10TruthTable13resetPositionEv.exit:   ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block175, %._crit_edge108, %_ZNSt6vectorImSaImEE6resizeEm.exit13.i
  call void @_ZN8DecGraph10TruthTable10clone_fromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !45 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8DecGraph10TruthTable13resetPositionEv.exit
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !46 ; 2 uses
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !46
  %i.fn = icmp ne i32 %i.fl, 1
  %brmerge = or i1 %.not.i37, %i.fn
  br i1 %brmerge, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !48
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.r, %bb.q
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !48
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !48
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.t, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %bb.p, %_ZN8DecGraph10TruthTable13resetPositionEv.exit, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.u

.lr.ph107:                                        ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, %.lr.ph107
  %.sroa.060.0106 = phi i64 [ %i.go, %.lr.ph107 ], [ 0, %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread ] ; 3 uses
  %i.gj = trunc i64 %.sroa.060.0106 to i32
  %i.gk = load ptr, ptr %2, align 8, !tbaa !67
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.060.0106
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !46
  %i.gn = trunc i32 %i.gm to i8
  call void @_ZN8DecGraph10TruthTable6moveToEjhb(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.gj, i8 noundef zeroext %i.gn, i1 noundef zeroext false)
  %i.go = add nuw i64 %.sroa.060.0106, 1          ; 2 uses
  %.not96 = icmp eq i64 %i.go, %i.di
  br i1 %.not96, label %._crit_edge108, label %.lr.ph107

bb.u:                                             ; preds = %bb.a, %_ZN8DecGraph10TruthTableD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN8DecGraph10TruthTable13countCofactorEiRSt6vectorIS0_SaIS0_EES4_b(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.DecGraph::TruthTable", align 16 ; 10 uses
  %6 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %7 = alloca %"class.DecGraph::TruthTable", align 16 ; 10 uses
  %8 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = sub nsw i32 %i.i, %1                     ; 4 uses
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = zext nneg i32 %1 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 4 uses
  br i1 %4, label %bb.c, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph10TruthTableEEEvT_S5_(ptr noundef %i.n, ptr noundef %i.p)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit: ; preds = %bb.c, %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !70     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i138, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph10TruthTableEEEvT_S5_(ptr noundef %i.q, ptr noundef %i.s)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139: ; preds = %bb.e, %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit
  %i.t = icmp eq i32 %1, %i.i
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread: ; preds = %bb.b
  %i.u = icmp eq i32 %1, %i.i
  br i1 %i.u, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !71   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %i.aa = load <2 x ptr>, ptr %0, align 8, !tbaa !51
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = load i8, ptr %i.g, align 8, !tbaa !49
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !37
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.z, align 4, !tbaa !46
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i:          ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.i:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread, %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139
  %i.ai = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #37 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false), !tbaa !50
  %i.aj = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not.i140 = icmp eq ptr %i.aj, null
  br i1 %.not.i140, label %_ZNK8DecGraph10TruthTable4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit

_ZNK8DecGraph10TruthTable4dataEv.exit:            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %bb.j
  %.0.i = phi ptr [ %i.al, %bb.j ], [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 5 uses
  %i.am = icmp ult i32 %i.j, 6
  br i1 %i.am, label %bb.k, label %bb.an

bb.k:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.an = shl nuw nsw i64 1, %i.k                 ; 2 uses
  %notmask = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread196
  %.0235 = phi i64 [ 0, %bb.k ], [ %.1198, %.thread196 ] ; 6 uses
  %.0127234 = phi i64 [ 0, %bb.k ], [ %i.ay, %.thread196 ] ; 5 uses
  %i.au = shl i64 %.0127234, %i.k
  %i.av = lshr i64 %i.au, 6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50
  %.neg = xor i64 %.0127234, -1
  %i.ay = add nuw i64 %.0127234, 1                ; 2 uses
  %.neg137 = shl i64 %.neg, %i.k
  %i.az = and i64 %.neg137, 62
  %i.ba = lshr i64 %i.ax, %i.az
  %i.bb = and i64 %i.ba, %i.ao                    ; 3 uses
  %.not243 = icmp eq i64 %.0235, 0
  br i1 %.not243, label %._crit_edge228.thread, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.l, %bb.m
  %.0122225 = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0122225
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !50
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %._crit_edge228, label %bb.m

bb.m:                                             ; preds = %.lr.ph227
  %i.bf = add nuw i64 %.0122225, 1                ; 2 uses
  %exitcond254.not = icmp eq i64 %i.bf, %.0235
  br i1 %exitcond254.not, label %._crit_edge228.thread, label %.lr.ph227, !llvm.loop !253

._crit_edge228:                                   ; preds = %.lr.ph227
  %i.bg = icmp eq i64 %.0122225, %.0235
  br i1 %i.bg, label %._crit_edge228.thread, label %bb.x

._crit_edge228.thread:                            ; preds = %bb.m, %bb.l, %._crit_edge228
  %i.bh = add nuw nsw i64 %.0235, 1               ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0235
  store i64 %i.bb, ptr %i.bi, align 8, !tbaa !50
  br i1 %4, label %bb.n, label %.thread196

bb.n:                                             ; preds = %._crit_edge228.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i64 0, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.m)
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !71 ; 6 uses
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !72
  %.not.i141 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i141, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !45 ; 4 uses
  %i.bm = load <2 x ptr>, ptr %5, align 16, !tbaa !51
  store <2 x ptr> %i.bm, ptr %i.bj, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = load i8, ptr %i.at, align 16, !tbaa !49
  store i8 %i.bo, ptr %i.bn, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !37
  %.not.i.i.i142 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i142, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.bl, align 4, !tbaa !46
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143:       ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bt, ptr %i.aq, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

end_hunk_0
begin_hunk_1_@_ZN8DecGraph10TruthTable16fourierTransformEv:bb.a
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.l, %bb.c ], [ %i.o, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.q, align 8, !tbaa !85
  %.not17 = icmp slt i32 %i.c, 1
  %.pre = load ptr, ptr %2, align 8, !tbaa !77    ; 5 uses
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.r = uitofp nneg i32 %i.c to float            ; 2 uses
  %i.s = and i64 %i.b, 2147483647                 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 2147483646               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !50
  %i.u = sitofp <2 x i64> %wide.load to <2 x float>
  %i.v = fdiv <2 x float> %i.u, %broadcast.splat
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  store <2 x float> %i.v, ptr %i.w, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ac) #35
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.af = sitofp i64 %i.ae to float
  %i.ag = fdiv float %i.af, %i.r
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.ag, ptr %i.ah, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %.not, label %._crit_edge.thread, label %scalar.ph, !llvm.loop !293
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph10TruthTable13fourierWeightEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.24") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i:
  %2 = alloca %"class.std::vector.24", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN8DecGraph10TruthTable16fourierTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.24") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #37 ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !82
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !84
  %i.k = getelementptr i8, ptr %i.h, i64 4        ; 3 uses
  %i.l = icmp eq i8 %i.d, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.m, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8, !tbaa !85
  %i.o = load ptr, ptr %2, align 8, !tbaa !81     ; 4 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !84
  %i.q = fpext float %i.p to double
  %i.r = tail call noundef double @pow(double noundef %i.q, double noundef 2.000000e+00) #36
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %i.h, align 4, !tbaa !84
  %i.t = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37 ; 4 uses
  store i32 1, ptr %i.t, align 4, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.v = icmp ugt i64 %i.b, 1
  br i1 %i.v, label %.lr.ph62, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit:   ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.lr.ph62
  %.1.lcssa69 = phi i64 [ %.061, %.lr.ph62 ], [ %.lcssa, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.058, %.lr.ph62 ], [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.059, %.lr.ph62 ], [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.029.1.lcssa = phi ptr [ %.sroa.029.060, %.lr.ph62 ], [ %.sroa.029.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.w = icmp ult i64 %.1.lcssa69, %i.b
  br i1 %i.w, label %.lr.ph62, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !294

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.sroa.17.0.lcssa = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.sroa.17.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ]
  %.sroa.029.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.sroa.029.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 2 uses
  %i.x = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.y = ptrtoint ptr %.sroa.029.0.lcssa to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0.lcssa, i64 noundef %i.z) #35
  %i.aa = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

.lr.ph62:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit
  %.061 = phi i64 [ %.1.lcssa69, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ 1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 3 uses
  %.sroa.029.060 = phi ptr [ %.sroa.029.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.t, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 7 uses
  %.sroa.17.059 = phi ptr [ %.sroa.17.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.u, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.11.058 = phi ptr [ %.sroa.11.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.u, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 4 uses
  %i.ag = ptrtoint ptr %.sroa.11.058 to i64
  %i.ah = ptrtoint ptr %.sroa.029.060 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.not46 = icmp eq ptr %.sroa.11.058, %.sroa.029.060
  br i1 %.not46, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph62
  %i.ak = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.al = icmp eq i64 %i.ai, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aj, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.148 = phi i64 [ %.061, %.lr.ph.new ], [ %i.ay, %bb.b ] ; 3 uses
  %.sroa.022.047 = phi i64 [ 0, %.lr.ph.new ], [ %i.bn, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.148
  %i.an = load float, ptr %i.am, align 4, !tbaa !84
  %i.ao = fpext float %i.an to double
  %i.ap = tail call noundef double @pow(double noundef %i.ao, double noundef 2.000000e+00) #36
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.029.060, i64 %.sroa.022.047
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !84
  %i.av = fpext float %i.au to double
  %i.aw = fadd double %i.ap, %i.av
  %i.ax = fptrunc double %i.aw to float
  store float %i.ax, ptr %i.at, align 4, !tbaa !84
  %i.ay = add i64 %.148, 2                        ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.o, i64 %.148
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !84
  %i.bc = fpext float %i.bb to double
  %i.bd = tail call noundef double @pow(double noundef %i.bc, double noundef 2.000000e+00) #36
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.029.060, i64 %.sroa.022.047
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !46
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !84
  %i.bk = fpext float %i.bj to double
  %i.bl = fadd double %i.bd, %i.bk
  %i.bm = fptrunc double %i.bl to float
  store float %i.bm, ptr %i.bi, align 4, !tbaa !84
  %i.bn = add nuw i64 %.sroa.022.047, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph54.preheader.unr-lcssa, label %bb.b

.lr.ph54.preheader.unr-lcssa:                     ; preds = %bb.b
  %i.bo = and i64 %i.ai, 4
  %lcmp.mod.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph54.preheader.unr-lcssa, %.lr.ph
  %.148.epil.init = phi i64 [ %.061, %.lr.ph ], [ %i.ay, %.lr.ph54.preheader.unr-lcssa ] ; 2 uses
  %.sroa.022.047.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bn, %.lr.ph54.preheader.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.bp = add i64 %.148.epil.init, 1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.148.epil.init
  %i.br = load float, ptr %i.bq, align 4, !tbaa !84
  %i.bs = fpext float %i.br to double
  %i.bt = tail call noundef double @pow(double noundef %i.bs, double noundef 2.000000e+00) #36
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.029.060, i64 %.sroa.022.047.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bw ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !84
  %i.bz = fpext float %i.by to double
  %i.ca = fadd double %i.bt, %i.bz
  %i.cb = fptrunc double %i.ca to float
  store float %i.cb, ptr %i.bx, align 4, !tbaa !84
  br label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.lr.ph54.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ay, %.lr.ph54.preheader.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.017.053 = phi i64 [ %i.ct, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %.lr.ph54.preheader ] ; 2 uses
  %.sroa.029.152 = phi ptr [ %.sroa.029.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.029.060, %.lr.ph54.preheader ] ; 5 uses
  %.sroa.17.151 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.17.059, %.lr.ph54.preheader ] ; 3 uses
  %.sroa.11.150 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.11.058, %.lr.ph54.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.029.152, i64 %.sroa.017.053
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !46
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11.150, %.sroa.17.151
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph54
  store i32 %i.ce, ptr %.sroa.11.150, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %.lr.ph54
  %i.cf = ptrtoint ptr %.sroa.17.151 to i64
  %i.cg = ptrtoint ptr %.sroa.029.152 to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775804
  br i1 %i.ci, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cj = ashr exact i64 %i.ch, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 2305843009213693951)
  %i.cn = select i1 %i.cl, i64 2305843009213693951, i64 %i.cm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #37 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i32 %i.ce, ptr %i.cq, align 4, !tbaa !46
  %i.cr = icmp sgt i64 %i.ch, 0
  br i1 %i.cr, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr nonnull align 4 %.sroa.029.152, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.152, i64 noundef %i.ch) #35
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cn
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %.pn = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.11.150, %bb.c ]
  %.sroa.17.2 = phi ptr [ %i.cs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.151, %bb.c ] ; 2 uses
  %.sroa.029.2 = phi ptr [ %i.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.029.152, %bb.c ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ct = add nuw i64 %.sroa.017.053, 1           ; 2 uses
  %.not40 = icmp eq i64 %i.ct, %i.aj
  br i1 %.not40, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, label %.lr.ph54
}

; Function Attrs: mustprogress nounwind uwtable
define noundef float @_ZN8DecGraph10TruthTable11fourierCostEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i:
  %1 = alloca %"class.std::vector.24", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZN8DecGraph10TruthTable16fourierTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.24") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 4                  ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #37 ; 13 uses
  %i.i = icmp eq i8 %i.d, 0
  br i1 %i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !84
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !81     ; 4 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !84
  %i.m = fpext float %i.l to double
  %i.n = tail call noundef double @pow(double noundef %i.m, double noundef 2.000000e+00) #36
  %i.o = fptrunc double %i.n to float
  store float %i.o, ptr %i.h, align 4, !tbaa !84
  %i.p = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37 ; 4 uses
  store i32 1, ptr %i.p, align 4, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.r = icmp ugt i64 %i.b, 1
  br i1 %i.r, label %.lr.ph123, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit:   ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.lr.ph123
  %.1.lcssa148 = phi i64 [ %.026122, %.lr.ph123 ], [ %.lcssa179, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.081.1.lcssa = phi ptr [ %.sroa.081.0119, %.lr.ph123 ], [ %.sroa.081.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0120, %.lr.ph123 ], [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0121, %.lr.ph123 ], [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.s = icmp ult i64 %.1.lcssa148, %i.b
  br i1 %i.s, label %.lr.ph123, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge, !llvm.loop !295

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.sroa.081.0.lcssa = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.sroa.081.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.sroa.17.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ]
  %i.t = load i64, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %.not126 = icmp eq i64 %i.t, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  %i.u = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph129
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi155 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !84
  %wide.load156 = load <4 x float>, ptr %i.w, align 4, !tbaa !84
  %i.x = fcmp une <4 x float> %wide.load, zeroinitializer
  %i.y = fcmp une <4 x float> %wide.load156, zeroinitializer
  %i.z = zext <4 x i1> %i.x to <4 x i32>
  %i.aa = zext <4 x i1> %i.y to <4 x i32>
  %i.ab = add <4 x i32> %vec.phi, %i.z            ; 2 uses
  %i.ac = add <4 x i32> %vec.phi155, %i.aa        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph129, %middle.block
  %.028128.ph = phi i32 [ 0, %.lr.ph129 ], [ %i.ae, %middle.block ]
  %.sroa.061.0127.ph = phi i64 [ 0, %.lr.ph129 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph123:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit
  %.026122 = phi i64 [ %.1.lcssa148, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ 1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 3 uses
  %.sroa.17.0121 = phi ptr [ %.sroa.17.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.q, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.11.0120 = phi ptr [ %.sroa.11.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.q, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 4 uses
  %.sroa.081.0119 = phi ptr [ %.sroa.081.1.lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ], [ %i.p, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 7 uses
  %i.af = ptrtoint ptr %.sroa.11.0120 to i64
  %i.ag = ptrtoint ptr %.sroa.081.0119 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.not99107 = icmp eq ptr %.sroa.11.0120, %.sroa.081.0119
  br i1 %.not99107, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph123
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ai, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.1109 = phi i64 [ %.026122, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 3 uses
  %.sroa.074.0108 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1109
  %i.al = load float, ptr %i.ak, align 4, !tbaa !84
  %i.am = fpext float %i.al to double
  %i.an = tail call noundef double @pow(double noundef %i.am, double noundef 2.000000e+00) #36
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.081.0119, i64 %.sroa.074.0108
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aq ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !84
  %i.at = fpext float %i.as to double
  %i.au = fadd double %i.an, %i.at
  %i.av = fptrunc double %i.au to float
  store float %i.av, ptr %i.ar, align 4, !tbaa !84
  %i.aw = add i64 %.1109, 2                       ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %i.k, i64 %.1109
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !84
  %i.ba = fpext float %i.az to double
  %i.bb = tail call noundef double @pow(double noundef %i.ba, double noundef 2.000000e+00) #36
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.081.0119, i64 %.sroa.074.0108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !84
  %i.bi = fpext float %i.bh to double
  %i.bj = fadd double %i.bb, %i.bi
  %i.bk = fptrunc double %i.bj to float
  store float %i.bk, ptr %i.bg, align 4, !tbaa !84
  %i.bl = add nuw i64 %.sroa.074.0108, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph115.preheader.unr-lcssa, label %.lr.ph

.lr.ph115.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %i.bm = and i64 %i.ah, 4
  %lcmp.mod.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod.not, label %.lr.ph115.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph115.preheader.unr-lcssa, %.lr.ph.preheader
  %.1109.epil.init = phi i64 [ %.026122, %.lr.ph.preheader ], [ %i.aw, %.lr.ph115.preheader.unr-lcssa ] ; 2 uses
  %.sroa.074.0108.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bl, %.lr.ph115.preheader.unr-lcssa ]
  %lcmp.mod181 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod181)
  %i.bn = add i64 %.1109.epil.init, 1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1109.epil.init
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84
  %i.bq = fpext float %i.bp to double
  %i.br = tail call noundef double @pow(double noundef %i.bq, double noundef 2.000000e+00) #36
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.081.0119, i64 %.sroa.074.0108.epil.init
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !84
  %i.bx = fpext float %i.bw to double
  %i.by = fadd double %i.br, %i.bx
  %i.bz = fptrunc double %i.by to float
  store float %i.bz, ptr %i.bv, align 4, !tbaa !84
  br label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %.lr.ph115.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa179 = phi i64 [ %i.aw, %.lr.ph115.preheader.unr-lcssa ], [ %i.bn, %.lr.ph.epil.preheader ]
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.068.0114 = phi i64 [ %i.cr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %.lr.ph115.preheader ] ; 2 uses
  %.sroa.17.1113 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.17.0121, %.lr.ph115.preheader ] ; 3 uses
  %.sroa.11.1112 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.11.0120, %.lr.ph115.preheader ] ; 3 uses
  %.sroa.081.1111 = phi ptr [ %.sroa.081.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.081.0119, %.lr.ph115.preheader ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.081.1111, i64 %.sroa.068.0114
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !46
  %i.cc = add nsw i32 %i.cb, 1                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11.1112, %.sroa.17.1113
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph115
  store i32 %i.cc, ptr %.sroa.11.1112, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.b:                                             ; preds = %.lr.ph115
  %i.cd = ptrtoint ptr %.sroa.17.1113 to i64
  %i.ce = ptrtoint ptr %.sroa.081.1111 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.ch = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2305843009213693951)
  %i.cl = select i1 %i.cj, i64 2305843009213693951, i64 %i.ck ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #37 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i32 %i.cc, ptr %i.co, align 4, !tbaa !46
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.d:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %.sroa.081.1111, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.1111, i64 noundef %i.cf) #35
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %.sroa.081.2 = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.081.1111, %bb.a ] ; 2 uses
  %.pn = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.11.1112, %bb.a ]
  %.sroa.17.2 = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.1113, %bb.a ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.cr = add nuw i64 %.sroa.068.0114, 1          ; 2 uses
  %.not100 = icmp eq i64 %i.cr, %i.ai
  br i1 %.not100, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, label %.lr.ph115

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa153 = phi i32 [ %i.ae, %middle.block ], [ %i.dk, %scalar.ph ]
  %i.cs = uitofp nneg i32 %.lcssa153 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  %.028.lcssa = phi float [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge ], [ %i.cs, %._crit_edge.loopexit ]
  %i.ct = load i8, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.cu = zext i8 %i.ct to i64                    ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 4 uses
  %min.iters.check158 = icmp ult i8 %i.ct, 7
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %._crit_edge
  %n.vec160 = and i64 %i.cv, 504                  ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %i.dc, %vector.body161 ]
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %i.dd, %vector.body161 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index162 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load165 = load <4 x float>, ptr %i.cw, align 4, !tbaa !84
  %wide.load166 = load <4 x float>, ptr %i.cx, align 4, !tbaa !84
  %i.cy = fcmp une <4 x float> %wide.load165, zeroinitializer
  %i.cz = fcmp une <4 x float> %wide.load166, zeroinitializer
  %i.da = zext <4 x i1> %i.cy to <4 x i32>
  %i.db = zext <4 x i1> %i.cz to <4 x i32>
  %i.dc = add <4 x i32> %vec.phi163, %i.da        ; 2 uses
  %i.dd = add <4 x i32> %vec.phi164, %i.db        ; 2 uses
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.de, label %middle.block168, label %vector.body161, !llvm.loop !297

middle.block168:                                  ; preds = %vector.body161
  %bin.rdx169 = add <4 x i32> %i.dd, %i.dc
  %i.df = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx169) ; 2 uses
  %cmp.n170 = icmp eq i64 %i.cv, %n.vec160
  br i1 %cmp.n170, label %.preheader, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %._crit_edge, %middle.block168
  %indvars.iv.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec160, %middle.block168 ]
  %.027132.ph = phi i32 [ 0, %._crit_edge ], [ %i.df, %middle.block168 ]
  br label %scalar.ph157

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028128 = phi i32 [ %i.dk, %scalar.ph ], [ %.028128.ph, %scalar.ph.preheader ]
  %.sroa.061.0127 = phi i64 [ %i.dl, %scalar.ph ], [ %.sroa.061.0127.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.061.0127
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !84
  %i.di = fcmp une float %i.dh, 0.000000e+00
  %i.dj = zext i1 %i.di to i32
  %i.dk = add nuw nsw i32 %.028128, %i.dj         ; 2 uses
  %i.dl = add nuw i64 %.sroa.061.0127, 1          ; 2 uses
  %.not = icmp eq i64 %i.dl, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !298

.preheader:                                       ; preds = %scalar.ph157, %middle.block168
  %.lcssa152 = phi i32 [ %i.df, %middle.block168 ], [ %i.dr, %scalar.ph157 ]
  %xtraiter182 = and i64 %i.cv, 3                 ; 3 uses
  %i.dm = icmp ult i8 %i.ct, 3
  br i1 %i.dm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter186 = and i64 %i.cv, 508
  br label %bb.g

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph157 ], [ %indvars.iv.ph, %scalar.ph157.preheader ] ; 3 uses
  %.027132 = phi i32 [ %i.dr, %scalar.ph157 ], [ %.027132.ph, %scalar.ph157.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.do = load float, ptr %i.dn, align 4, !tbaa !84
  %i.dp = fcmp une float %i.do, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %i.dr = add nuw nsw i32 %.027132, %i.dq         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not97 = icmp eq i64 %indvars.iv, %i.cu
  br i1 %.not97, label %.preheader, label %scalar.ph157, !llvm.loop !299

_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa:          ; preds = %bb.g
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa, %.preheader
  %indvars.iv139.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next140.3, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ]
  %.0134.epil.init = phi float [ 0.000000e+00, %.preheader ], [ %i.fh, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter182, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv139.epil = phi i64 [ %indvars.iv139.epil.init, %.epil.preheader ], [ %indvars.iv.next140.epil, %bb.e ] ; 3 uses
  %.0134.epil = phi float [ %.0134.epil.init, %.epil.preheader ], [ %i.dx, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv139.epil
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !84
  %i.du = trunc i64 %indvars.iv139.epil to i32
  %i.dv = mul i32 %i.du, 3
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dw, float %.0134.epil) ; 2 uses
  %indvars.iv.next140.epil = add nuw nsw i64 %indvars.iv139.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter182
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e, !llvm.loop !300

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa
  %.lcssa = phi float [ %i.fh, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ], [ %i.dx, %bb.e ]
  %i.dy = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.dz = ptrtoint ptr %.sroa.081.0.lcssa to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.0.lcssa, i64 noundef %i.ea) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.g) #35
  %i.eb = load ptr, ptr %1, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIfSaIfEED2Ev.exit49, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !82
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

_ZNSt6vectorIfSaIfEED2Ev.exit49:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.eh = uitofp nneg i32 %.lcssa152 to float
  %i.ei = fdiv float %.028.lcssa, %i.eh
  %i.ej = fadd float %i.ei, %.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret float %i.ej

bb.g:                                             ; preds = %bb.g, %.preheader.new
  %indvars.iv139 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next140.3, %bb.g ] ; 6 uses
  %.0134 = phi float [ 0.000000e+00, %.preheader.new ], [ %i.fh, %bb.g ]
  %niter187 = phi i64 [ 0, %.preheader.new ], [ %niter187.next.3, %bb.g ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.el = load float, ptr %i.ek, align 4, !tbaa !84
  %i.em = trunc i64 %indvars.iv139 to i32
  %i.en = mul i32 %i.em, 3
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.el, float %i.eo, float %.0134)
  %indvars.iv.next140 = or disjoint i64 %indvars.iv139, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.er = load float, ptr %i.eq, align 4, !tbaa !84
  %i.es = trunc i64 %indvars.iv.next140 to i32
  %i.et = mul i32 %i.es, 3
  %i.eu = uitofp nneg i32 %i.et to float
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.er, float %i.eu, float %i.ep)
  %indvars.iv.next140.1 = or disjoint i64 %indvars.iv139, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140.1
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !84
  %i.ey = trunc i64 %indvars.iv.next140.1 to i32
  %i.ez = mul i32 %i.ey, 3
  %i.fa = uitofp nneg i32 %i.ez to float
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.fa, float %i.ev)
  %indvars.iv.next140.2 = or disjoint i64 %indvars.iv139, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140.2
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !84
  %i.fe = trunc i64 %indvars.iv.next140.2 to i32
  %i.ff = mul i32 %i.fe, 3
  %i.fg = uitofp nneg i32 %i.ff to float
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fg, float %i.fb) ; 3 uses
  %indvars.iv.next140.3 = add nuw nsw i64 %indvars.iv139, 4 ; 2 uses
  %niter187.next.3 = add i64 %niter187, 4         ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa, label %bb.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN8DecGraph11reverseBitsEm(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i64 %i.p

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.067 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  %i.a = lshr i64 %0, %indvars.iv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.b = shl i64 %.067, 2
  %i.c = shl i64 %i.a, 1
  %i.d = and i64 %i.c, 2
  %i.e = or disjoint i64 %i.b, %i.d
  %i.f = lshr i64 %0, %indvars.iv.next
  %i.g = and i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, %i.e
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.i = lshr i64 %0, %indvars.iv.next.1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.j = shl i64 %i.h, 2
end_hunk_1
begin_hunk_2_@_ZN8DecGraph16autoClusterIndexERSt6vectorIS0_IiSaIiEESaIS2_EEd:bb.a

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.kx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kv) #37
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.bf
  %i.ky = phi ptr [ %i.kx, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.bf ] ; 6 uses
  store ptr %i.ky, ptr %i.kp, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !66
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kv
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !75
  %i.lc = load ptr, ptr %7, align 8, !tbaa !93    ; 4 uses
  %i.ld = load ptr, ptr %i.gl, align 8, !tbaa !93
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 4 uses
  %i.lh = icmp sgt i64 %i.lg, 4
  br i1 %i.lh, label %bb.bi, label %bb.bj, !prof !94

bb.bi:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ky, ptr align 4 %i.lc, i64 %i.lg, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.bj:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  %i.li = icmp eq i64 %i.lg, 4
  br i1 %i.li, label %bb.bk, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.lj = load i32, ptr %i.lc, align 4, !tbaa !46
  store i32 %i.lj, ptr %i.ky, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.lk = getelementptr inbounds i8, ptr %i.ky, i64 %i.lg
  store ptr %i.lk, ptr %i.kz, align 8, !tbaa !66
  %i.ll = load ptr, ptr %i.gj, align 8, !tbaa !149
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store ptr %i.lm, ptr %i.gj, align 8, !tbaa !149
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.bl:                                            ; preds = %_ZNKSt8functionIFviRSt6vectorIiSaIiEEEEclEiS3_.exit
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.kp, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %.pre122 = load ptr, ptr %7, align 8, !tbaa !67
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %bb.bl
  %i.ln = phi ptr [ %i.lc, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ], [ %.pre122, %bb.bl ] ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.lo = load ptr, ptr %i.gm, align 8, !tbaa !75
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.ln to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.lr) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bc, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ls = add nuw nsw i32 %.098, 1                ; 2 uses
  %exitcond119.not = icmp eq i32 %i.ls, %i.i
  br i1 %exitcond119.not, label %._crit_edge100, label %bb.bc, !llvm.loop !405
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram13buildClustersESt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.102") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::set.70", align 8       ; 8 uses
  %4 = alloca %"class.std::vector.102", align 8   ; 11 uses
  %5 = alloca %"class.std::vector.102", align 8   ; 8 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = sext i32 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.i, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.i, ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !105
  %.not.i.i.i.i = icmp eq i8 %i.h, 0              ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit:   ; preds = %bb.a
  %i.n = zext i8 %i.h to i64                      ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !46
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %.pre = load ptr, ptr %2, align 8, !tbaa !67
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, %bb.a
  %i.s = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 2 uses
  %.sroa.8.0 = phi i64 [ 0, %bb.a ], [ %i.r, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ]
  %.sroa.082.0 = phi ptr [ null, %bb.a ], [ %i.p, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 3 uses
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %bb.b, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not.i.i.i.i23 = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit.thread, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge96.split

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit:    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ac = mul nuw nsw i64 %i.y, 24                ; 3 uses
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 5 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.y
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ac, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ad, i64 %i.ac
  %.pre111 = load ptr, ptr %i.t, align 8, !tbaa !66 ; 2 uses
  %.pre112 = load ptr, ptr %2, align 8, !tbaa !67 ; 2 uses
  %.pre118 = ptrtoint ptr %.pre111 to i64
  %.pre119 = ptrtoint ptr %.pre112 to i64
  %i.af = icmp eq ptr %.pre111, %.pre112
  %i.ag = or i1 %i.af, %.not.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !151
  store ptr %scevgep.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !149
  %i.aj = sub i64 %.pre118, %.pre119
  %i.ak = ashr exact i64 %i.aj, 2
  br i1 %i.ag, label %._crit_edge96.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  %i.al = zext i8 %i.h to i64
  br label %.lr.ph

._crit_edge96.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit.thread, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  %i.am = phi ptr [ %i.ab, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.ai, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit ], [ %i.ai, %._crit_edge ]
  %i.an = phi ptr [ %i.aa, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.ah, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit ], [ %i.ah, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN8DecGraph16autoClusterIndexERSt6vectorIS0_IiSaIiEESaIS2_EEd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.102") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef f0x3FEE666666666666)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !164   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !164 ; 2 uses
  %.not85102 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not85102, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge96.split
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.aw = phi ptr [ %i.es, %._crit_edge ], [ %i.ad, %.lr.ph.preheader ]
  %.sroa.074.094 = phi i64 [ %i.bf, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.074.094
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bf = add nuw i64 %.sroa.074.094, 1           ; 2 uses
  %.not = icmp eq i64 %i.bf, %i.ak
  br i1 %.not, label %._crit_edge96.split, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bg = phi ptr [ %i.aw, %.lr.ph ], [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 12 uses
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = load i64, ptr %i.be, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %i.bl, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %_ZNK8DecGraph10TruthTable4dataEv.exit.i

_ZNK8DecGraph10TruthTable4dataEv.exit.i:          ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !47 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.bv, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %.not7887.i = icmp slt i32 %i.bu, 1
  br i1 %.not7887.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %bb.d
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZN8DecGraphL15elementary_maskE, i64 %indvars.iv
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !50 ; 2 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = and i64 %i.bt, 2147483647
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %.not78.i = icmp eq i64 %indvars.iv.next97.i, %i.cc
  br i1 %.not78.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph89.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next97.i, %bb.e ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv96.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %i.cf = and i64 %i.ce, %i.ca
  %i.cg = and i64 %i.ce, %i.bz
  %i.ch = lshr i64 %i.cg, %i.cb
  %.not55.not.i = icmp eq i64 %i.cf, %i.ch
  br i1 %.not55.not.i, label %bb.e, label %_ZN8DecGraph10TruthTable11hasVariableEj.exit

bb.g:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %i.ci = trunc i64 %indvars.iv to i32
  %i.cj = add i32 %i.ci, -6                       ; 2 uses
  %i.ck = shl nuw i32 1, %i.cj                    ; 3 uses
  %.not5483.i = icmp sgt i32 %i.bu, 0
  br i1 %.not5483.i, label %.lr.ph86.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph86.i:                                       ; preds = %bb.g
  %.sroa.speculated.i62.i = call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %.not7781.i = icmp eq i32 %.sroa.speculated.i62.i, 0
  %i.cl = shl i32 2, %i.cj                        ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  br i1 %.not7781.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph86.i
  %i.cn = sext i32 %i.ck to i64
  %zext.i = zext i32 %i.ck to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..critedge57_crit_edge.i, %.lr.ph.preheader.i
  %.085.i = phi i32 [ %i.ct, %..critedge57_crit_edge.i ], [ 0, %.lr.ph.preheader.i ]
  %.04384.i = phi ptr [ %i.cs, %..critedge57_crit_edge.i ], [ %i.bp, %.lr.ph.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04384.i, i64 %i.cn
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = icmp eq i64 %indvars.iv.next.i, %zext.i
  br i1 %i.co, label %..critedge57_crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.04384.i, i64 %indvars.iv.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !50
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cr = load i64, ptr %gep.i, align 8, !tbaa !50
  %.not.i = icmp eq i64 %i.cq, %i.cr
  br i1 %.not.i, label %bb.h, label %_ZN8DecGraph10TruthTable11hasVariableEj.exit

..critedge57_crit_edge.i:                         ; preds = %bb.h
  %i.cs = getelementptr inbounds [8 x i8], ptr %.04384.i, i64 %i.cm
  %i.ct = add nsw i32 %.085.i, %i.cl              ; 2 uses
  %.not54.i = icmp slt i32 %i.ct, %i.bu
  br i1 %.not54.i, label %.lr.ph.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !1

_ZN8DecGraph10TruthTable11hasVariableEj.exit:     ; preds = %bb.f, %bb.i
  %.02022.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8DecGraph10TruthTable11hasVariableEj.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZN8DecGraph10TruthTable11hasVariableEj.exit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !46
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = icmp slt i64 %indvars.iv, %i.cw         ; 2 uses
  %.in.v.i.i.i = select i1 %i.cx, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.cx, label %._crit_edge.thread.i.i.i, label %bb.k

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN8DecGraph10TruthTable11hasVariableEj.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.i, %_ZN8DecGraph10TruthTable11hasVariableEj.exit ] ; 4 uses
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.cz = icmp eq ptr %.019.lcssa29.i.i.i, %i.cy
  br i1 %i.cz, label %select.unfold.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.da = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #41
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  %.pre121 = sext i32 %.pre.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.pre-phi122 = phi i64 [ %.pre121, %bb.j ], [ %i.cw, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.j ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.db = icmp slt i64 %.pre-phi122, %indvars.iv
  br i1 %i.db, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.k, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.k ] ; 3 uses
  %i.dc = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.i
  br i1 %i.dc, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %select.unfold.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !46
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv, %i.df
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.l, %select.unfold.i.i
  %i.dh = phi i1 [ %i.dg, %bb.l ], [ true, %select.unfold.i.i ]
  %i.di = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #36
  %i.dl = load i64, ptr %i.m, align 8, !tbaa !105
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.m, align 8, !tbaa !105
  %.pre113 = load ptr, ptr %4, align 8, !tbaa !150
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %bb.k, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.dn = phi ptr [ %i.bg, %bb.k ], [ %.pre113, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.082.0, i64 %indvars.iv ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !46
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !46
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.sroa.074.094 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !66 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !75
  %.not.i27 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 4 uses
  %i.dz = ptrtoint ptr %i.dt to i64
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775804
  br i1 %i.ec, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ed = ashr exact i64 %i.eb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
end_hunk_2
begin_hunk_3_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ez, align 8, !tbaa !105
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !104
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !136
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.fe, align 8, !tbaa !105
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.fj, align 8, !tbaa !105
  %i.fk = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i138.3 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i.i138.3, label %_ZN8DecGraph11CombinationD2Ev.exit140, label %.lr.ph.i.i.i.i.i, !llvm.loop !415

_ZN8DecGraph11CombinationD2Ev.exit140:            ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i
  %i.fm = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %.lcssa1196.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fl, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !450
  %.not648724 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not648724, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit, %_ZN8DecGraph11CombinationD2Ev.exit140
  %i.fn = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.fo = ptrtoint ptr %i.df to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 8 uses
  %.not.i.i.i.i141 = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.df ; 3 uses
  br i1 %.not.i.i.i.i141, label %.thread639, label %bb.p

.thread639:                                       ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr null, i64 %i.fp
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.p:                                             ; preds = %._crit_edge
  %i.fr = icmp ugt i64 %i.fp, 9223372036854775804
  br i1 %i.fr, label %bb.q, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143, !prof !92

bb.q:                                             ; preds = %bb.p
  call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143:   ; preds = %bb.p
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #37 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp ; 3 uses
  %i.fu = icmp samesign ugt i64 %i.fp, 4
  br i1 %i.fu, label %bb.r, label %bb.s, !prof !95

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.df, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143
  %i.fv = icmp eq i64 %i.fp, 4
  br i1 %i.fv, label %bb.t, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.t:                                             ; preds = %bb.s
  %i.fw = load i32, ptr %i.df, align 4, !tbaa !46
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144:             ; preds = %.thread639, %bb.r, %bb.s, %bb.t
  %i.fx = phi ptr [ %i.ft, %bb.r ], [ %i.ft, %bb.s ], [ %i.ft, %bb.t ], [ %i.fq, %.thread639 ]
  %i.fy = phi ptr [ %i.fs, %bb.r ], [ %i.fs, %bb.s ], [ %i.fs, %bb.t ], [ null, %.thread639 ] ; 4 uses
  %i.fz = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fm to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 48                ; 3 uses
  %.not649726 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.fm
  br i1 %.not649726, label %._crit_edge729, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144
  %xtraiter1239 = and i64 %i.gc, 3                ; 3 uses
  %i.gd = icmp ult i64 %i.gc, 4
  br i1 %i.gd, label %.lr.ph728.epil.preheader, label %.lr.ph728.preheader.new

.lr.ph728.preheader.new:                          ; preds = %.lr.ph728.preheader
  %unroll_iter1243 = and i64 %i.gc, -4
  br label %.lr.ph728

.lr.ph:                                           ; preds = %_ZN8DecGraph11CombinationD2Ev.exit140, %_ZN8DecGraph10TruthTableD2Ev.exit
  %.sroa.0593.0725 = phi ptr [ %i.hr, %_ZN8DecGraph10TruthTableD2Ev.exit ], [ %i.bn, %_ZN8DecGraph11CombinationD2Ev.exit140 ] ; 2 uses
  %i.ge = load i32, ptr %.sroa.0593.0725, align 4, !tbaa !46
  %i.gf = sext i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.gh = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.gf ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36 ; 9 uses
  store ptr %i.gj, ptr %7, align 8, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 6 uses
  store ptr %i.gl, ptr %i.ae, align 8, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !49
  store i8 %i.gn, ptr %i.af, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !37
  store i64 %i.gp, ptr %i.ag, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread, label %bb.u

_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread:     ; preds = %.lr.ph
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

bb.u:                                             ; preds = %.lr.ph
  %i.gq = load i32, ptr %i.gl, align 4, !tbaa !46
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gl, align 4, !tbaa !46
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.gs = load i32, ptr %i.gl, align 4, !tbaa !46 ; 2 uses
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.gl, align 4, !tbaa !46
  %i.gu = icmp ne i32 %i.gs, 1
  %i.gv = icmp eq ptr %i.gj, null
  %or.cond = select i1 %i.gu, i1 true, i1 %i.gv
  br i1 %or.cond, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.w, %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !48
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.x, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.y, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread, %bb.u, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0593.0725, i64 4 ; 2 uses
  %.not648 = icmp eq ptr %i.hr, %i.bm
  br i1 %.not648, label %._crit_edge, label %.lr.ph

._crit_edge729.loopexit.unr-lcssa:                ; preds = %.lr.ph728
  %lcmp.mod1241.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1241.not, label %._crit_edge729, label %.lr.ph728.epil.preheader

.lr.ph728.epil.preheader:                         ; preds = %._crit_edge729.loopexit.unr-lcssa, %.lr.ph728.preheader
  %.sroa.0584.0727.epil.init = phi i64 [ 0, %.lr.ph728.preheader ], [ %i.jg, %._crit_edge729.loopexit.unr-lcssa ]
  %lcmp.mod1242 = icmp ne i64 %xtraiter1239, 0
  call void @llvm.assume(i1 %lcmp.mod1242)
  br label %.lr.ph728.epil

.lr.ph728.epil:                                   ; preds = %.lr.ph728.epil, %.lr.ph728.epil.preheader
  %.sroa.0584.0727.epil = phi i64 [ %i.hx, %.lr.ph728.epil ], [ %.sroa.0584.0727.epil.init, %.lr.ph728.epil.preheader ] ; 3 uses
  %epil.iter1240 = phi i64 [ %epil.iter1240.next, %.lr.ph728.epil ], [ 0, %.lr.ph728.epil.preheader ]
  %i.hs = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %.sroa.0584.0727.epil
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !105
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.0584.0727.epil
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !46
  %i.hx = add nuw i64 %.sroa.0584.0727.epil, 1
  %epil.iter1240.next = add i64 %epil.iter1240, 1 ; 2 uses
  %epil.iter1240.cmp.not = icmp eq i64 %epil.iter1240.next, %xtraiter1239
  br i1 %epil.iter1240.cmp.not, label %._crit_edge729, label %.lr.ph728.epil, !llvm.loop !416

._crit_edge729:                                   ; preds = %._crit_edge729.loopexit.unr-lcssa, %.lr.ph728.epil, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144
  %i.hy = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, %.0.i.i.i.i.i.i.i
  %or.cond.i.i = select i1 %.not.i.i.i.i141, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge729
  %.pre.i.i = load i32, ptr %i.df, align 4, !tbaa !46
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.hz = phi i32 [ %i.ie, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ia = phi ptr [ %i.id, %.lr.ph.i.i ], [ %i.hy, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.df, %.lr.ph.preheader.i.i ]
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !46 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.hz
  %spec.select.i.i = select i1 %i.ic, ptr %i.ia, ptr %.sroa.02.010.i.i ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %.not.i.i147 = icmp eq ptr %i.id, %.0.i.i.i.i.i.i.i
  %i.ie = call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.hz)
  br i1 %.not.i.i147, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !417

_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i, %._crit_edge729
  %.sroa.02.2.i.i = phi ptr [ %i.df, %._crit_edge729 ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.if = load i32, ptr %.sroa.02.2.i.i, align 4, !tbaa !46 ; 2 uses
  %i.ig = shl nuw nsw i32 3, %i.bw
  %i.ih = lshr i32 %i.ig, 2
  %i.ii = icmp slt i32 %i.if, %i.ih
  br i1 %i.ii, label %bb.z, label %bb.bg

.lr.ph728:                                        ; preds = %.lr.ph728, %.lr.ph728.preheader.new
  %.sroa.0584.0727 = phi i64 [ 0, %.lr.ph728.preheader.new ], [ %i.jg, %.lr.ph728 ] ; 6 uses
  %niter1244 = phi i64 [ 0, %.lr.ph728.preheader.new ], [ %niter1244.next.3, %.lr.ph728 ]
  %i.ij = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %.sroa.0584.0727
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !105
  %i.im = trunc i64 %i.il to i32
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.0584.0727
  store i32 %i.im, ptr %i.in, align 4, !tbaa !46
  %i.io = or disjoint i64 %.sroa.0584.0727, 1     ; 2 uses
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !105
  %i.is = trunc i64 %i.ir to i32
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.io
  store i32 %i.is, ptr %i.it, align 4, !tbaa !46
  %i.iu = or disjoint i64 %.sroa.0584.0727, 2     ; 2 uses
  %i.iv = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !105
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.iu
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !46
  %i.ja = or disjoint i64 %.sroa.0584.0727, 3     ; 2 uses
  %i.jb = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !105
  %i.je = trunc i64 %i.jd to i32
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ja
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !46
  %i.jg = add nuw i64 %.sroa.0584.0727, 4         ; 2 uses
  %niter1244.next.3 = add i64 %niter1244, 4       ; 2 uses
  %niter1244.ncmp.3 = icmp eq i64 %niter1244.next.3, %unroll_iter1243
  br i1 %niter1244.ncmp.3, label %._crit_edge729.loopexit.unr-lcssa, label %.lr.ph728

bb.z:                                             ; preds = %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit
  %i.jh = lshr exact i64 %i.fp, 2
  br i1 %.not.i.i.i.i141, label %._crit_edge740.thread, label %.lr.ph739

._crit_edge740.thread:                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 0, ptr %i.ah, align 8, !tbaa !134
  store ptr null, ptr %i.ai, align 8, !tbaa !135
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !104
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !136
  store i64 0, ptr %i.al, align 8, !tbaa !105
  br label %._crit_edge753.thread

._crit_edge740:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ji = ptrtoint ptr %.sroa.11571.1 to i64      ; 4 uses
  %i.jj = ptrtoint ptr %.sroa.11579.1 to i64      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 0, ptr %i.ah, align 8, !tbaa !134
  store ptr null, ptr %i.ai, align 8, !tbaa !135
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !104
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !136
  store i64 0, ptr %i.al, align 8, !tbaa !105
  %.not651751 = icmp eq ptr %.sroa.0574.1, %.sroa.7577.1
  br i1 %.not651751, label %._crit_edge753.thread, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph: ; preds = %._crit_edge740
  %i.jk = shl nuw nsw i64 %i.bx, 2                ; 7 uses
  %.idx.i.i.i.i.i.i.i.i157 = add nsw i64 %i.jk, -4 ; 2 uses
  %.pre835 = load ptr, ptr %3, align 8, !tbaa !67 ; 2 uses
  %.not.i162.1 = icmp slt i32 %i.bu, 3
  %.not.i162.2 = icmp eq i32 %i.bu, 3
  %indvars.iv.next.i.i.i = add nsw i64 %i.bx, -1  ; 4 uses
  %indvars.i.i.i = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  %i.jl = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.jm = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %indvars.iv.next.i.i.i.1 = add nsw i64 %i.bx, -2 ; 4 uses
  %indvars.i.i.i.1 = trunc nsw i64 %indvars.iv.next.i.i.i.1 to i32
  %i.jn = and i64 %indvars.iv.next.i.i.i.1, 4294967295 ; 2 uses
  %i.jo = icmp sgt i32 %i.bu, 2
  %i.jp = trunc nuw nsw i64 %indvars.iv.next.i.i.i.1 to i32
  %indvars.iv.next.i.i.i.2 = add nsw i64 %i.bx, -3 ; 4 uses
  %indvars.i.i.i.2 = trunc nsw i64 %indvars.iv.next.i.i.i.2 to i32
  %i.jq = and i64 %indvars.iv.next.i.i.i.2, 4294967295 ; 2 uses
  %.not = icmp eq i32 %i.bu, 3
  %i.jr = trunc nuw nsw i64 %indvars.iv.next.i.i.i.2 to i32
  %indvars.iv.next.i.i.i.3 = add nsw i64 %i.bx, -4 ; 2 uses
  %indvars.i.i.i.3 = trunc nsw i64 %indvars.iv.next.i.i.i.3 to i32
  %i.js = and i64 %indvars.iv.next.i.i.i.3, 4294967295 ; 2 uses
  %.not.i3.i.1 = icmp slt i32 %i.bu, 3
  %.not.i3.i.2 = icmp eq i32 %i.bu, 3
  br label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156

.lr.ph739:                                        ; preds = %bb.z, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.0561.0737 = phi i64 [ %i.lf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.z ] ; 4 uses
  %.sroa.11571.0736 = phi ptr [ %.sroa.11571.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 4 uses
  %.sroa.7569.0735 = phi ptr [ %.sroa.7569.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 4 uses
  %.sroa.0566.0734 = phi ptr [ %.sroa.0566.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 6 uses
  %.sroa.11579.0733 = phi ptr [ %.sroa.11579.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 4 uses
  %.sroa.7577.0732 = phi ptr [ %.sroa.7577.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 4 uses
  %.sroa.0574.0731 = phi ptr [ %.sroa.0574.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.z ] ; 6 uses
  %i.jt = load ptr, ptr %5, align 8, !tbaa !67
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.sroa.0561.0737
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !46
  %i.jw = icmp eq i32 %i.jv, %i.if
  br i1 %i.jw, label %bb.aa, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aa:                                            ; preds = %.lr.ph739
  %i.jx = trunc i64 %.sroa.0561.0737 to i32       ; 2 uses
  %.not.i.i151 = icmp eq ptr %.sroa.7577.0732, %.sroa.11579.0733
  br i1 %.not.i.i151, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.jx, ptr %.sroa.7577.0732, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.jy = ptrtoint ptr %.sroa.11579.0733 to i64
  %i.jz = ptrtoint ptr %.sroa.0574.0731 to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 6 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775804
  br i1 %i.kb, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.kc = ashr exact i64 %i.ka, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 2305843009213693951)
  %i.kg = select i1 %i.ke, i64 2305843009213693951, i64 %i.kf ; 3 uses
  %.not.i.i.i.i152 = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i152)
  %i.kh = shl nuw nsw i64 %i.kg, 2
  %i.ki = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #37 ; 4 uses
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store i32 %i.jx, ptr %i.kj, align 4, !tbaa !46
  %i.kk = icmp sgt i64 %i.ka, 0
  br i1 %i.kk, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr align 4 %.sroa.0574.0731, i64 %i.ka, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0574.0731, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0574.0731, i64 noundef %i.ka) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kg
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %.sroa.0574.2 = phi ptr [ %i.ki, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0574.0731, %bb.ab ] ; 2 uses
  %.pn = phi ptr [ %i.kj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.7577.0732, %bb.ab ]
  %.sroa.11579.2 = phi ptr [ %i.kl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.11579.0733, %bb.ab ] ; 2 uses
  %.sroa.7577.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.sroa.0561.0737 ; 2 uses
  %.not.i153 = icmp eq ptr %.sroa.7569.0735, %.sroa.11571.0736
  br i1 %.not.i153, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !46
  store i32 %i.kn, ptr %.sroa.7569.0735, align 4, !tbaa !46
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.7569.0735, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kp = ptrtoint ptr %.sroa.11571.0736 to i64
  %i.kq = ptrtoint ptr %.sroa.0566.0734 to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 6 uses
  %i.ks = icmp eq i64 %i.kr, 9223372036854775804
  br i1 %i.ks, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.kt = ashr exact i64 %i.kr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.ku = add nsw i64 %.sroa.speculated.i.i.i, %i.kt ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.kt
  %i.kw = call i64 @llvm.umin.i64(i64 %i.ku, i64 2305843009213693951)
  %i.kx = select i1 %i.kv, i64 2305843009213693951, i64 %i.kw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ky = shl nuw nsw i64 %i.kx, 2
  %i.kz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #37 ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.kr ; 2 uses
  %i.lb = load i32, ptr %i.km, align 4, !tbaa !46
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !46
  %i.lc = icmp sgt i64 %i.kr, 0
  br i1 %i.lc, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kz, ptr align 4 %.sroa.0566.0734, i64 %i.kr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0566.0734, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0566.0734, i64 noundef %i.kr) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.kx
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ag, %.lr.ph739
  %.sroa.0574.1 = phi ptr [ %.sroa.0574.0731, %.lr.ph739 ], [ %.sroa.0574.2, %bb.ag ], [ %.sroa.0574.2, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 7 uses
  %.sroa.7577.1 = phi ptr [ %.sroa.7577.0732, %.lr.ph739 ], [ %.sroa.7577.2, %bb.ag ], [ %.sroa.7577.2, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %.sroa.11579.1 = phi ptr [ %.sroa.11579.0733, %.lr.ph739 ], [ %.sroa.11579.2, %bb.ag ], [ %.sroa.11579.2, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.0566.1 = phi ptr [ %.sroa.0566.0734, %.lr.ph739 ], [ %.sroa.0566.0734, %bb.ag ], [ %i.kz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 10 uses
  %.sroa.7569.1 = phi ptr [ %.sroa.7569.0735, %.lr.ph739 ], [ %i.ko, %bb.ag ], [ %i.ld, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 4 uses
  %.sroa.11571.1 = phi ptr [ %.sroa.11571.0736, %.lr.ph739 ], [ %.sroa.11571.0736, %bb.ag ], [ %i.le, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.lf = add nuw i64 %.sroa.0561.0737, 1         ; 2 uses
  %.not650 = icmp eq i64 %i.lf, %i.jh
  br i1 %.not650, label %._crit_edge740, label %.lr.ph739

._crit_edge753:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre829 = load i64, ptr %i.al, align 8, !tbaa !105
  %i.lg = icmp eq i64 %.pre829, %i.bx
  br i1 %i.lg, label %bb.az, label %._crit_edge753.thread

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre828 = phi ptr [ %.pre835, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph ], [ %.pre828837, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.lh = phi ptr [ %.pre835, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph ], [ %i.oi, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.0555.0752 = phi ptr [ %.sroa.0574.1, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156.lr.ph ], [ %i.ni, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.li = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.lj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #37 ; 19 uses
  store i32 0, ptr %i.lj, align 4, !tbaa !46
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.lk, i8 0, i64 %.idx.i.i.i.i.i.i.i.i157, i1 false), !tbaa !46
  store i32 0, ptr %i.lj, align 4, !tbaa !46
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 1, ptr %i.ll, align 4, !tbaa !46
  br i1 %.not.i162.1, label %_ZN8DecGraph11CombinationC2Eii.exit164, label %bb.al

bb.al:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 2, ptr %i.lm, align 4, !tbaa !46
  br i1 %.not.i162.2, label %_ZN8DecGraph11CombinationC2Eii.exit164, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 3, ptr %i.ln, align 4, !tbaa !46
  br label %_ZN8DecGraph11CombinationC2Eii.exit164

_ZN8DecGraph11CombinationC2Eii.exit164:           ; preds = %bb.am, %bb.al, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156
  %i.lo = ptrtoint ptr %i.li to i64
  %i.lp = ptrtoint ptr %i.lh to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = lshr exact i64 %i.lq, 2
  %i.ls = trunc i64 %i.lr to i32                  ; 5 uses
  %i.lt = load i32, ptr %.sroa.0555.0752, align 4, !tbaa !46 ; 2 uses
  %.not13.i.i = icmp slt i32 %i.lt, 1
  br i1 %.not13.i.i, label %.lr.ph.i2.i, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %_ZN8DecGraph11CombinationC2Eii.exit164
  %invariant.op.i.i.i = sub i32 %i.ls, %i.bw      ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.jl
  %.reass.i.i.i = add i32 %invariant.op.i.i.i, %indvars.i.i.i
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.jn
  %.reass.i.i.i.1 = add i32 %invariant.op.i.i.i, %indvars.i.i.i.1
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.jq
  %.reass.i.i.i.2 = add i32 %invariant.op.i.i.i, %indvars.i.i.i.2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.js
  %.reass.i.i.i.3 = add i32 %invariant.op.i.i.i, %indvars.i.i.i.3
  %invariant.gep = getelementptr i8, ptr %i.lj, i64 %.idx.i.i.i.i.i.i.i.i157
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader, %_ZN8DecGraph11Combination4nextEv.exit.i.i
  %.sroa.04.014.i.i = phi i32 [ %i.mn, %_ZN8DecGraph11Combination4nextEv.exit.i.i ], [ 0, %.lr.ph.i.i165.preheader ]
  %i.ly = load i32, ptr %i.lu, align 4, !tbaa !46, !noalias !451 ; 2 uses
  %i.lz = icmp slt i32 %i.ly, %.reass.i.i.i
  br i1 %i.lz, label %bb.as, label %bb.an, !llvm.loop !5

bb.an:                                            ; preds = %.lr.ph.i.i165
  %i.ma = load i32, ptr %i.lv, align 4, !tbaa !46, !noalias !451 ; 2 uses
  %i.mb = icmp slt i32 %i.ma, %.reass.i.i.i.1
  br i1 %i.mb, label %bb.as, label %bb.ao, !llvm.loop !5

bb.ao:                                            ; preds = %bb.an
  br i1 %i.jo, label %bb.ap, label %_ZN8DecGraph11Combination4nextEv.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.mc = load i32, ptr %i.lw, align 4, !tbaa !46, !noalias !451 ; 2 uses
  %i.md = icmp slt i32 %i.mc, %.reass.i.i.i.2
  br i1 %i.md, label %bb.as, label %bb.aq, !llvm.loop !5

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not, label %_ZN8DecGraph11Combination4nextEv.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.me = load i32, ptr %i.lx, align 4, !tbaa !46, !noalias !451 ; 2 uses
  %i.mf = icmp slt i32 %i.me, %.reass.i.i.i.3
  br i1 %i.mf, label %bb.as, label %_ZN8DecGraph11Combination4nextEv.exit.i.i, !llvm.loop !5

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.an, %.lr.ph.i.i165
  %indvar.lcssa.neg = phi i64 [ 0, %.lr.ph.i.i165 ], [ -4, %bb.an ], [ -8, %bb.ap ], [ -12, %bb.ar ]
  %.lcssa1202 = phi i32 [ %i.bw, %.lr.ph.i.i165 ], [ %i.jm, %bb.an ], [ %i.jp, %bb.ap ], [ %i.jr, %bb.ar ]
  %indvars.iv.i.i.i1071.lcssa = phi i64 [ %i.bx, %.lr.ph.i.i165 ], [ %indvars.iv.next.i.i.i, %bb.an ], [ %indvars.iv.next.i.i.i.1, %bb.ap ], [ %indvars.iv.next.i.i.i.2, %bb.ar ]
  %.lcssa1199 = phi i64 [ %i.jl, %.lr.ph.i.i165 ], [ %i.jn, %bb.an ], [ %i.jq, %bb.ap ], [ %i.js, %bb.ar ]
  %.lcssa1197 = phi i32 [ %i.ly, %.lr.ph.i.i165 ], [ %i.ma, %bb.an ], [ %i.mc, %bb.ap ], [ %i.me, %bb.ar ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %.lcssa1199
  %i.mh = add nsw i32 %.lcssa1197, 1
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !46, !noalias !451
  %i.mi = icmp samesign ugt i32 %i.bw, %.lcssa1202
  br i1 %i.mi, label %.lr.ph.i.i.i.preheader, label %_ZN8DecGraph11Combination4nextEv.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.as
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvar.lcssa.neg
  %load_initial = load i32, ptr %gep, align 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.i.i.i.preheader ], [ %i.mk, %.lr.ph.i.i.i ]
  %indvars.iv32.i.i.i = phi i64 [ %indvars.iv.i.i.i1071.lcssa, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next33.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.mj = getelementptr [4 x i8], ptr %i.lj, i64 %indvars.iv32.i.i.i
  %i.mk = add nsw i32 %store_forwarded, 1         ; 2 uses
  store i32 %i.mk, ptr %i.mj, align 4, !tbaa !46, !noalias !451
  %indvars.iv.next33.i.i.i = add nuw nsw i64 %indvars.iv32.i.i.i, 1 ; 2 uses
  %i.ml = trunc nuw i64 %indvars.iv.next33.i.i.i to i32
  %i.mm = icmp sgt i32 %i.bw, %i.ml
  br i1 %i.mm, label %.lr.ph.i.i.i, label %_ZN8DecGraph11Combination4nextEv.exit.i.i, !llvm.loop !6

_ZN8DecGraph11Combination4nextEv.exit.i.i:        ; preds = %bb.ao, %bb.aq, %bb.ar, %.lr.ph.i.i.i, %bb.as
  %i.mn = add nuw nsw i32 %.sroa.04.014.i.i, 1    ; 2 uses
  %.not.i.i167 = icmp eq i32 %i.lt, %i.mn
  br i1 %.not.i.i167, label %.lr.ph.i2.i, label %.lr.ph.i.i165

.lr.ph.i2.i:                                      ; preds = %_ZN8DecGraph11Combination4nextEv.exit.i.i, %_ZN8DecGraph11CombinationC2Eii.exit164
  %i.mo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #37, !noalias !452 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.mo, ptr noundef nonnull align 4 dereferenceable(1) %i.lj, i64 %i.jk, i1 false), !noalias !452
  %i.mp = load i32, ptr %i.lj, align 4, !tbaa !46, !noalias !452
  %i.mq = xor i32 %i.mp, -1
  %i.mr = add i32 %i.mq, %i.ls
  store i32 %i.mr, ptr %i.mo, align 4, !tbaa !46, !noalias !452
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !46, !noalias !452
  %i.mu = xor i32 %i.mt, -1
  %i.mv = add i32 %i.mu, %i.ls
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !46, !noalias !452
  br i1 %.not.i3.i.1, label %.lr.ph749.preheader, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i2.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !46, !noalias !452
  %i.mz = xor i32 %i.my, -1
  %i.na = add i32 %i.mz, %i.ls
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !46, !noalias !452
  br i1 %.not.i3.i.2, label %.lr.ph749.preheader, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !46, !noalias !452
  %i.ne = xor i32 %i.nd, -1
  %i.nf = add i32 %i.ne, %i.ls
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !46, !noalias !452
  br label %.lr.ph749.preheader

.lr.ph749.preheader:                              ; preds = %bb.au, %bb.at, %.lr.ph.i2.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.jk) #35
  br label %.lr.ph749

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.jk) #35
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0555.0752, i64 4 ; 2 uses
  %.not651 = icmp eq ptr %i.ni, %.sroa.7577.1
  br i1 %.not651, label %._crit_edge753, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i156

.lr.ph749:                                        ; preds = %.lr.ph749.preheader, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.pre828838 = phi ptr [ %.pre828837, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ], [ %.pre828, %.lr.ph749.preheader ]
  %i.nj = phi ptr [ %i.oi, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ], [ %.pre828, %.lr.ph749.preheader ] ; 2 uses
  %.sroa.0541.0748 = phi ptr [ %i.oj, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ], [ %i.mo, %.lr.ph749.preheader ] ; 2 uses
  %i.nk = load i32, ptr %.sroa.0541.0748, align 4, !tbaa !46
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nl ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %.lr.ph749
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !46 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i.i.i172
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i172 ], [ %.020.i.i.i, %bb.av ] ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.np = load i32, ptr %i.no, align 4, !tbaa !46 ; 2 uses
  %i.nq = icmp slt i32 %i.nn, %i.np               ; 2 uses
  %.in.v.i.i.i = select i1 %i.nq, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i173, label %._crit_edge.i.i.i, label %bb.av, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %bb.av
  br i1 %i.nq, label %._crit_edge.thread.i.i.i, label %bb.ax

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph749
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ah, %.lr.ph749 ] ; 4 uses
  %i.nr = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.ns = icmp eq ptr %.019.lcssa29.i.i.i, %i.nr
  br i1 %i.ns, label %select.unfold.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.nt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #41
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %.pre.i.i174 = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  %.pre18.i.i = load i32, ptr %i.nm, align 4, !tbaa !46
  br label %bb.ax
end_hunk_3
begin_hunk_4_@_ZN8DecGraph15DecisionDiagram8printRecEii:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.o = load i32, ptr %i.a, align 8, !tbaa !125
  %i.p = icmp eq i32 %i.c, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.025 = phi i32 [ %i.q, %.lr.ph ], [ 11, %bb.c ]
  %putchar22 = tail call i32 @putchar(i32 32)     ; 0 uses
  %i.q = add nuw nsw i32 %.025, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !487

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %puts21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.r = select i1 %.not, ptr @.str.1, ptr @.str.15
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.h
  %i.u = load i32, ptr %i.t, align 8, !tbaa !127
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.r, i32 noundef %i.u, i32 noundef %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !129  ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.c
  br i1 %i.aa, label %bb.i, label %tailrecurse

bb.i:                                             ; preds = %bb.h, %bb.b, %tailrecurse
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram5printEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.04.08, align 4, !tbaa !46
  tail call void @_ZN8DecGraph15DecisionDiagram8printRecEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.e, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram12writeVerilogEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.17) ; 21 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1) ; 0 uses
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %i.f) ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = ashr i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = sext i32 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !49    ; 2 uses
  %.not214225 = icmp eq i8 %i.q, 0
  br i1 %.not214225, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.r = zext i8 %i.q to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.e ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = add nsw i64 %i.x, -1                     ; 2 uses
  %.not215227 = icmp eq i64 %i.y, 0
  br i1 %.not215227, label %._crit_edge231, label %.lr.ph230

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.20, i32 noundef %indvars.iv) #36 ; 0 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %.not214 = icmp eq i32 %indvars.iv.next, %i.r
  br i1 %.not214, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge231.loopexit:                          ; preds = %.lr.ph230
  %.pre265 = load ptr, ptr %i.b, align 8, !tbaa !66
  %.pre266 = load ptr, ptr %i.a, align 8, !tbaa !67
  %.pre270 = ptrtoint ptr %.pre265 to i64
  %.pre271 = ptrtoint ptr %.pre266 to i64
  %.pre273 = sub i64 %.pre270, %.pre271
  %.pre275 = ashr exact i64 %.pre273, 2
  %.pre277 = add nsw i64 %.pre275, -1
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit, %._crit_edge
  %.pre-phi278 = phi i64 [ %.pre277, %._crit_edge231.loopexit ], [ 0, %._crit_edge ]
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.22, i64 noundef %.pre-phi278) #36 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !49  ; 2 uses
  %.not216232 = icmp eq i8 %i.ai, 0
  br i1 %.not216232, label %._crit_edge236, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %._crit_edge231
  %i.aj = zext i8 %i.ai to i32
  br label %.lr.ph235

.lr.ph230:                                        ; preds = %._crit_edge, %.lr.ph230
  %.sroa.0203.0228 = phi i64 [ %i.al, %.lr.ph230 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.21, i64 noundef %.sroa.0203.0228) #36 ; 0 uses
  %i.al = add nuw i64 %.sroa.0203.0228, 1         ; 2 uses
  %.not215 = icmp eq i64 %i.al, %i.y
  br i1 %.not215, label %._crit_edge231.loopexit, label %.lr.ph230

._crit_edge236.loopexit:                          ; preds = %.lr.ph235
  %.pre267 = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge236

._crit_edge236:                                   ; preds = %._crit_edge236.loopexit, %._crit_edge231
  %i.am = phi ptr [ %.pre267, %._crit_edge236.loopexit ], [ %i.ab, %._crit_edge231 ] ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %.not217237 = icmp eq ptr %i.an, %i.am
  br i1 %.not217237, label %._crit_edge241, label %.lr.ph240

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv262 = phi i32 [ 0, %.lr.ph235.preheader ], [ %indvars.iv.next263, %.lr.ph235 ] ; 2 uses
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.23, i32 noundef %indvars.iv262) #36 ; 0 uses
  %indvars.iv.next263 = add nuw nsw i32 %indvars.iv262, 1 ; 2 uses
  %.not216 = icmp eq i32 %indvars.iv.next263, %i.aj
  br i1 %.not216, label %._crit_edge236.loopexit, label %.lr.ph235

._crit_edge241:                                   ; preds = %.lr.ph240, %._crit_edge236
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !125
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.25, i32 noundef %i.au) #36 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !93 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93 ; 2 uses
  %.not218242 = icmp eq ptr %i.ax, %i.az
  br i1 %.not218242, label %._crit_edge251, label %.lr.ph245

.lr.ph240:                                        ; preds = %._crit_edge236, %.lr.ph240
  %.sroa.0191.0238 = phi i64 [ %i.bb, %.lr.ph240 ], [ 0, %._crit_edge236 ] ; 2 uses
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.24, i64 noundef %.sroa.0191.0238) #36 ; 0 uses
  %i.bb = add nuw i64 %.sroa.0191.0238, 1         ; 2 uses
  %.not217 = icmp eq i64 %i.bb, %i.ar
  br i1 %.not217, label %._crit_edge241, label %.lr.ph240

._crit_edge246:                                   ; preds = %.lr.ph245
  %.pre268 = load ptr, ptr %i.aw, align 8, !tbaa !93 ; 2 uses
  %.pre269 = load ptr, ptr %i.ay, align 8, !tbaa !93 ; 2 uses
  %.not219247 = icmp eq ptr %.pre268, %.pre269
  br i1 %.not219247, label %._crit_edge251, label %.lr.ph250

.lr.ph250:                                        ; preds = %._crit_edge246
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

.lr.ph245:                                        ; preds = %._crit_edge241, %.lr.ph245
  %.sroa.0187.0243 = phi ptr [ %i.bh, %.lr.ph245 ], [ %i.ax, %._crit_edge241 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.0187.0243, align 4, !tbaa !46
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.26, i32 noundef %i.bf) #36 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0187.0243, i64 4 ; 2 uses
  %.not218 = icmp eq ptr %i.bh, %i.az
  br i1 %.not218, label %._crit_edge246, label %.lr.ph245

._crit_edge251:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %._crit_edge241, %._crit_edge246
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not220252 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not220252, label %._crit_edge256, label %.lr.ph255

bb.f:                                             ; preds = %.lr.ph250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %.sroa.0183.0248 = phi ptr [ %.pre268, %.lr.ph250 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.bo = load i32, ptr %.sroa.0183.0248, align 4, !tbaa !46
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !127 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.bt = call i32 @llvm.abs.i32(i32 %i.bs, i1 false) ; 5 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.l
  %.030.i.i = phi i32 [ %i.cc, %bb.l ], [ 1, %bb.f ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.cb, %bb.l ], [ %i.bt, %bb.f ] ; 5 uses
  %i.bv = icmp ult i32 %.02329.i.i, 100
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bw = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bx = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bz = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cb = udiv i32 %.02329.i.i, 10000
  %i.cc = add i32 %.030.i.i, 4                    ; 2 uses
  %i.cd = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.cd, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !490

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f
  %.022.i.i = phi i32 [ %i.ca, %bb.k ], [ %i.bw, %bb.g ], [ %i.by, %bb.i ], [ 1, %bb.f ], [ %i.cc, %bb.l ] ; 2 uses
  %.lobit.i = lshr i32 %i.bs, 31                  ; 2 uses
  %i.ce = add i32 %.022.i.i, %.lobit.i
  %i.cf = zext i32 %i.ce to i64
  store ptr %i.bc, ptr %3, align 8, !tbaa !64, !alias.scope !494
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cf, i8 noundef signext 45) #36
  %i.cg = zext nneg i32 %.lobit.i to i64
  %i.ch = load ptr, ptr %3, align 8, !tbaa !61, !alias.scope !494
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg ; 4 uses
  %i.cj = icmp ugt i32 %i.bt, 99
  br i1 %i.cj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ck = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.cn, %.lr.ph.i11.i ], [ %i.bt, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cy, %.lr.ph.i11.i ], [ %i.ck, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cl = urem i32 %.020.i.i, 100
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !62, !noalias !494
  %i.cs = zext i32 %.01819.i.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !62
  %i.cu = load i8, ptr %i.cp, align 2, !tbaa !62, !noalias !494
  %i.cv = add i32 %.01819.i.i, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !62
  %i.cy = add i32 %.01819.i.i, -2
  %i.cz = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.cz, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !491

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.bt, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.cn, %.lr.ph.i11.i ] ; 3 uses
  %i.da = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.db = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !62, !noalias !494
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !62
  %i.dh = load i8, ptr %i.dd, align 2, !tbaa !62, !noalias !494
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.di = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.dj = or disjoint i8 %i.di, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.dj, %bb.n ], [ %i.dh, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.ci, align 1, !tbaa !62
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.dk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 3) #36, !noalias !495 ; 6 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !64, !alias.scope !495
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !60 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.dl, ptr %2, align 8, !tbaa !61, !alias.scope !495
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !62
  store i64 %i.ds, ptr %i.bd, align 8, !tbaa !62, !alias.scope !495
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dt = phi i64 [ %i.dp, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dt, ptr %i.be, align 8, !tbaa !60, !alias.scope !495
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !61
  store i64 0, ptr %i.du, align 8, !tbaa !60
  store i8 0, ptr %i.dm, align 8, !tbaa !62
  %i.dv = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.bc
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.dx = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.dz = load i32, ptr %.sroa.0183.0248, align 4, !tbaa !46 ; 10 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %i.eb, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !129 ; 3 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !128 ; 3 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = ashr i32 %i.ee, 1                       ; 4 uses
  %i.ek = load i32, ptr %i.at, align 8, !tbaa !125 ; 2 uses
  %i.el = icmp eq i32 %i.ej, %i.ek                ; 5 uses
  %i.em = trunc i32 %i.ee to i1                   ; 5 uses
  %i.en = ashr i32 %i.eh, 1                       ; 4 uses
  %i.eo = icmp eq i32 %i.en, %i.ek                ; 6 uses
  %i.ep = trunc i32 %i.eh to i1                   ; 9 uses
  %.not159 = xor i1 %i.em, true
  %or.cond.not = and i1 %i.el, %.not159
  %or.cond3 = and i1 %i.eo, %or.cond.not          ; 2 uses
  %or.cond3.not = xor i1 %or.cond3, true
  %or.cond5 = or i1 %i.ep, %or.cond3.not
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, i32 noundef %i.dz) #36 ; 0 uses
  br label %bb.ah

bb.s:                                             ; preds = %bb.q
  %or.cond7 = and i1 %i.el, %i.em                 ; 2 uses
  %or.cond9 = and i1 %i.eo, %or.cond7             ; 2 uses
  %or.cond11 = and i1 %or.cond9, %i.ep
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.29, i32 noundef %i.dz) #36 ; 0 uses
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %or.cond15.not = xor i1 %or.cond9, true
  %or.cond17 = or i1 %i.ep, %or.cond15.not
  br i1 %or.cond17, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = load ptr, ptr %2, align 8, !tbaa !61
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.30, i32 noundef %i.dz, ptr noundef %i.es) #36 ; 0 uses
  br label %bb.ah

bb.w:                                             ; preds = %bb.u
  %or.cond24 = and i1 %or.cond3, %i.ep
  br i1 %or.cond24, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = load ptr, ptr %2, align 8, !tbaa !61
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.31, i32 noundef %i.dz, ptr noundef %i.eu) #36 ; 0 uses
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %.not160 = xor i1 %i.eo, true
  %or.cond27.not = or i1 %i.el, %.not160
  %or.cond29 = or i1 %or.cond27.not, %i.ep
  br i1 %or.cond29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = load ptr, ptr %2, align 8, !tbaa !61
  %i.ex = select i1 %i.em, ptr @.str.15, ptr @.str.1
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.32, i32 noundef %i.dz, ptr noundef %i.ew, ptr noundef nonnull %i.ex, i32 noundef %i.ej) #36 ; 0 uses
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %.not = xor i1 %i.el, true
  %or.cond32.not = or i1 %i.eo, %.not
  %or.cond34 = or i1 %or.cond32.not, %i.em
  br i1 %or.cond34, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load ptr, ptr %2, align 8, !tbaa !61
  %i.fa = select i1 %i.ep, ptr @.str.15, ptr @.str.1
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.33, i32 noundef %i.dz, ptr noundef %i.ez, ptr noundef nonnull %i.fa, i32 noundef %i.en) #36 ; 0 uses
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %or.cond36.not = xor i1 %or.cond7, true
  %or.cond38 = or i1 %i.eo, %or.cond36.not
  br i1 %or.cond38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %2, align 8, !tbaa !61
  %i.fd = select i1 %i.ep, ptr @.str.15, ptr @.str.1
  %i.fe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.34, i32 noundef %i.dz, ptr noundef %i.fc, ptr noundef nonnull %i.fd, i32 noundef %i.en) #36 ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %or.cond40 = and i1 %i.eo, %i.ep
  %or.cond40.not = xor i1 %or.cond40, true
  %or.cond42 = or i1 %i.el, %or.cond40.not
  %i.ff = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.fg = select i1 %i.em, ptr @.str.15, ptr @.str.1 ; 2 uses
  br i1 %or.cond42, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.35, i32 noundef %i.dz, ptr noundef %i.ff, ptr noundef nonnull %i.fg, i32 noundef %i.ej) #36 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fi = select i1 %i.ep, ptr @.str.15, ptr @.str.1
  %i.fj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.36, i32 noundef %i.dz, ptr noundef %i.ff, ptr noundef nonnull %i.fg, i32 noundef %i.ej, ptr noundef nonnull %i.fi, i32 noundef %i.en) #36 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.r, %bb.v, %bb.z, %bb.ad, %bb.ag, %bb.af, %bb.ab, %bb.x, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.fk = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.bd
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ah
  %i.fm = load i64, ptr %i.bd, align 8, !tbaa !62
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0183.0248, i64 4 ; 2 uses
  %.not219 = icmp eq ptr %i.fo, %.pre269
  br i1 %.not219, label %._crit_edge251, label %bb.f

._crit_edge256:                                   ; preds = %.lr.ph255, %._crit_edge251
  %fwrite157 = call i64 @fwrite(ptr nonnull @.str.38, i64 10, i64 1, ptr nonnull %i.f) ; 0 uses
  %i.fp = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.ai

.lr.ph255:                                        ; preds = %._crit_edge251, %.lr.ph255
  %.sroa.0178.0253 = phi i64 [ %i.fx, %.lr.ph255 ], [ 0, %._crit_edge251 ] ; 3 uses
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.sroa.0178.0253
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !46 ; 2 uses
  %i.ft = ashr i32 %i.fs, 1
  %i.fu = and i32 %i.fs, 1
  %.not158 = icmp eq i32 %i.fu, 0
  %i.fv = select i1 %.not158, ptr @.str.1, ptr @.str.15
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.37, i64 noundef %.sroa.0178.0253, ptr noundef nonnull %i.fv, i32 noundef %i.ft) #36 ; 0 uses
  %i.fx = add nuw i64 %.sroa.0178.0253, 1         ; 2 uses
  %.not220 = icmp eq i64 %i.fx, %i.bn
  br i1 %.not220, label %._crit_edge256, label %.lr.ph255

bb.ai:                                            ; preds = %bb.d, %._crit_edge256, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram8buildAigEP10Gia_Man_t_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add nsw i64 %i.m, 1                      ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.n, 2                  ; 3 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #37 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 -1, i64 %i.p, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !125
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  store i32 0, ptr %i.u, align 4, !tbaa !46
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %.not172174 = icmp eq ptr %i.v, %i.w
  br i1 %.not172174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr i8, ptr %1, i64 32         ; 6 uses
  %i.z = getelementptr i8, ptr %1, i64 64         ; 6 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %.not173176 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not173176, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge
  %i.ag = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %bb.w

bb.e:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0150.0175 = phi ptr [ %i.v, %.lr.ph ], [ %i.gv, %bb.v ] ; 7 uses
  %i.aj = load i32, ptr %.sroa.0150.0175, align 4, !tbaa !46
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %i.ak ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !129 ; 6 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128 ; 6 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = ashr i32 %i.ao, 1                       ; 4 uses
  %i.au = load i32, ptr %i.r, align 8, !tbaa !125 ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au                ; 5 uses
  %i.aw = trunc i32 %i.ao to i1                   ; 3 uses
  %i.ax = ashr i32 %i.ar, 1                       ; 4 uses
  %i.ay = icmp eq i32 %i.ax, %i.au                ; 6 uses
  %i.az = trunc i32 %i.ar to i1                   ; 6 uses
  %.not129 = xor i1 %i.aw, true
  %or.cond.not = and i1 %i.av, %.not129
  %or.cond3 = and i1 %i.ay, %or.cond.not          ; 2 uses
  %or.cond3.not = xor i1 %or.cond3, true
  %or.cond5 = or i1 %i.az, %or.cond3.not
  br i1 %or.cond5, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %or.cond7 = and i1 %i.av, %i.aw                 ; 2 uses
  %or.cond9 = and i1 %i.ay, %or.cond7             ; 2 uses
  %or.cond11 = and i1 %or.cond9, %i.az
  br i1 %or.cond11, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond15.not = xor i1 %or.cond9, true
  %or.cond17 = or i1 %i.az, %or.cond15.not
  br i1 %or.cond17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %i.am, align 8, !tbaa !127
  %.val142 = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.val143 = load ptr, ptr %i.z, align 8, !tbaa !183
  %i.bb = getelementptr i8, ptr %.val143, i64 8
  %.val143.val = load ptr, ptr %i.bb, align 8, !tbaa !184
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val143.val, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %.val142, i64 %i.bf
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = and i64 %i.bh, -2
  %i.bj = ptrtoint ptr %.val142 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 12
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = trunc i64 %i.bh to i32
  %i.bo = and i32 %i.bn, 1
  %i.bp = shl nsw i32 %i.bm, 1
  %i.bq = or disjoint i32 %i.bp, %i.bo
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %or.cond24 = and i1 %or.cond3, %i.az
  br i1 %or.cond24, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.am, align 8, !tbaa !127
  %.val140 = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.val141 = load ptr, ptr %i.z, align 8, !tbaa !183
  %i.bs = getelementptr i8, ptr %.val141, i64 8
  %.val141.val = load ptr, ptr %i.bs, align 8, !tbaa !184
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val141.val, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [12 x i8], ptr %.val140, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = and i64 %i.by, -2
  %i.ca = ptrtoint ptr %.val140 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 12
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = trunc i64 %i.by to i32
  %i.cf = and i32 %i.ce, 1
  %i.cg = shl nsw i32 %i.cd, 1
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = xor i32 %i.ch, 1
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %.not130 = xor i1 %i.ay, true
  %or.cond27.not = or i1 %i.av, %.not130
  %or.cond29 = or i1 %or.cond27.not, %i.az
  br i1 %or.cond29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %i.am, align 8, !tbaa !127
  %.val138 = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.val139 = load ptr, ptr %i.z, align 8, !tbaa !183
  %i.ck = getelementptr i8, ptr %.val139, i64 8
  %.val139.val = load ptr, ptr %i.ck, align 8, !tbaa !184
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val139.val, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !46
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [12 x i8], ptr %.val138, i64 %i.co
  %i.cq = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cr = and i64 %i.cq, -2
  %i.cs = ptrtoint ptr %.val138 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 12
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = trunc i64 %i.cq to i32
end_hunk_4
begin_hunk_5_@_ZN8DecGraph15DecisionDiagram8buildAigEP10Gia_Man_t_:bb.a
  %or.cond40 = and i1 %i.ay, %i.az
  %or.cond40.not = xor i1 %or.cond40, true
  %or.cond42 = or i1 %i.av, %or.cond40.not
  %i.fh = load i32, ptr %i.am, align 8, !tbaa !127
  %.val = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.val131 = load ptr, ptr %i.z, align 8, !tbaa !183
  %i.fi = getelementptr i8, ptr %.val131, i64 8
  %.val131.val = load ptr, ptr %i.fi, align 8, !tbaa !184
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.val131.val, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !46
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.fm
  %i.fo = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fp = and i64 %i.fo, -2
  %i.fq = ptrtoint ptr %.val to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 12
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = trunc i64 %i.fo to i32
  %i.fv = and i32 %i.fu, 1
  %i.fw = shl nsw i32 %i.ft, 1
  %i.fx = or disjoint i32 %i.fw, %i.fv            ; 2 uses
  br i1 %or.cond42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fy = xor i32 %i.fx, 1
  %i.fz = sext i32 %i.at to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !46
  %i.gc = and i32 %i.ao, 1
  %i.gd = xor i32 %i.gb, %i.gc
  %i.ge = tail call i32 @Gia_ManHashOr(ptr noundef %1, i32 noundef %i.fy, i32 noundef %i.gd) #36
  %i.gf = load i32, ptr %.sroa.0150.0175, align 4, !tbaa !46
  %i.gg = sext i32 %i.gf to i64
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  %i.gh = sext i32 %i.at to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !46
  %i.gk = and i32 %i.ao, 1
  %i.gl = xor i32 %i.gj, %i.gk
  %i.gm = sext i32 %i.ax to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !46
  %i.gp = and i32 %i.ar, 1
  %i.gq = xor i32 %i.go, %i.gp
  %i.gr = tail call i32 @Gia_ManHashMux(ptr noundef %1, i32 noundef %i.fx, i32 noundef %i.gl, i32 noundef %i.gq) #36
  %i.gs = load i32, ptr %.sroa.0150.0175, align 4, !tbaa !46
  %i.gt = sext i32 %i.gs to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.l, %bb.p, %bb.t, %bb.u, %bb.r, %bb.n, %bb.j
  %.sink195 = phi i64 [ %i.ak, %bb.g ], [ %i.ak, %bb.j ], [ %i.dh, %bb.n ], [ %i.fg, %bb.r ], [ %i.gt, %bb.u ], [ %i.gg, %bb.t ], [ %i.eh, %bb.p ], [ %i.ak, %bb.l ], [ %i.ak, %bb.h ]
  %.sink = phi i32 [ 0, %bb.g ], [ %i.bq, %bb.j ], [ %i.df, %bb.n ], [ %i.fe, %bb.r ], [ %i.gr, %bb.u ], [ %i.ge, %bb.t ], [ %i.ef, %bb.p ], [ %i.ci, %bb.l ], [ 1, %bb.h ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sink195
  store i32 %.sink, ptr %i.gu, align 4, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.e, %bb.f
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0150.0175, i64 4 ; 2 uses
  %.not172 = icmp eq ptr %i.gv, %i.w
  br i1 %.not172, label %._crit_edge, label %bb.e

._crit_edge180:                                   ; preds = %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, %._crit_edge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.w:                                             ; preds = %.lr.ph179, %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit
  %.sroa.0145.0177 = phi i64 [ 0, %.lr.ph179 ], [ %i.jm, %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit ] ; 2 uses
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.sroa.0145.0177
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !46 ; 2 uses
  %i.gz = ashr i32 %i.gy, 1
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !46 ; 2 uses
  %i.hd = xor i32 %i.hc, %i.gy
  %i.he = tail call fastcc noundef ptr @_ZL16Gia_ManAppendObjP10Gia_Man_t_(ptr noundef %1) ; 8 uses
  %i.hf = load i64, ptr %i.he, align 4
  %i.hg = or i64 %i.hf, 2147483648                ; 2 uses
  store i64 %i.hg, ptr %i.he, align 4
  %.val19.i = load ptr, ptr %i.ag, align 8, !tbaa !182
  %i.hh = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hi = ptrtoint ptr %.val19.i to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 12
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = lshr i32 %i.hc, 1
  %i.hn = sub i32 %i.hl, %i.hm
  %i.ho = and i32 %i.hn, 536870911
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = and i64 %i.hg, -1073741824
  %i.hr = shl i32 %i.hd, 29
  %i.hs = and i32 %i.hr, 536870912
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = or disjoint i64 %i.hq, %i.ht
  %i.hv = or disjoint i64 %i.hu, %i.hp            ; 2 uses
  store i64 %i.hv, ptr %i.he, align 4
  %i.hw = load ptr, ptr %i.ah, align 8, !tbaa !185
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  %.val20.i = load i32, ptr %i.hx, align 4, !tbaa !186
  %i.hy = and i32 %.val20.i, 536870911
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = shl nuw nsw i64 %i.hz, 32
  %i.ib = and i64 %i.hv, -2305843004918726657
  %i.ic = or disjoint i64 %i.ib, %i.ia
  store i64 %i.ic, ptr %i.he, align 4
  %i.id = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 6 uses
  %.val18.i = load ptr, ptr %i.ag, align 8, !tbaa !182
  %i.ie = ptrtoint ptr %.val18.i to i64
  %i.if = sub i64 %i.hh, %i.ie
  %i.ig = sdiv exact i64 %i.if, 12
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !186 ; 7 uses
  %i.ik = load i32, ptr %i.id, align 8, !tbaa !187
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.x, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.x:                                             ; preds = %bb.w
  %i.im = icmp slt i32 %i.ij, 16
  br i1 %i.im, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !184 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not9.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ip = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.io, i64 noundef 64) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.iq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #43
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i:          ; preds = %bb.aa, %bb.z
  %i.ir = phi ptr [ %i.ip, %bb.z ], [ %i.iq, %bb.aa ]
  store ptr %i.ir, ptr %i.in, align 8, !tbaa !184
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

bb.ab:                                            ; preds = %bb.x
  %i.is = icmp samesign ult i32 %i.ij, 1073741823
  %i.it = shl nuw nsw i32 %i.ij, 1
  %spec.select.i.i = select i1 %i.is, i32 %i.it, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ij, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.ac, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.iu = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !184 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.iv, null
  %i.iw = zext nneg i32 %spec.select.i.i to i64
  %i.ix = shl nuw nsw i64 %i.iw, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iy = tail call ptr @realloc(ptr noundef nonnull %i.iv, i64 noundef %i.ix) #42
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.iz = tail call noalias ptr @malloc(i64 noundef %i.ix) #43
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ja = phi ptr [ %i.iy, %bb.ad ], [ %i.iz, %bb.ae ]
  store ptr %i.ja, ptr %i.iu, align 8, !tbaa !184
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i: ; preds = %bb.af, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.af ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.id, align 8, !tbaa !187
  %.pre.i = load i32, ptr %i.ii, align 4, !tbaa !186
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i:            ; preds = %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i, %bb.ab, %bb.w
  %i.jb = phi i32 [ %i.ij, %bb.w ], [ %i.ij, %bb.ab ], [ %.pre.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !184
  %i.je = add nsw i32 %i.jb, 1
  store i32 %i.je, ptr %i.ii, align 4, !tbaa !186
  %i.jf = sext i32 %i.jb to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jf
  store i32 %i.ih, ptr %i.jg, align 4, !tbaa !46
  %i.jh = load ptr, ptr %i.ai, align 8, !tbaa !496
  %.not.i = icmp eq ptr %i.jh, null
  br i1 %.not.i, label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i
  %i.ji = load i64, ptr %i.he, align 4
  %i.jj = and i64 %i.ji, 536870911
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds [12 x i8], ptr %i.he, i64 %i.jk
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %1, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.he) #36
  br label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit

_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit:          ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i, %bb.ag
  %i.jm = add nuw i64 %.sroa.0145.0177, 1         ; 2 uses
  %.not173 = icmp eq i64 %i.jm, %i.af
  br i1 %.not173, label %._crit_edge180, label %bb.w

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge180, %bb.b
  ret void
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

declare i32 @Gia_ManHashOr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define ptr @Gia_ManDecGraph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.DecGraph::DecisionDiagram", align 8 ; 19 uses
  %2 = alloca %"class.DecGraph::TruthTable", align 8 ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr i8, ptr %.val51, i64 4
  %.val51.val = load i32, ptr %i.b, align 4, !tbaa !186 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val52 = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.d = getelementptr i8, ptr %.val52, i64 4
  %.val52.val = load i32, ptr %i.d, align 4, !tbaa !186 ; 2 uses
  %i.e = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #36 ; 0 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val53 = load i32, ptr %i.f, align 8, !tbaa !188
  %i.g = tail call ptr @Gia_ManStart(i32 noundef %.val53) #36 ; 8 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !189    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZL14Abc_UtilStrsavPc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #41
  %i.j = add i64 %i.i, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #43 ; 2 uses
  %i.l = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull readonly dereferenceable(1) %i.h) #36 ; 0 uses
  br label %_ZL14Abc_UtilStrsavPc.exit

_ZL14Abc_UtilStrsavPc.exit:                       ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !500  ; 3 uses
  %.not.i59 = icmp eq ptr %i.o, null
  br i1 %.not.i59, label %_ZL14Abc_UtilStrsavPc.exit60, label %bb.c

bb.c:                                             ; preds = %_ZL14Abc_UtilStrsavPc.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #41
  %i.q = add i64 %i.p, 1
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #43 ; 2 uses
  %i.s = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %i.o) #36 ; 0 uses
  br label %_ZL14Abc_UtilStrsavPc.exit60

_ZL14Abc_UtilStrsavPc.exit60:                     ; preds = %_ZL14Abc_UtilStrsavPc.exit, %bb.c
  %i.t = phi ptr [ %i.r, %bb.c ], [ null, %_ZL14Abc_UtilStrsavPc.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !500
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val5078 = load i32, ptr %i.x, align 4, !tbaa !186
  %i.y = icmp sgt i32 %.val5078, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZL14Abc_UtilStrsavPc.exit60, %bb.d
  %.079 = phi i32 [ %i.z, %bb.d ], [ 0, %_ZL14Abc_UtilStrsavPc.exit60 ]
  %.val = load ptr, ptr %i.v, align 8, !tbaa !182
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZL15Gia_ManAppendCiP10Gia_Man_t_(ptr noundef nonnull %i.g)
  %i.z = add nuw nsw i32 %.079, 1                 ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val50 = load i32, ptr %i.ab, align 4, !tbaa !186
  %i.ac = icmp slt i32 %i.z, %.val50
  br i1 %i.ac, label %.lr.ph, label %.critedge, !llvm.loop !497

.critedge:                                        ; preds = %.lr.ph, %bb.d, %_ZL14Abc_UtilStrsavPc.exit60
  tail call void @Gia_ObjComputeTruthTableStart(ptr noundef nonnull %0, i32 noundef %.val51.val) #36
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 64, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !190
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1, ptr %i.af, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !192
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 1, ptr %i.al, align 8, !tbaa !193
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 8, !tbaa !140
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  store i32 399757500, ptr @_ZZN8DecGraph15DecisionDiagram9randomIntEiE3m_z, align 4, !tbaa !46
  store i32 131727371, ptr @_ZZN8DecGraph15DecisionDiagram9randomIntEiE3m_w, align 4, !tbaa !46
  store i32 -661258229, ptr @_ZZN8DecGraph15DecisionDiagram9randomNumEiE8RandMask, align 4, !tbaa !46
  %i.ap = icmp sgt i32 %.val52.val, 0
  br i1 %i.ap, label %.lr.ph85, label %._crit_edge

.lr.ph85:                                         ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = zext nneg i32 %.val51.val to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = icmp sgt i32 %.val51.val, 5
  %i.au = sext i32 %.val51.val to i64
  %i.av = getelementptr inbounds [8 x i8], ptr @_ZN8DecGraphL9ones_maskE, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %.val52.val to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %_ZN8DecGraph10TruthTableD2Ev.exit
  %indvars.iv89 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next90, %_ZN8DecGraph10TruthTableD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i64 0, ptr %i.aq, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.as)
  %i.ax = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %.not.i61 = icmp eq ptr %i.ax, null
  br i1 %.not.i61, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 3
  %i.bg = trunc i64 %i.bf to i32
  br label %_ZNK8DecGraph10TruthTable6nWordsEv.exit

_ZNK8DecGraph10TruthTable6nWordsEv.exit:          ; preds = %bb.e, %bb.f
  %i.bh = phi i32 [ %i.bg, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %.val54 = load ptr, ptr %i.v, align 8, !tbaa !182
  %.val55 = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.bi = getelementptr i8, ptr %.val55, i64 8
  %.val55.val = load ptr, ptr %i.bi, align 8, !tbaa !184
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val55.val, i64 %indvars.iv89
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [12 x i8], ptr %.val54, i64 %i.bl ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 4
  %i.bo = and i64 %i.bn, 536870911
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.bp
  %i.br = call ptr @Gia_ObjComputeTruthTable(ptr noundef nonnull %0, ptr noundef nonnull %i.bq) #36 ; 2 uses
  br i1 %i.at, label %.preheader, label %bb.h

.preheader:                                       ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %i.bs = icmp sgt i32 %i.bh, 0
  br i1 %i.bs, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %.preheader
  %i.bt = load ptr, ptr %2, align 8, !tbaa !36, !nonnull !194, !noundef !194
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.bw = zext nneg i32 %i.bh to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph83, %_ZN8DecGraph11reverseBitsEm.exit66
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph83 ], [ %indvars.iv.next, %_ZN8DecGraph11reverseBitsEm.exit66 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %.val57 = load i64, ptr %i.bm, align 4
  %i.bx = and i64 %.val57, 536870912
  %.not48 = icmp eq i64 %i.bx, 0
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !50 ; 8 uses
  br i1 %.not48, label %.preheader103, label %.preheader104

.preheader104:                                    ; preds = %bb.g, %.preheader104
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader104 ], [ 0, %bb.g ] ; 5 uses
  %.067.i = phi i64 [ %i.cp, %.preheader104 ], [ 0, %bb.g ]
  %i.ca = lshr i64 %i.bz, %indvars.iv.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.cb = shl i64 %.067.i, 2
  %i.cc = shl i64 %i.ca, 1
  %i.cd = and i64 %i.cc, 2
  %i.ce = or disjoint i64 %i.cb, %i.cd
  %i.cf = lshr i64 %i.bz, %indvars.iv.next.i
  %i.cg = and i64 %i.cf, 1
  %i.ch = or disjoint i64 %i.cg, %i.ce
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ci = lshr i64 %i.bz, %indvars.iv.next.i.1
end_hunk_5
