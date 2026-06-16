inline.NumInlined: 2838
inline.NumDeleted: 1070
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_118ListSelectFunctionINS0_24SetSelectionVectorSelectEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not.i121, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit120
  %i.al = lshr i64 %i.ad, 6
  %i.am = and i64 %i.ad, 63
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !104
  %i.ap = shl nuw i64 1, %i.am
  %i.aq = and i64 %i.ao, %i.ap
  %.not185 = icmp eq i64 %i.aq, 0
  br i1 %.not185, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit120, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !103 ; 2 uses
  %.not.i122 = icmp eq ptr %i.ar, null
  br i1 %.not.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.as = lshr i64 %i.aj, 6
  %i.at = and i64 %i.aj, 63
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.av = load i64, ptr %i.au, align 8, !tbaa !104
  %i.aw = shl nuw i64 1, %i.at
  %i.ax = and i64 %i.av, %i.aw
  %.not186 = icmp eq i64 %i.ax, 0
  br i1 %.not186, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.aj
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !218
  %i.bb = add i64 %i.ba, %.0175198
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #20
  %.pre = load ptr, ptr %5, align 8, !tbaa !101
  br label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.w:                                             ; preds = %bb.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bd = phi ptr [ %.pre, %bb.u ], [ %i.y, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124 ], [ %i.y, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %.1176 = phi i64 [ %i.bb, %bb.u ], [ %.0175198, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124 ], [ %.0175198, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.be = add nuw i64 %.095199, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !364

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0175.lcssa)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bf) #20
  br label %.body

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false)
  store i64 %.0175.lcssa, ptr %i.bh, align 8, !tbaa !118
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  br i1 %.not211, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.ad

._crit_edge209:                                   ; preds = %bb.bc, %bb.aa
  %.0173.lcssa = phi i64 [ 0, %bb.aa ], [ %.2, %bb.bc ] ; 3 uses
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0173.lcssa)
          to label %bb.bd unwind label %bb.dd

bb.ab:                                            ; preds = %._crit_edge
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ac:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ad:                                            ; preds = %.lr.ph208, %bb.bc
  %.094206 = phi i64 [ 0, %.lr.ph208 ], [ %i.fj, %bb.bc ] ; 10 uses
  %.0173205 = phi i64 [ 0, %.lr.ph208 ], [ %.2, %bb.bc ] ; 6 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !101
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !102 ; 2 uses
  %.not.i126 = icmp eq ptr %i.bq, null
  br i1 %.not.i126, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit127, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.094206
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit127

_ZNK6duckdb15SelectionVector9get_indexEm.exit127: ; preds = %bb.ae, %bb.ad
  %i.bu = phi i64 [ %i.bt, %bb.ae ], [ %.094206, %bb.ad ] ; 3 uses
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !103 ; 2 uses
  %.not.i128 = icmp eq ptr %i.bv, null
  br i1 %.not.i128, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit127
  %i.bw = lshr i64 %i.bu, 6
  %i.bx = and i64 %i.bu, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !104
  %i.ca = shl nuw i64 1, %i.bx
  %i.cb = and i64 %i.bz, %i.ca
  %.not = icmp eq i64 %i.cb, 0
  br i1 %.not, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit127, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.bu ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !218 ; 2 uses
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !221
  %i.cg = load ptr, ptr %5, align 8, !tbaa !101
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 2 uses
  %.not.i131 = icmp eq ptr %i.ch, null
  br i1 %.not.i131, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit132, label %bb.af

bb.af:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.094206
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit132

bb.ag:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !103 ; 2 uses
  %.not.i133 = icmp eq ptr %i.cm, null
  br i1 %.not.i133, label %bb.ai, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load i64, ptr %i.bk, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.cn)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.ai
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ah, %.noexc
  %i.co = phi ptr [ %.pre.i, %.noexc ], [ %i.cm, %bb.ah ]
  %i.cp = lshr i64 %.094206, 6
  %i.cq = and i64 %.094206, 63
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = xor i64 %i.cr, -1
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !104
  %i.cv = and i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !104
  br label %bb.bc

_ZNK6duckdb15SelectionVector9get_indexEm.exit132: ; preds = %bb.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread
  %i.cw = phi i64 [ %i.ck, %bb.af ], [ %.094206, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread ] ; 3 uses
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !103 ; 2 uses
  %.not.i134 = icmp eq ptr %i.cx, null
  br i1 %.not.i134, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit132
  %i.cy = lshr i64 %i.cw, 6
  %i.cz = and i64 %i.cw, 63
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !104
  %i.dc = shl nuw i64 1, %i.cz
  %i.dd = and i64 %i.db, %i.dc
  %.not184 = icmp eq i64 %i.dd, 0
  br i1 %.not184, label %bb.ak, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit132, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.cw ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !218
  %i.dh = load i64, ptr %i.de, align 8, !tbaa !221
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.094206 ; 3 uses
  store i64 %.0173205, ptr %i.di, align 8, !tbaa !221
  %.not213 = icmp eq i64 %i.ce, 0
  br i1 %.not213, label %._crit_edge203, label %bb.am

bb.aj:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ak:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136
  %i.dk = load ptr, ptr %i.bi, align 8, !tbaa !103 ; 2 uses
  %.not.i137 = icmp eq ptr %i.dk, null
  br i1 %.not.i137, label %bb.al, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140

bb.al:                                            ; preds = %bb.ak
  %i.dl = load i64, ptr %i.bk, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.dl)
          to label %.noexc139 unwind label %bb.aj

.noexc139:                                        ; preds = %bb.al
  %.pre.i138 = load ptr, ptr %i.bi, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140: ; preds = %bb.ak, %.noexc139
  %i.dm = phi ptr [ %.pre.i138, %.noexc139 ], [ %i.dk, %bb.ak ]
  %i.dn = lshr i64 %.094206, 6
  %i.do = and i64 %.094206, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = xor i64 %i.dp, -1
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !104
  %i.dt = and i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !104
  br label %bb.bc

._crit_edge203.loopexit:                          ; preds = %bb.ba
  %.pre217 = load i64, ptr %i.di, align 8, !tbaa !221
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %._crit_edge203.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread
  %i.du = phi i64 [ %.0173205, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ], [ %.pre217, %._crit_edge203.loopexit ]
  %.1174.lcssa = phi i64 [ %.0173205, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ], [ %i.fg, %._crit_edge203.loopexit ] ; 2 uses
  %i.dv = sub i64 %.1174.lcssa, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !218
  br label %bb.bc

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread, %bb.ba
  %.071201 = phi i64 [ %i.fh, %bb.ba ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ] ; 2 uses
  %.1174200 = phi i64 [ %i.fg, %bb.ba ], [ %.0173205, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dx = add i64 %.071201, %i.cf                 ; 2 uses
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.dx)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.dy = load i8, ptr %i.bm, align 8, !tbaa !354, !range !273, !noundef !200
  %i.dz = trunc nuw i8 %i.dy to i1
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %i.dz, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ea = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.dh unwind label %bb.as

bb.ar:                                            ; preds = %bb.am
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ao
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.at

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.0 = phi i1 [ false, %bb.aq ], [ true, %bb.ap ] ; 2 uses
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ee = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ee) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.at, label %.body143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.at, label %.body143

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn183 = phi { ptr, i32 } [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ea) #20
  br label %.body143

bb.au:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.dx)
          to label %.noexc142 unwind label %bb.bb

.noexc142:                                        ; preds = %bb.au
  %i.eh = invoke noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.av unwind label %bb.ay     ; 2 uses

bb.av:                                            ; preds = %.noexc142
  %12 = add nsw i64 %i.eh, -1                     ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %13 = icmp sgt i64 %i.eh, 0
  %14 = icmp slt i64 %12, %i.dg
  %or.cond.i = select i1 %13, i1 %14, i1 false
  br i1 %or.cond.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ei = add i64 %12, %i.dh                      ; 3 uses
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load ptr, ptr %7, align 8, !tbaa !102
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.1174200
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !3
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %.not.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i, label %bb.ba, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.aw
  %i.en = lshr i64 %i.ei, 6
  %i.eo = and i64 %i.ei, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !104
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.not27.i = icmp eq i64 %i.es, 0
  br i1 %.not27.i, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.et = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %.not.i22.i = icmp eq ptr %i.et, null
  br i1 %.not.i22.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.sink.split.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.i

bb.ay:                                            ; preds = %.noexc142
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body143

bb.az:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %7, align 8, !tbaa !102
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.1174200
  store i32 0, ptr %i.ew, align 4, !tbaa !3
  %i.ex = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.sink.split.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.sink.split.i: ; preds = %bb.az, %bb.ax
  %i.ey = load i64, ptr %i.bh, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ey)
          to label %.noexc145 unwind label %bb.bb

.noexc145:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.sink.split.i
  %.pre.i24.i = load ptr, ptr %8, align 8, !tbaa !103
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.i: ; preds = %.noexc145, %bb.az, %bb.ax
  %.sink34.i = phi ptr [ %i.et, %bb.ax ], [ %i.ex, %bb.az ], [ %.pre.i24.i, %.noexc145 ]
  %i.ez = lshr i64 %.1174200, 6
  %i.fa = and i64 %.1174200, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = xor i64 %i.fb, -1
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sink34.i, i64 %i.ez ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !104
  %i.ff = and i64 %i.fe, %i.fc
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !104
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.aw
  %i.fg = add i64 %.1174200, 1                    ; 2 uses
  %i.fh = add nuw i64 %.071201, 1                 ; 2 uses
  %exitcond214.not = icmp eq i64 %i.fh, %i.ce
  br i1 %exitcond214.not, label %._crit_edge203.loopexit, label %bb.am, !llvm.loop !365

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.sink.split.sink.split.i, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.bc:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %._crit_edge203
  %.2 = phi i64 [ %.1174.lcssa, %._crit_edge203 ], [ %.0173205, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140 ], [ %.0173205, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.fj = add nuw i64 %.094206, 1                 ; 2 uses
  %exitcond215.not = icmp eq i64 %i.fj, %i.d
  br i1 %exitcond215.not, label %._crit_edge209, label %bb.ad, !llvm.loop !366

bb.bd:                                            ; preds = %._crit_edge209
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 noundef %.0173.lcssa)
          to label %bb.be unwind label %bb.dd

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0173.lcssa)
          to label %bb.bf unwind label %bb.dd

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %.noexc146 unwind label %bb.dd

.noexc146:                                        ; preds = %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.fl = load ptr, ptr %8, align 8, !tbaa !103
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !103
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.fn = icmp eq ptr %i.fk, %8
  br i1 %i.fn, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %.noexc146
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !66 ; 2 uses
  %i.fr = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !20
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.fs, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fw = atomicrmw volatile add ptr %i.fs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bg
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !66 ; 8 uses
  store <2 x ptr> %i.fr, ptr %i.fm, align 8, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.fz, align 8, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !69
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #20, !inline_history !233
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #20, !inline_history !233
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gc, %bb.bn ], [ %i.gm, %bb.bo ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gn, label %bb.bp, label %bb.bq, !prof !71

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bl, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, %.noexc146
  %i.go = load i64, ptr %i.bh, align 8, !tbaa !118
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !118
  %i.gq = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.br unwind label %bb.dd

bb.br:                                            ; preds = %bb.bq
  %i.gr = select i1 %i.gq, i8 2, i8 0
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %i.gr)
          to label %bb.bs unwind label %bb.dd

bb.bs:                                            ; preds = %bb.br
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4294967297
  %i.gx = trunc i64 %i.gv to i32                  ; 2 uses
  br i1 %i.gw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.gu, align 8, !tbaa !67
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !69
end_hunk_0
