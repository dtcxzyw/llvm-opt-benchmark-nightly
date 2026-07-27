inline.NumInlined: 6793
inline.NumDeleted: 2407
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_119ListFlattenFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !76  ; 2 uses
  %.not.i141 = icmp eq ptr %i.ad, null
  br i1 %.not.i141, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ae = lshr i64 %i.ac, 6
  %i.af = and i64 %i.ac, 63
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.ai = shl nuw i64 1, %i.af
  %i.aj = and i64 %i.ah, %i.ai
  %.not201 = icmp eq i64 %i.aj, 0
  br i1 %.not201, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not.i142 = icmp eq ptr %i.ak, null
  br i1 %.not.i142, label %bb.t, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.t:                                             ; preds = %bb.s
  %i.al = load i64, ptr %i.t, align 8, !tbaa !78
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.al)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !76
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.s, %.noexc
  %i.am = phi ptr [ %.pre.i, %.noexc ], [ %i.ak, %bb.s ]
  %i.an = lshr i64 %.0108248, 6
  %i.ao = and i64 %.0108248, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.at = and i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !77
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0108248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.aw = add nuw i64 %.0108248, 1                ; 2 uses
  %exitcond280.not = icmp eq i64 %i.aw, %i.f
  br i1 %exitcond280.not, label %._crit_edge250, label %bb.q, !llvm.loop !79

bb.w:                                             ; preds = %._crit_edge250
  br i1 %i.u, label %bb.x, label %bb.bi

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.bi unwind label %bb.p

bb.y:                                             ; preds = %bb.n
  %i.ax = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.z unwind label %bb.af      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.ay = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !80 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145 unwind label %bb.ai

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145: ; preds = %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 16 uses
  %.not251 = icmp eq i64 %i.f, 0                  ; 2 uses
  br i1 %.not251, label %._crit_edge, label %.lr.ph216

.lr.ph216:                                        ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145
  %i.bd = load ptr, ptr %3, align 8, !tbaa !66
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !75 ; 3 uses
  %.not.i146 = icmp eq ptr %i.be, null            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 3 uses
  %.not.i148 = icmp eq ptr %i.bg, null            ; 2 uses
  %i.bh = load ptr, ptr %4, align 8               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %.fr = freeze ptr %i.bj                         ; 7 uses
  %.not.i153 = icmp eq ptr %.fr, null
  br i1 %.not.i153, label %.lr.ph216.split.us, label %.lr.ph216.split

.lr.ph216.split.us:                               ; preds = %.lr.ph216, %.loopexit202.us
  %.0110215.us = phi i64 [ %.3113.us, %.loopexit202.us ], [ 0, %.lr.ph216 ] ; 6 uses
  %.0114214.us = phi i64 [ %i.ca, %.loopexit202.us ], [ 0, %.lr.ph216 ] ; 3 uses
  br i1 %.not.i146, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph216.split.us
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0114214.us
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit147.us: ; preds = %bb.ad, %.lr.ph216.split.us
  %i.bn = phi i64 [ %i.bm, %bb.ad ], [ %.0114214.us, %.lr.ph216.split.us ] ; 3 uses
  br i1 %.not.i148, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit147.us
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = and i64 %i.bn, 63
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !77
  %i.bs = shl nuw i64 1, %i.bp
  %i.bt = and i64 %i.br, %i.bs
  %.not199.us = icmp eq i64 %i.bt, 0
  br i1 %.not199.us, label %.loopexit202.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit147.us
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bn ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !81 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !83 ; 6 uses
  %i.by = add i64 %i.bx, %i.bv                    ; 3 uses
  %i.bz = icmp ult i64 %i.bv, %i.by
  br i1 %i.bz, label %.lr.ph.us, label %.loopexit202.us

.loopexit202.us:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us
  %.3113.us = phi i64 [ %.0110215.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us ], [ %.0110215.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us ], [ %i.ei, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.lcssa421.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ], [ %i.ed, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ] ; 2 uses
  %i.ca = add nuw i64 %.0114214.us, 1             ; 2 uses
  %exitcond270.not = icmp eq i64 %i.ca, %i.f
  br i1 %exitcond270.not, label %._crit_edge, label %.lr.ph216.split.us, !llvm.loop !84

.lr.ph.us:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !75 ; 6 uses
  %.not.i151.us = icmp eq ptr %i.cb, null
  br i1 %.not.i151.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader: ; preds = %.lr.ph.us
  %i.cc = add i64 %i.bx, -1
  %xtraiter429 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol
  %.1111205.us.us219.prol = phi i64 [ %i.cj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ], [ %.0110215.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ]
  %.0121204.us.us220.prol = phi i64 [ %i.ck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ], [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220.prol
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !83
  %i.cj = add i64 %i.ci, %.1111205.us.us219.prol  ; 3 uses
  %i.ck = add nuw i64 %.0121204.us.us220.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter429
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol, !llvm.loop !85

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader
  %.lcssa421.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ], [ %i.cj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ]
  %.1111205.us.us219.unr = phi i64 [ %.0110215.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ], [ %i.cj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ]
  %.0121204.us.us220.unr = phi i64 [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.preheader ], [ %i.ck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol ]
  %i.cl = icmp ult i64 %i.cc, 3
  br i1 %i.cl, label %.loopexit202.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader: ; preds = %.lr.ph.us
  %min.iters.check = icmp ult i64 %i.bx, 5
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader
  %n.mod.vf = and i64 %i.bx, 3                    ; 2 uses
  %i.cm = icmp eq i64 %n.mod.vf, 0
  %i.cn = select i1 %i.cm, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.bx, %i.cn                   ; 2 uses
  %i.co = add i64 %i.bv, %n.vec
  %i.cp = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0110215.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cp, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi347 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cq = add nuw i64 %i.bv, %index               ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = getelementptr [16 x i8], ptr %i.bc, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 40
  %7 = load <3 x i64>, ptr %i.ct, align 8, !tbaa !83
  %strided.vec = shufflevector <3 x i64> %7, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %8 = load <3 x i64>, ptr %i.cu, align 8, !tbaa !83
  %strided.vec349 = shufflevector <3 x i64> %8, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cv = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.cw = add <2 x i64> %strided.vec349, %vec.phi347 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader, %middle.block
  %.1111205.us.us.us.ph = phi i64 [ %.0110215.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader ], [ %i.cy, %middle.block ]
  %.0121204.us.us.us.ph = phi i64 [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader ], [ %i.co, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218
  %.1111205.us.us219 = phi i64 [ %i.ed, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ], [ %.1111205.us.us219.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ]
  %.0121204.us.us220 = phi i64 [ %i.ee, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ], [ %.0121204.us.us220.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !83
  %i.df = add i64 %i.de, %.1111205.us.us219
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !83
  %i.dn = add i64 %i.dm, %i.df
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !83
  %i.dv = add i64 %i.du, %i.dn
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !83
  %i.ed = add i64 %i.ec, %i.dv                    ; 2 uses
  %i.ee = add nuw i64 %.0121204.us.us220, 4       ; 2 uses
  %exitcond268.not.3 = icmp eq i64 %i.ee, %i.by
  br i1 %exitcond268.not.3, label %.loopexit202.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218, !llvm.loop !90

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us
  %.1111205.us.us.us = phi i64 [ %i.ei, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.1111205.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419 ]
  %.0121204.us.us.us = phi i64 [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.0121204.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.0121204.us.us.us
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !83
  %i.ei = add i64 %i.eh, %.1111205.us.us.us       ; 2 uses
  %i.ej = add nuw i64 %.0121204.us.us.us, 1       ; 2 uses
  %exitcond269.not = icmp eq i64 %i.ej, %i.by
  br i1 %exitcond269.not, label %.loopexit202.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit202, %.loopexit202.us, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145
  %.0110.lcssa = phi i64 [ 0, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145 ], [ %.3113.us, %.loopexit202.us ], [ %.3113, %.loopexit202 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0110.lcssa)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.ae

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %._crit_edge
  br i1 %.not251, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.am

bb.ae:                                            ; preds = %._crit_edge
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ek) #24
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ag:                                            ; preds = %bb.aa, %bb.z
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ah:                                            ; preds = %bb.ab
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ai:                                            ; preds = %bb.ac
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph216.split:                                  ; preds = %.lr.ph216, %.loopexit202
  %.0110215 = phi i64 [ %.3113, %.loopexit202 ], [ 0, %.lr.ph216 ] ; 8 uses
  %.0114214 = phi i64 [ %i.ij, %.loopexit202 ], [ 0, %.lr.ph216 ] ; 3 uses
  br i1 %.not.i146, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph216.split
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0114214
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147

_ZNK6duckdb15SelectionVector9get_indexEm.exit147: ; preds = %bb.aj, %.lr.ph216.split
  %i.ew = phi i64 [ %i.ev, %bb.aj ], [ %.0114214, %.lr.ph216.split ] ; 3 uses
  br i1 %.not.i148, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit147
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = and i64 %i.ew, 63
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !77
  %i.fb = shl nuw i64 1, %i.ey
  %i.fc = and i64 %i.fa, %i.fb
  %.not199 = icmp eq i64 %i.fc, 0
  br i1 %.not199, label %.loopexit202, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit147, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ew ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !81 ; 10 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !83 ; 5 uses
  %i.fh = add i64 %i.fg, %i.fe                    ; 3 uses
  %i.fi = icmp ult i64 %i.fe, %i.fh
  br i1 %i.fi, label %.lr.ph, label %.loopexit202

.lr.ph:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread
  %i.fj = load ptr, ptr %i.bh, align 8, !tbaa !75 ; 4 uses
  %.not.i151 = icmp eq ptr %i.fj, null
  br i1 %.not.i151, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.fg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fe
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64                   ; 3 uses
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = and i64 %i.fm, 63
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.fn
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.fr = shl nuw i64 1, %i.fo
  %i.fs = and i64 %i.fq, %i.fr
  %.not200.prol = icmp eq i64 %i.fs, 0
  br i1 %.not200.prol, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.fm
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !83
  %i.fw = add i64 %i.fv, %.0110215
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol
  %.2112.prol = phi i64 [ %i.fw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol ], [ %.0110215, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol ] ; 2 uses
  %i.fx = add nuw i64 %i.fe, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader
  %.2112.lcssa.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %.2112.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %.1111205.unr = phi i64 [ %.0110215, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %.2112.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %.0121204.unr = phi i64 [ %i.fe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %i.fx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %i.fy = icmp eq i64 %i.fg, 1
  br i1 %i.fy, label %.loopexit202, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader: ; preds = %.lr.ph
  %xtraiter427 = and i64 %i.fg, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader
  %i.fz = lshr i64 %i.fe, 6
  %i.ga = and i64 %i.fe, 63
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.fz
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !77
  %i.gd = shl nuw i64 1, %i.ga
  %i.ge = and i64 %i.gc, %i.gd
  %.not200.us.prol = icmp eq i64 %i.ge, 0
  br i1 %.not200.us.prol, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.us209.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.us209.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol
end_hunk_0
