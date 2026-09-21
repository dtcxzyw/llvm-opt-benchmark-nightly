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
  %i.cp = add i64 %.sroa.071.0100, 1              ; 2 uses
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
end_hunk_0
