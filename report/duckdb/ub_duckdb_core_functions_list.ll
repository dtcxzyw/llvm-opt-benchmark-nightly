inline.NumInlined: 6793
inline.NumDeleted: 2407
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_119ListFlattenFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.r, %bb.q
  %i.ac = phi i64 [ %i.ab, %bb.r ], [ %.0108248, %bb.q ] ; 2 uses
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
  %.3113.us = phi i64 [ %.0110215.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.us ], [ %.0110215.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread.us ], [ %i.ek, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.lcssa421.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ], [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ] ; 2 uses
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
  %vec.phi = phi <2 x i64> [ %i.cp, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi347 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cq = add i64 %i.bv, %index                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = getelementptr [16 x i8], ptr %i.bc, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 40
  %i.cv = load <3 x i64>, ptr %i.ct, align 8, !tbaa !83
  %strided.vec = shufflevector <3 x i64> %i.cv, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cw = load <3 x i64>, ptr %i.cu, align 8, !tbaa !83
  %strided.vec349 = shufflevector <3 x i64> %i.cw, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cx = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.cy = add <2 x i64> %strided.vec349, %vec.phi347 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cy, %i.cx
  %i.da = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader, %middle.block
  %.1111205.us.us.us.ph = phi i64 [ %.0110215.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader ], [ %i.da, %middle.block ]
  %.0121204.us.us.us.ph = phi i64 [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader ], [ %i.co, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218
  %.1111205.us.us219 = phi i64 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ], [ %.1111205.us.us219.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ]
  %.0121204.us.us220 = phi i64 [ %i.eg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218 ], [ %.0121204.us.us220.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218.prol.loopexit ] ; 5 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !83
  %i.dh = add i64 %i.dg, %.1111205.us.us219
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !83
  %i.dp = add i64 %i.do, %i.dh
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !83
  %i.dx = add i64 %i.dw, %i.dp
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0121204.us.us220
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !83
  %i.ef = add i64 %i.ee, %i.dx                    ; 2 uses
  %i.eg = add nuw i64 %.0121204.us.us220, 4       ; 2 uses
  %exitcond268.not.3 = icmp eq i64 %i.eg, %i.by
  br i1 %exitcond268.not.3, label %.loopexit202.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us218, !llvm.loop !90

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us
  %.1111205.us.us.us = phi i64 [ %i.ek, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.1111205.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419 ]
  %.0121204.us.us.us = phi i64 [ %i.el, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us ], [ %.0121204.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us.preheader419 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.0121204.us.us.us
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !83
  %i.ek = add i64 %i.ej, %.1111205.us.us.us       ; 2 uses
  %i.el = add nuw i64 %.0121204.us.us.us, 1       ; 2 uses
  %exitcond269.not = icmp eq i64 %i.el, %i.by
  br i1 %exitcond269.not, label %.loopexit202.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us.us.us, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit202, %.loopexit202.us, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145
  %.0110.lcssa = phi i64 [ 0, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit145 ], [ %.3113.us, %.loopexit202.us ], [ %.3113, %.loopexit202 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0110.lcssa)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.ae

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %._crit_edge
  br i1 %.not251, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.am

bb.ae:                                            ; preds = %._crit_edge
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.em) #24
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ag:                                            ; preds = %bb.aa, %bb.z
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ah:                                            ; preds = %bb.ab
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ai:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph216.split:                                  ; preds = %.lr.ph216, %.loopexit202
  %.0110215 = phi i64 [ %.3113, %.loopexit202 ], [ 0, %.lr.ph216 ] ; 8 uses
  %.0114214 = phi i64 [ %i.il, %.loopexit202 ], [ 0, %.lr.ph216 ] ; 3 uses
  br i1 %.not.i146, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph216.split
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0114214
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit147

_ZNK6duckdb15SelectionVector9get_indexEm.exit147: ; preds = %bb.aj, %.lr.ph216.split
  %i.ey = phi i64 [ %i.ex, %bb.aj ], [ %.0114214, %.lr.ph216.split ] ; 3 uses
  br i1 %.not.i148, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit147
  %i.ez = lshr i64 %i.ey, 6
  %i.fa = and i64 %i.ey, 63
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ez
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !77
  %i.fd = shl nuw i64 1, %i.fa
  %i.fe = and i64 %i.fc, %i.fd
  %.not199 = icmp eq i64 %i.fe, 0
  br i1 %.not199, label %.loopexit202, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit147, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ey ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !81 ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !83 ; 5 uses
  %i.fj = add i64 %i.fi, %i.fg                    ; 3 uses
  %i.fk = icmp ult i64 %i.fg, %i.fj
  br i1 %i.fk, label %.lr.ph, label %.loopexit202

.lr.ph:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread
  %i.fl = load ptr, ptr %i.bh, align 8, !tbaa !75 ; 4 uses
  %.not.i151 = icmp eq ptr %i.fl, null
  br i1 %.not.i151, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.fi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fg
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 3 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = and i64 %i.fo, 63
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.fp
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !77
  %i.ft = shl nuw i64 1, %i.fq
  %i.fu = and i64 %i.fs, %i.ft
  %.not200.prol = icmp eq i64 %i.fu, 0
  br i1 %.not200.prol, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.fo
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !83
  %i.fy = add i64 %i.fx, %.0110215
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol
  %.2112.prol = phi i64 [ %i.fy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.prol ], [ %.0110215, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol ] ; 2 uses
  %i.fz = add nuw i64 %i.fg, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader
  %.2112.lcssa.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %.2112.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %.1111205.unr = phi i64 [ %.0110215, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %.2112.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %.0121204.unr = phi i64 [ %i.fg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.preheader ], [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit.unr-lcssa ]
  %i.ga = icmp eq i64 %i.fi, 1
  br i1 %i.ga, label %.loopexit202, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader: ; preds = %.lr.ph
  %xtraiter427 = and i64 %i.fi, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.preheader
  %i.gb = lshr i64 %i.fg, 6
  %i.gc = and i64 %i.fg, 63
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_119ListFlattenFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.0121204
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.hz = zext i32 %i.hy to i64                   ; 3 uses
  %i.ia = lshr i64 %i.hz, 6
  %i.ib = and i64 %i.hz, 63
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ia
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !77
  %i.ie = shl nuw i64 1, %i.ib
  %i.if = and i64 %i.id, %i.ie
  %.not200.1 = icmp eq i64 %i.if, 0
  br i1 %.not200.1, label %bb.al, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.1
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.hz
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !83
  %i.ij = add i64 %i.ii, %.2112
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.1
  %.2112.1 = phi i64 [ %i.ij, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit155.thread.1 ], [ %.2112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.1 ] ; 2 uses
  %i.ik = add nuw i64 %.0121204, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ik, %i.fj
  br i1 %exitcond.not.1, label %.loopexit202, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit152, !llvm.loop !90

.loopexit202:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit, %bb.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol.loopexit, %bb.ak, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150
  %.3113 = phi i64 [ %.0110215, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150 ], [ %.0110215, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit150.thread ], [ %.2112.us210.1, %bb.ak ], [ %.2112.us210.lcssa.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.us208.prol.loopexit ], [ %.2112.lcssa.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit152.prol.loopexit ], [ %.2112.1, %bb.al ] ; 2 uses
  %i.il = add nuw i64 %.0114214, 1                ; 2 uses
  %exitcond267.not = icmp eq i64 %i.il, %i.f
  br i1 %exitcond267.not, label %._crit_edge, label %.lr.ph216.split, !llvm.loop !84

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.0116.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader ], [ %.4120, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 3 uses
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0116.lcssa)
          to label %bb.at unwind label %bb.az

bb.am:                                            ; preds = %.lr.ph246, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.0115245 = phi i64 [ 0, %.lr.ph246 ], [ %i.pn, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 6 uses
  %.0116243 = phi i64 [ 0, %.lr.ph246 ], [ %.4120, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 5 uses
  %i.im = load ptr, ptr %3, align 8, !tbaa !66
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !75 ; 2 uses
  %.not.i156 = icmp eq ptr %i.in, null
  br i1 %.not.i156, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.0115245
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = zext i32 %i.ip to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157

_ZNK6duckdb15SelectionVector9get_indexEm.exit157: ; preds = %bb.an, %bb.am
  %i.ir = phi i64 [ %i.iq, %bb.an ], [ %.0115245, %bb.am ] ; 3 uses
  %i.is = load ptr, ptr %i.en, align 8, !tbaa !76 ; 2 uses
  %.not.i158 = icmp eq ptr %i.is, null
  br i1 %.not.i158, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157
  %i.it = lshr i64 %i.ir, 6
  %i.iu = and i64 %i.ir, 63
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !77
  %i.ix = shl nuw i64 1, %i.iu
  %i.iy = and i64 %i.iw, %i.ix
  %.not = icmp eq i64 %i.iy, 0
  br i1 %.not, label %bb.ao, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not.i161 = icmp eq ptr %i.iz, null
  br i1 %.not.i161, label %bb.ap, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit164

bb.ap:                                            ; preds = %bb.ao
  %i.ja = load i64, ptr %i.eo, align 8, !tbaa !78
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ja)
          to label %.noexc163 unwind label %bb.aq

.noexc163:                                        ; preds = %bb.ap
  %.pre.i162 = load ptr, ptr %i.c, align 8, !tbaa !76
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit164

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit164: ; preds = %bb.ao, %.noexc163
  %i.jb = phi ptr [ %.pre.i162, %.noexc163 ], [ %i.iz, %bb.ao ]
  %i.jc = lshr i64 %.0115245, 6
  %i.jd = and i64 %.0115245, 63
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = xor i64 %i.je, -1
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !77
  %i.ji = and i64 %i.jh, %i.jf
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !77
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.aq:                                            ; preds = %bb.ap
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ir ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !81 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !83
  %i.jo = add i64 %i.jn, %i.jl                    ; 3 uses
  %i.jp = icmp ult i64 %i.jl, %i.jo
  br i1 %i.jp, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread
  %i.jq = load ptr, ptr %4, align 8, !tbaa !66
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !75 ; 3 uses
  %.not.i165 = icmp eq ptr %i.jr, null            ; 2 uses
  %i.js = load ptr, ptr %i.ep, align 8, !tbaa !76 ; 2 uses
  %.not.i167 = icmp eq ptr %i.js, null
  %i.jt = load ptr, ptr %5, align 8               ; 2 uses
  %i.ju = load ptr, ptr %6, align 8               ; 17 uses
  %i.jv = ptrtoaddr ptr %i.ju to i64              ; 2 uses
  br i1 %.not.i167, label %.lr.ph232.split.us, label %.lr.ph232.split

.lr.ph232.split.us:                               ; preds = %.lr.ph232, %.loopexit.us
  %.0109231.us = phi i64 [ %i.lb, %.loopexit.us ], [ %i.jl, %.lr.ph232 ] ; 3 uses
  %.1117230.us = phi i64 [ %.2118.lcssa.us, %.loopexit.us ], [ %.0116243, %.lr.ph232 ] ; 9 uses
  %.sroa.5.0229.us = phi i64 [ %i.kd, %.loopexit.us ], [ 0, %.lr.ph232 ]
  br i1 %.not.i165, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph232.split.us
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.0109231.us
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jy = zext i32 %i.jx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us: ; preds = %bb.ar, %.lr.ph232.split.us
  %i.jz = phi i64 [ %i.jy, %bb.ar ], [ %.0109231.us, %.lr.ph232.split.us ]
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !83 ; 9 uses
  %i.kd = add i64 %i.kc, %.sroa.5.0229.us         ; 2 uses
  %i.ke = load i64, ptr %i.ka, align 8, !tbaa !81 ; 12 uses
  %i.kf = add i64 %i.ke, %i.kc                    ; 3 uses
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %.lr.ph227.us, label %.loopexit.us

.lr.ph227.split.us240:                            ; preds = %.lr.ph227.split.us240.prol.loopexit, %.lr.ph227.split.us240
  %.0107226.us236 = phi i64 [ %i.la, %.lr.ph227.split.us240 ], [ %.0107226.us236.unr, %.lr.ph227.split.us240.prol.loopexit ] ; 5 uses
  %.2118225.us237 = phi i64 [ %i.kz, %.lr.ph227.split.us240 ], [ %.2118225.us237.unr, %.lr.ph227.split.us240.prol.loopexit ] ; 5 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0107226.us236
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225.us237
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !3
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0107226.us236
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225.us237
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !3
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0107226.us236
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  %i.ks = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225.us237
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !3
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0107226.us236
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.kx = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225.us237
  %i.ky = getelementptr i8, ptr %i.kx, i64 12
  store i32 %i.kw, ptr %i.ky, align 4, !tbaa !3
  %i.kz = add i64 %.2118225.us237, 4              ; 2 uses
  %i.la = add nuw i64 %.0107226.us236, 4          ; 2 uses
  %exitcond276.not.3 = icmp eq i64 %i.la, %i.kf
  br i1 %exitcond276.not.3, label %.loopexit.us, label %.lr.ph227.split.us240, !llvm.loop !92

.loopexit.us:                                     ; preds = %.lr.ph227.split.us240.prol.loopexit, %.lr.ph227.split.us240, %.lr.ph227.split.us.us, %middle.block370, %middle.block358, %_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us
  %.2118.lcssa.us = phi i64 [ %.1117230.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us ], [ %i.mm, %.lr.ph227.split.us.us ], [ %i.me, %middle.block358 ], [ %i.lk, %middle.block370 ], [ %.lcssa416.unr, %.lr.ph227.split.us240.prol.loopexit ], [ %i.kz, %.lr.ph227.split.us240 ] ; 2 uses
  %i.lb = add nuw i64 %.0109231.us, 1             ; 2 uses
  %exitcond278.not = icmp eq i64 %i.lb, %i.jo
  br i1 %exitcond278.not, label %._crit_edge233, label %.lr.ph232.split.us, !llvm.loop !93

.lr.ph227.us:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit166.us
  %i.lc = load ptr, ptr %i.jt, align 8, !tbaa !75 ; 8 uses
  %i.ld = ptrtoaddr ptr %i.lc to i64
  %.not.i170.us = icmp eq ptr %i.lc, null
  %min.iters.check351 = icmp ult i64 %i.kc, 8     ; 2 uses
  br i1 %.not.i170.us, label %.lr.ph227.split.us.us.preheader, label %.lr.ph227.split.us240.preheader

.lr.ph227.split.us240.preheader:                  ; preds = %.lr.ph227.us
  br i1 %min.iters.check351, label %.lr.ph227.split.us240.preheader409, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph227.split.us240.preheader
  %i.le = shl i64 %.1117230.us, 2
  %i.lf = add i64 %i.le, %i.jv
  %i.lg = shl i64 %i.ke, 2
  %i.lh = add i64 %i.lg, %i.ld
  %i.li = sub i64 %i.lh, %i.lf
  %diff.check = icmp ugt i64 %i.li, -32
  br i1 %diff.check, label %.lr.ph227.split.us240.preheader409, label %vector.ph363

vector.ph363:                                     ; preds = %vector.memcheck
  %n.vec365 = and i64 %i.kc, -8                   ; 4 uses
  %i.lj = add i64 %i.ke, %n.vec365
  %i.lk = add i64 %.1117230.us, %n.vec365         ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.lc, i64 %i.ke
  %i.lm = getelementptr [4 x i8], ptr %i.ju, i64 %.1117230.us
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph363
  %index367 = phi i64 [ 0, %vector.ph363 ], [ %index.next369, %vector.body366 ] ; 3 uses
  %i.ln = getelementptr [4 x i8], ptr %i.ll, i64 %index367 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load = load <4 x i32>, ptr %i.ln, align 4, !tbaa !3
  %wide.load368 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !3
  %i.lp = getelementptr [4 x i8], ptr %i.lm, i64 %index367 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <4 x i32> %wide.load, ptr %i.lp, align 4, !tbaa !3
  store <4 x i32> %wide.load368, ptr %i.lq, align 4, !tbaa !3
  %index.next369 = add nuw i64 %index367, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next369, %n.vec365
  br i1 %i.lr, label %middle.block370, label %vector.body366, !llvm.loop !94

middle.block370:                                  ; preds = %vector.body366
  %cmp.n371 = icmp eq i64 %i.kc, %n.vec365
  br i1 %cmp.n371, label %.loopexit.us, label %.lr.ph227.split.us240.preheader409

.lr.ph227.split.us240.preheader409:               ; preds = %vector.memcheck, %.lr.ph227.split.us240.preheader, %middle.block370
  %.0107226.us236.ph = phi i64 [ %i.ke, %vector.memcheck ], [ %i.ke, %.lr.ph227.split.us240.preheader ], [ %i.lj, %middle.block370 ] ; 4 uses
  %.2118225.us237.ph = phi i64 [ %.1117230.us, %vector.memcheck ], [ %.1117230.us, %.lr.ph227.split.us240.preheader ], [ %i.lk, %middle.block370 ] ; 2 uses
  %i.ls = add i64 %i.ke, %i.kc
  %i.lt = sub i64 %i.ls, %.0107226.us236.ph
  %i.lu = add i64 %i.ke, -1
  %i.lv = add i64 %i.lu, %i.kc
  %i.lw = sub i64 %i.lv, %.0107226.us236.ph
  %xtraiter434 = and i64 %i.lt, 3                 ; 2 uses
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %.lr.ph227.split.us240.prol.loopexit, label %.lr.ph227.split.us240.prol

.lr.ph227.split.us240.prol:                       ; preds = %.lr.ph227.split.us240.preheader409, %.lr.ph227.split.us240.prol
  %.0107226.us236.prol = phi i64 [ %i.mb, %.lr.ph227.split.us240.prol ], [ %.0107226.us236.ph, %.lr.ph227.split.us240.preheader409 ] ; 2 uses
  %.2118225.us237.prol = phi i64 [ %i.ma, %.lr.ph227.split.us240.prol ], [ %.2118225.us237.ph, %.lr.ph227.split.us240.preheader409 ] ; 2 uses
  %prol.iter436 = phi i64 [ %prol.iter436.next, %.lr.ph227.split.us240.prol ], [ 0, %.lr.ph227.split.us240.preheader409 ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0107226.us236.prol
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225.us237.prol
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !3
  %i.ma = add i64 %.2118225.us237.prol, 1         ; 3 uses
  %i.mb = add nuw i64 %.0107226.us236.prol, 1     ; 2 uses
  %prol.iter436.next = add i64 %prol.iter436, 1   ; 2 uses
  %prol.iter436.cmp.not = icmp eq i64 %prol.iter436.next, %xtraiter434
  br i1 %prol.iter436.cmp.not, label %.lr.ph227.split.us240.prol.loopexit, label %.lr.ph227.split.us240.prol, !llvm.loop !95

.lr.ph227.split.us240.prol.loopexit:              ; preds = %.lr.ph227.split.us240.prol, %.lr.ph227.split.us240.preheader409
  %.lcssa416.unr = phi i64 [ poison, %.lr.ph227.split.us240.preheader409 ], [ %i.ma, %.lr.ph227.split.us240.prol ]
  %.0107226.us236.unr = phi i64 [ %.0107226.us236.ph, %.lr.ph227.split.us240.preheader409 ], [ %i.mb, %.lr.ph227.split.us240.prol ]
  %.2118225.us237.unr = phi i64 [ %.2118225.us237.ph, %.lr.ph227.split.us240.preheader409 ], [ %i.ma, %.lr.ph227.split.us240.prol ]
  %i.mc = icmp ult i64 %i.lw, 3
  br i1 %i.mc, label %.loopexit.us, label %.lr.ph227.split.us240

.lr.ph227.split.us.us.preheader:                  ; preds = %.lr.ph227.us
  br i1 %min.iters.check351, label %.lr.ph227.split.us.us.preheader408, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph227.split.us.us.preheader
  %n.vec354 = and i64 %i.kc, -8                   ; 4 uses
  %i.md = add i64 %i.ke, %n.vec354
  %i.me = add i64 %.1117230.us, %n.vec354         ; 2 uses
  %i.mf = trunc i64 %i.ke to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.mf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.mg = getelementptr [4 x i8], ptr %i.ju, i64 %.1117230.us
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph352
  %index356 = phi i64 [ 0, %vector.ph352 ], [ %index.next357, %vector.body355 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph352 ], [ %vec.ind.next, %vector.body355 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mh = getelementptr [4 x i8], ptr %i.mg, i64 %index356 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %vec.ind, ptr %i.mh, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.mi, align 4, !tbaa !3
  %index.next357 = add nuw i64 %index356, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.mj = icmp eq i64 %index.next357, %n.vec354
  br i1 %i.mj, label %middle.block358, label %vector.body355, !llvm.loop !96

middle.block358:                                  ; preds = %vector.body355
  %cmp.n = icmp eq i64 %i.kc, %n.vec354
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph227.split.us.us.preheader408

.lr.ph227.split.us.us.preheader408:               ; preds = %.lr.ph227.split.us.us.preheader, %middle.block358
  %.0107226.us.us.ph = phi i64 [ %i.ke, %.lr.ph227.split.us.us.preheader ], [ %i.md, %middle.block358 ]
  %.2118225.us.us.ph = phi i64 [ %.1117230.us, %.lr.ph227.split.us.us.preheader ], [ %i.me, %middle.block358 ]
  br label %.lr.ph227.split.us.us

.lr.ph227.split.us.us:                            ; preds = %.lr.ph227.split.us.us.preheader408, %.lr.ph227.split.us.us
  %.0107226.us.us = phi i64 [ %i.mn, %.lr.ph227.split.us.us ], [ %.0107226.us.us.ph, %.lr.ph227.split.us.us.preheader408 ] ; 2 uses
  %.2118225.us.us = phi i64 [ %i.mm, %.lr.ph227.split.us.us ], [ %.2118225.us.us.ph, %.lr.ph227.split.us.us.preheader408 ] ; 2 uses
  %i.mk = trunc i64 %.0107226.us.us to i32
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225.us.us
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !3
  %i.mm = add i64 %.2118225.us.us, 1              ; 2 uses
  %i.mn = add nuw i64 %.0107226.us.us, 1          ; 2 uses
  %exitcond277.not = icmp eq i64 %i.mn, %i.kf
  br i1 %exitcond277.not, label %.loopexit.us, label %.lr.ph227.split.us.us, !llvm.loop !97

._crit_edge233:                                   ; preds = %.loopexit, %.loopexit.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread
  %.sroa.5.0.lcssa = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread ], [ %i.kd, %.loopexit.us ], [ %.sroa.5.1, %.loopexit ]
  %.1117.lcssa = phi i64 [ %.0116243, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.thread ], [ %.2118.lcssa.us, %.loopexit.us ], [ %.3119, %.loopexit ]
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0115245 ; 2 uses
  store i64 %.0116243, ptr %i.mo, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !77
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

.lr.ph232.split:                                  ; preds = %.lr.ph232, %.loopexit
  %.0109231 = phi i64 [ %i.pm, %.loopexit ], [ %i.jl, %.lr.ph232 ] ; 3 uses
  %.1117230 = phi i64 [ %.3119, %.loopexit ], [ %.0116243, %.lr.ph232 ] ; 10 uses
  %.sroa.5.0229 = phi i64 [ %.sroa.5.1, %.loopexit ], [ 0, %.lr.ph232 ] ; 2 uses
  br i1 %.not.i165, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit166, label %bb.as

bb.as:                                            ; preds = %.lr.ph232.split
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.0109231
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = zext i32 %i.mq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit166

_ZNK6duckdb15SelectionVector9get_indexEm.exit166: ; preds = %bb.as, %.lr.ph232.split
  %i.ms = phi i64 [ %i.mr, %bb.as ], [ %.0109231, %.lr.ph232.split ] ; 3 uses
  %i.mt = lshr i64 %i.ms, 6
  %i.mu = and i64 %i.ms, 63
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.mt
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !77
  %i.mx = shl nuw i64 1, %i.mu
  %i.my = and i64 %i.mw, %i.mx
  %.not198 = icmp eq i64 %i.my, 0
  br i1 %.not198, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit166
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ms ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !83 ; 9 uses
  %i.nc = add i64 %i.nb, %.sroa.5.0229            ; 6 uses
  %i.nd = load i64, ptr %i.mz, align 8, !tbaa !81 ; 12 uses
  %i.ne = add i64 %i.nd, %i.nb                    ; 3 uses
  %i.nf = icmp ult i64 %i.nd, %i.ne
  br i1 %i.nf, label %.lr.ph227, label %.loopexit

.lr.ph227:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread
  %i.ng = load ptr, ptr %i.jt, align 8, !tbaa !75 ; 8 uses
  %i.nh = ptrtoaddr ptr %i.ng to i64
  %.not.i170 = icmp eq ptr %i.ng, null
  %min.iters.check375 = icmp ult i64 %i.nb, 8     ; 2 uses
  br i1 %.not.i170, label %.lr.ph227.split.us.preheader, label %.lr.ph227.split.preheader

.lr.ph227.split.preheader:                        ; preds = %.lr.ph227
  br i1 %min.iters.check375, label %.lr.ph227.split.preheader412, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph227.split.preheader
  %i.ni = shl i64 %.1117230, 2
  %i.nj = add i64 %i.ni, %i.jv
  %i.nk = shl i64 %i.nd, 2
  %i.nl = add i64 %i.nk, %i.nh
  %i.nm = sub i64 %i.nl, %i.nj
  %diff.check393 = icmp ugt i64 %i.nm, -32
  br i1 %diff.check393, label %.lr.ph227.split.preheader412, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec398 = and i64 %i.nb, -8                   ; 4 uses
  %i.nn = add i64 %i.nd, %n.vec398
  %i.no = add i64 %.1117230, %n.vec398            ; 2 uses
  %i.np = getelementptr [4 x i8], ptr %i.ng, i64 %i.nd
  %i.nq = getelementptr [4 x i8], ptr %i.ju, i64 %.1117230
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph396
  %index400 = phi i64 [ 0, %vector.ph396 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %i.nr = getelementptr [4 x i8], ptr %i.np, i64 %index400 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !3
  %wide.load402 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !3
  %i.nt = getelementptr [4 x i8], ptr %i.nq, i64 %index400 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <4 x i32> %wide.load401, ptr %i.nt, align 4, !tbaa !3
  store <4 x i32> %wide.load402, ptr %i.nu, align 4, !tbaa !3
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next403, %n.vec398
  br i1 %i.nv, label %middle.block404, label %vector.body399, !llvm.loop !98

middle.block404:                                  ; preds = %vector.body399
  %cmp.n405 = icmp eq i64 %i.nb, %n.vec398
  br i1 %cmp.n405, label %.loopexit, label %.lr.ph227.split.preheader412

.lr.ph227.split.preheader412:                     ; preds = %vector.memcheck392, %.lr.ph227.split.preheader, %middle.block404
  %.0107226.ph = phi i64 [ %i.nd, %vector.memcheck392 ], [ %i.nd, %.lr.ph227.split.preheader ], [ %i.nn, %middle.block404 ] ; 4 uses
  %.2118225.ph = phi i64 [ %.1117230, %vector.memcheck392 ], [ %.1117230, %.lr.ph227.split.preheader ], [ %i.no, %middle.block404 ] ; 2 uses
  %i.nw = add i64 %i.nd, %i.nb
  %i.nx = sub i64 %i.nw, %.0107226.ph
  %i.ny = add i64 %i.nd, -1
  %i.nz = add i64 %i.ny, %i.nb
  %i.oa = sub i64 %i.nz, %.0107226.ph
  %xtraiter431 = and i64 %i.nx, 3                 ; 2 uses
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %.lr.ph227.split.prol.loopexit, label %.lr.ph227.split.prol

.lr.ph227.split.prol:                             ; preds = %.lr.ph227.split.preheader412, %.lr.ph227.split.prol
  %.0107226.prol = phi i64 [ %i.of, %.lr.ph227.split.prol ], [ %.0107226.ph, %.lr.ph227.split.preheader412 ] ; 2 uses
  %.2118225.prol = phi i64 [ %i.oe, %.lr.ph227.split.prol ], [ %.2118225.ph, %.lr.ph227.split.preheader412 ] ; 2 uses
  %prol.iter433 = phi i64 [ %prol.iter433.next, %.lr.ph227.split.prol ], [ 0, %.lr.ph227.split.preheader412 ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0107226.prol
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !3
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225.prol
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !3
  %i.oe = add i64 %.2118225.prol, 1               ; 3 uses
  %i.of = add nuw i64 %.0107226.prol, 1           ; 2 uses
  %prol.iter433.next = add i64 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i64 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %.lr.ph227.split.prol.loopexit, label %.lr.ph227.split.prol, !llvm.loop !99

.lr.ph227.split.prol.loopexit:                    ; preds = %.lr.ph227.split.prol, %.lr.ph227.split.preheader412
  %.lcssa.unr = phi i64 [ poison, %.lr.ph227.split.preheader412 ], [ %i.oe, %.lr.ph227.split.prol ]
  %.0107226.unr = phi i64 [ %.0107226.ph, %.lr.ph227.split.preheader412 ], [ %i.of, %.lr.ph227.split.prol ]
  %.2118225.unr = phi i64 [ %.2118225.ph, %.lr.ph227.split.preheader412 ], [ %i.oe, %.lr.ph227.split.prol ]
  %i.og = icmp ult i64 %i.oa, 3
  br i1 %i.og, label %.loopexit, label %.lr.ph227.split

.lr.ph227.split.us.preheader:                     ; preds = %.lr.ph227
  br i1 %min.iters.check375, label %.lr.ph227.split.us.preheader411, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph227.split.us.preheader
  %n.vec378 = and i64 %i.nb, -8                   ; 4 uses
  %i.oh = add i64 %i.nd, %n.vec378
  %i.oi = add i64 %.1117230, %n.vec378            ; 2 uses
  %i.oj = trunc i64 %i.nd to i32
  %broadcast.splatinsert379 = insertelement <4 x i32> poison, i32 %i.oj, i64 0
  %broadcast.splat380 = shufflevector <4 x i32> %broadcast.splatinsert379, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction381 = add <4 x i32> %broadcast.splat380, <i32 0, i32 1, i32 2, i32 3>
  %i.ok = getelementptr [4 x i8], ptr %i.ju, i64 %.1117230
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph376
  %index383 = phi i64 [ 0, %vector.ph376 ], [ %index.next386, %vector.body382 ] ; 2 uses
  %vec.ind384 = phi <4 x i32> [ %induction381, %vector.ph376 ], [ %vec.ind.next387, %vector.body382 ] ; 3 uses
  %step.add385 = add <4 x i32> %vec.ind384, splat (i32 4)
  %i.ol = getelementptr [4 x i8], ptr %i.ok, i64 %index383 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store <4 x i32> %vec.ind384, ptr %i.ol, align 4, !tbaa !3
  store <4 x i32> %step.add385, ptr %i.om, align 4, !tbaa !3
  %index.next386 = add nuw i64 %index383, 8       ; 2 uses
  %vec.ind.next387 = add <4 x i32> %vec.ind384, splat (i32 8)
  %i.on = icmp eq i64 %index.next386, %n.vec378
  br i1 %i.on, label %middle.block388, label %vector.body382, !llvm.loop !100

middle.block388:                                  ; preds = %vector.body382
  %cmp.n389 = icmp eq i64 %i.nb, %n.vec378
  br i1 %cmp.n389, label %.loopexit, label %.lr.ph227.split.us.preheader411

.lr.ph227.split.us.preheader411:                  ; preds = %.lr.ph227.split.us.preheader, %middle.block388
  %.0107226.us.ph = phi i64 [ %i.nd, %.lr.ph227.split.us.preheader ], [ %i.oh, %middle.block388 ]
  %.2118225.us.ph = phi i64 [ %.1117230, %.lr.ph227.split.us.preheader ], [ %i.oi, %middle.block388 ]
  br label %.lr.ph227.split.us

.lr.ph227.split.us:                               ; preds = %.lr.ph227.split.us.preheader411, %.lr.ph227.split.us
  %.0107226.us = phi i64 [ %i.or, %.lr.ph227.split.us ], [ %.0107226.us.ph, %.lr.ph227.split.us.preheader411 ] ; 2 uses
  %.2118225.us = phi i64 [ %i.oq, %.lr.ph227.split.us ], [ %.2118225.us.ph, %.lr.ph227.split.us.preheader411 ] ; 2 uses
  %i.oo = trunc i64 %.0107226.us to i32
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225.us
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !3
  %i.oq = add i64 %.2118225.us, 1                 ; 2 uses
  %i.or = add nuw i64 %.0107226.us, 1             ; 2 uses
  %exitcond273.not = icmp eq i64 %i.or, %i.ne
  br i1 %exitcond273.not, label %.loopexit, label %.lr.ph227.split.us, !llvm.loop !101

.lr.ph227.split:                                  ; preds = %.lr.ph227.split.prol.loopexit, %.lr.ph227.split
  %.0107226 = phi i64 [ %i.pl, %.lr.ph227.split ], [ %.0107226.unr, %.lr.ph227.split.prol.loopexit ] ; 5 uses
  %.2118225 = phi i64 [ %i.pk, %.lr.ph227.split ], [ %.2118225.unr, %.lr.ph227.split.prol.loopexit ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0107226
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !3
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2118225
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !3
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0107226
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !3
  %i.oy = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225
  %i.oz = getelementptr i8, ptr %i.oy, i64 4
  store i32 %i.ox, ptr %i.oz, align 4, !tbaa !3
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0107226
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225
  %i.pe = getelementptr i8, ptr %i.pd, i64 8
  store i32 %i.pc, ptr %i.pe, align 4, !tbaa !3
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0107226
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = getelementptr [4 x i8], ptr %i.ju, i64 %.2118225
  %i.pj = getelementptr i8, ptr %i.pi, i64 12
  store i32 %i.ph, ptr %i.pj, align 4, !tbaa !3
  %i.pk = add i64 %.2118225, 4                    ; 2 uses
  %i.pl = add nuw i64 %.0107226, 4                ; 2 uses
  %exitcond272.not.3 = icmp eq i64 %i.pl, %i.ne
  br i1 %exitcond272.not.3, label %.loopexit, label %.lr.ph227.split, !llvm.loop !102

.loopexit:                                        ; preds = %.lr.ph227.split.prol.loopexit, %.lr.ph227.split, %.lr.ph227.split.us, %middle.block404, %middle.block388, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread, %_ZNK6duckdb15SelectionVector9get_indexEm.exit166
  %.sroa.5.1 = phi i64 [ %.sroa.5.0229, %_ZNK6duckdb15SelectionVector9get_indexEm.exit166 ], [ %i.nc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread ], [ %i.nc, %middle.block388 ], [ %i.nc, %middle.block404 ], [ %i.nc, %.lr.ph227.split.us ], [ %i.nc, %.lr.ph227.split ], [ %i.nc, %.lr.ph227.split.prol.loopexit ] ; 2 uses
  %.3119 = phi i64 [ %.1117230, %_ZNK6duckdb15SelectionVector9get_indexEm.exit166 ], [ %.1117230, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit169.thread ], [ %i.oi, %middle.block388 ], [ %i.no, %middle.block404 ], [ %i.oq, %.lr.ph227.split.us ], [ %.lcssa.unr, %.lr.ph227.split.prol.loopexit ], [ %i.pk, %.lr.ph227.split ] ; 2 uses
  %i.pm = add nuw i64 %.0109231, 1                ; 2 uses
  %exitcond274.not = icmp eq i64 %i.pm, %i.jo
  br i1 %exitcond274.not, label %._crit_edge233, label %.lr.ph232.split, !llvm.loop !93

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit164, %._crit_edge233
  %.4120 = phi i64 [ %.1117.lcssa, %._crit_edge233 ], [ %.0116243, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit164 ] ; 2 uses
  %i.pn = add nuw i64 %.0115245, 1                ; 2 uses
  %exitcond279.not = icmp eq i64 %i.pn, %i.f
  br i1 %exitcond279.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %bb.am, !llvm.loop !103

bb.at:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.po = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.au unwind label %bb.ba     ; 2 uses

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.po, ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0116.lcssa)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.po, i64 noundef %.0116.lcssa)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.pp = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.pp, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ba:                                            ; preds = %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.at
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.ps = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !104 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.pv = load atomic i64, ptr %i.pu acquire, align 8 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 4294967297
  %i.px = trunc i64 %i.pv to i32                  ; 2 uses
  br i1 %i.pw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.pu, align 8, !tbaa !105
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i32 0, ptr %i.py, align 4, !tbaa !107
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !108
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #24, !inline_history !110
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !108
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #24, !inline_history !110
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.be:                                            ; preds = %bb.bc
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
end_hunk_1
