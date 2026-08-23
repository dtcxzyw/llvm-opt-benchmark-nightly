Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/null_operations?download=true
inline.NumInlined: 180
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb16VectorOperations12CountNotNullERNS_6VectorEm:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %2, align 8, !tbaa !38
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %.not.i40 = icmp eq ptr %i.f, null
  br i1 %.not.i40, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter91 = and i64 %1, 1
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter95 = and i64 %1, -2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi77 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.h = lshr i64 %index, 6
  %i.i = lshr i64 %index, 6
  %i.j = and <2 x i64> %vec.ind, splat (i64 63)
  %i.k = and <2 x i64> %step.add, splat (i64 63)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.o = load i64, ptr %i.m, align 8, !tbaa !35
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.p = lshr <2 x i64> %broadcast.splat, %i.j
  %i.q = lshr <2 x i64> %broadcast.splat79, %i.k
  %i.r = and <2 x i64> %i.p, splat (i64 1)
  %i.s = and <2 x i64> %i.q, splat (i64 1)
  %i.t = add <2 x i64> %i.r, %vec.phi             ; 2 uses
  %i.u = add <2 x i64> %i.s, %vec.phi77           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.u, %i.t
  %i.w = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.split.us.preheader80

.lr.ph.split.us.preheader80:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.048.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  %.01947.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader80, %.lr.ph.split.us
  %.048.us = phi i64 [ %i.ae, %.lr.ph.split.us ], [ %.048.us.ph, %.lr.ph.split.us.preheader80 ] ; 3 uses
  %.01947.us = phi i64 [ %i.ad, %.lr.ph.split.us ], [ %.01947.us.ph, %.lr.ph.split.us.preheader80 ]
  %i.x = lshr i64 %.048.us, 6
  %i.y = and i64 %.048.us, 63
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ab = lshr i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, 1
  %i.ad = add i64 %i.ac, %.01947.us               ; 2 uses
  %i.ae = add nuw i64 %.048.us, 1                 ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ae, %1
  br i1 %exitcond56.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.split.us, !llvm.loop !74

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %1, 0
  br i1 %i.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %1, 63                          ; 2 uses
  %i.ah = lshr i64 %i.ag, 6                       ; 5 uses
  %.not38.i = icmp eq i64 %i.ah, 0
  br i1 %.not38.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i: ; preds = %bb.f
  %i.ai = and i64 %1, 63                          ; 2 uses
  %.not.i22 = icmp eq i64 %i.ai, 0
  %i.aj = sub nuw nsw i64 64, %i.ai
  %i.ak = lshr i64 -1, %i.aj
  br i1 %.not.i22, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %i.al = icmp eq i64 %i.ah, 1
  br i1 %i.al, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %unroll_iter = and i64 %i.ah, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i: ; preds = %.loopexit.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new
  %.02236.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %.2.us.i.1, %.loopexit.us.i.1 ] ; 3 uses
  %.02535.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %i.as, %.loopexit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %niter.next.1, %.loopexit.us.i.1 ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02535.us.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  switch i64 %i.an, label %.lr.ph.us.i [
    i64 -1, label %bb.g
    i64 0, label %.loopexit.us.i
  ]

.lr.ph.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i, %.lr.ph.us.i
  %.134.us.i = phi i64 [ %i.aq, %.lr.ph.us.i ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ]
  %.12433.us.i = phi i64 [ %i.ap, %.lr.ph.us.i ], [ %i.an, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ] ; 2 uses
  %i.ao = add i64 %.12433.us.i, -1
  %i.ap = and i64 %i.ao, %.12433.us.i             ; 2 uses
  %i.aq = add i64 %.134.us.i, 1                   ; 2 uses
  %.not29.us.i = icmp eq i64 %i.ap, 0
  br i1 %.not29.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !75

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %i.ar = add i64 %.02236.us.i, 64
  br label %.loopexit.us.i, !llvm.loop !76

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %.2.us.i = phi i64 [ %i.ar, %bb.g ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ], [ %i.aq, %.lr.ph.us.i ] ; 3 uses
  %i.as = add nuw nsw i64 %.02535.us.i, 2         ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02535.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  switch i64 %i.av, label %.lr.ph.us.i.1 [
    i64 -1, label %bb.h
    i64 0, label %.loopexit.us.i.1
  ]

bb.h:                                             ; preds = %.loopexit.us.i
  %i.aw = add i64 %.2.us.i, 64
  br label %.loopexit.us.i.1, !llvm.loop !76

.lr.ph.us.i.1:                                    ; preds = %.loopexit.us.i, %.lr.ph.us.i.1
  %.134.us.i.1 = phi i64 [ %i.az, %.lr.ph.us.i.1 ], [ %.2.us.i, %.loopexit.us.i ]
  %.12433.us.i.1 = phi i64 [ %i.ay, %.lr.ph.us.i.1 ], [ %i.av, %.loopexit.us.i ] ; 2 uses
  %i.ax = add i64 %.12433.us.i.1, -1
  %i.ay = and i64 %i.ax, %.12433.us.i.1           ; 2 uses
  %i.az = add i64 %.134.us.i.1, 1                 ; 2 uses
  %.not29.us.i.1 = icmp eq i64 %i.ay, 0
  br i1 %.not29.us.i.1, label %.loopexit.us.i.1, label %.lr.ph.us.i.1, !llvm.loop !75

.loopexit.us.i.1:                                 ; preds = %.lr.ph.us.i.1, %bb.h, %.loopexit.us.i
  %.2.us.i.1 = phi i64 [ %i.aw, %bb.h ], [ %.2.us.i, %.loopexit.us.i ], [ %i.az, %.lr.ph.us.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i, %.loopexit.i
  %.02236.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i ] ; 3 uses
  %.02535.i = phi i64 [ %i.ba, %.loopexit.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.02535.i, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02535.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !35 ; 3 uses
  %i.bd = icmp eq i64 %i.ba, %i.ah                ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.be = and i64 %i.bc, %i.ak
  br label %bb.l

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.bf = icmp eq i64 %i.bc, -1
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = add i64 %.02236.i, 64
  br label %.loopexit.i, !llvm.loop !76

bb.l:                                             ; preds = %bb.j, %bb.i
  %.023.i = phi i64 [ %i.be, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.not2932.i = icmp eq i64 %.023.i, 0
  br i1 %.not2932.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.134.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.02236.i, %bb.l ]
  %.12433.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.023.i, %bb.l ] ; 2 uses
  %i.bh = add i64 %.12433.i, -1
  %i.bi = and i64 %i.bh, %.12433.i                ; 2 uses
  %i.bj = add i64 %.134.i, 1                      ; 2 uses
  %.not29.i = icmp eq i64 %i.bi, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !75

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.l, %bb.k
  %.2.i = phi i64 [ %i.bg, %bb.k ], [ %.02236.i, %bb.l ], [ %i.bj, %.lr.ph.i ] ; 2 uses
  br i1 %i.bd, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i26.preheader: ; preds = %bb.d
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !35
  %i.bl = and i64 %i.bk, 1
  %.not2932.i30 = icmp eq i64 %i.bl, 0
  %spec.select = select i1 %.not2932.i30, i64 0, i64 %1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.048 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.ch, %.lr.ph.split ] ; 3 uses
  %.01947 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.cg, %.lr.ph.split ]
  %niter96 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter96.next.1, %.lr.ph.split ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.048
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = and i64 %i.bo, 63
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !35
  %i.bt = lshr i64 %i.bs, %i.bq
  %i.bu = and i64 %i.bt, 1
  %i.bv = add i64 %i.bu, %.01947
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.048
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = and i64 %i.bz, 63
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !35
  %i.ce = lshr i64 %i.cd, %i.cb
  %i.cf = and i64 %i.ce, 1
  %i.cg = add i64 %i.cf, %i.bv                    ; 3 uses
  %i.ch = add nuw i64 %.048, 2                    ; 2 uses
  %niter96.next.1 = add nuw i64 %niter96, 2       ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa, label %.lr.ph.split, !llvm.loop !77

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa: ; preds = %.lr.ph.split
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa, %.lr.ph.split.preheader
  %.048.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.ch, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa ]
  %.01947.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.048.epil.init
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = and i64 %i.ck, 63
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.cp = lshr i64 %i.co, %i.cm
  %i.cq = and i64 %i.cp, 1
  %i.cr = add i64 %i.cq, %.01947.epil.init
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa: ; preds = %.loopexit.us.i.1
  %i.cs = and i64 %i.ag, 64
  %lcmp.mod.not = icmp eq i64 %i.cs, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %.02236.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa ] ; 3 uses
  %.02535.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %i.as, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa ]
  %lcmp.mod90 = trunc i64 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod90)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02535.us.i.epil.init
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !35 ; 2 uses
  switch i64 %i.cu, label %.lr.ph.us.i.epil [
    i64 -1, label %bb.m
    i64 0, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  ]

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader
  %i.cv = add i64 %.02236.us.i.epil.init, 64
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, !llvm.loop !76

.lr.ph.us.i.epil:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %.lr.ph.us.i.epil
  %.134.us.i.epil = phi i64 [ %i.cy, %.lr.ph.us.i.epil ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ]
  %.12433.us.i.epil = phi i64 [ %i.cx, %.lr.ph.us.i.epil ], [ %i.cu, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ] ; 2 uses
  %i.cw = add i64 %.12433.us.i.epil, -1
  %i.cx = and i64 %i.cw, %.12433.us.i.epil        ; 2 uses
  %i.cy = add i64 %.134.us.i.epil, 1              ; 2 uses
  %.not29.us.i.epil = icmp eq i64 %i.cx, 0
  br i1 %.not29.us.i.epil, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.us.i.epil, !llvm.loop !75

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit: ; preds = %.loopexit.i, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa, %.lr.ph.us.i.epil, %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %.lr.ph.split.epil.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa, %.lr.ph.split.us, %middle.block, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i26.preheader, %.preheader, %bb.f, %bb.e, %bb.b
  %.020 = phi i64 [ %1, %bb.b ], [ %i.cy, %.lr.ph.us.i.epil ], [ %i.cr, %.lr.ph.split.epil.preheader ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ad, %.lr.ph.split.us ], [ 0, %.preheader ], [ %spec.select, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i26.preheader ], [ %i.w, %middle.block ], [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit83.unr-lcssa ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit85.unr-lcssa ], [ %i.cv, %bb.m ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ], [ %.2.i, %.loopexit.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.db, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !53
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #15, !inline_history !68
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #15, !inline_history !68
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.q ], [ %i.do, %bb.r ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.s, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !58

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #15
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ds, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !53
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #15, !inline_history !69
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #15, !inline_history !69
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.x:                                             ; preds = %bb.v
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dv, %bb.w ], [ %i.ef, %bb.x ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.eg, label %bb.y, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !58

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #15
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i64 %.020
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !79
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 1, ptr %i.a, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.g = load i8, ptr %i.c, align 1, !tbaa !79
  store i8 %i.g, ptr %i.b, align 1, !tbaa !80
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.j = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %.0, label %bb.f, label %bb.h

end_hunk_0
