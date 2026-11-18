Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb21WindowBoundariesState10FrameBeginERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE:bb.a
  %i.jh = trunc i64 %i.jg to i1
  br i1 %i.jh, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212.thread, label %bb.av

bb.av:                                            ; preds = %.split246, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0156271
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !507
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212.thread: ; preds = %bb.au, %bb.at, %.split246, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0156271
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !507 ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0156271
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !507 ; 7 uses
  %i.jo = load ptr, ptr %i.au, align 8, !tbaa !720, !nonnull !344, !align !494
  %i.jp = load i64, ptr %i.av, align 8, !tbaa !721
  %i.jq = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 noundef %i.jp) ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jq)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !572
  %i.jt = load i8, ptr %i.aw, align 1, !tbaa !722, !range !343, !noundef !344
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = select i1 %i.ju, i64 0, i64 %.0156271
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jv
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !507 ; 4 uses
  %i.jy = icmp slt i64 %i.jx, 0
  br i1 %i.jy, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212.thread
  %i.jz = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.jz, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bl unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread: ; preds = %bb.aw
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.sink.split

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0154 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kc = load ptr, ptr %10, align 8, !tbaa !445  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.kc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0154, label %.sink.split, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0154, label %.sink.split, label %bb.bk

bb.ba:                                            ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit212.thread
  %.not194 = icmp eq i64 %i.jx, 0
  br i1 %.not194, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kf = load ptr, ptr %5, align 8, !tbaa !644   ; 2 uses
  %.not.i.i216 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i216, label %bb.bc, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.bb
  %i.kg = add i64 %i.jl, 1                        ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.jn
  br i1 %i.kh, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i221, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ki = add i64 %i.jx, %i.jl
  %i.kj = call noundef i64 @llvm.umin.i64(i64 %i.ki, i64 %i.jn)
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i221: ; preds = %.preheader40.i, %.loopexit.i223
  %.02445.i = phi i64 [ %.226.i, %.loopexit.i223 ], [ %i.kg, %.preheader40.i ] ; 6 uses
  %i.kk = phi i64 [ %i.ld, %.loopexit.i223 ], [ %i.jx, %.preheader40.i ] ; 3 uses
  %i.kl = lshr i64 %.02445.i, 6
  %i.km = and i64 %.02445.i, 63                   ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kl
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !507 ; 2 uses
  %i.kp = or i64 %i.ko, %i.km
  %or.cond.not.i = icmp eq i64 %i.kp, 0
  br i1 %or.cond.not.i, label %bb.bd, label %.preheader.i222

.preheader.i222:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i221
  %i.kq = icmp ult i64 %.02445.i, %i.jn
  br i1 %i.kq, label %.lr.ph.i224, label %.loopexit.i223

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i221
  %i.kr = add i64 %.02445.i, 64
  br label %.loopexit.i223, !llvm.loop !9

.lr.ph.i224:                                      ; preds = %.preheader.i222, %bb.bf
  %i.ks = phi i64 [ %i.kx, %bb.bf ], [ %i.kk, %.preheader.i222 ] ; 2 uses
  %.12544.i = phi i64 [ %i.kz, %bb.bf ], [ %.02445.i, %.preheader.i222 ] ; 2 uses
  %.03643.i = phi i64 [ %i.ky, %bb.bf ], [ %i.km, %.preheader.i222 ] ; 3 uses
  %i.kt = shl nuw i64 1, %.03643.i
  %i.ku = and i64 %i.kt, %i.ko
  %.not.i225 = icmp eq i64 %i.ku, 0
  br i1 %.not.i225, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i224
  %i.kv = add nsw i64 %i.ks, -1                   ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i224
  %i.kx = phi i64 [ %i.ks, %.lr.ph.i224 ], [ %i.kv, %bb.be ] ; 2 uses
  %i.ky = add nuw nsw i64 %.03643.i, 1
  %i.kz = add nuw i64 %.12544.i, 1                ; 3 uses
  %i.la = icmp samesign ult i64 %.03643.i, 63
  %i.lb = icmp ult i64 %i.kz, %i.jn
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.lr.ph.i224, label %.loopexit.i223, !llvm.loop !10

.loopexit.i223:                                   ; preds = %bb.bf, %bb.bd, %.preheader.i222
  %i.ld = phi i64 [ %i.kk, %bb.bd ], [ %i.kk, %.preheader.i222 ], [ %i.kx, %bb.bf ]
  %.226.i = phi i64 [ %i.kr, %bb.bd ], [ %.02445.i, %.preheader.i222 ], [ %i.kz, %bb.bf ] ; 2 uses
  %i.le = icmp ult i64 %.226.i, %i.jn
  br i1 %i.le, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i221, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i223, %bb.be, %bb.bc, %.preheader40.i, %bb.ba, %bb.av
  %.7 = phi i64 [ %i.jj, %bb.av ], [ %i.jl, %bb.ba ], [ %i.kj, %bb.bc ], [ %i.jn, %.preheader40.i ], [ %.12544.i, %bb.be ], [ %i.jn, %.loopexit.i223 ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0156271
  store i64 %.7, ptr %i.lf, align 8, !tbaa !507
  %i.lg = add nuw i64 %.0156271, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lg, %3
  br i1 %exitcond.not, label %.lr.ph.i230.preheader, label %bb.as, !llvm.loop !1358

bb.bg:                                            ; preds = %bb.e, %bb.e
  %i.lh = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.lh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bl unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.thread: ; preds = %bb.bg
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.sink.split

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !445  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.lk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0, label %.sink.split, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0, label %.sink.split, label %bb.bk

.loopexit:                                        ; preds = %bb.g, %bb.e
  %.0181 = phi ptr [ %i.u, %bb.e ], [ %i.l, %bb.g ]
  %.not.i229 = icmp eq i64 %3, 0
  br i1 %.not.i229, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i230.preheader

.lr.ph.i230.preheader:                            ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, %bb.ac, %bb.v, %bb.o, %bb.k, %.lr.ph296, %middle.block, %.loopexit
  %.0181366 = phi ptr [ %.0181, %.loopexit ], [ %i.u, %.lr.ph296 ], [ %i.u, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit ], [ %i.u, %middle.block ], [ %i.u, %bb.v ], [ %i.u, %bb.o ], [ %i.u, %bb.k ], [ %i.u, %bb.ac ], [ %i.u, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit ] ; 7 uses
  %min.iters.check398 = icmp ult i64 %3, 10
  br i1 %min.iters.check398, label %.lr.ph.i230.preheader415, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i230.preheader
  %i.ln = shl i64 %3, 3                           ; 3 uses
  %i.lo = getelementptr i8, ptr %.0181366, i64 %i.ln ; 2 uses
  %i.lp = getelementptr i8, ptr %i.f, i64 %i.ln
  %bound0 = icmp ult ptr %.0181366, %i.lp
  %bound0.a = icmp ult ptr %i.f, %i.lo
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = getelementptr i8, ptr %i.i, i64 %i.ln
  %bound0399 = icmp ult ptr %.0181366, %14
  %bound1400 = icmp ult ptr %i.i, %i.lo
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx = or i1 %found.conflict, %found.conflict401
  br i1 %conflict.rdx, label %.lr.ph.i230.preheader415, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck
  %n.vec403 = and i64 %3, -4                      ; 3 uses
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph402
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next411, %vector.body404 ] ; 4 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.0181366, i64 %index405 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.lq, align 8, !tbaa !507, !alias.scope !1367, !noalias !1368
  %wide.load406 = load <2 x i64>, ptr %i.lr, align 8, !tbaa !507, !alias.scope !1367, !noalias !1368
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index405 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load407 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !507, !alias.scope !1369
  %wide.load408 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !507, !alias.scope !1369
  %i.lu = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load407)
  %i.lv = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load406, <2 x i64> %wide.load408)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index405 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load409 = load <2 x i64>, ptr %i.lw, align 8, !tbaa !507, !alias.scope !1370
  %wide.load410 = load <2 x i64>, ptr %i.lx, align 8, !tbaa !507, !alias.scope !1370
  %i.ly = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.lu, <2 x i64> %wide.load409)
  %i.lz = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.lv, <2 x i64> %wide.load410)
  store <2 x i64> %i.ly, ptr %i.lq, align 8, !tbaa !507, !alias.scope !1367, !noalias !1368
  store <2 x i64> %i.lz, ptr %i.lr, align 8, !tbaa !507, !alias.scope !1367, !noalias !1368
  %index.next411 = add nuw i64 %index405, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next411, %n.vec403
  br i1 %i.ma, label %middle.block412, label %vector.body404, !llvm.loop !1363

middle.block412:                                  ; preds = %vector.body404
  %cmp.n413 = icmp eq i64 %3, %n.vec403
  br i1 %cmp.n413, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i230.preheader415

.lr.ph.i230.preheader415:                         ; preds = %vector.memcheck, %.lr.ph.i230.preheader, %middle.block412
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i230.preheader ], [ %n.vec403, %middle.block412 ] ; 6 uses
  %.neg = or disjoint i64 %.010.i.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol

.lr.ph.i230.prol:                                 ; preds = %.lr.ph.i230.preheader415
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.0181366, i64 %.010.i.ph ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !507
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.010.i.ph
  %i.me = load i64, ptr %i.md, align 8, !tbaa !507
  %i.mf = call noundef i64 @llvm.umax.i64(i64 %i.mc, i64 %i.me)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010.i.ph
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !507
  %i.mi = call noundef i64 @llvm.umin.i64(i64 %i.mf, i64 %i.mh)
  store i64 %i.mi, ptr %i.mb, align 8, !tbaa !507
  %i.mj = or disjoint i64 %.010.i.ph, 1
  br label %.lr.ph.i230.prol.loopexit

.lr.ph.i230.prol.loopexit:                        ; preds = %.lr.ph.i230.prol, %.lr.ph.i230.preheader415
  %.010.i.unr = phi i64 [ %.010.i.ph, %.lr.ph.i230.preheader415 ], [ %i.mj, %.lr.ph.i230.prol ]
  %i.mk = icmp eq i64 %3, %.neg
  br i1 %i.mk, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230
  %.010.i = phi i64 [ %i.nc, %.lr.ph.i230 ], [ %.010.i.unr, %.lr.ph.i230.prol.loopexit ] ; 5 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.0181366, i64 %.010.i ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !507
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.010.i
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !507
  %i.mp = call noundef i64 @llvm.umax.i64(i64 %i.mm, i64 %i.mo)
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010.i
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !507
  %i.ms = call noundef i64 @llvm.umin.i64(i64 %i.mp, i64 %i.mr)
  store i64 %i.ms, ptr %i.ml, align 8, !tbaa !507
  %i.mt = add nuw i64 %.010.i, 1                  ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.0181366, i64 %i.mt ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !507
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mt
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !507
  %i.my = call noundef i64 @llvm.umax.i64(i64 %i.mv, i64 %i.mx)
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.mt
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !507
  %i.nb = call noundef i64 @llvm.umin.i64(i64 %i.my, i64 %i.na)
  store i64 %i.nb, ptr %i.mu, align 8, !tbaa !507
  %i.nc = add nuw i64 %.010.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.nc, %3
  br i1 %exitcond.not.i.1, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i230, !llvm.loop !1364

_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit: ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230, %middle.block412, %.preheader, %.preheader253, %.preheader255, %.preheader257, %.preheader259, %.preheader261, %.preheader264, %.loopexit, %bb.f
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.thread ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  %.pn198.pn.ph = phi { ptr, i32 } [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.thread ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %.pn198.pn = phi { ptr, i32 } [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn198.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn198.pn

bb.bl:                                            ; preds = %bb.bi, %bb.ay, %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState8FrameEndERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) initializes((152, 168)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1387 {
bb.a:
  %7 = alloca %"class.duckdb::unique_ptr.291", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = inttoptr i64 %6 to ptr
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !572  ; 10 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !572  ; 9 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572  ; 7 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !572  ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 5) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !572  ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !572  ; 17 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !507  ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !507
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !716
  %i.y = load i64, ptr %i.r, align 8, !tbaa !507
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !717
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !684, !range !343, !noundef !344
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !685, !range !343, !noundef !344
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !701
  %.not = icmp eq ptr %i.ah, %i.c
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %6, ptr %i.ag, align 8, !tbaa !638
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @_ZNK6duckdb12optional_ptrINS_12WindowCursorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !701 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !713, !noalias !1388, !nonnull !344, !align !494
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @_ZN6duckdb9make_uniqINS_12WindowCursorEJRKNS_16WindowCollectionERKNS_6vectorImLb1ESaImEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.291") align 8 %7, ptr noundef nonnull align 8 dereferenceable(184) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !638
  store ptr null, ptr %7, align 8, !tbaa !638
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !638 ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !638
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ao) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ap) #29
  call void @_ZdlPv(ptr noundef nonnull %i.an) #30
  %.pr = load ptr, ptr %7, align 8, !tbaa !638    ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12WindowCursorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12WindowCursorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aq) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ar) #29
  call void @_ZdlPv(ptr noundef nonnull %.pr) #30
  br label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6duckdb21WindowBoundariesState8FrameEndERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE:bb.a
  %i.jj = trunc i64 %i.ji to i1
  br i1 %i.jj, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210.thread, label %bb.av

bb.av:                                            ; preds = %.split244, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0154269
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !507
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210.thread: ; preds = %bb.au, %bb.at, %.split244, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0154269
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !507 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0154269
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !507 ; 7 uses
  %i.jq = load ptr, ptr %i.au, align 8, !tbaa !720, !nonnull !344, !align !494
  %i.jr = load i64, ptr %i.av, align 8, !tbaa !721
  %i.js = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i64 noundef %i.jr) ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.js)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !572
  %i.jv = load i8, ptr %i.aw, align 1, !tbaa !722, !range !343, !noundef !344
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = select i1 %i.jw, i64 0, i64 %.0154269
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !507 ; 4 uses
  %i.ka = icmp slt i64 %i.jz, 0
  br i1 %i.ka, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210.thread
  %i.kb = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.kb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bl unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.thread: ; preds = %bb.aw
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.sink.split

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0152 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ke = load ptr, ptr %10, align 8, !tbaa !445  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.ke) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0152, label %.sink.split, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0152, label %.sink.split, label %bb.bk

bb.ba:                                            ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit210.thread
  %.not192 = icmp eq i64 %i.jz, 0
  br i1 %.not192, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kh = load ptr, ptr %5, align 8, !tbaa !644   ; 2 uses
  %.not.i.i214 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i214, label %bb.bc, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.bb
  %i.ki = add i64 %i.jn, 1                        ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.jp
  br i1 %i.kj, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i219, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.bc:                                            ; preds = %bb.bb
  %i.kk = add i64 %i.jz, %i.jn
  %i.kl = call noundef i64 @llvm.umin.i64(i64 %i.kk, i64 %i.jp)
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i219: ; preds = %.preheader40.i, %.loopexit.i221
  %.02445.i = phi i64 [ %.226.i, %.loopexit.i221 ], [ %i.ki, %.preheader40.i ] ; 6 uses
  %i.km = phi i64 [ %i.lf, %.loopexit.i221 ], [ %i.jz, %.preheader40.i ] ; 3 uses
  %i.kn = lshr i64 %.02445.i, 6
  %i.ko = and i64 %.02445.i, 63                   ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kn
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !507 ; 2 uses
  %i.kr = or i64 %i.kq, %i.ko
  %or.cond.not.i = icmp eq i64 %i.kr, 0
  br i1 %or.cond.not.i, label %bb.bd, label %.preheader.i220

.preheader.i220:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i219
  %i.ks = icmp ult i64 %.02445.i, %i.jp
  br i1 %i.ks, label %.lr.ph.i222, label %.loopexit.i221

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i219
  %i.kt = add i64 %.02445.i, 64
  br label %.loopexit.i221, !llvm.loop !9

.lr.ph.i222:                                      ; preds = %.preheader.i220, %bb.bf
  %i.ku = phi i64 [ %i.kz, %bb.bf ], [ %i.km, %.preheader.i220 ] ; 2 uses
  %.12544.i = phi i64 [ %i.lb, %bb.bf ], [ %.02445.i, %.preheader.i220 ] ; 2 uses
  %.03643.i = phi i64 [ %i.la, %bb.bf ], [ %i.ko, %.preheader.i220 ] ; 3 uses
  %i.kv = shl nuw i64 1, %.03643.i
  %i.kw = and i64 %i.kv, %i.kq
  %.not.i223 = icmp eq i64 %i.kw, 0
  br i1 %.not.i223, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i222
  %i.kx = add nsw i64 %i.ku, -1                   ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i222
  %i.kz = phi i64 [ %i.ku, %.lr.ph.i222 ], [ %i.kx, %bb.be ] ; 2 uses
  %i.la = add nuw nsw i64 %.03643.i, 1
  %i.lb = add nuw i64 %.12544.i, 1                ; 3 uses
  %i.lc = icmp samesign ult i64 %.03643.i, 63
  %i.ld = icmp ult i64 %i.lb, %i.jp
  %i.le = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %i.le, label %.lr.ph.i222, label %.loopexit.i221, !llvm.loop !10

.loopexit.i221:                                   ; preds = %bb.bf, %bb.bd, %.preheader.i220
  %i.lf = phi i64 [ %i.km, %bb.bd ], [ %i.km, %.preheader.i220 ], [ %i.kz, %bb.bf ]
  %.226.i = phi i64 [ %i.kt, %bb.bd ], [ %.02445.i, %.preheader.i220 ], [ %i.lb, %bb.bf ] ; 2 uses
  %i.lg = icmp ult i64 %.226.i, %i.jp
  br i1 %i.lg, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i219, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i221, %bb.be, %bb.bc, %.preheader40.i, %bb.ba, %bb.av
  %.7 = phi i64 [ %i.jl, %bb.av ], [ %i.jn, %bb.ba ], [ %i.kl, %bb.bc ], [ %i.jp, %.preheader40.i ], [ %.12544.i, %bb.be ], [ %i.jp, %.loopexit.i221 ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0154269
  store i64 %.7, ptr %i.lh, align 8, !tbaa !507
  %i.li = add nuw i64 %.0154269, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.li, %3
  br i1 %exitcond.not, label %.lr.ph.i228.preheader, label %bb.as, !llvm.loop !1380

bb.bg:                                            ; preds = %bb.e, %bb.e
  %i.lj = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.lj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bl unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread: ; preds = %bb.bg
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.sink.split

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lm = load ptr, ptr %12, align 8, !tbaa !445  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.lm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0, label %.sink.split, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0, label %.sink.split, label %bb.bk

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.0179 = phi ptr [ %i.u, %bb.e ], [ %i.l, %bb.f ]
  %.not.i227 = icmp eq i64 %3, 0
  br i1 %.not.i227, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, %bb.ac, %bb.v, %bb.o, %bb.k, %.lr.ph294, %middle.block, %.loopexit
  %.0179364 = phi ptr [ %.0179, %.loopexit ], [ %i.u, %.lr.ph294 ], [ %i.u, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit ], [ %i.u, %middle.block ], [ %i.u, %bb.v ], [ %i.u, %bb.o ], [ %i.u, %bb.k ], [ %i.u, %bb.ac ], [ %i.u, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit ] ; 7 uses
  %min.iters.check396 = icmp ult i64 %3, 10
  br i1 %min.iters.check396, label %.lr.ph.i228.preheader413, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i228.preheader
  %i.lp = shl i64 %3, 3                           ; 3 uses
  %i.lq = getelementptr i8, ptr %.0179364, i64 %i.lp ; 2 uses
  %i.lr = getelementptr i8, ptr %i.f, i64 %i.lp
  %bound0 = icmp ult ptr %.0179364, %i.lr
  %bound0.a = icmp ult ptr %i.f, %i.lq
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = getelementptr i8, ptr %i.i, i64 %i.lp
  %bound0397 = icmp ult ptr %.0179364, %14
  %bound1398 = icmp ult ptr %i.i, %i.lq
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx = or i1 %found.conflict, %found.conflict399
  br i1 %conflict.rdx, label %.lr.ph.i228.preheader413, label %vector.ph400

vector.ph400:                                     ; preds = %vector.memcheck
  %n.vec401 = and i64 %3, -4                      ; 3 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next409, %vector.body402 ] ; 4 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.0179364, i64 %index403 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ls, align 8, !tbaa !507, !alias.scope !1389, !noalias !1390
  %wide.load404 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !507, !alias.scope !1389, !noalias !1390
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index403 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load405 = load <2 x i64>, ptr %i.lu, align 8, !tbaa !507, !alias.scope !1391
  %wide.load406 = load <2 x i64>, ptr %i.lv, align 8, !tbaa !507, !alias.scope !1391
  %i.lw = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load405)
  %i.lx = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load404, <2 x i64> %wide.load406)
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index403 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load407 = load <2 x i64>, ptr %i.ly, align 8, !tbaa !507, !alias.scope !1392
  %wide.load408 = load <2 x i64>, ptr %i.lz, align 8, !tbaa !507, !alias.scope !1392
  %i.ma = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.lw, <2 x i64> %wide.load407)
  %i.mb = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.lx, <2 x i64> %wide.load408)
  store <2 x i64> %i.ma, ptr %i.ls, align 8, !tbaa !507, !alias.scope !1389, !noalias !1390
  store <2 x i64> %i.mb, ptr %i.lt, align 8, !tbaa !507, !alias.scope !1389, !noalias !1390
  %index.next409 = add nuw i64 %index403, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next409, %n.vec401
  br i1 %i.mc, label %middle.block410, label %vector.body402, !llvm.loop !1385

middle.block410:                                  ; preds = %vector.body402
  %cmp.n411 = icmp eq i64 %3, %n.vec401
  br i1 %cmp.n411, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i228.preheader413

.lr.ph.i228.preheader413:                         ; preds = %vector.memcheck, %.lr.ph.i228.preheader, %middle.block410
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i228.preheader ], [ %n.vec401, %middle.block410 ] ; 6 uses
  %.neg = or disjoint i64 %.010.i.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader413
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.0179364, i64 %.010.i.ph ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !507
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.010.i.ph
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !507
  %i.mh = call noundef i64 @llvm.umax.i64(i64 %i.me, i64 %i.mg)
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010.i.ph
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !507
  %i.mk = call noundef i64 @llvm.umin.i64(i64 %i.mh, i64 %i.mj)
  store i64 %i.mk, ptr %i.md, align 8, !tbaa !507
  %i.ml = or disjoint i64 %.010.i.ph, 1
  br label %.lr.ph.i228.prol.loopexit

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader413
  %.010.i.unr = phi i64 [ %.010.i.ph, %.lr.ph.i228.preheader413 ], [ %i.ml, %.lr.ph.i228.prol ]
  %i.mm = icmp eq i64 %3, %.neg
  br i1 %i.mm, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.010.i = phi i64 [ %i.ne, %.lr.ph.i228 ], [ %.010.i.unr, %.lr.ph.i228.prol.loopexit ] ; 5 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.0179364, i64 %.010.i ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !507
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.010.i
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !507
  %i.mr = call noundef i64 @llvm.umax.i64(i64 %i.mo, i64 %i.mq)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010.i
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !507
  %i.mu = call noundef i64 @llvm.umin.i64(i64 %i.mr, i64 %i.mt)
  store i64 %i.mu, ptr %i.mn, align 8, !tbaa !507
  %i.mv = add nuw i64 %.010.i, 1                  ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.0179364, i64 %i.mv ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !507
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mv
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !507
  %i.na = call noundef i64 @llvm.umax.i64(i64 %i.mx, i64 %i.mz)
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.mv
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !507
  %i.nd = call noundef i64 @llvm.umin.i64(i64 %i.na, i64 %i.nc)
  store i64 %i.nd, ptr %i.mw, align 8, !tbaa !507
  %i.ne = add nuw i64 %.010.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ne, %3
  br i1 %exitcond.not.i.1, label %_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit, label %.lr.ph.i228, !llvm.loop !1386

_ZN6duckdb21WindowBoundariesState10ClampFrameEmPmPKmS3_.exit: ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %middle.block410, %.preheader, %.preheader251, %.preheader253, %.preheader255, %.preheader257, %.preheader259, %.preheader262, %.loopexit, %bb.g
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.thread ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ]
  %.pn196.pn.ph = phi { ptr, i32 } [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.thread ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %.pn196.pn = phi { ptr, i32 } [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn196.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn196.pn

bb.bl:                                            ; preds = %bb.bi, %bb.ay, %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1393 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !723
  %i.e = load ptr, ptr %0, align 8, !tbaa !724    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !507
  store i64 %i.i, ptr %i.b, align 8, !tbaa !507
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !508

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !445    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN6duckdbL21FindOrderedRangeBoundILb1EEEmRNS_12WindowCursorES2_NS_9OrderTypeEmmNS_14WindowBoundaryERNS_21WindowInputExpressionEmRKNS_11FrameBoundsE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !1394 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  switch i8 %2, label %bb.d [
    i8 2, label %bb.b
end_hunk_1
