inline.NumInlined: 3036
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m:bb.a
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !48
  store i8 %i.ao, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ar) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %bb.p, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %bb.p, label %common.resume.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.an) #22
  br label %common.resume.i

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !183 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !181, !noalias !196 ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i39.i, label %.preheader.i.i, label %bb.r

.preheader.i.i:                                   ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %.not72.i.i = icmp eq i64 %4, 0
  br i1 %.not72.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph70.i.i.preheader

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter69 = and i64 %4, 1
  %i.ax = icmp eq i64 %4, 1
  br i1 %i.ax, label %.lr.ph70.i.i.epil.preheader, label %.lr.ph70.i.i.preheader.new

.lr.ph70.i.i.preheader.new:                       ; preds = %.lr.ph70.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph70.i.i

bb.r:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %i.ay = add i64 %4, 63
  %i.az = lshr i64 %i.ay, 6                       ; 2 uses
  %.not71.i.i = icmp eq i64 %i.az, 0
  br i1 %.not71.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %bb.r, %.loopexit59.i.i
  %.068.i.i = phi i64 [ %i.cr, %.loopexit59.i.i ], [ 0, %bb.r ] ; 2 uses
  %.sroa.450.067.i.i = phi i64 [ %.sroa.450.3.i.i, %.loopexit59.i.i ], [ 0, %bb.r ] ; 13 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.068.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !58, !noalias !196 ; 2 uses
  %i.bc = add i64 %.sroa.450.067.i.i, 64
  %i.bd = tail call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %4) ; 10 uses
  switch i64 %i.bb, label %.preheader58.i.i [
    i64 -1, label %.preheader60.i.i
    i64 0, label %.loopexit59.i.i
  ]

.preheader60.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.be = icmp ult i64 %.sroa.450.067.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.preheader, label %.loopexit59.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader60.i.i
  %i.bf = sub nuw i64 %i.bd, %.sroa.450.067.i.i
  %.neg = add i64 %.sroa.450.067.i.i, 1
  %xtraiter = and i64 %i.bf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.067.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.sroa.450.067.i.i
  %.val43.i.i.prol = load i16, ptr %i.bi, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.bj = sext i16 %.val43.i.i.prol to i64
  %i.bk = load <2 x i64>, ptr %i.bh, align 8, !tbaa !58, !noalias !196
  %i.bl = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bj, i64 1
  %i.bm = add <2 x i64> %i.bk, %i.bl
  store <2 x i64> %i.bm, ptr %i.bh, align 8, !tbaa !58, !noalias !196
  %i.bn = add nuw i64 %.sroa.450.067.i.i, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.450.163.i.i.unr = phi i64 [ %.sroa.450.067.i.i, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = icmp eq i64 %i.bd, %.neg
  br i1 %i.bo, label %.loopexit59.i.i, label %.lr.ph.i.i

.preheader58.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bp = icmp ult i64 %.sroa.450.067.i.i, %i.bd
  br i1 %i.bp, label %.lr.ph65.i.i, label %.loopexit59.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.450.163.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.sroa.450.163.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.163.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.sroa.450.163.i.i
  %.val43.i.i = load i16, ptr %i.bs, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.bt = sext i16 %.val43.i.i to i64
  %i.bu = load <2 x i64>, ptr %i.br, align 8, !tbaa !58, !noalias !196
  %i.bv = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bt, i64 1
  %i.bw = add <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.br, align 8, !tbaa !58, !noalias !196
  %i.bx = add nuw i64 %.sroa.450.163.i.i, 1       ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bx
  %.val43.i.i.1 = load i16, ptr %i.ca, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.cb = sext i16 %.val43.i.i.1 to i64
  %i.cc = load <2 x i64>, ptr %i.bz, align 8, !tbaa !58, !noalias !196
  %i.cd = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.cb, i64 1
  %i.ce = add <2 x i64> %i.cc, %i.cd
  store <2 x i64> %i.ce, ptr %i.bz, align 8, !tbaa !58, !noalias !196
  %i.cf = add nuw i64 %.sroa.450.163.i.i, 2       ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cf, %i.bd
  br i1 %exitcond.not.i.i.1, label %.loopexit59.i.i, label %.lr.ph.i.i, !llvm.loop !197

.lr.ph65.i.i:                                     ; preds = %.preheader58.i.i, %bb.t
  %.sroa.450.264.i.i = phi i64 [ %i.cq, %bb.t ], [ %.sroa.450.067.i.i, %.preheader58.i.i ] ; 4 uses
  %i.cg = sub nuw i64 %.sroa.450.264.i.i, %.sroa.450.067.i.i
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.bb
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph65.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.264.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.sroa.450.264.i.i
  %.val42.i.i = load i16, ptr %i.cl, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.cm = sext i16 %.val42.i.i to i64
  %i.cn = load <2 x i64>, ptr %i.ck, align 8, !tbaa !58, !noalias !196
  %i.co = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.cm, i64 1
  %i.cp = add <2 x i64> %i.cn, %i.co
  store <2 x i64> %i.cp, ptr %i.ck, align 8, !tbaa !58, !noalias !196
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph65.i.i
  %i.cq = add nuw i64 %.sroa.450.264.i.i, 1       ; 2 uses
  %exitcond76.not.i.i = icmp eq i64 %i.cq, %i.bd
  br i1 %exitcond76.not.i.i, label %.loopexit59.i.i, label %.lr.ph65.i.i, !llvm.loop !198

.loopexit59.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.t, %.preheader58.i.i, %.preheader60.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.450.3.i.i = phi i64 [ %i.bd, %bb.t ], [ %i.bd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.450.067.i.i, %.preheader58.i.i ], [ %.sroa.450.067.i.i, %.preheader60.i.i ], [ %i.bd, %.lr.ph.i.i ], [ %i.bd, %.lr.ph.i.i.prol.loopexit ]
  %i.cr = add nuw nsw i64 %.068.i.i, 1            ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %i.cr, %i.az
  br i1 %exitcond77.not.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !199

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i, %.lr.ph70.i.i.preheader.new
  %storemerge69.i.i = phi i64 [ 0, %.lr.ph70.i.i.preheader.new ], [ %i.dh, %.lr.ph70.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph70.i.i.preheader.new ], [ %niter.next.1, %.lr.ph70.i.i ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %storemerge69.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %storemerge69.i.i
  %.val.i40.i = load i16, ptr %i.cu, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.cv = sext i16 %.val.i40.i to i64
  %i.cw = load <2 x i64>, ptr %i.ct, align 8, !tbaa !58, !noalias !196
  %i.cx = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.cv, i64 1
  %i.cy = add <2 x i64> %i.cw, %i.cx
  store <2 x i64> %i.cy, ptr %i.ct, align 8, !tbaa !58, !noalias !196
  %i.cz = or disjoint i64 %storemerge69.i.i, 1    ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.cz
  %.val.i40.i.1 = load i16, ptr %i.dc, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.dd = sext i16 %.val.i40.i.1 to i64
  %i.de = load <2 x i64>, ptr %i.db, align 8, !tbaa !58, !noalias !196
  %i.df = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.dd, i64 1
  %i.dg = add <2 x i64> %i.de, %i.df
  store <2 x i64> %i.dg, ptr %i.db, align 8, !tbaa !58, !noalias !196
  %i.dh = add nuw i64 %storemerge69.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph70.i.i, !llvm.loop !200

.thread.i:                                        ; preds = %bb.j, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %.thread.i
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %9, align 8, !tbaa !201
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !210
  %.not.i = icmp eq ptr %i.dj, null
  %i.dk = load ptr, ptr %10, align 8, !tbaa !201
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !210
  %.not85.i = icmp eq ptr %i.dl, null             ; 2 uses
  br i1 %.not.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not85.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !211 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !211 ; 4 uses
  %i.dq = load ptr, ptr %9, align 8, !tbaa !201
  %i.dr = load ptr, ptr %10, align 8, !tbaa !201
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val34.i = load ptr, ptr %i.dq, align 8        ; 4 uses
  %.val35.i = load ptr, ptr %i.dr, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !181, !noalias !217 ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.dt, null
  %.not13.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i41.i, label %.preheader.i45.i, label %.preheader7.i.i

.preheader7.i.i:                                  ; preds = %bb.z
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i42.i

.preheader.i45.i:                                 ; preds = %bb.z
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph11.i.i.preheader

.lr.ph11.i.i.preheader:                           ; preds = %.preheader.i45.i
  %xtraiter72 = and i64 %4, 1
  %i.du = icmp eq i64 %4, 1
  br i1 %i.du, label %.lr.ph11.i.i.epil.preheader, label %.lr.ph11.i.i.preheader.new

.lr.ph11.i.i.preheader.new:                       ; preds = %.lr.ph11.i.i.preheader
  %unroll_iter75 = and i64 %4, -2
  br label %.lr.ph11.i.i

.lr.ph.i42.i:                                     ; preds = %.preheader7.i.i, %bb.ab
  %.09.i.i = phi i64 [ %i.eo, %bb.ab ], [ 0, %.preheader7.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.09.i.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3, !noalias !217
  %i.dx = zext i32 %i.dw to i64                   ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = and i64 %i.dx, 63
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !58, !noalias !217
  %i.ec = shl nuw i64 1, %i.dz
  %i.ed = and i64 %i.ec, %i.eb
  %.not.i43.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i43.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i42.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.09.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !217
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !184, !alias.scope !215, !noalias !212 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dx
  %.val26.i.i = load i16, ptr %i.ej, align 2, !tbaa !186, !alias.scope !212, !noalias !215
  %i.ek = sext i16 %.val26.i.i to i64
  %i.el = load <2 x i64>, ptr %i.ei, align 8, !tbaa !58, !noalias !217
  %i.em = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ek, i64 1
  %i.en = add <2 x i64> %i.el, %i.em
  store <2 x i64> %i.en, ptr %i.ei, align 8, !tbaa !58, !noalias !217
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i42.i
  %i.eo = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.eo, %4
  br i1 %exitcond.not.i44.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i42.i, !llvm.loop !218

.lr.ph11.i.i:                                     ; preds = %.lr.ph11.i.i, %.lr.ph11.i.i.preheader.new
  %.02510.i.i = phi i64 [ 0, %.lr.ph11.i.i.preheader.new ], [ %i.fq, %.lr.ph11.i.i ] ; 4 uses
  %niter76 = phi i64 [ 0, %.lr.ph11.i.i.preheader.new ], [ %niter76.next.1, %.lr.ph11.i.i ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.02510.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !217
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.02510.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3, !noalias !217
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !184, !alias.scope !215, !noalias !212 ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.er
  %.val.i46.i = load i16, ptr %i.ex, align 2, !tbaa !186, !alias.scope !212, !noalias !215
  %i.ey = sext i16 %.val.i46.i to i64
  %i.ez = load <2 x i64>, ptr %i.ew, align 8, !tbaa !58, !noalias !217
  %i.fa = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ey, i64 1
  %i.fb = add <2 x i64> %i.ez, %i.fa
  store <2 x i64> %i.fb, ptr %i.ew, align 8, !tbaa !58, !noalias !217
  %i.fc = or disjoint i64 %.02510.i.i, 1          ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3, !noalias !217
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %i.fc
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !217
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !184, !alias.scope !215, !noalias !212 ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ff
  %.val.i46.i.1 = load i16, ptr %i.fl, align 2, !tbaa !186, !alias.scope !212, !noalias !215
  %i.fm = sext i16 %.val.i46.i.1 to i64
  %i.fn = load <2 x i64>, ptr %i.fk, align 8, !tbaa !58, !noalias !217
  %i.fo = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.fm, i64 1
  %i.fp = add <2 x i64> %i.fn, %i.fo
  store <2 x i64> %i.fp, ptr %i.fk, align 8, !tbaa !58, !noalias !217
  %i.fq = add nuw i64 %.02510.i.i, 2              ; 2 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, label %.lr.ph11.i.i, !llvm.loop !219

bb.ac:                                            ; preds = %.thread.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.an, %bb.aj, %bb.ae, %bb.y, %bb.v, %bb.u
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #22
  br label %bb.bp

bb.ae:                                            ; preds = %bb.x
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !211 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !211 ; 4 uses
  %i.fx = load ptr, ptr %9, align 8, !tbaa !201
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val36.i = load ptr, ptr %i.fx, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !181, !noalias !225 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.fz, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i48.i, label %.preheader.i52.i, label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %bb.af
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i49.i

.preheader.i52.i:                                 ; preds = %bb.af
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i.i.preheader

.lr.ph8.i.i.preheader:                            ; preds = %.preheader.i52.i
  %xtraiter77 = and i64 %4, 1
  %i.ga = icmp eq i64 %4, 1
  br i1 %i.ga, label %.lr.ph8.i.i.epil.preheader, label %.lr.ph8.i.i.preheader.new

.lr.ph8.i.i.preheader.new:                        ; preds = %.lr.ph8.i.i.preheader
  %unroll_iter80 = and i64 %4, -2
  br label %.lr.ph8.i.i

.lr.ph.i49.i:                                     ; preds = %.preheader4.i.i, %bb.ah
  %.06.i.i = phi i64 [ %i.gr, %bb.ah ], [ 0, %.preheader4.i.i ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.06.i.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3, !noalias !225
  %i.gd = zext i32 %i.gc to i64                   ; 3 uses
  %i.ge = lshr i64 %i.gd, 6
  %i.gf = and i64 %i.gd, 63
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ge
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !58, !noalias !225
  %i.gi = shl nuw i64 1, %i.gf
  %i.gj = and i64 %i.gi, %i.gh
  %.not.i50.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i50.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i49.i
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.06.i.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !184, !alias.scope !223, !noalias !220 ; 2 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.gd
  %.val24.i.i = load i16, ptr %i.gm, align 2, !tbaa !186, !alias.scope !220, !noalias !223
  %i.gn = sext i16 %.val24.i.i to i64
  %i.go = load <2 x i64>, ptr %i.gl, align 8, !tbaa !58, !noalias !225
  %i.gp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.gn, i64 1
  %i.gq = add <2 x i64> %i.go, %i.gp
  store <2 x i64> %i.gq, ptr %i.gl, align 8, !tbaa !58, !noalias !225
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i49.i
  %i.gr = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i51.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i49.i, !llvm.loop !226

.lr.ph8.i.i:                                      ; preds = %.lr.ph8.i.i, %.lr.ph8.i.i.preheader.new
  %.0237.i.i = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %i.hn, %.lr.ph8.i.i ] ; 4 uses
  %niter81 = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %niter81.next.1, %.lr.ph8.i.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.0237.i.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !225
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.0237.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !184, !alias.scope !223, !noalias !220 ; 2 uses
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.gu
  %.val.i53.i = load i16, ptr %i.gx, align 2, !tbaa !186, !alias.scope !220, !noalias !223
  %i.gy = sext i16 %.val.i53.i to i64
  %i.gz = load <2 x i64>, ptr %i.gw, align 8, !tbaa !58, !noalias !225
  %i.ha = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.gy, i64 1
  %i.hb = add <2 x i64> %i.gz, %i.ha
  store <2 x i64> %i.hb, ptr %i.gw, align 8, !tbaa !58, !noalias !225
  %i.hc = or disjoint i64 %.0237.i.i, 1           ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !225
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.hc
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !184, !alias.scope !223, !noalias !220 ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.hf
  %.val.i53.i.1 = load i16, ptr %i.hi, align 2, !tbaa !186, !alias.scope !220, !noalias !223
  %i.hj = sext i16 %.val.i53.i.1 to i64
  %i.hk = load <2 x i64>, ptr %i.hh, align 8, !tbaa !58, !noalias !225
  %i.hl = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.hj, i64 1
  %i.hm = add <2 x i64> %i.hk, %i.hl
  store <2 x i64> %i.hm, ptr %i.hh, align 8, !tbaa !58, !noalias !225
  %i.hn = add nuw i64 %.0237.i.i, 2               ; 2 uses
  %niter81.next.1 = add nuw i64 %niter81, 2       ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, label %.lr.ph8.i.i, !llvm.loop !227

bb.ai:                                            ; preds = %bb.w
  br i1 %.not85.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ak unwind label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !211 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !211 ; 4 uses
  %i.hs = load ptr, ptr %10, align 8, !tbaa !201
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val37.i = load ptr, ptr %i.hs, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !181, !noalias !233 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %i.hu, null
  %.not11.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i55.i, label %.preheader.i60.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.ak
  br i1 %.not11.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i56.i

.preheader.i60.i:                                 ; preds = %bb.ak
  br i1 %.not11.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph9.i.i.preheader

.lr.ph9.i.i.preheader:                            ; preds = %.preheader.i60.i
  %xtraiter82 = and i64 %4, 1
  %i.hv = icmp eq i64 %4, 1
  br i1 %i.hv, label %.lr.ph9.i.i.epil.preheader, label %.lr.ph9.i.i.preheader.new

.lr.ph9.i.i.preheader.new:                        ; preds = %.lr.ph9.i.i.preheader
  %unroll_iter85 = and i64 %4, -2
  br label %.lr.ph9.i.i

.lr.ph.i56.i:                                     ; preds = %.preheader5.i.i, %bb.am
  %.07.i.i = phi i64 [ %i.im, %bb.am ], [ 0, %.preheader5.i.i ] ; 5 uses
  %i.hw = lshr i64 %.07.i.i, 6
  %i.hx = and i64 %.07.i.i, 63
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hw
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !58, !noalias !233
  %i.ia = shl nuw i64 1, %i.hx
  %i.ib = and i64 %i.ia, %i.hz
  %.not.i57.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i57.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i56.i
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.07.i.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !233
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !184, !alias.scope !231, !noalias !228 ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.07.i.i
  %.val24.i58.i = load i16, ptr %i.ih, align 2, !tbaa !186, !alias.scope !228, !noalias !231
  %i.ii = sext i16 %.val24.i58.i to i64
  %i.ij = load <2 x i64>, ptr %i.ig, align 8, !tbaa !58, !noalias !233
  %i.ik = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ii, i64 1
  %i.il = add <2 x i64> %i.ij, %i.ik
  store <2 x i64> %i.il, ptr %i.ig, align 8, !tbaa !58, !noalias !233
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i56.i
  %i.im = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %exitcond.not.i59.i = icmp eq i64 %i.im, %4
  br i1 %exitcond.not.i59.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i56.i, !llvm.loop !234

.lr.ph9.i.i:                                      ; preds = %.lr.ph9.i.i, %.lr.ph9.i.i.preheader.new
  %.0238.i.i = phi i64 [ 0, %.lr.ph9.i.i.preheader.new ], [ %i.ji, %.lr.ph9.i.i ] ; 4 uses
  %niter86 = phi i64 [ 0, %.lr.ph9.i.i.preheader.new ], [ %niter86.next.1, %.lr.ph9.i.i ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.0238.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3, !noalias !233
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !184, !alias.scope !231, !noalias !228 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.0238.i.i
  %.val.i61.i = load i16, ptr %i.is, align 2, !tbaa !186, !alias.scope !228, !noalias !231
  %i.it = sext i16 %.val.i61.i to i64
  %i.iu = load <2 x i64>, ptr %i.ir, align 8, !tbaa !58, !noalias !233
  %i.iv = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.it, i64 1
  %i.iw = add <2 x i64> %i.iu, %i.iv
  store <2 x i64> %i.iw, ptr %i.ir, align 8, !tbaa !58, !noalias !233
  %i.ix = or disjoint i64 %.0238.i.i, 1           ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3, !noalias !233
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !184, !alias.scope !231, !noalias !228 ; 2 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.ix
  %.val.i61.i.1 = load i16, ptr %i.jd, align 2, !tbaa !186, !alias.scope !228, !noalias !231
  %i.je = sext i16 %.val.i61.i.1 to i64
  %i.jf = load <2 x i64>, ptr %i.jc, align 8, !tbaa !58, !noalias !233
  %i.jg = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.je, i64 1
  %i.jh = add <2 x i64> %i.jf, %i.jg
  store <2 x i64> %i.jh, ptr %i.jc, align 8, !tbaa !58, !noalias !233
  %i.ji = add nuw i64 %.0238.i.i, 2               ; 2 uses
  %niter86.next.1 = add nuw i64 %niter86, 2       ; 2 uses
  %niter86.ncmp.1 = icmp eq i64 %niter86.next.1, %unroll_iter85
  br i1 %niter86.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, label %.lr.ph9.i.i, !llvm.loop !235

bb.an:                                            ; preds = %bb.ai
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ao unwind label %bb.ad

bb.ao:                                            ; preds = %bb.an
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !211 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !211 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !181, !noalias !241 ; 2 uses
  %.not.i.i63.i = icmp eq ptr %i.jo, null
  %.not10.i64.i = icmp eq i64 %4, 0               ; 2 uses
  br i1 %.not.i.i63.i, label %.preheader.i70.i, label %.preheader4.i65.i

.preheader4.i65.i:                                ; preds = %bb.ao
  br i1 %.not10.i64.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i66.i

.preheader.i70.i:                                 ; preds = %bb.ao
  br i1 %.not10.i64.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i71.i.preheader

.lr.ph8.i71.i.preheader:                          ; preds = %.preheader.i70.i
  %xtraiter87 = and i64 %4, 1
  %i.jp = icmp eq i64 %4, 1
  br i1 %i.jp, label %.lr.ph8.i71.i.epil.preheader, label %.lr.ph8.i71.i.preheader.new

.lr.ph8.i71.i.preheader.new:                      ; preds = %.lr.ph8.i71.i.preheader
  %unroll_iter90 = and i64 %4, -2
  br label %.lr.ph8.i71.i

.lr.ph.i66.i:                                     ; preds = %.preheader4.i65.i, %bb.aq
  %.06.i67.i = phi i64 [ %i.kd, %bb.aq ], [ 0, %.preheader4.i65.i ] ; 5 uses
  %i.jq = lshr i64 %.06.i67.i, 6
  %i.jr = and i64 %.06.i67.i, 63
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jq
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !58, !noalias !241
  %i.ju = shl nuw i64 1, %i.jr
  %i.jv = and i64 %i.ju, %i.jt
  %.not.i68.i = icmp eq i64 %i.jv, 0
  br i1 %.not.i68.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i66.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.06.i67.i
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !184, !alias.scope !239, !noalias !236 ; 2 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %.06.i67.i
  %.val22.i.i = load i16, ptr %i.jy, align 2, !tbaa !186, !alias.scope !236, !noalias !239
  %i.jz = sext i16 %.val22.i.i to i64
  %i.ka = load <2 x i64>, ptr %i.jx, align 8, !tbaa !58, !noalias !241
  %i.kb = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.jz, i64 1
  %i.kc = add <2 x i64> %i.ka, %i.kb
  store <2 x i64> %i.kc, ptr %i.jx, align 8, !tbaa !58, !noalias !241
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i66.i
  %i.kd = add nuw i64 %.06.i67.i, 1               ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.kd, %4
  br i1 %exitcond.not.i69.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i66.i, !llvm.loop !242

.lr.ph8.i71.i:                                    ; preds = %.lr.ph8.i71.i, %.lr.ph8.i71.i.preheader.new
  %.0217.i.i = phi i64 [ 0, %.lr.ph8.i71.i.preheader.new ], [ %i.kt, %.lr.ph8.i71.i ] ; 4 uses
  %niter91 = phi i64 [ 0, %.lr.ph8.i71.i.preheader.new ], [ %niter91.next.1, %.lr.ph8.i71.i ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.0217.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !184, !alias.scope !239, !noalias !236 ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %.0217.i.i
  %.val.i72.i = load i16, ptr %i.kg, align 2, !tbaa !186, !alias.scope !236, !noalias !239
  %i.kh = sext i16 %.val.i72.i to i64
  %i.ki = load <2 x i64>, ptr %i.kf, align 8, !tbaa !58, !noalias !241
  %i.kj = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.kh, i64 1
  %i.kk = add <2 x i64> %i.ki, %i.kj
  store <2 x i64> %i.kk, ptr %i.kf, align 8, !tbaa !58, !noalias !241
  %i.kl = or disjoint i64 %.0217.i.i, 1           ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !184, !alias.scope !239, !noalias !236 ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.kl
  %.val.i72.i.1 = load i16, ptr %i.ko, align 2, !tbaa !186, !alias.scope !236, !noalias !239
  %i.kp = sext i16 %.val.i72.i.1 to i64
  %i.kq = load <2 x i64>, ptr %i.kn, align 8, !tbaa !58, !noalias !241
  %i.kr = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.kp, i64 1
  %i.ks = add <2 x i64> %i.kq, %i.kr
  store <2 x i64> %i.ks, ptr %i.kn, align 8, !tbaa !58, !noalias !241
  %i.kt = add nuw i64 %.0217.i.i, 2               ; 2 uses
  %niter91.next.1 = add nuw i64 %niter91, 2       ; 2 uses
  %niter91.ncmp.1 = icmp eq i64 %niter91.next.1, %unroll_iter90
  br i1 %niter91.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, label %.lr.ph8.i71.i, !llvm.loop !243

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph8.i71.i
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i71.i.epil.preheader

.lr.ph8.i71.i.epil.preheader:                     ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, %.lr.ph8.i71.i.preheader
  %.0217.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i71.i.preheader ], [ %i.kt, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod89)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.0217.i.i.epil.init
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !184, !alias.scope !239, !noalias !236 ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %.0217.i.i.epil.init
  %.val.i72.i.epil = load i16, ptr %i.kw, align 2, !tbaa !186, !alias.scope !236, !noalias !239
  %i.kx = sext i16 %.val.i72.i.epil to i64
  %i.ky = load <2 x i64>, ptr %i.kv, align 8, !tbaa !58, !noalias !241
  %i.kz = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.kx, i64 1
  %i.la = add <2 x i64> %i.ky, %i.kz
  store <2 x i64> %i.la, ptr %i.kv, align 8, !tbaa !58, !noalias !241
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa: ; preds = %.lr.ph9.i.i
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph9.i.i.epil.preheader

.lr.ph9.i.i.epil.preheader:                       ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, %.lr.ph9.i.i.preheader
  %.0238.i.i.epil.init = phi i64 [ 0, %.lr.ph9.i.i.preheader ], [ %i.ji, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.0238.i.i.epil.init
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3, !noalias !233
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !184, !alias.scope !231, !noalias !228 ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.0238.i.i.epil.init
  %.val.i61.i.epil = load i16, ptr %i.lg, align 2, !tbaa !186, !alias.scope !228, !noalias !231
  %i.lh = sext i16 %.val.i61.i.epil to i64
  %i.li = load <2 x i64>, ptr %i.lf, align 8, !tbaa !58, !noalias !233
  %i.lj = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.lh, i64 1
  %i.lk = add <2 x i64> %i.li, %i.lj
  store <2 x i64> %i.lk, ptr %i.lf, align 8, !tbaa !58, !noalias !233
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa: ; preds = %.lr.ph8.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i.i.epil.preheader

.lr.ph8.i.i.epil.preheader:                       ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, %.lr.ph8.i.i.preheader
  %.0237.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i.i.preheader ], [ %i.hn, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.0237.i.i.epil.init
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3, !noalias !225
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.0237.i.i.epil.init
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !184, !alias.scope !223, !noalias !220 ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.ln
  %.val.i53.i.epil = load i16, ptr %i.lq, align 2, !tbaa !186, !alias.scope !220, !noalias !223
  %i.lr = sext i16 %.val.i53.i.epil to i64
  %i.ls = load <2 x i64>, ptr %i.lp, align 8, !tbaa !58, !noalias !225
  %i.lt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.lr, i64 1
  %i.lu = add <2 x i64> %i.ls, %i.lt
  store <2 x i64> %i.lu, ptr %i.lp, align 8, !tbaa !58, !noalias !225
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa: ; preds = %.lr.ph11.i.i
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph11.i.i.epil.preheader

.lr.ph11.i.i.epil.preheader:                      ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, %.lr.ph11.i.i.preheader
  %.02510.i.i.epil.init = phi i64 [ 0, %.lr.ph11.i.i.preheader ], [ %i.fq, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa ] ; 2 uses
  %lcmp.mod74 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod74)
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.02510.i.i.epil.init
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !3, !noalias !217
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.02510.i.i.epil.init
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3, !noalias !217
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !184, !alias.scope !215, !noalias !212 ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.lx
  %.val.i46.i.epil = load i16, ptr %i.md, align 2, !tbaa !186, !alias.scope !212, !noalias !215
  %i.me = sext i16 %.val.i46.i.epil to i64
  %i.mf = load <2 x i64>, ptr %i.mc, align 8, !tbaa !58, !noalias !217
  %i.mg = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.me, i64 1
  %i.mh = add <2 x i64> %i.mf, %i.mg
  store <2 x i64> %i.mh, ptr %i.mc, align 8, !tbaa !58, !noalias !217
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i: ; preds = %bb.ab, %.lr.ph11.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, %bb.ah, %.lr.ph8.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, %bb.am, %.lr.ph9.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, %bb.aq, %.lr.ph8.i71.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, %.preheader.i70.i, %.preheader4.i65.i, %.preheader.i60.i, %.preheader5.i.i, %.preheader.i52.i, %.preheader4.i.i, %.preheader.i45.i, %.preheader7.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 4 uses
  %i.ml = load atomic i64, ptr %i.mk acquire, align 8 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 4294967297
  %i.mn = trunc i64 %i.ml to i32                  ; 2 uses
  br i1 %i.mm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.mk, align 8, !tbaa !36
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store i32 0, ptr %i.mo, align 4, !tbaa !38
  %i.mp = load ptr, ptr %i.mj, align 8, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #22, !inline_history !244
  %i.ms = load ptr, ptr %i.mj, align 8, !tbaa !27
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #22, !inline_history !244
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mw = add nsw i32 %i.mn, -1
  store i32 %i.mw, ptr %i.mk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.mx = atomicrmw volatile add ptr %i.mk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.mn, %bb.au ], [ %i.mx, %bb.av ]
  %i.my = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.my, label %bb.aw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.as, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 4 uses
  %i.nc = load atomic i64, ptr %i.nb acquire, align 8 ; 2 uses
  %i.nd = icmp eq i64 %i.nc, 4294967297
  %i.ne = trunc i64 %i.nc to i32                  ; 2 uses
  br i1 %i.nd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.nb, align 8, !tbaa !36
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  store i32 0, ptr %i.nf, align 4, !tbaa !38
  %i.ng = load ptr, ptr %i.na, align 8, !tbaa !27
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %i.na) #22, !inline_history !245
  %i.nj = load ptr, ptr %i.na, align 8, !tbaa !27
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.na) #22, !inline_history !245
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.nm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.nm, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nn = add nsw i32 %i.ne, -1
  store i32 %i.nn, ptr %i.nb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.bb:                                            ; preds = %bb.az
  %i.no = atomicrmw volatile add ptr %i.nb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.ne, %bb.ba ], [ %i.no, %bb.bb ]
  %i.np = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.np, label %bb.bc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.na) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ay, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.nq = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i74.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i.i74.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i78.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume.i

_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph70.i.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph70.i.i.epil.preheader

.lr.ph70.i.i.epil.preheader:                      ; preds = %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph70.i.i.preheader
  %storemerge69.i.i.epil.init = phi i64 [ 0, %.lr.ph70.i.i.preheader ], [ %i.dh, %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %storemerge69.i.i.epil.init
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !184, !alias.scope !194, !noalias !191 ; 2 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %storemerge69.i.i.epil.init
  %.val.i40.i.epil = load i16, ptr %i.pa, align 2, !tbaa !186, !alias.scope !191, !noalias !194
  %i.pb = sext i16 %.val.i40.i.epil to i64
  %i.pc = load <2 x i64>, ptr %i.oz, align 8, !tbaa !58, !noalias !196
  %i.pd = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.pb, i64 1
  %i.pe = add <2 x i64> %i.pc, %i.pd
  store <2 x i64> %i.pe, ptr %i.oz, align 8, !tbaa !58, !noalias !196
  br label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit: ; preds = %.loopexit59.i.i, %.lr.ph70.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i, %.preheader.i.i, %bb.r, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit83.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !48
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !48
  store i8 %i.i, ptr %i.d, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !183 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !48
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !48
  store i8 %i.t, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i13.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i16.i = load ptr, ptr %i.z, align 8, !tbaa !183 ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %xtraiter = and i64 %3, 1
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !184 ; 2 uses
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !tbaa !58
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !58
  %i.ah = add <2 x i64> %i.ag, %i.af
  store <2 x i64> %i.ah, ptr %i.ae, align 8, !tbaa !58
  %i.ai = or disjoint i64 %.01.i, 1               ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !184 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.ak, align 8, !tbaa !58
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !58
  %i.ap = add <2 x i64> %i.ao, %i.an
  store <2 x i64> %i.ap, ptr %i.am, align 8, !tbaa !58
  %i.aq = add nuw i64 %.01.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !246

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i.epil.init
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i.epil.init
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !184 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.as, align 8, !tbaa !58
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !58
  %i.ax = add <2 x i64> %i.aw, %i.av
  store <2 x i64> %i.ax, ptr %i.au, align 8, !tbaa !58
  br label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIlEENS2_23IntegerAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_18AvgStateIlEEdNS2_23IntegerAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES7_mm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %12 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !167
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !48
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.k = load i8, ptr %i.g, align 1, !tbaa !48
  store i8 %i.k, ptr %i.d, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.n = load ptr, ptr %9, align 8, !tbaa !20     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %2, ptr %11, align 8, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !249
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !251
  %i.v = load ptr, ptr %.val.i.i, align 8, !tbaa !184 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !188  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN6duckdb12_GLOBAL__N_123IntegerAverageOperation8FinalizeIdNS0_8AvgStateIlEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !253 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.y = uitofp i64 %i.w to double                ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb12_GLOBAL__N_118GetAverageDividentIdEET_mNS_12optional_ptrINS_12FunctionDataELb1EEE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.z = load ptr, ptr %8, align 8, !tbaa !254
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !64
  %i.ac = fmul double %i.ab, %i.y
  br label %_ZN6duckdb12_GLOBAL__N_118GetAverageDividentIdEET_mNS_12optional_ptrINS_12FunctionDataELb1EEE.exit.i.i

_ZN6duckdb12_GLOBAL__N_118GetAverageDividentIdEET_mNS_12optional_ptrINS_12FunctionDataELb1EEE.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i20.i = phi double [ %i.ac, %bb.j ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !190
  %i.af = sitofp i64 %i.ae to double
  %i.ag = fdiv double %i.af, %.0.i.i20.i
  store double %i.ag, ptr %i.s, align 8, !tbaa !59
  br label %_ZN6duckdb12_GLOBAL__N_123IntegerAverageOperation8FinalizeIdNS0_8AvgStateIlEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

_ZN6duckdb12_GLOBAL__N_123IntegerAverageOperation8FinalizeIdNS0_8AvgStateIlEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_118GetAverageDividentIdEET_mNS_12optional_ptrINS_12FunctionDataELb1EEE.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_18AvgStateIlEEdNS2_23IntegerAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES7_mm.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  %i.ah = load i8, ptr %i.g, align 1, !tbaa !48
  %i.ai = icmp eq i8 %i.ah, 8
  br i1 %i.ai, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIlEEEEPT_RNS_6VectorE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ak = load i8, ptr %i.g, align 1, !tbaa !48
  store i8 %i.ak, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.p unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.lcssa50 = phi i64 [ %.lcssa50.unr, %.prol.loopexit ], [ %i.ds, %.lr.ph47.i.i.new ]
  %i.em = sub i64 %i.bt, %.sroa.4.051.i.i
  %i.en = add i64 %i.em, %.promoted.i.i
  store i64 %i.en, ptr %3, align 8, !tbaa !188, !alias.scope !263, !noalias !260
  store i64 %.lcssa50, ptr %i.u, align 8, !tbaa !190, !alias.scope !263, !noalias !260
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %bb.g, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader43.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bt, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.051.i.i, %.preheader.i.i ], [ %i.bt, %..loopexit_crit_edge.i.i ], [ %.sroa.4.051.i.i, %.preheader43.i.i ], [ %i.bt, %bb.g ], [ %i.bt, %.lr.ph.i.i.prol.loopexit ]
  %i.eo = add nuw nsw i64 %.052.i.i, 1            ; 2 uses
  %exitcond64.not.i.i = icmp eq i64 %i.eo, %i.r
  br i1 %exitcond64.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !267

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.aa

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !211 ; 9 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.es = load ptr, ptr %5, align 8, !tbaa !201
  %.val20.i = load ptr, ptr %i.es, align 8        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !181, !noalias !277 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.et, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i27.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.j
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %bb.l
  %.0173.us.i.i = phi i64 [ %i.ff, %bb.l ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.eu = lshr i64 %.0173.us.i.i, 6
  %i.ev = and i64 %.0173.us.i.i, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !58, !noalias !277
  %i.ey = shl nuw i64 1, %i.ev
  %i.ez = and i64 %i.ey, %i.ex
  %.not.us.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.us.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %.0173.us.i.i
  %.val18.us.i.i = load i16, ptr %i.fa, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.fb = sext i16 %.val18.us.i.i to i64
  %i.fc = load <2 x i64>, ptr %3, align 8, !tbaa !58, !alias.scope !275, !noalias !272
  %i.fd = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.fb, i64 1
  %i.fe = add <2 x i64> %i.fc, %i.fd
  store <2 x i64> %i.fe, ptr %3, align 8, !tbaa !58, !alias.scope !275, !noalias !272
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ff = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.ff, %4
  br i1 %exitcond16.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !278

.preheader.i27.i:                                 ; preds = %bb.j
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %3, align 8, !tbaa !188, !alias.scope !275, !noalias !272
  %.promoted6.i.i = load i64, ptr %i.fg, align 8, !tbaa !190, !alias.scope !275, !noalias !272 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter60 = and i64 %4, 3                     ; 3 uses
  %i.fh = icmp ult i64 %4, 4
  br i1 %i.fh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.fi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted6.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.fi, %vector.ph ], [ %i.fn, %vector.body ]
  %vec.phi40 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fo, %vector.body ]
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %wide.load = load <2 x i16>, ptr %i.fj, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %wide.load41 = load <2 x i16>, ptr %i.fk, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.fl = sext <2 x i16> %wide.load to <2 x i64>
  %i.fm = sext <2 x i16> %wide.load41 to <2 x i64>
  %i.fn = add <2 x i64> %vec.phi, %i.fl           ; 2 uses
  %i.fo = add <2 x i64> %vec.phi40, %i.fm         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fo, %i.fn
  %i.fq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.fq, %middle.block ]
  %.04.us.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.fr = phi i64 [ %i.fu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42 ]
  %.04.us.i.i = phi i64 [ %i.fv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %.04.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader42 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %.04.us.i.i
  %.val.us.i.i = load i16, ptr %i.fs, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.ft = sext i16 %.val.us.i.i to i64
  %i.fu = add nsw i64 %i.fr, %i.ft                ; 2 uses
  %i.fv = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond18.not.i.i = icmp eq i64 %i.fv, %4
  br i1 %exitcond18.not.i.i, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !282

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %bb.n
  %.0173.i.i = phi i64 [ %i.gk, %bb.n ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !277
  %i.fy = zext i32 %i.fx to i64                   ; 3 uses
  %i.fz = lshr i64 %i.fy, 6
  %i.ga = and i64 %i.fy, 63
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fz
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !58, !noalias !277
  %i.gd = shl nuw i64 1, %i.ga
  %i.ge = and i64 %i.gd, %i.gc
  %.not.i24.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i24.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.fy
  %.val18.i.i = load i16, ptr %i.gf, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.gg = sext i16 %.val18.i.i to i64
  %i.gh = load <2 x i64>, ptr %3, align 8, !tbaa !58, !alias.scope !275, !noalias !272
  %i.gi = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.gg, i64 1
  %i.gj = add <2 x i64> %i.gh, %i.gi
  store <2 x i64> %i.gj, ptr %3, align 8, !tbaa !58, !alias.scope !275, !noalias !272
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gk = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %i.gk, %4
  br i1 %exitcond.not.i25.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !278

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.gl = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.hm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.hn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3, !noalias !277
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.go
  %.val.i29.i = load i16, ptr %i.gp, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.gq = sext i16 %.val.i29.i to i64
  %i.gr = add nsw i64 %i.gl, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !277
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.gv
  %.val.i29.i.1 = load i16, ptr %i.gw, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.gx = sext i16 %.val.i29.i.1 to i64
  %i.gy = add nsw i64 %i.gr, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3, !noalias !277
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.hc
  %.val.i29.i.2 = load i16, ptr %i.hd, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.he = sext i16 %.val.i29.i.2 to i64
  %i.hf = add nsw i64 %i.gy, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !277
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.hj
  %.val.i29.i.3 = load i16, ptr %i.hk, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.hl = sext i16 %.val.i29.i.3 to i64
  %i.hm = add nsw i64 %i.hf, %i.hl                ; 3 uses
  %i.hn = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !283

..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hm, %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hn, %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter60, 0
  call void @llvm.assume(i1 %lcmp.mod64)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader
  %i.ho = phi i64 [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ %.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.hv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ %.04.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3, !noalias !277
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.hr
  %.val.i29.i.epil = load i16, ptr %i.hs, align 2, !tbaa !186, !alias.scope !272, !noalias !275
  %i.ht = sext i16 %.val.i29.i.epil to i64
  %i.hu = add nsw i64 %i.ho, %i.ht                ; 2 uses
  %i.hv = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter60
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, !llvm.loop !284

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block
  %.us-phi.i.i = phi i64 [ %i.fu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.fq, %middle.block ], [ %i.hm, %..loopexit_crit_edge.i30.i.loopexit45.unr-lcssa ], [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  %.us-phi8.i.i = add i64 %.promoted.i28.i, %4
  store i64 %.us-phi8.i.i, ptr %3, align 8, !tbaa !188, !alias.scope !275, !noalias !272
  store i64 %.us-phi.i.i, ptr %i.fg, align 8, !tbaa !190, !alias.scope !275, !noalias !272
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.n, %bb.l, %..loopexit_crit_edge.i30.i, %.preheader.i27.i, %.preheader1.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.hy, align 8, !tbaa !36
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !38
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !27
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #22, !inline_history !285
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !27
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #22, !inline_history !285
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.r ], [ %i.il, %bb.s ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ip, align 8, !tbaa !36
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !38
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !27
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22, !inline_history !286
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !27
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22, !inline_history !286
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.y:                                             ; preds = %bb.w
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.is, %bb.x ], [ %i.jc, %bb.y ]
  %i.jd = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jd, label %bb.z, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.v, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aa:                                            ; preds = %bb.i, %bb.h
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.je

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIlEEsNS2_23IntegerAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

declare void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #2

declare void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !38
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !287
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !287
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.i:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.cf = select i1 %i.cc, i64 1, i64 -1
  %i.cg = load i64, ptr %i.o, align 8, !tbaa !310, !alias.scope !356, !noalias !353
  %i.ch = add nsw i64 %i.cg, %i.cf
  store i64 %i.ch, ptr %i.o, align 8, !tbaa !310, !alias.scope !356, !noalias !353
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1: ; preds = %bb.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.ci = add nuw i64 %.sroa.4.148.i.i, 2         ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ci, %i.bc
  br i1 %exitcond.not.i.i.1, label %..loopexit_crit_edge.i.i, label %.lr.ph49.i.i.new, !llvm.loop !359

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i
  %.sroa.4.247.i.i = phi i64 [ %i.cx, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ] ; 3 uses
  %i.cj = sub nuw i64 %.sroa.4.247.i.i, %.sroa.4.053.i.i
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ba
  %.not.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.4.247.i.i
  %.val.i.i = load i32, ptr %i.cm, align 4, !tbaa !3, !alias.scope !353, !noalias !356 ; 2 uses
  %i.cn = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !356, !noalias !353
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %3, align 8, !tbaa !298, !alias.scope !356, !noalias !353
  %i.cp = sext i32 %.val.i.i to i64               ; 2 uses
  %i.cq = icmp sgt i32 %.val.i.i, -1              ; 2 uses
  %i.cr = load i64, ptr %i.n, align 8, !tbaa !309, !alias.scope !356, !noalias !353
  %i.cs = add i64 %i.cr, %i.cp                    ; 2 uses
  store i64 %i.cs, ptr %i.n, align 8, !tbaa !309, !alias.scope !356, !noalias !353
  %i.ct = icmp uge i64 %i.cs, %i.cp
  %.not.i.i.i29.i.i = xor i1 %i.cq, %i.ct
  br i1 %.not.i.i.i29.i.i, label %bb.k, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

bb.k:                                             ; preds = %bb.j
  %i.cu = select i1 %i.cq, i64 1, i64 -1
  %i.cv = load i64, ptr %i.o, align 8, !tbaa !310, !alias.scope !356, !noalias !353
  %i.cw = add nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.o, align 8, !tbaa !310, !alias.scope !356, !noalias !353
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.cx = add nuw i64 %.sroa.4.247.i.i, 1         ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %i.cx, %i.bc
  br i1 %exitcond65.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !361

..loopexit_crit_edge.i.i:                         ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1, %.prol.loopexit
  %.lcssa49 = phi i64 [ %.lcssa49.unr, %.prol.loopexit ], [ %i.cd, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1 ]
  %i.cy = sub i64 %i.bc, %.sroa.4.053.i.i
  %i.cz = add i64 %i.cy, %.promoted.i.i
  store i64 %i.cz, ptr %3, align 8, !tbaa !298, !alias.scope !356, !noalias !353
  store i64 %.lcssa49, ptr %i.n, align 8, !tbaa !309, !alias.scope !356, !noalias !353
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader45.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.053.i.i, %.preheader.i.i ], [ %i.bc, %..loopexit_crit_edge.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ], [ %i.bc, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ]
  %i.da = add nuw nsw i64 %.054.i.i, 1            ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %i.da, %i.k
  br i1 %exitcond66.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !360

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !211 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %5, align 8, !tbaa !201
  %.val20.i = load ptr, ptr %i.de, align 8        ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !181, !noalias !367 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.df, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i31.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i
  %.0173.us.i.i = phi i64 [ %i.dz, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.di = lshr i64 %.0173.us.i.i, 6
  %i.dj = and i64 %.0173.us.i.i, 63
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.di
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !58, !noalias !367
  %i.dm = shl nuw i64 1, %i.dj
  %i.dn = and i64 %i.dm, %i.dl
  %.not.us.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.do, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.dp = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  %i.dr = sext i32 %.val18.us.i.i to i64          ; 2 uses
  %i.ds = icmp sgt i32 %.val18.us.i.i, -1         ; 2 uses
  %i.dt = load i64, ptr %i.dg, align 8, !tbaa !309, !alias.scope !365, !noalias !362
  %i.du = add i64 %i.dt, %i.dr                    ; 2 uses
  store i64 %i.du, ptr %i.dg, align 8, !tbaa !309, !alias.scope !365, !noalias !362
  %i.dv = icmp uge i64 %i.du, %i.dr
  %.not.i.i.i.us.i29.i = xor i1 %i.ds, %i.dv
  br i1 %.not.i.i.i.us.i29.i, label %bb.p, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i

bb.p:                                             ; preds = %bb.o
  %i.dw = select i1 %i.ds, i64 1, i64 -1
  %i.dx = load i64, ptr %i.dh, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.dy = add nsw i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %i.dh, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dz = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.dz, %4
  br i1 %exitcond16.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !368

.preheader.i31.i:                                 ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i31.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %.promoted.i32.i = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  %.promoted6.i.i = load i64, ptr %i.ea, align 8, !tbaa !309, !alias.scope !365, !noalias !362 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter55 = and i64 %4, 1
  %i.ec = icmp eq i64 %4, 1
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter60 = and i64 %4, 1
  %i.ed = icmp eq i64 %4, 1
  br i1 %i.ed, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %unroll_iter66 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new
  %i.ee = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.er, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ew, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ] ; 3 uses
  %niter67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %niter67.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.ef, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.eg = sext i32 %.val.us.i.i to i64            ; 2 uses
  %i.eh = icmp sgt i32 %.val.us.i.i, -1           ; 2 uses
  %i.ei = add i64 %i.ee, %i.eg                    ; 2 uses
  %i.ej = icmp uge i64 %i.ei, %i.eg
  %.not.i.i.i23.us.i.i = xor i1 %i.eh, %i.ej
  br i1 %.not.i.i.i23.us.i.i, label %bb.q, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.ek = select i1 %i.eh, i64 1, i64 -1
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.em = add nsw i64 %i.el, %i.ek
  store i64 %i.em, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.val.us.i.i.1 = load i32, ptr %i.eo, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.ep = sext i32 %.val.us.i.i.1 to i64          ; 2 uses
  %i.eq = icmp sgt i32 %.val.us.i.i.1, -1         ; 2 uses
  %i.er = add i64 %i.ei, %i.ep                    ; 4 uses
  %i.es = icmp uge i64 %i.er, %i.ep
  %.not.i.i.i23.us.i.i.1 = xor i1 %i.eq, %i.es
  br i1 %.not.i.i.i23.us.i.i.1, label %bb.r, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

bb.r:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.et = select i1 %i.eq, i64 1, i64 -1
  %i.eu = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.ev = add nsw i64 %i.eu, %i.et
  store i64 %i.ev, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1: ; preds = %bb.r, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.ew = add nuw i64 %.04.us.i.i, 2              ; 2 uses
  %niter67.next.1 = add nuw i64 %niter67, 2       ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !369

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i
  %.0173.i.i = phi i64 [ %i.fr, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !367
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !58, !noalias !367
  %i.fe = shl nuw i64 1, %i.fb
  %i.ff = and i64 %i.fe, %i.fd
  %.not.i24.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i24.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ez
  %.val18.i.i = load i32, ptr %i.fg, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.fh = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  %i.fj = sext i32 %.val18.i.i to i64             ; 2 uses
  %i.fk = icmp sgt i32 %.val18.i.i, -1            ; 2 uses
  %i.fl = load i64, ptr %i.dg, align 8, !tbaa !309, !alias.scope !365, !noalias !362
  %i.fm = add i64 %i.fl, %i.fj                    ; 2 uses
  store i64 %i.fm, ptr %i.dg, align 8, !tbaa !309, !alias.scope !365, !noalias !362
  %i.fn = icmp uge i64 %i.fm, %i.fj
  %.not.i.i.i.i25.i = xor i1 %i.fk, %i.fn
  br i1 %.not.i.i.i.i25.i, label %bb.t, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i

bb.t:                                             ; preds = %bb.s
  %i.fo = select i1 %i.fk, i64 1, i64 -1
  %i.fp = load i64, ptr %i.dh, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.fq = add nsw i64 %i.fp, %i.fo
  store i64 %i.fq, ptr %i.dh, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i: ; preds = %bb.t, %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i27.i = icmp eq i64 %i.fr, %4
  br i1 %exitcond.not.i27.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !368

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.fs = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gl, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gq, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3, !noalias !367
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fv
  %.val.i33.i = load i32, ptr %i.fw, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.fx = sext i32 %.val.i33.i to i64             ; 2 uses
  %i.fy = icmp sgt i32 %.val.i33.i, -1            ; 2 uses
  %i.fz = add i64 %i.fs, %i.fx                    ; 2 uses
  %i.ga = icmp uge i64 %i.fz, %i.fx
  %.not.i.i.i23.i.i = xor i1 %i.fy, %i.ga
  br i1 %.not.i.i.i23.i.i, label %bb.u, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.gb = select i1 %i.fy, i64 1, i64 -1
  %i.gc = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.gd = add nsw i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i: ; preds = %bb.u, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3, !noalias !367
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gh
  %.val.i33.i.1 = load i32, ptr %i.gi, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.gj = sext i32 %.val.i33.i.1 to i64           ; 2 uses
  %i.gk = icmp sgt i32 %.val.i33.i.1, -1          ; 2 uses
  %i.gl = add i64 %i.fz, %i.gj                    ; 4 uses
  %i.gm = icmp uge i64 %i.gl, %i.gj
  %.not.i.i.i23.i.i.1 = xor i1 %i.gk, %i.gm
  br i1 %.not.i.i.i23.i.i.1, label %bb.v, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

bb.v:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gn = select i1 %i.gk, i64 1, i64 -1
  %i.go = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.gp = add nsw i64 %i.go, %i.gn
  store i64 %i.gp, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1: ; preds = %bb.v, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gq = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !369

..loopexit_crit_edge.i34.i.loopexit.unr-lcssa:    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1
  %lcmp.mod63.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod63.not, label %..loopexit_crit_edge.i34.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %.epil.init62 = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.er, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ew, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i.epil.init
  %.val.us.i.i.epil = load i32, ptr %i.gr, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.gs = sext i32 %.val.us.i.i.epil to i64       ; 2 uses
  %i.gt = icmp sgt i32 %.val.us.i.i.epil, -1      ; 2 uses
  %i.gu = add i64 %.epil.init62, %i.gs            ; 3 uses
  %i.gv = icmp uge i64 %i.gu, %i.gs
  %.not.i.i.i23.us.i.i.epil = xor i1 %i.gt, %i.gv
  br i1 %.not.i.i.i23.us.i.i.epil, label %bb.w, label %..loopexit_crit_edge.i34.i

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %i.gw = select i1 %i.gt, i64 1, i64 -1
  %i.gx = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.gy = add nsw i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %..loopexit_crit_edge.i34.i

..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa:  ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %..loopexit_crit_edge.i34.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gl, %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gq, %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3, !noalias !367
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hb
  %.val.i33.i.epil = load i32, ptr %i.hc, align 4, !tbaa !3, !alias.scope !362, !noalias !365 ; 2 uses
  %i.hd = sext i32 %.val.i33.i.epil to i64        ; 2 uses
  %i.he = icmp sgt i32 %.val.i33.i.epil, -1       ; 2 uses
  %i.hf = add i64 %.epil.init, %i.hd              ; 3 uses
  %i.hg = icmp uge i64 %i.hf, %i.hd
  %.not.i.i.i23.i.i.epil = xor i1 %i.he, %i.hg
  br i1 %.not.i.i.i23.i.i.epil, label %bb.x, label %..loopexit_crit_edge.i34.i

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader
  %i.hh = select i1 %i.he, i64 1, i64 -1
  %i.hi = load i64, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  %i.hj = add nsw i64 %i.hi, %i.hh
  store i64 %i.hj, ptr %i.eb, align 8, !tbaa !310, !alias.scope !365, !noalias !362
  br label %..loopexit_crit_edge.i34.i

..loopexit_crit_edge.i34.i:                       ; preds = %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa, %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa, %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %.us-phi.i.i = phi i64 [ %i.gu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ], [ %i.er, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa ], [ %i.gu, %bb.w ], [ %i.gl, %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa ], [ %i.hf, %bb.x ], [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi8.i.i = add i64 %.promoted.i32.i, %4
  store i64 %.us-phi8.i.i, ptr %3, align 8, !tbaa !298, !alias.scope !365, !noalias !362
  store i64 %.us-phi.i.i, ptr %i.ea, align 8, !tbaa !309, !alias.scope !365, !noalias !362
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i26.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i30.i, %..loopexit_crit_edge.i34.i, %.preheader.i31.i, %.preheader1.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.hm, align 8, !tbaa !36
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !38
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22, !inline_history !370
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22, !inline_history !370
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hp, %bb.ab ], [ %i.hz, %bb.ac ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ia, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.id, align 8, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !38
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22, !inline_history !371
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !27
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22, !inline_history !371
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.ig, %bb.ah ], [ %i.iq, %bb.ai ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ir, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.af, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.ak:                                            ; preds = %bb.m, %bb.l
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.is

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEEiNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

declare void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE17ConstantOperationIiNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.0.val, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !298
  %i.b = add i64 %i.a, %1
  store i64 %i.b, ptr %0, align 8, !tbaa !298
  %i.c = icmp sgt i32 %.0.val, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %.0.val to i64
  %i.e = mul i64 %1, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !309
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !309
end_hunk_3
begin_hunk_4_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %i.cb = icmp uge i64 %i.ca, %.val28.i.i.1
  %.not.i.i.i.i.i.1 = xor i1 %i.bz, %i.cb
  br i1 %.not.i.i.i.i.i.1, label %bb.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1

bb.i:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.cc = select i1 %i.bz, i64 1, i64 -1
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !310, !alias.scope !419, !noalias !416
  %i.ce = add nsw i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.r, align 8, !tbaa !310, !alias.scope !419, !noalias !416
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1: ; preds = %bb.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.cf = add nuw i64 %.sroa.4.148.i.i, 2         ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cf, %i.bc
  br i1 %exitcond.not.i.i.1, label %..loopexit_crit_edge.i.i, label %.lr.ph49.i.i.new, !llvm.loop !422

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i
  %.sroa.4.247.i.i = phi i64 [ %i.ct, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ] ; 3 uses
  %i.cg = sub nuw i64 %.sroa.4.247.i.i, %.sroa.4.053.i.i
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.ba
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.4.247.i.i
  %.val.i.i = load i64, ptr %i.cj, align 8, !tbaa !58, !alias.scope !416, !noalias !419 ; 3 uses
  %i.ck = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !419, !noalias !416
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %3, align 8, !tbaa !298, !alias.scope !419, !noalias !416
  %i.cm = icmp sgt i64 %.val.i.i, -1              ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !309, !alias.scope !419, !noalias !416
  %i.co = add i64 %i.cn, %.val.i.i                ; 2 uses
  store i64 %i.co, ptr %i.q, align 8, !tbaa !309, !alias.scope !419, !noalias !416
  %i.cp = icmp uge i64 %i.co, %.val.i.i
  %.not.i.i.i29.i.i = xor i1 %i.cm, %i.cp
  br i1 %.not.i.i.i29.i.i, label %bb.k, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

bb.k:                                             ; preds = %bb.j
  %i.cq = select i1 %i.cm, i64 1, i64 -1
  %i.cr = load i64, ptr %i.r, align 8, !tbaa !310, !alias.scope !419, !noalias !416
  %i.cs = add nsw i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.r, align 8, !tbaa !310, !alias.scope !419, !noalias !416
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.ct = add nuw i64 %.sroa.4.247.i.i, 1         ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %i.ct, %i.bc
  br i1 %exitcond65.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !424

..loopexit_crit_edge.i.i:                         ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1, %.prol.loopexit
  %.lcssa49 = phi i64 [ %.lcssa49.unr, %.prol.loopexit ], [ %i.ca, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1 ]
  %i.cu = sub i64 %i.bc, %.sroa.4.053.i.i
  %i.cv = add i64 %i.cu, %.promoted.i.i
  store i64 %i.cv, ptr %3, align 8, !tbaa !298, !alias.scope !419, !noalias !416
  store i64 %.lcssa49, ptr %i.q, align 8, !tbaa !309, !alias.scope !419, !noalias !416
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader45.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.053.i.i, %.preheader.i.i ], [ %i.bc, %..loopexit_crit_edge.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ], [ %i.bc, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ]
  %i.cw = add nuw nsw i64 %.054.i.i, 1            ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond66.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !423

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !211 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load ptr, ptr %5, align 8, !tbaa !201
  %.val.i = load ptr, ptr %i.da, align 8          ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !181, !noalias !430 ; 3 uses
  %.not.i.i21.i = icmp eq ptr %i.db, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i21.i, label %.preheader.i30.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val.i, null
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i22.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i
  %.0173.us.i.i = phi i64 [ %i.du, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i ], [ 0, %.lr.ph.i22.i ] ; 4 uses
  %i.de = lshr i64 %.0173.us.i.i, 6
  %i.df = and i64 %.0173.us.i.i, 63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !58, !noalias !430
  %i.di = shl nuw i64 1, %i.df
  %i.dj = and i64 %i.di, %i.dh
  %.not.us.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.dk, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.dl = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  %i.dn = icmp sgt i64 %.val18.us.i.i, -1         ; 2 uses
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !309, !alias.scope !428, !noalias !425
  %i.dp = add i64 %i.do, %.val18.us.i.i           ; 2 uses
  store i64 %i.dp, ptr %i.dc, align 8, !tbaa !309, !alias.scope !428, !noalias !425
  %i.dq = icmp uge i64 %i.dp, %.val18.us.i.i
  %.not.i.i.i.us.i28.i = xor i1 %i.dn, %i.dq
  br i1 %.not.i.i.i.us.i28.i, label %bb.p, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i

bb.p:                                             ; preds = %bb.o
  %i.dr = select i1 %i.dn, i64 1, i64 -1
  %i.ds = load i64, ptr %i.dd, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.dt = add nsw i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %i.dd, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.du, %4
  br i1 %exitcond16.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !431

.preheader.i30.i:                                 ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i30.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %.promoted.i31.i = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  %.promoted6.i.i = load i64, ptr %i.dv, align 8, !tbaa !309, !alias.scope !428, !noalias !425 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter55 = and i64 %4, 1
  %i.dx = icmp eq i64 %4, 1
  br i1 %i.dx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter60 = and i64 %4, 1
  %i.dy = icmp eq i64 %4, 1
  br i1 %i.dy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %unroll_iter66 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new
  %i.dz = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ek, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ep, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ] ; 3 uses
  %niter67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %niter67.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.ea, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.eb = icmp sgt i64 %.val.us.i.i, -1           ; 2 uses
  %i.ec = add i64 %.val.us.i.i, %i.dz             ; 2 uses
  %i.ed = icmp uge i64 %i.ec, %.val.us.i.i
  %.not.i.i.i23.us.i.i = xor i1 %i.eb, %i.ed
  br i1 %.not.i.i.i23.us.i.i, label %bb.q, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.ee = select i1 %i.eb, i64 1, i64 -1
  %i.ef = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.eg = add nsw i64 %i.ef, %i.ee
  store i64 %i.eg, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val.us.i.i.1 = load i64, ptr %i.ei, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.ej = icmp sgt i64 %.val.us.i.i.1, -1         ; 2 uses
  %i.ek = add i64 %.val.us.i.i.1, %i.ec           ; 4 uses
  %i.el = icmp uge i64 %i.ek, %.val.us.i.i.1
  %.not.i.i.i23.us.i.i.1 = xor i1 %i.ej, %i.el
  br i1 %.not.i.i.i23.us.i.i.1, label %bb.r, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

bb.r:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.em = select i1 %i.ej, i64 1, i64 -1
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1: ; preds = %bb.r, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.ep = add nuw i64 %.04.us.i.i, 2              ; 2 uses
  %niter67.next.1 = add nuw i64 %niter67, 2       ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !432

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i22.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fj, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i22.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !430
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = lshr i64 %i.es, 6
  %i.eu = and i64 %i.es, 63
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.et
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !58, !noalias !430
  %i.ex = shl nuw i64 1, %i.eu
  %i.ey = and i64 %i.ex, %i.ew
  %.not.i23.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i23.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.es
  %.val18.i.i = load i64, ptr %i.ez, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.fa = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  %i.fc = icmp sgt i64 %.val18.i.i, -1            ; 2 uses
  %i.fd = load i64, ptr %i.dc, align 8, !tbaa !309, !alias.scope !428, !noalias !425
  %i.fe = add i64 %i.fd, %.val18.i.i              ; 2 uses
  store i64 %i.fe, ptr %i.dc, align 8, !tbaa !309, !alias.scope !428, !noalias !425
  %i.ff = icmp uge i64 %i.fe, %.val18.i.i
  %.not.i.i.i.i24.i = xor i1 %i.fc, %i.ff
  br i1 %.not.i.i.i.i24.i, label %bb.t, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.t:                                             ; preds = %bb.s
  %i.fg = select i1 %i.fc, i64 1, i64 -1
  %i.fh = load i64, ptr %i.dd, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.fi = add nsw i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dd, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.t, %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fj, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !431

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.fk = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gb, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gg, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !430
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fn
  %.val.i32.i = load i64, ptr %i.fo, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.fp = icmp sgt i64 %.val.i32.i, -1            ; 2 uses
  %i.fq = add i64 %.val.i32.i, %i.fk              ; 2 uses
  %i.fr = icmp uge i64 %i.fq, %.val.i32.i
  %.not.i.i.i23.i.i = xor i1 %i.fp, %i.fr
  br i1 %.not.i.i.i23.i.i, label %bb.u, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.fs = select i1 %i.fp, i64 1, i64 -1
  %i.ft = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.fu = add nsw i64 %i.ft, %i.fs
  store i64 %i.fu, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i: ; preds = %bb.u, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !430
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fy
  %.val.i32.i.1 = load i64, ptr %i.fz, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.ga = icmp sgt i64 %.val.i32.i.1, -1          ; 2 uses
  %i.gb = add i64 %.val.i32.i.1, %i.fq            ; 4 uses
  %i.gc = icmp uge i64 %i.gb, %.val.i32.i.1
  %.not.i.i.i23.i.i.1 = xor i1 %i.ga, %i.gc
  br i1 %.not.i.i.i23.i.i.1, label %bb.v, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

bb.v:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gd = select i1 %i.ga, i64 1, i64 -1
  %i.ge = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.gf = add nsw i64 %i.ge, %i.gd
  store i64 %i.gf, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1: ; preds = %bb.v, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gg = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !432

..loopexit_crit_edge.i33.i.loopexit.unr-lcssa:    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1
  %lcmp.mod63.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod63.not, label %..loopexit_crit_edge.i33.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %.epil.init62 = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ek, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ep, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i.epil.init
  %.val.us.i.i.epil = load i64, ptr %i.gh, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.gi = icmp sgt i64 %.val.us.i.i.epil, -1      ; 2 uses
  %i.gj = add i64 %.val.us.i.i.epil, %.epil.init62 ; 3 uses
  %i.gk = icmp uge i64 %i.gj, %.val.us.i.i.epil
  %.not.i.i.i23.us.i.i.epil = xor i1 %i.gi, %i.gk
  br i1 %.not.i.i.i23.us.i.i.epil, label %bb.w, label %..loopexit_crit_edge.i33.i

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %i.gl = select i1 %i.gi, i64 1, i64 -1
  %i.gm = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.gn = add nsw i64 %i.gm, %i.gl
  store i64 %i.gn, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa:  ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %..loopexit_crit_edge.i33.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gb, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gg, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil.init
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3, !noalias !430
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.gq
  %.val.i32.i.epil = load i64, ptr %i.gr, align 8, !tbaa !58, !alias.scope !425, !noalias !428 ; 3 uses
  %i.gs = icmp sgt i64 %.val.i32.i.epil, -1       ; 2 uses
  %i.gt = add i64 %.val.i32.i.epil, %.epil.init   ; 3 uses
  %i.gu = icmp uge i64 %i.gt, %.val.i32.i.epil
  %.not.i.i.i23.i.i.epil = xor i1 %i.gs, %i.gu
  br i1 %.not.i.i.i23.i.i.epil, label %bb.x, label %..loopexit_crit_edge.i33.i

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader
  %i.gv = select i1 %i.gs, i64 1, i64 -1
  %i.gw = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  %i.gx = add nsw i64 %i.gw, %i.gv
  store i64 %i.gx, ptr %i.dw, align 8, !tbaa !310, !alias.scope !428, !noalias !425
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i:                       ; preds = %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %.us-phi.i.i = phi i64 [ %i.gj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ], [ %i.ek, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ], [ %i.gj, %bb.w ], [ %i.gb, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ], [ %i.gt, %bb.x ], [ %i.gt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi8.i.i = add i64 %.promoted.i31.i, %4
  store i64 %.us-phi8.i.i, ptr %3, align 8, !tbaa !298, !alias.scope !428, !noalias !425
  store i64 %.us-phi.i.i, ptr %i.dv, align 8, !tbaa !309, !alias.scope !428, !noalias !425
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_30IntegerAverageOperationHugeintEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i, %..loopexit_crit_edge.i33.i, %.preheader.i30.i, %.preheader1.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ha, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !38
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22, !inline_history !433
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22, !inline_history !433
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hd, %bb.ab ], [ %i.hn, %bb.ac ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ho, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.hr, align 8, !tbaa !36
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !38
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22, !inline_history !434
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22, !inline_history !434
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hu, %bb.ah ], [ %i.ie, %bb.ai ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.if, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.af, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.ak:                                            ; preds = %bb.m, %bb.l
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ig

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_30IntegerAverageOperationHugeintEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 9, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !48
end_hunk_4
begin_hunk_5_@_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_19STDDevSampOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph:bb.a
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !616

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %i.y = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %i.z = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ak, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ab = add i64 %i.aa, 1
  %i.ac = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = uitofp i64 %i.ab to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fadd double %i.z, %i.af                 ; 4 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  store double %i.ag, ptr %i.m, align 8, !tbaa !598
  store double %i.aj, ptr %i.n, align 8, !tbaa !599
  %i.ak = add i64 %i.aa, 2                        ; 4 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = fsub double %i.al, %i.ag                ; 2 uses
  %i.an = uitofp i64 %i.ak to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %i.ag, %i.ao                ; 4 uses
  %i.aq = fsub double %i.al, %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  store double %i.ap, ptr %i.m, align 8, !tbaa !598
  store double %i.as, ptr %i.n, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !617

bb.e:                                             ; preds = %bb.a
  %i.at = load i8, ptr %1, align 8, !tbaa !167
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %3)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.thread
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !201
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !210
  %.not67 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not67, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !623 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bl, null
  %.not36.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i34, label %.preheader.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader30.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !623
  %i.bn = load ptr, ptr %i.bj, align 8, !noalias !623
  br label %bb.m

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !623
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !210, !noalias !623
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i35
  %.032.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.ct, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.032.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !623
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bs, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !noalias !623
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bx, %i.bw
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.032.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !623
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !614, !alias.scope !621, !noalias !618 ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bs
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !596, !noalias !623
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !596, !noalias !623
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !59, !alias.scope !618, !noalias !621 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !598, !noalias !623 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = uitofp i64 %i.cg to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  %i.co = fsub double %i.ch, %i.cn
  %i.cp = fmul double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !599, !noalias !623
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cn, ptr %i.ci, align 8, !tbaa !598, !noalias !623
  store double %i.cs, ptr %i.cq, align 8, !tbaa !599, !noalias !623
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i37, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.m, !llvm.loop !624

bb.p:                                             ; preds = %bb.p, %.lr.ph34.i
  %.02533.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.dr, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.02533.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !623
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02533.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !623
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !614, !alias.scope !621, !noalias !618 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !596, !noalias !623
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !tbaa !596, !noalias !623
  %i.df = load double, ptr %i.dc, align 8, !tbaa !59, !alias.scope !618, !noalias !621 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !598, !noalias !623 ; 2 uses
  %i.di = fsub double %i.df, %i.dh                ; 2 uses
  %i.dj = uitofp i64 %i.de to double
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fadd double %i.dh, %i.dk                ; 2 uses
  %i.dm = fsub double %i.df, %i.dl
  %i.dn = fmul double %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !599, !noalias !623
  %i.dq = fadd double %i.dp, %i.dn
  store double %i.dl, ptr %i.dg, align 8, !tbaa !598, !noalias !623
  store double %i.dq, ptr %i.do, align 8, !tbaa !599, !noalias !623
  %i.dr = add nuw i64 %.02533.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.dr, %3
  br i1 %exitcond38.not.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.p, !llvm.loop !625

bb.q:                                             ; preds = %.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.af, %bb.z, %bb.s, %bb.k, %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  br label %bb.bh

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !211 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 2 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181, !noalias !631 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ea, null
  %.not33.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i39, label %.preheader.i43, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.preheader27.i
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !631
  br label %bb.u

.preheader.i43:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_19STDDevSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i43
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !631
end_hunk_5
begin_hunk_6_@_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb19STDDevSampOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !654

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19STDDevSampOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !596    ; 2 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !599
  %i.e = add i64 %i.a, -1
  %i.f = uitofp i64 %i.e to double
  %i.g = fdiv double %i.d, %i.f
  %i.h = tail call double @sqrt(double noundef %i.g) #22, !tbaa !3 ; 2 uses
  store double %i.h, ptr %1, align 8, !tbaa !59
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.h)
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn14 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn15, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn14

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %2, align 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.i, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.an, %._crit_edge.i.unr-lcssa ]
  %.epil.init25 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init27 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.k = add i64 %.epil.init27, 1                 ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.m = fsub double %i.l, %.epil.init25          ; 2 uses
  %i.n = uitofp i64 %i.k to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fadd double %.epil.init25, %i.o          ; 2 uses
  %i.q = fsub double %i.l, %i.p
  %i.r = fmul double %i.m, %i.q
  %i.s = fadd double %.epil.init, %i.r
  store double %i.p, ptr %i.h, align 8, !tbaa !598
  store double %i.s, ptr %i.i, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.k, %.epil.preheader ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.t = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.an, %bb.c ]
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.w = add i64 %i.v, 1
  %i.x = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.y = fsub double %i.x, %i.u                   ; 2 uses
  %i.z = uitofp i64 %i.w to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 4 uses
  %i.ac = fsub double %i.x, %i.ab
  %i.ad = fmul double %i.y, %i.ac
  %i.ae = fadd double %i.t, %i.ad                 ; 2 uses
  store double %i.ab, ptr %i.h, align 8, !tbaa !598
  store double %i.ae, ptr %i.i, align 8, !tbaa !599
  %i.af = add i64 %i.v, 2                         ; 4 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ab                ; 2 uses
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.ab, %i.aj                ; 4 uses
  %i.al = fsub double %i.ag, %i.ak
  %i.am = fmul double %i.ah, %i.al
  %i.an = fadd double %i.ae, %i.am                ; 3 uses
  store double %i.ak, ptr %i.h, align 8, !tbaa !598
  store double %i.an, ptr %i.i, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !617

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %4, align 8, !tbaa !201
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !38
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cd

_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %.not52 = icmp eq i64 %i.b, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %.not.i, label %.thread.us, label %.lr.ph51.split

.thread.us:                                       ; preds = %.lr.ph51, %.loopexit.us
  %.049.us = phi i64 [ %i.ah, %.loopexit.us ], [ 0, %.lr.ph51 ]
  %.sroa.4.048.us = phi i64 [ %.sroa.4.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph51 ] ; 9 uses
  %i.f = add i64 %.sroa.4.048.us, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 6 uses
  %i.h = icmp ult i64 %.sroa.4.048.us, %i.g
  br i1 %i.h, label %.lr.ph42.us, label %.loopexit.us

.lr.ph42.us.new:                                  ; preds = %.prol.loopexit87, %.lr.ph42.us.new
  %i.i = phi double [ %i.af, %.lr.ph42.us.new ], [ %.unr90, %.prol.loopexit87 ]
  %i.j = phi double [ %i.ac, %.lr.ph42.us.new ], [ %.unr91, %.prol.loopexit87 ] ; 2 uses
  %i.k = phi i64 [ %i.x, %.lr.ph42.us.new ], [ %.unr92, %.prol.loopexit87 ] ; 2 uses
  %.sroa.4.141.us = phi i64 [ %i.ag, %.lr.ph42.us.new ], [ %.sroa.4.141.us.unr, %.prol.loopexit87 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.m = add i64 %i.k, 1
  %i.n = load double, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.o = fsub double %i.n, %i.j                   ; 2 uses
  %i.p = uitofp i64 %i.m to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fadd double %i.j, %i.q                   ; 3 uses
  %i.s = fsub double %i.n, %i.r
  %i.t = fmul double %i.o, %i.s
  %i.u = fadd double %i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = add i64 %i.k, 2                          ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %i.z = fsub double %i.y, %i.r                   ; 2 uses
  %i.aa = uitofp i64 %i.x to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.r, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.y, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.u, %i.ae                 ; 2 uses
  %i.ag = add nuw i64 %.sroa.4.141.us, 2          ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond64.not.1, label %..loopexit_crit_edge.us, label %.lr.ph42.us.new, !llvm.loop !655

.loopexit.us:                                     ; preds = %..loopexit_crit_edge.us, %.thread.us
  %.sroa.4.1.lcssa.us = phi i64 [ %i.g, %..loopexit_crit_edge.us ], [ %.sroa.4.048.us, %.thread.us ]
end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE:bb.a
  %.lcssa83.unr = phi double [ poison, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.lcssa82.unr = phi double [ poison, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted46, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr84 = phi double [ %.promoted44, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.unr85 = phi i64 [ %.promoted, %.lr.ph42 ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.141.unr = phi i64 [ %.sroa.4.048, %.lr.ph42 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ba, %.neg
  br i1 %i.bp, label %..loopexit_crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %.lr.ph42.new
  %i.bq = phi double [ %i.cn, %.lr.ph42.new ], [ %.unr, %.prol.loopexit ]
  %i.br = phi double [ %i.ck, %.lr.ph42.new ], [ %.unr84, %.prol.loopexit ] ; 2 uses
  %i.bs = phi i64 [ %i.cf, %.lr.ph42.new ], [ %.unr85, %.prol.loopexit ] ; 2 uses
  %.sroa.4.141 = phi i64 [ %i.co, %.lr.ph42.new ], [ %.sroa.4.141.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.bu = add i64 %i.bs, 1
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bw = fsub double %i.bv, %i.br                ; 2 uses
  %i.bx = uitofp i64 %i.bu to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.br, %i.by                ; 3 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fmul double %i.bw, %i.ca
  %i.cc = fadd double %i.bq, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add i64 %i.bs, 2                        ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.ch = fsub double %i.cg, %i.bz                ; 2 uses
  %i.ci = uitofp i64 %i.cf to double
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fadd double %i.bz, %i.cj                ; 3 uses
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = fadd double %i.cc, %i.cm                ; 2 uses
  %i.co = add nuw i64 %.sroa.4.141, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %.lr.ph42.new, !llvm.loop !655

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.4.240 = phi i64 [ %i.df, %bb.d ], [ %.sroa.4.048, %.preheader ] ; 3 uses
  %i.cp = sub nuw i64 %.sroa.4.240, %.sroa.4.048
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.ay
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.240
  %i.ct = load i64, ptr %2, align 8, !tbaa !596
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !596
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.cw = load double, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw                ; 2 uses
  %i.cy = uitofp i64 %i.cu to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cw, %i.cz                ; 2 uses
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = load double, ptr %i.e, align 8, !tbaa !599
  %i.de = fadd double %i.dd, %i.dc
  store double %i.da, ptr %i.d, align 8, !tbaa !598
  store double %i.de, ptr %i.e, align 8, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.df = add nuw i64 %.sroa.4.240, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph, !llvm.loop !657

..loopexit_crit_edge:                             ; preds = %.lr.ph42.new, %.prol.loopexit
  %.lcssa83 = phi double [ %.lcssa83.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph42.new ]
  %.lcssa82 = phi double [ %.lcssa82.unr, %.prol.loopexit ], [ %i.cn, %.lr.ph42.new ]
  %i.dg = add i64 %.promoted, %i.ba
  %i.dh = sub i64 %i.dg, %.sroa.4.048
  store i64 %i.dh, ptr %2, align 8, !tbaa !596
  store double %.lcssa83, ptr %i.d, align 8, !tbaa !598
  store double %.lcssa82, ptr %i.e, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %..loopexit_crit_edge, %.lr.ph51.split
  %.sroa.4.3 = phi i64 [ %i.ba, %.lr.ph51.split ], [ %.sroa.4.048, %bb.b ], [ %i.ba, %..loopexit_crit_edge ], [ %.sroa.4.048, %.preheader ], [ %i.ba, %bb.d ]
  %i.di = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph51.split, !llvm.loop !656
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_19STDDevSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not34 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.b = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %bb.c
  %.01724.us = phi i64 [ %i.x, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.e = lshr i64 %.01724.us, 6
  %i.f = and i64 %.01724.us, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58
  %i.i = shl nuw i64 1, %i.f
  %i.j = and i64 %i.i, %i.h
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01724.us
  %i.l = load i64, ptr %2, align 8, !tbaa !596
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !596
  %i.n = load double, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = uitofp i64 %i.m to double
  %i.r = fdiv double %i.p, %i.q
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = load double, ptr %i.d, align 8, !tbaa !599
  %i.w = fadd double %i.v, %i.u
  store double %i.s, ptr %i.c, align 8, !tbaa !598
  store double %i.w, ptr %i.d, align 8, !tbaa !599
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.x = add nuw i64 %.01724.us, 1                ; 2 uses
  %exitcond42.not = icmp eq i64 %i.x, %3
  br i1 %exitcond42.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !658

.preheader:                                       ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %5, align 8, !tbaa !210    ; 4 uses
  %.not.i20 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted = load i64, ptr %2, align 8, !tbaa !596 ; 5 uses
  %.promoted27 = load double, ptr %i.z, align 8, !tbaa !598 ; 4 uses
  %.promoted29 = load double, ptr %i.aa, align 8, !tbaa !599 ; 4 uses
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader: ; preds = %.lr.ph26
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader: ; preds = %.lr.ph26
  %xtraiter72 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  br i1 %i.ac, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %unroll_iter83 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new
  %i.ad = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ae = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %i.af = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %.025.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 3 uses
  %niter84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %niter84.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ah = add i64 %i.af, 1
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 2 uses
  %i.ak = uitofp i64 %i.ah to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.ae, %i.al                ; 3 uses
  %i.an = fsub double %i.ai, %i.am
  %i.ao = fmul double %i.aj, %i.an
  %i.ap = fadd double %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add i64 %i.af, 2                        ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.au = fsub double %i.at, %i.am                ; 2 uses
  %i.av = uitofp i64 %i.as to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.am, %i.aw                ; 4 uses
  %i.ay = fsub double %i.at, %i.ax
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.ap, %i.az                ; 3 uses
  %i.bb = add nuw i64 %.025.us, 2                 ; 2 uses
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !659

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.e
  %.01724 = phi i64 [ %i.by, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01724
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.be, 63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = shl nuw i64 1, %i.bg
  %i.bk = and i64 %i.bj, %i.bi
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bm = load i64, ptr %2, align 8, !tbaa !596
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %2, align 8, !tbaa !596
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bp = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp                ; 2 uses
  %i.br = uitofp i64 %i.bn to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fmul double %i.bq, %i.bu
  %i.bw = load double, ptr %i.d, align 8, !tbaa !599
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bt, ptr %i.c, align 8, !tbaa !598
  store double %i.bx, ptr %i.d, align 8, !tbaa !599
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.d
  %i.by = add nuw i64 %.01724, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !658

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new
  %i.bz = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.ca = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %i.cb = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %.025 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = add i64 %i.cb, 1
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !59 ; 2 uses
  %i.ci = fsub double %i.ch, %i.ca                ; 2 uses
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ca, %i.ck                ; 3 uses
  %i.cm = fsub double %i.ch, %i.cl
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = fadd double %i.bz, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = add i64 %i.cb, 2                        ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl                ; 2 uses
  %i.cx = uitofp i64 %i.cu to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cl, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cw, %i.da
  %i.dc = fadd double %i.co, %i.db                ; 3 uses
  %i.dd = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !659

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %lcmp.mod79.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod79.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %.epil.init74 = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.epil.init76 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.as, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.025.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.bb, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us.epil.init
  %i.df = add i64 %.epil.init78, 1
  %i.dg = load double, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dh = fsub double %i.dg, %.epil.init76        ; 2 uses
  %i.di = uitofp i64 %i.df to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = fadd double %.epil.init76, %i.dj        ; 2 uses
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dh, %i.dl
  %i.dn = fadd double %.epil.init74, %i.dm
  br label %..loopexit_crit_edge

..loopexit_crit_edge.loopexit61.unr-lcssa:        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %.epil.init = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.epil.init66 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init68 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cu, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.025.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dd, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = add i64 %.epil.init68, 1
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.du = fsub double %i.dt, %.epil.init66        ; 2 uses
  %i.dv = uitofp i64 %i.ds to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %.epil.init66, %i.dw        ; 2 uses
  %i.dy = fsub double %i.dt, %i.dx
  %i.dz = fmul double %i.du, %i.dy
  %i.ea = fadd double %.epil.init, %i.dz
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, %..loopexit_crit_edge.loopexit.unr-lcssa
  %.us-phi = phi double [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi31 = phi double [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi32 = add i64 %.promoted, %3
  store i64 %.us-phi32, ptr %2, align 8, !tbaa !596
  store double %.us-phi31, ptr %i.z, align 8, !tbaa !598
  store double %.us-phi, ptr %i.aa, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader22, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_18STDDevPopOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_18STDDevPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !660

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_18STDDevPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_18STDDevPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %i.y = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %i.z = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ak, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ab = add i64 %i.aa, 1
  %i.ac = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = uitofp i64 %i.ab to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fadd double %i.z, %i.af                 ; 4 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  store double %i.ag, ptr %i.m, align 8, !tbaa !598
  store double %i.aj, ptr %i.n, align 8, !tbaa !599
  %i.ak = add i64 %i.aa, 2                        ; 4 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = fsub double %i.al, %i.ag                ; 2 uses
  %i.an = uitofp i64 %i.ak to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %i.ag, %i.ao                ; 4 uses
  %i.aq = fsub double %i.al, %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  store double %i.ap, ptr %i.m, align 8, !tbaa !598
  store double %i.as, ptr %i.n, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !661

bb.e:                                             ; preds = %bb.a
  %i.at = load i8, ptr %1, align 8, !tbaa !167
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %3)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.thread
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !201
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !210
  %.not67 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not67, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !667 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bl, null
  %.not36.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i34, label %.preheader.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader30.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !667
  %i.bn = load ptr, ptr %i.bj, align 8, !noalias !667
  br label %bb.m

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !667
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !210, !noalias !667
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i35
  %.032.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.ct, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.032.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !667
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bs, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !noalias !667
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bx, %i.bw
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.032.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !667
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !614, !alias.scope !665, !noalias !662 ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bs
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !596, !noalias !667
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !596, !noalias !667
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !59, !alias.scope !662, !noalias !665 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !598, !noalias !667 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = uitofp i64 %i.cg to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  %i.co = fsub double %i.ch, %i.cn
  %i.cp = fmul double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !599, !noalias !667
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cn, ptr %i.ci, align 8, !tbaa !598, !noalias !667
  store double %i.cs, ptr %i.cq, align 8, !tbaa !599, !noalias !667
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i37, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.m, !llvm.loop !668

bb.p:                                             ; preds = %bb.p, %.lr.ph34.i
  %.02533.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.dr, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.02533.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !667
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02533.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !667
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !614, !alias.scope !665, !noalias !662 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !596, !noalias !667
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !tbaa !596, !noalias !667
  %i.df = load double, ptr %i.dc, align 8, !tbaa !59, !alias.scope !662, !noalias !665 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !598, !noalias !667 ; 2 uses
  %i.di = fsub double %i.df, %i.dh                ; 2 uses
  %i.dj = uitofp i64 %i.de to double
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fadd double %i.dh, %i.dk                ; 2 uses
  %i.dm = fsub double %i.df, %i.dl
  %i.dn = fmul double %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !599, !noalias !667
  %i.dq = fadd double %i.dp, %i.dn
  store double %i.dl, ptr %i.dg, align 8, !tbaa !598, !noalias !667
  store double %i.dq, ptr %i.do, align 8, !tbaa !599, !noalias !667
  %i.dr = add nuw i64 %.02533.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.dr, %3
  br i1 %exitcond38.not.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.p, !llvm.loop !669

bb.q:                                             ; preds = %.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.af, %bb.z, %bb.s, %bb.k, %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  br label %bb.bh

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !211 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 2 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181, !noalias !675 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ea, null
  %.not33.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i39, label %.preheader.i43, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.preheader27.i
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !675
  br label %bb.u

.preheader.i43:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_18STDDevPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i43
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !675
end_hunk_7
begin_hunk_8_@_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm:bb.a
.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb18STDDevPopOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !698

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18STDDevPopOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !596    ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !599
  %i.d = uitofp i64 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = tail call double @sqrt(double noundef %i.e) #22, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.g = phi double [ %i.f, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  store double %i.g, ptr %1, align 8, !tbaa !59
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.g)
  br i1 %i.h, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.l unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.b
  ret void

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn15 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_18STDDevPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %2, align 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.i, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.an, %._crit_edge.i.unr-lcssa ]
  %.epil.init25 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init27 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.k = add i64 %.epil.init27, 1                 ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.m = fsub double %i.l, %.epil.init25          ; 2 uses
  %i.n = uitofp i64 %i.k to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fadd double %.epil.init25, %i.o          ; 2 uses
  %i.q = fsub double %i.l, %i.p
  %i.r = fmul double %i.m, %i.q
  %i.s = fadd double %.epil.init, %i.r
  store double %i.p, ptr %i.h, align 8, !tbaa !598
  store double %i.s, ptr %i.i, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.k, %.epil.preheader ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.t = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.an, %bb.c ]
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.w = add i64 %i.v, 1
  %i.x = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.y = fsub double %i.x, %i.u                   ; 2 uses
  %i.z = uitofp i64 %i.w to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 4 uses
  %i.ac = fsub double %i.x, %i.ab
  %i.ad = fmul double %i.y, %i.ac
  %i.ae = fadd double %i.t, %i.ad                 ; 2 uses
  store double %i.ab, ptr %i.h, align 8, !tbaa !598
  store double %i.ae, ptr %i.i, align 8, !tbaa !599
  %i.af = add i64 %i.v, 2                         ; 4 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ab                ; 2 uses
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.ab, %i.aj                ; 4 uses
  %i.al = fsub double %i.ag, %i.ak
  %i.am = fmul double %i.ah, %i.al
  %i.an = fadd double %i.ae, %i.am                ; 3 uses
  store double %i.ak, ptr %i.h, align 8, !tbaa !598
  store double %i.an, ptr %i.i, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !661

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %4, align 8, !tbaa !201
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !38
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cd

_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_18STDDevPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %.not52 = icmp eq i64 %i.b, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %.not.i, label %.thread.us, label %.lr.ph51.split

.thread.us:                                       ; preds = %.lr.ph51, %.loopexit.us
  %.049.us = phi i64 [ %i.ah, %.loopexit.us ], [ 0, %.lr.ph51 ]
  %.sroa.4.048.us = phi i64 [ %.sroa.4.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph51 ] ; 9 uses
  %i.f = add i64 %.sroa.4.048.us, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 6 uses
  %i.h = icmp ult i64 %.sroa.4.048.us, %i.g
  br i1 %i.h, label %.lr.ph42.us, label %.loopexit.us

.lr.ph42.us.new:                                  ; preds = %.prol.loopexit87, %.lr.ph42.us.new
  %i.i = phi double [ %i.af, %.lr.ph42.us.new ], [ %.unr90, %.prol.loopexit87 ]
  %i.j = phi double [ %i.ac, %.lr.ph42.us.new ], [ %.unr91, %.prol.loopexit87 ] ; 2 uses
  %i.k = phi i64 [ %i.x, %.lr.ph42.us.new ], [ %.unr92, %.prol.loopexit87 ] ; 2 uses
  %.sroa.4.141.us = phi i64 [ %i.ag, %.lr.ph42.us.new ], [ %.sroa.4.141.us.unr, %.prol.loopexit87 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.m = add i64 %i.k, 1
  %i.n = load double, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.o = fsub double %i.n, %i.j                   ; 2 uses
  %i.p = uitofp i64 %i.m to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fadd double %i.j, %i.q                   ; 3 uses
  %i.s = fsub double %i.n, %i.r
  %i.t = fmul double %i.o, %i.s
  %i.u = fadd double %i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = add i64 %i.k, 2                          ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %i.z = fsub double %i.y, %i.r                   ; 2 uses
  %i.aa = uitofp i64 %i.x to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.r, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.y, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.u, %i.ae                 ; 2 uses
  %i.ag = add nuw i64 %.sroa.4.141.us, 2          ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond64.not.1, label %..loopexit_crit_edge.us, label %.lr.ph42.us.new, !llvm.loop !699

.loopexit.us:                                     ; preds = %..loopexit_crit_edge.us, %.thread.us
  %.sroa.4.1.lcssa.us = phi i64 [ %i.g, %..loopexit_crit_edge.us ], [ %.sroa.4.048.us, %.thread.us ]
end_hunk_8
begin_hunk_9_@_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE:bb.a
  %.lcssa83.unr = phi double [ poison, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.lcssa82.unr = phi double [ poison, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted46, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr84 = phi double [ %.promoted44, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.unr85 = phi i64 [ %.promoted, %.lr.ph42 ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.141.unr = phi i64 [ %.sroa.4.048, %.lr.ph42 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ba, %.neg
  br i1 %i.bp, label %..loopexit_crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %.lr.ph42.new
  %i.bq = phi double [ %i.cn, %.lr.ph42.new ], [ %.unr, %.prol.loopexit ]
  %i.br = phi double [ %i.ck, %.lr.ph42.new ], [ %.unr84, %.prol.loopexit ] ; 2 uses
  %i.bs = phi i64 [ %i.cf, %.lr.ph42.new ], [ %.unr85, %.prol.loopexit ] ; 2 uses
  %.sroa.4.141 = phi i64 [ %i.co, %.lr.ph42.new ], [ %.sroa.4.141.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.bu = add i64 %i.bs, 1
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bw = fsub double %i.bv, %i.br                ; 2 uses
  %i.bx = uitofp i64 %i.bu to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.br, %i.by                ; 3 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fmul double %i.bw, %i.ca
  %i.cc = fadd double %i.bq, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add i64 %i.bs, 2                        ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.ch = fsub double %i.cg, %i.bz                ; 2 uses
  %i.ci = uitofp i64 %i.cf to double
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fadd double %i.bz, %i.cj                ; 3 uses
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = fadd double %i.cc, %i.cm                ; 2 uses
  %i.co = add nuw i64 %.sroa.4.141, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %.lr.ph42.new, !llvm.loop !699

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.4.240 = phi i64 [ %i.df, %bb.d ], [ %.sroa.4.048, %.preheader ] ; 3 uses
  %i.cp = sub nuw i64 %.sroa.4.240, %.sroa.4.048
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.ay
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.240
  %i.ct = load i64, ptr %2, align 8, !tbaa !596
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !596
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.cw = load double, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw                ; 2 uses
  %i.cy = uitofp i64 %i.cu to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cw, %i.cz                ; 2 uses
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = load double, ptr %i.e, align 8, !tbaa !599
  %i.de = fadd double %i.dd, %i.dc
  store double %i.da, ptr %i.d, align 8, !tbaa !598
  store double %i.de, ptr %i.e, align 8, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.df = add nuw i64 %.sroa.4.240, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph, !llvm.loop !701

..loopexit_crit_edge:                             ; preds = %.lr.ph42.new, %.prol.loopexit
  %.lcssa83 = phi double [ %.lcssa83.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph42.new ]
  %.lcssa82 = phi double [ %.lcssa82.unr, %.prol.loopexit ], [ %i.cn, %.lr.ph42.new ]
  %i.dg = add i64 %.promoted, %i.ba
  %i.dh = sub i64 %i.dg, %.sroa.4.048
  store i64 %i.dh, ptr %2, align 8, !tbaa !596
  store double %.lcssa83, ptr %i.d, align 8, !tbaa !598
  store double %.lcssa82, ptr %i.e, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %..loopexit_crit_edge, %.lr.ph51.split
  %.sroa.4.3 = phi i64 [ %i.ba, %.lr.ph51.split ], [ %.sroa.4.048, %bb.b ], [ %i.ba, %..loopexit_crit_edge ], [ %.sroa.4.048, %.preheader ], [ %i.ba, %bb.d ]
  %i.di = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph51.split, !llvm.loop !700
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_18STDDevPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not34 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.b = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %bb.c
  %.01724.us = phi i64 [ %i.x, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.e = lshr i64 %.01724.us, 6
  %i.f = and i64 %.01724.us, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58
  %i.i = shl nuw i64 1, %i.f
  %i.j = and i64 %i.i, %i.h
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01724.us
  %i.l = load i64, ptr %2, align 8, !tbaa !596
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !596
  %i.n = load double, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = uitofp i64 %i.m to double
  %i.r = fdiv double %i.p, %i.q
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = load double, ptr %i.d, align 8, !tbaa !599
  %i.w = fadd double %i.v, %i.u
  store double %i.s, ptr %i.c, align 8, !tbaa !598
  store double %i.w, ptr %i.d, align 8, !tbaa !599
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.x = add nuw i64 %.01724.us, 1                ; 2 uses
  %exitcond42.not = icmp eq i64 %i.x, %3
  br i1 %exitcond42.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !702

.preheader:                                       ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %5, align 8, !tbaa !210    ; 4 uses
  %.not.i20 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted = load i64, ptr %2, align 8, !tbaa !596 ; 5 uses
  %.promoted27 = load double, ptr %i.z, align 8, !tbaa !598 ; 4 uses
  %.promoted29 = load double, ptr %i.aa, align 8, !tbaa !599 ; 4 uses
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader: ; preds = %.lr.ph26
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader: ; preds = %.lr.ph26
  %xtraiter72 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  br i1 %i.ac, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %unroll_iter83 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new
  %i.ad = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ae = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %i.af = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %.025.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 3 uses
  %niter84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %niter84.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ah = add i64 %i.af, 1
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 2 uses
  %i.ak = uitofp i64 %i.ah to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.ae, %i.al                ; 3 uses
  %i.an = fsub double %i.ai, %i.am
  %i.ao = fmul double %i.aj, %i.an
  %i.ap = fadd double %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add i64 %i.af, 2                        ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.au = fsub double %i.at, %i.am                ; 2 uses
  %i.av = uitofp i64 %i.as to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.am, %i.aw                ; 4 uses
  %i.ay = fsub double %i.at, %i.ax
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.ap, %i.az                ; 3 uses
  %i.bb = add nuw i64 %.025.us, 2                 ; 2 uses
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !703

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.e
  %.01724 = phi i64 [ %i.by, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01724
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.be, 63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = shl nuw i64 1, %i.bg
  %i.bk = and i64 %i.bj, %i.bi
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bm = load i64, ptr %2, align 8, !tbaa !596
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %2, align 8, !tbaa !596
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bp = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp                ; 2 uses
  %i.br = uitofp i64 %i.bn to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fmul double %i.bq, %i.bu
  %i.bw = load double, ptr %i.d, align 8, !tbaa !599
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bt, ptr %i.c, align 8, !tbaa !598
  store double %i.bx, ptr %i.d, align 8, !tbaa !599
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.d
  %i.by = add nuw i64 %.01724, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !702

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new
  %i.bz = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.ca = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %i.cb = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %.025 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = add i64 %i.cb, 1
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !59 ; 2 uses
  %i.ci = fsub double %i.ch, %i.ca                ; 2 uses
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ca, %i.ck                ; 3 uses
  %i.cm = fsub double %i.ch, %i.cl
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = fadd double %i.bz, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = add i64 %i.cb, 2                        ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl                ; 2 uses
  %i.cx = uitofp i64 %i.cu to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cl, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cw, %i.da
  %i.dc = fadd double %i.co, %i.db                ; 3 uses
  %i.dd = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !703

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %lcmp.mod79.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod79.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %.epil.init74 = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.epil.init76 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.as, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.025.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.bb, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us.epil.init
  %i.df = add i64 %.epil.init78, 1
  %i.dg = load double, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dh = fsub double %i.dg, %.epil.init76        ; 2 uses
  %i.di = uitofp i64 %i.df to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = fadd double %.epil.init76, %i.dj        ; 2 uses
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dh, %i.dl
  %i.dn = fadd double %.epil.init74, %i.dm
  br label %..loopexit_crit_edge

..loopexit_crit_edge.loopexit61.unr-lcssa:        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %.epil.init = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.epil.init66 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init68 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cu, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.025.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dd, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = add i64 %.epil.init68, 1
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.du = fsub double %i.dt, %.epil.init66        ; 2 uses
  %i.dv = uitofp i64 %i.ds to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %.epil.init66, %i.dw        ; 2 uses
  %i.dy = fsub double %i.dt, %i.dx
  %i.dz = fmul double %i.du, %i.dy
  %i.ea = fadd double %.epil.init, %i.dz
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, %..loopexit_crit_edge.loopexit.unr-lcssa
  %.us-phi = phi double [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi31 = phi double [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi32 = add i64 %.promoted, %3
  store i64 %.us-phi32, ptr %2, align 8, !tbaa !596
  store double %.us-phi31, ptr %i.z, align 8, !tbaa !598
  store double %.us-phi, ptr %i.aa, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader22, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_15VarPopOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_15VarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !704

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_15VarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_15VarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %i.y = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %i.z = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ak, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ab = add i64 %i.aa, 1
  %i.ac = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = uitofp i64 %i.ab to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fadd double %i.z, %i.af                 ; 4 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  store double %i.ag, ptr %i.m, align 8, !tbaa !598
  store double %i.aj, ptr %i.n, align 8, !tbaa !599
  %i.ak = add i64 %i.aa, 2                        ; 4 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = fsub double %i.al, %i.ag                ; 2 uses
  %i.an = uitofp i64 %i.ak to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %i.ag, %i.ao                ; 4 uses
  %i.aq = fsub double %i.al, %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  store double %i.ap, ptr %i.m, align 8, !tbaa !598
  store double %i.as, ptr %i.n, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !705

bb.e:                                             ; preds = %bb.a
  %i.at = load i8, ptr %1, align 8, !tbaa !167
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %3)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.thread
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !201
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !210
  %.not67 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not67, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !711 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bl, null
  %.not36.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i34, label %.preheader.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader30.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !711
  %i.bn = load ptr, ptr %i.bj, align 8, !noalias !711
  br label %bb.m

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !711
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !210, !noalias !711
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i35
  %.032.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.ct, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.032.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !711
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bs, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !noalias !711
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bx, %i.bw
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.032.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !711
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !614, !alias.scope !709, !noalias !706 ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bs
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !596, !noalias !711
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !596, !noalias !711
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !59, !alias.scope !706, !noalias !709 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !598, !noalias !711 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = uitofp i64 %i.cg to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  %i.co = fsub double %i.ch, %i.cn
  %i.cp = fmul double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !599, !noalias !711
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cn, ptr %i.ci, align 8, !tbaa !598, !noalias !711
  store double %i.cs, ptr %i.cq, align 8, !tbaa !599, !noalias !711
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i37, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.m, !llvm.loop !712

bb.p:                                             ; preds = %bb.p, %.lr.ph34.i
  %.02533.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.dr, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.02533.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !711
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02533.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !711
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !614, !alias.scope !709, !noalias !706 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !596, !noalias !711
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !tbaa !596, !noalias !711
  %i.df = load double, ptr %i.dc, align 8, !tbaa !59, !alias.scope !706, !noalias !709 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !598, !noalias !711 ; 2 uses
  %i.di = fsub double %i.df, %i.dh                ; 2 uses
  %i.dj = uitofp i64 %i.de to double
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fadd double %i.dh, %i.dk                ; 2 uses
  %i.dm = fsub double %i.df, %i.dl
  %i.dn = fmul double %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !599, !noalias !711
  %i.dq = fadd double %i.dp, %i.dn
  store double %i.dl, ptr %i.dg, align 8, !tbaa !598, !noalias !711
  store double %i.dq, ptr %i.do, align 8, !tbaa !599, !noalias !711
  %i.dr = add nuw i64 %.02533.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.dr, %3
  br i1 %exitcond38.not.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.p, !llvm.loop !713

bb.q:                                             ; preds = %.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.af, %bb.z, %bb.s, %bb.k, %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  br label %bb.bh

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !211 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 2 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181, !noalias !719 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ea, null
  %.not33.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i39, label %.preheader.i43, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.preheader27.i
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !719
  br label %bb.u

.preheader.i43:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_15VarPopOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i43
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !719
end_hunk_9
begin_hunk_10_@_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm:bb.a

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb15VarPopOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !742

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15VarPopOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !596    ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !599
  %i.d = uitofp i64 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.f = phi double [ %i.e, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  store double %i.f, ptr %1, align 8, !tbaa !59
  %i.g = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.f)
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.l unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.b
  ret void

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn15 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_15VarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %2, align 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.i, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.an, %._crit_edge.i.unr-lcssa ]
  %.epil.init25 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init27 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.k = add i64 %.epil.init27, 1                 ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.m = fsub double %i.l, %.epil.init25          ; 2 uses
  %i.n = uitofp i64 %i.k to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fadd double %.epil.init25, %i.o          ; 2 uses
  %i.q = fsub double %i.l, %i.p
  %i.r = fmul double %i.m, %i.q
  %i.s = fadd double %.epil.init, %i.r
  store double %i.p, ptr %i.h, align 8, !tbaa !598
  store double %i.s, ptr %i.i, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.k, %.epil.preheader ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.t = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.an, %bb.c ]
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.w = add i64 %i.v, 1
  %i.x = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.y = fsub double %i.x, %i.u                   ; 2 uses
  %i.z = uitofp i64 %i.w to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 4 uses
  %i.ac = fsub double %i.x, %i.ab
  %i.ad = fmul double %i.y, %i.ac
  %i.ae = fadd double %i.t, %i.ad                 ; 2 uses
  store double %i.ab, ptr %i.h, align 8, !tbaa !598
  store double %i.ae, ptr %i.i, align 8, !tbaa !599
  %i.af = add i64 %i.v, 2                         ; 4 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ab                ; 2 uses
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.ab, %i.aj                ; 4 uses
  %i.al = fsub double %i.ag, %i.ak
  %i.am = fmul double %i.ah, %i.al
  %i.an = fadd double %i.ae, %i.am                ; 3 uses
  store double %i.ak, ptr %i.h, align 8, !tbaa !598
  store double %i.an, ptr %i.i, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !705

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %4, align 8, !tbaa !201
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !38
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cd

_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_15VarPopOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %.not52 = icmp eq i64 %i.b, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %.not.i, label %.thread.us, label %.lr.ph51.split

.thread.us:                                       ; preds = %.lr.ph51, %.loopexit.us
  %.049.us = phi i64 [ %i.ah, %.loopexit.us ], [ 0, %.lr.ph51 ]
  %.sroa.4.048.us = phi i64 [ %.sroa.4.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph51 ] ; 9 uses
  %i.f = add i64 %.sroa.4.048.us, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 6 uses
  %i.h = icmp ult i64 %.sroa.4.048.us, %i.g
  br i1 %i.h, label %.lr.ph42.us, label %.loopexit.us

.lr.ph42.us.new:                                  ; preds = %.prol.loopexit87, %.lr.ph42.us.new
  %i.i = phi double [ %i.af, %.lr.ph42.us.new ], [ %.unr90, %.prol.loopexit87 ]
  %i.j = phi double [ %i.ac, %.lr.ph42.us.new ], [ %.unr91, %.prol.loopexit87 ] ; 2 uses
  %i.k = phi i64 [ %i.x, %.lr.ph42.us.new ], [ %.unr92, %.prol.loopexit87 ] ; 2 uses
  %.sroa.4.141.us = phi i64 [ %i.ag, %.lr.ph42.us.new ], [ %.sroa.4.141.us.unr, %.prol.loopexit87 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.m = add i64 %i.k, 1
  %i.n = load double, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.o = fsub double %i.n, %i.j                   ; 2 uses
  %i.p = uitofp i64 %i.m to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fadd double %i.j, %i.q                   ; 3 uses
  %i.s = fsub double %i.n, %i.r
  %i.t = fmul double %i.o, %i.s
  %i.u = fadd double %i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = add i64 %i.k, 2                          ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %i.z = fsub double %i.y, %i.r                   ; 2 uses
  %i.aa = uitofp i64 %i.x to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.r, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.y, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.u, %i.ae                 ; 2 uses
  %i.ag = add nuw i64 %.sroa.4.141.us, 2          ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond64.not.1, label %..loopexit_crit_edge.us, label %.lr.ph42.us.new, !llvm.loop !743

.loopexit.us:                                     ; preds = %..loopexit_crit_edge.us, %.thread.us
  %.sroa.4.1.lcssa.us = phi i64 [ %i.g, %..loopexit_crit_edge.us ], [ %.sroa.4.048.us, %.thread.us ]
end_hunk_10
begin_hunk_11_@_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE:bb.a
  %.lcssa83.unr = phi double [ poison, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.lcssa82.unr = phi double [ poison, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted46, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr84 = phi double [ %.promoted44, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.unr85 = phi i64 [ %.promoted, %.lr.ph42 ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.141.unr = phi i64 [ %.sroa.4.048, %.lr.ph42 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ba, %.neg
  br i1 %i.bp, label %..loopexit_crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %.lr.ph42.new
  %i.bq = phi double [ %i.cn, %.lr.ph42.new ], [ %.unr, %.prol.loopexit ]
  %i.br = phi double [ %i.ck, %.lr.ph42.new ], [ %.unr84, %.prol.loopexit ] ; 2 uses
  %i.bs = phi i64 [ %i.cf, %.lr.ph42.new ], [ %.unr85, %.prol.loopexit ] ; 2 uses
  %.sroa.4.141 = phi i64 [ %i.co, %.lr.ph42.new ], [ %.sroa.4.141.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.bu = add i64 %i.bs, 1
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bw = fsub double %i.bv, %i.br                ; 2 uses
  %i.bx = uitofp i64 %i.bu to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.br, %i.by                ; 3 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fmul double %i.bw, %i.ca
  %i.cc = fadd double %i.bq, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add i64 %i.bs, 2                        ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.ch = fsub double %i.cg, %i.bz                ; 2 uses
  %i.ci = uitofp i64 %i.cf to double
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fadd double %i.bz, %i.cj                ; 3 uses
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = fadd double %i.cc, %i.cm                ; 2 uses
  %i.co = add nuw i64 %.sroa.4.141, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %.lr.ph42.new, !llvm.loop !743

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.4.240 = phi i64 [ %i.df, %bb.d ], [ %.sroa.4.048, %.preheader ] ; 3 uses
  %i.cp = sub nuw i64 %.sroa.4.240, %.sroa.4.048
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.ay
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.240
  %i.ct = load i64, ptr %2, align 8, !tbaa !596
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !596
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.cw = load double, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw                ; 2 uses
  %i.cy = uitofp i64 %i.cu to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cw, %i.cz                ; 2 uses
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = load double, ptr %i.e, align 8, !tbaa !599
  %i.de = fadd double %i.dd, %i.dc
  store double %i.da, ptr %i.d, align 8, !tbaa !598
  store double %i.de, ptr %i.e, align 8, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.df = add nuw i64 %.sroa.4.240, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph, !llvm.loop !745

..loopexit_crit_edge:                             ; preds = %.lr.ph42.new, %.prol.loopexit
  %.lcssa83 = phi double [ %.lcssa83.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph42.new ]
  %.lcssa82 = phi double [ %.lcssa82.unr, %.prol.loopexit ], [ %i.cn, %.lr.ph42.new ]
  %i.dg = add i64 %.promoted, %i.ba
  %i.dh = sub i64 %i.dg, %.sroa.4.048
  store i64 %i.dh, ptr %2, align 8, !tbaa !596
  store double %.lcssa83, ptr %i.d, align 8, !tbaa !598
  store double %.lcssa82, ptr %i.e, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %..loopexit_crit_edge, %.lr.ph51.split
  %.sroa.4.3 = phi i64 [ %i.ba, %.lr.ph51.split ], [ %.sroa.4.048, %bb.b ], [ %i.ba, %..loopexit_crit_edge ], [ %.sroa.4.048, %.preheader ], [ %i.ba, %bb.d ]
  %i.di = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph51.split, !llvm.loop !744
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_15VarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not34 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.b = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %bb.c
  %.01724.us = phi i64 [ %i.x, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.e = lshr i64 %.01724.us, 6
  %i.f = and i64 %.01724.us, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58
  %i.i = shl nuw i64 1, %i.f
  %i.j = and i64 %i.i, %i.h
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01724.us
  %i.l = load i64, ptr %2, align 8, !tbaa !596
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !596
  %i.n = load double, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = uitofp i64 %i.m to double
  %i.r = fdiv double %i.p, %i.q
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = load double, ptr %i.d, align 8, !tbaa !599
  %i.w = fadd double %i.v, %i.u
  store double %i.s, ptr %i.c, align 8, !tbaa !598
  store double %i.w, ptr %i.d, align 8, !tbaa !599
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.x = add nuw i64 %.01724.us, 1                ; 2 uses
  %exitcond42.not = icmp eq i64 %i.x, %3
  br i1 %exitcond42.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !746

.preheader:                                       ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %5, align 8, !tbaa !210    ; 4 uses
  %.not.i20 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted = load i64, ptr %2, align 8, !tbaa !596 ; 5 uses
  %.promoted27 = load double, ptr %i.z, align 8, !tbaa !598 ; 4 uses
  %.promoted29 = load double, ptr %i.aa, align 8, !tbaa !599 ; 4 uses
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader: ; preds = %.lr.ph26
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader: ; preds = %.lr.ph26
  %xtraiter72 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  br i1 %i.ac, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %unroll_iter83 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new
  %i.ad = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ae = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %i.af = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %.025.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 3 uses
  %niter84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %niter84.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ah = add i64 %i.af, 1
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 2 uses
  %i.ak = uitofp i64 %i.ah to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.ae, %i.al                ; 3 uses
  %i.an = fsub double %i.ai, %i.am
  %i.ao = fmul double %i.aj, %i.an
  %i.ap = fadd double %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add i64 %i.af, 2                        ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.au = fsub double %i.at, %i.am                ; 2 uses
  %i.av = uitofp i64 %i.as to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.am, %i.aw                ; 4 uses
  %i.ay = fsub double %i.at, %i.ax
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.ap, %i.az                ; 3 uses
  %i.bb = add nuw i64 %.025.us, 2                 ; 2 uses
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !747

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.e
  %.01724 = phi i64 [ %i.by, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01724
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.be, 63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = shl nuw i64 1, %i.bg
  %i.bk = and i64 %i.bj, %i.bi
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bm = load i64, ptr %2, align 8, !tbaa !596
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %2, align 8, !tbaa !596
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bp = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp                ; 2 uses
  %i.br = uitofp i64 %i.bn to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fmul double %i.bq, %i.bu
  %i.bw = load double, ptr %i.d, align 8, !tbaa !599
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bt, ptr %i.c, align 8, !tbaa !598
  store double %i.bx, ptr %i.d, align 8, !tbaa !599
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.d
  %i.by = add nuw i64 %.01724, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !746

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new
  %i.bz = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.ca = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %i.cb = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %.025 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = add i64 %i.cb, 1
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !59 ; 2 uses
  %i.ci = fsub double %i.ch, %i.ca                ; 2 uses
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ca, %i.ck                ; 3 uses
  %i.cm = fsub double %i.ch, %i.cl
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = fadd double %i.bz, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = add i64 %i.cb, 2                        ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl                ; 2 uses
  %i.cx = uitofp i64 %i.cu to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cl, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cw, %i.da
  %i.dc = fadd double %i.co, %i.db                ; 3 uses
  %i.dd = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !747

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %lcmp.mod79.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod79.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %.epil.init74 = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.epil.init76 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.as, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.025.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.bb, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us.epil.init
  %i.df = add i64 %.epil.init78, 1
  %i.dg = load double, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dh = fsub double %i.dg, %.epil.init76        ; 2 uses
  %i.di = uitofp i64 %i.df to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = fadd double %.epil.init76, %i.dj        ; 2 uses
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dh, %i.dl
  %i.dn = fadd double %.epil.init74, %i.dm
  br label %..loopexit_crit_edge

..loopexit_crit_edge.loopexit61.unr-lcssa:        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %.epil.init = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.epil.init66 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init68 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cu, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.025.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dd, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = add i64 %.epil.init68, 1
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.du = fsub double %i.dt, %.epil.init66        ; 2 uses
  %i.dv = uitofp i64 %i.ds to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %.epil.init66, %i.dw        ; 2 uses
  %i.dy = fsub double %i.dt, %i.dx
  %i.dz = fmul double %i.du, %i.dy
  %i.ea = fadd double %.epil.init, %i.dz
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, %..loopexit_crit_edge.loopexit.unr-lcssa
  %.us-phi = phi double [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi31 = phi double [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi32 = add i64 %.promoted, %3
  store i64 %.us-phi32, ptr %2, align 8, !tbaa !596
  store double %.us-phi31, ptr %i.z, align 8, !tbaa !598
  store double %.us-phi, ptr %i.aa, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader22, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_16VarSampOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_16VarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !748

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_16VarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_16VarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %i.y = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %i.z = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ak, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ab = add i64 %i.aa, 1
  %i.ac = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = uitofp i64 %i.ab to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fadd double %i.z, %i.af                 ; 4 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  store double %i.ag, ptr %i.m, align 8, !tbaa !598
  store double %i.aj, ptr %i.n, align 8, !tbaa !599
  %i.ak = add i64 %i.aa, 2                        ; 4 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = fsub double %i.al, %i.ag                ; 2 uses
  %i.an = uitofp i64 %i.ak to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %i.ag, %i.ao                ; 4 uses
  %i.aq = fsub double %i.al, %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  store double %i.ap, ptr %i.m, align 8, !tbaa !598
  store double %i.as, ptr %i.n, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !749

bb.e:                                             ; preds = %bb.a
  %i.at = load i8, ptr %1, align 8, !tbaa !167
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %3)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.thread
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !201
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !210
  %.not67 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not67, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !755 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bl, null
  %.not36.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i34, label %.preheader.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader30.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !755
  %i.bn = load ptr, ptr %i.bj, align 8, !noalias !755
  br label %bb.m

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !755
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !210, !noalias !755
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i35
  %.032.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.ct, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.032.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !755
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bs, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !noalias !755
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bx, %i.bw
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.032.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !755
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !614, !alias.scope !753, !noalias !750 ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bs
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !596, !noalias !755
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !596, !noalias !755
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !59, !alias.scope !750, !noalias !753 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !598, !noalias !755 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = uitofp i64 %i.cg to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  %i.co = fsub double %i.ch, %i.cn
  %i.cp = fmul double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !599, !noalias !755
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cn, ptr %i.ci, align 8, !tbaa !598, !noalias !755
  store double %i.cs, ptr %i.cq, align 8, !tbaa !599, !noalias !755
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i37, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.m, !llvm.loop !756

bb.p:                                             ; preds = %bb.p, %.lr.ph34.i
  %.02533.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.dr, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.02533.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !755
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02533.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !755
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !614, !alias.scope !753, !noalias !750 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !596, !noalias !755
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !tbaa !596, !noalias !755
  %i.df = load double, ptr %i.dc, align 8, !tbaa !59, !alias.scope !750, !noalias !753 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !598, !noalias !755 ; 2 uses
  %i.di = fsub double %i.df, %i.dh                ; 2 uses
  %i.dj = uitofp i64 %i.de to double
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fadd double %i.dh, %i.dk                ; 2 uses
  %i.dm = fsub double %i.df, %i.dl
  %i.dn = fmul double %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !599, !noalias !755
  %i.dq = fadd double %i.dp, %i.dn
  store double %i.dl, ptr %i.dg, align 8, !tbaa !598, !noalias !755
  store double %i.dq, ptr %i.do, align 8, !tbaa !599, !noalias !755
  %i.dr = add nuw i64 %.02533.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.dr, %3
  br i1 %exitcond38.not.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.p, !llvm.loop !757

bb.q:                                             ; preds = %.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.af, %bb.z, %bb.s, %bb.k, %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  br label %bb.bh

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !211 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 2 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181, !noalias !763 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ea, null
  %.not33.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i39, label %.preheader.i43, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.preheader27.i
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !763
  br label %bb.u

.preheader.i43:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_16VarSampOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i43
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !763
end_hunk_11
begin_hunk_12_@_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb16VarSampOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !786

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16VarSampOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !596    ; 2 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !599
  %i.e = add i64 %i.a, -1
  %i.f = uitofp i64 %i.e to double
  %i.g = fdiv double %i.d, %i.f                   ; 2 uses
  store double %i.g, ptr %1, align 8, !tbaa !59
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.g)
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn14 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn15, %bb.h ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn14

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_16VarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %2, align 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.i, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.an, %._crit_edge.i.unr-lcssa ]
  %.epil.init25 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init27 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.k = add i64 %.epil.init27, 1                 ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.m = fsub double %i.l, %.epil.init25          ; 2 uses
  %i.n = uitofp i64 %i.k to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fadd double %.epil.init25, %i.o          ; 2 uses
  %i.q = fsub double %i.l, %i.p
  %i.r = fmul double %i.m, %i.q
  %i.s = fadd double %.epil.init, %i.r
  store double %i.p, ptr %i.h, align 8, !tbaa !598
  store double %i.s, ptr %i.i, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.k, %.epil.preheader ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.t = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.an, %bb.c ]
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.w = add i64 %i.v, 1
  %i.x = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.y = fsub double %i.x, %i.u                   ; 2 uses
  %i.z = uitofp i64 %i.w to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 4 uses
  %i.ac = fsub double %i.x, %i.ab
  %i.ad = fmul double %i.y, %i.ac
  %i.ae = fadd double %i.t, %i.ad                 ; 2 uses
  store double %i.ab, ptr %i.h, align 8, !tbaa !598
  store double %i.ae, ptr %i.i, align 8, !tbaa !599
  %i.af = add i64 %i.v, 2                         ; 4 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ab                ; 2 uses
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.ab, %i.aj                ; 4 uses
  %i.al = fsub double %i.ag, %i.ak
  %i.am = fmul double %i.ah, %i.al
  %i.an = fadd double %i.ae, %i.am                ; 3 uses
  store double %i.ak, ptr %i.h, align 8, !tbaa !598
  store double %i.an, ptr %i.i, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !749

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %4, align 8, !tbaa !201
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !38
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cd

_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_16VarSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %.not52 = icmp eq i64 %i.b, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %.not.i, label %.thread.us, label %.lr.ph51.split

.thread.us:                                       ; preds = %.lr.ph51, %.loopexit.us
  %.049.us = phi i64 [ %i.ah, %.loopexit.us ], [ 0, %.lr.ph51 ]
  %.sroa.4.048.us = phi i64 [ %.sroa.4.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph51 ] ; 9 uses
  %i.f = add i64 %.sroa.4.048.us, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 6 uses
  %i.h = icmp ult i64 %.sroa.4.048.us, %i.g
  br i1 %i.h, label %.lr.ph42.us, label %.loopexit.us

.lr.ph42.us.new:                                  ; preds = %.prol.loopexit87, %.lr.ph42.us.new
  %i.i = phi double [ %i.af, %.lr.ph42.us.new ], [ %.unr90, %.prol.loopexit87 ]
  %i.j = phi double [ %i.ac, %.lr.ph42.us.new ], [ %.unr91, %.prol.loopexit87 ] ; 2 uses
  %i.k = phi i64 [ %i.x, %.lr.ph42.us.new ], [ %.unr92, %.prol.loopexit87 ] ; 2 uses
  %.sroa.4.141.us = phi i64 [ %i.ag, %.lr.ph42.us.new ], [ %.sroa.4.141.us.unr, %.prol.loopexit87 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.m = add i64 %i.k, 1
  %i.n = load double, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.o = fsub double %i.n, %i.j                   ; 2 uses
  %i.p = uitofp i64 %i.m to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fadd double %i.j, %i.q                   ; 3 uses
  %i.s = fsub double %i.n, %i.r
  %i.t = fmul double %i.o, %i.s
  %i.u = fadd double %i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = add i64 %i.k, 2                          ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %i.z = fsub double %i.y, %i.r                   ; 2 uses
  %i.aa = uitofp i64 %i.x to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.r, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.y, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.u, %i.ae                 ; 2 uses
  %i.ag = add nuw i64 %.sroa.4.141.us, 2          ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond64.not.1, label %..loopexit_crit_edge.us, label %.lr.ph42.us.new, !llvm.loop !787

.loopexit.us:                                     ; preds = %..loopexit_crit_edge.us, %.thread.us
  %.sroa.4.1.lcssa.us = phi i64 [ %i.g, %..loopexit_crit_edge.us ], [ %.sroa.4.048.us, %.thread.us ]
end_hunk_12
begin_hunk_13_@_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE:bb.a
  %.lcssa83.unr = phi double [ poison, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.lcssa82.unr = phi double [ poison, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted46, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr84 = phi double [ %.promoted44, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.unr85 = phi i64 [ %.promoted, %.lr.ph42 ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.141.unr = phi i64 [ %.sroa.4.048, %.lr.ph42 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ba, %.neg
  br i1 %i.bp, label %..loopexit_crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %.lr.ph42.new
  %i.bq = phi double [ %i.cn, %.lr.ph42.new ], [ %.unr, %.prol.loopexit ]
  %i.br = phi double [ %i.ck, %.lr.ph42.new ], [ %.unr84, %.prol.loopexit ] ; 2 uses
  %i.bs = phi i64 [ %i.cf, %.lr.ph42.new ], [ %.unr85, %.prol.loopexit ] ; 2 uses
  %.sroa.4.141 = phi i64 [ %i.co, %.lr.ph42.new ], [ %.sroa.4.141.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.bu = add i64 %i.bs, 1
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bw = fsub double %i.bv, %i.br                ; 2 uses
  %i.bx = uitofp i64 %i.bu to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.br, %i.by                ; 3 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fmul double %i.bw, %i.ca
  %i.cc = fadd double %i.bq, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add i64 %i.bs, 2                        ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.ch = fsub double %i.cg, %i.bz                ; 2 uses
  %i.ci = uitofp i64 %i.cf to double
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fadd double %i.bz, %i.cj                ; 3 uses
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = fadd double %i.cc, %i.cm                ; 2 uses
  %i.co = add nuw i64 %.sroa.4.141, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %.lr.ph42.new, !llvm.loop !787

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.4.240 = phi i64 [ %i.df, %bb.d ], [ %.sroa.4.048, %.preheader ] ; 3 uses
  %i.cp = sub nuw i64 %.sroa.4.240, %.sroa.4.048
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.ay
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.240
  %i.ct = load i64, ptr %2, align 8, !tbaa !596
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !596
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.cw = load double, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw                ; 2 uses
  %i.cy = uitofp i64 %i.cu to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cw, %i.cz                ; 2 uses
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = load double, ptr %i.e, align 8, !tbaa !599
  %i.de = fadd double %i.dd, %i.dc
  store double %i.da, ptr %i.d, align 8, !tbaa !598
  store double %i.de, ptr %i.e, align 8, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.df = add nuw i64 %.sroa.4.240, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph, !llvm.loop !789

..loopexit_crit_edge:                             ; preds = %.lr.ph42.new, %.prol.loopexit
  %.lcssa83 = phi double [ %.lcssa83.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph42.new ]
  %.lcssa82 = phi double [ %.lcssa82.unr, %.prol.loopexit ], [ %i.cn, %.lr.ph42.new ]
  %i.dg = add i64 %.promoted, %i.ba
  %i.dh = sub i64 %i.dg, %.sroa.4.048
  store i64 %i.dh, ptr %2, align 8, !tbaa !596
  store double %.lcssa83, ptr %i.d, align 8, !tbaa !598
  store double %.lcssa82, ptr %i.e, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %..loopexit_crit_edge, %.lr.ph51.split
  %.sroa.4.3 = phi i64 [ %i.ba, %.lr.ph51.split ], [ %.sroa.4.048, %bb.b ], [ %i.ba, %..loopexit_crit_edge ], [ %.sroa.4.048, %.preheader ], [ %i.ba, %bb.d ]
  %i.di = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph51.split, !llvm.loop !788
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_16VarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not34 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.b = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %bb.c
  %.01724.us = phi i64 [ %i.x, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.e = lshr i64 %.01724.us, 6
  %i.f = and i64 %.01724.us, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58
  %i.i = shl nuw i64 1, %i.f
  %i.j = and i64 %i.i, %i.h
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01724.us
  %i.l = load i64, ptr %2, align 8, !tbaa !596
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !596
  %i.n = load double, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = uitofp i64 %i.m to double
  %i.r = fdiv double %i.p, %i.q
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = load double, ptr %i.d, align 8, !tbaa !599
  %i.w = fadd double %i.v, %i.u
  store double %i.s, ptr %i.c, align 8, !tbaa !598
  store double %i.w, ptr %i.d, align 8, !tbaa !599
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.x = add nuw i64 %.01724.us, 1                ; 2 uses
  %exitcond42.not = icmp eq i64 %i.x, %3
  br i1 %exitcond42.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !790

.preheader:                                       ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %5, align 8, !tbaa !210    ; 4 uses
  %.not.i20 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted = load i64, ptr %2, align 8, !tbaa !596 ; 5 uses
  %.promoted27 = load double, ptr %i.z, align 8, !tbaa !598 ; 4 uses
  %.promoted29 = load double, ptr %i.aa, align 8, !tbaa !599 ; 4 uses
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader: ; preds = %.lr.ph26
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader: ; preds = %.lr.ph26
  %xtraiter72 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  br i1 %i.ac, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %unroll_iter83 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new
  %i.ad = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ae = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %i.af = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %.025.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 3 uses
  %niter84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %niter84.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ah = add i64 %i.af, 1
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 2 uses
  %i.ak = uitofp i64 %i.ah to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.ae, %i.al                ; 3 uses
  %i.an = fsub double %i.ai, %i.am
  %i.ao = fmul double %i.aj, %i.an
  %i.ap = fadd double %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add i64 %i.af, 2                        ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.au = fsub double %i.at, %i.am                ; 2 uses
  %i.av = uitofp i64 %i.as to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.am, %i.aw                ; 4 uses
  %i.ay = fsub double %i.at, %i.ax
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.ap, %i.az                ; 3 uses
  %i.bb = add nuw i64 %.025.us, 2                 ; 2 uses
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !791

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.e
  %.01724 = phi i64 [ %i.by, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01724
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.be, 63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = shl nuw i64 1, %i.bg
  %i.bk = and i64 %i.bj, %i.bi
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bm = load i64, ptr %2, align 8, !tbaa !596
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %2, align 8, !tbaa !596
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bp = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp                ; 2 uses
  %i.br = uitofp i64 %i.bn to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fmul double %i.bq, %i.bu
  %i.bw = load double, ptr %i.d, align 8, !tbaa !599
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bt, ptr %i.c, align 8, !tbaa !598
  store double %i.bx, ptr %i.d, align 8, !tbaa !599
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.d
  %i.by = add nuw i64 %.01724, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !790

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new
  %i.bz = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.ca = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %i.cb = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %.025 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = add i64 %i.cb, 1
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !59 ; 2 uses
  %i.ci = fsub double %i.ch, %i.ca                ; 2 uses
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ca, %i.ck                ; 3 uses
  %i.cm = fsub double %i.ch, %i.cl
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = fadd double %i.bz, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = add i64 %i.cb, 2                        ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl                ; 2 uses
  %i.cx = uitofp i64 %i.cu to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cl, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cw, %i.da
  %i.dc = fadd double %i.co, %i.db                ; 3 uses
  %i.dd = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !791

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %lcmp.mod79.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod79.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %.epil.init74 = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.epil.init76 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.as, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.025.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.bb, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us.epil.init
  %i.df = add i64 %.epil.init78, 1
  %i.dg = load double, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dh = fsub double %i.dg, %.epil.init76        ; 2 uses
  %i.di = uitofp i64 %i.df to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = fadd double %.epil.init76, %i.dj        ; 2 uses
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dh, %i.dl
  %i.dn = fadd double %.epil.init74, %i.dm
  br label %..loopexit_crit_edge

..loopexit_crit_edge.loopexit61.unr-lcssa:        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %.epil.init = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.epil.init66 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init68 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cu, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.025.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dd, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = add i64 %.epil.init68, 1
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.du = fsub double %i.dt, %.epil.init66        ; 2 uses
  %i.dv = uitofp i64 %i.ds to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %.epil.init66, %i.dw        ; 2 uses
  %i.dy = fsub double %i.dt, %i.dx
  %i.dz = fmul double %i.du, %i.dy
  %i.ea = fadd double %.epil.init, %i.dz
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, %..loopexit_crit_edge.loopexit.unr-lcssa
  %.us-phi = phi double [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi31 = phi double [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi32 = add i64 %.promoted, %3
  store i64 %.us-phi32, ptr %2, align 8, !tbaa !596
  store double %.us-phi31, ptr %i.z, align 8, !tbaa !598
  store double %.us-phi, ptr %i.aa, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader22, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_31StandardErrorOfTheMeanOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !792

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %i.y = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %i.z = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ak, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ab = add i64 %i.aa, 1
  %i.ac = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = uitofp i64 %i.ab to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fadd double %i.z, %i.af                 ; 4 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai                 ; 2 uses
  store double %i.ag, ptr %i.m, align 8, !tbaa !598
  store double %i.aj, ptr %i.n, align 8, !tbaa !599
  %i.ak = add i64 %i.aa, 2                        ; 4 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = fsub double %i.al, %i.ag                ; 2 uses
  %i.an = uitofp i64 %i.ak to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %i.ag, %i.ao                ; 4 uses
  %i.aq = fsub double %i.al, %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  store double %i.ap, ptr %i.m, align 8, !tbaa !598
  store double %i.as, ptr %i.n, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !793

bb.e:                                             ; preds = %bb.a
  %i.at = load i8, ptr %1, align 8, !tbaa !167
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %3)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.thread
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %4, align 8, !tbaa !201
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !210
  %.not67 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not67, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !799 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bl, null
  %.not36.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i34, label %.preheader.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader30.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !799
  %i.bn = load ptr, ptr %i.bj, align 8, !noalias !799
  br label %bb.m

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not36.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !799
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !210, !noalias !799
  br label %bb.p

bb.m:                                             ; preds = %bb.o, %.lr.ph.i35
  %.032.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.ct, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.032.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !799
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bs, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58, !noalias !799
  %i.bx = shl nuw i64 1, %i.bu
  %i.by = and i64 %i.bx, %i.bw
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.032.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !799
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !614, !alias.scope !797, !noalias !794 ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bs
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !596, !noalias !799
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !596, !noalias !799
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !59, !alias.scope !794, !noalias !797 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !598, !noalias !799 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = uitofp i64 %i.cg to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  %i.co = fsub double %i.ch, %i.cn
  %i.cp = fmul double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !599, !noalias !799
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cn, ptr %i.ci, align 8, !tbaa !598, !noalias !799
  store double %i.cs, ptr %i.cq, align 8, !tbaa !599, !noalias !799
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i37, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.m, !llvm.loop !800

bb.p:                                             ; preds = %bb.p, %.lr.ph34.i
  %.02533.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.dr, %bb.p ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.02533.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !799
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02533.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !799
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !614, !alias.scope !797, !noalias !794 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !596, !noalias !799
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !tbaa !596, !noalias !799
  %i.df = load double, ptr %i.dc, align 8, !tbaa !59, !alias.scope !794, !noalias !797 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !598, !noalias !799 ; 2 uses
  %i.di = fsub double %i.df, %i.dh                ; 2 uses
  %i.dj = uitofp i64 %i.de to double
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fadd double %i.dh, %i.dk                ; 2 uses
  %i.dm = fsub double %i.df, %i.dl
  %i.dn = fmul double %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !599, !noalias !799
  %i.dq = fadd double %i.dp, %i.dn
  store double %i.dl, ptr %i.dg, align 8, !tbaa !598, !noalias !799
  store double %i.dq, ptr %i.do, align 8, !tbaa !599, !noalias !799
  %i.dr = add nuw i64 %.02533.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.dr, %3
  br i1 %exitcond38.not.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %bb.p, !llvm.loop !801

bb.q:                                             ; preds = %.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.af, %bb.z, %bb.s, %bb.k, %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  br label %bb.bh

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !211 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 2 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !201   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !181, !noalias !807 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ea, null
  %.not33.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i.i39, label %.preheader.i43, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.preheader27.i
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !807
  br label %bb.u

.preheader.i43:                                   ; preds = %bb.t
  br i1 %.not33.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESE_RNS_12ValidityMaskEm.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.preheader.i43
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !210, !noalias !807
end_hunk_13
begin_hunk_14_@_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb31StandardErrorOfTheMeanOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !830

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb31StandardErrorOfTheMeanOperation8FinalizeIdNS_11StddevStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !596    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !599
  %i.e = uitofp i64 %i.a to double                ; 2 uses
  %i.f = fdiv double %i.d, %i.e
  %i.g = tail call double @sqrt(double noundef %i.f) #22, !tbaa !3
  %sqrt = tail call double @llvm.sqrt.f64(double %i.e)
  %i.h = fdiv double %i.g, %sqrt                  ; 2 uses
  store double %i.h, ptr %1, align 8, !tbaa !59
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.h)
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %2, align 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.i, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.an, %._crit_edge.i.unr-lcssa ]
  %.epil.init25 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init27 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.k = add i64 %.epil.init27, 1                 ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.m = fsub double %i.l, %.epil.init25          ; 2 uses
  %i.n = uitofp i64 %i.k to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fadd double %.epil.init25, %i.o          ; 2 uses
  %i.q = fsub double %i.l, %i.p
  %i.r = fmul double %i.m, %i.q
  %i.s = fadd double %.epil.init, %i.r
  store double %i.p, ptr %i.h, align 8, !tbaa !598
  store double %i.s, ptr %i.i, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.k, %.epil.preheader ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.t = phi double [ %.pre6.i, %.lr.ph.i.new ], [ %i.an, %bb.c ]
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.w = add i64 %i.v, 1
  %i.x = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.y = fsub double %i.x, %i.u                   ; 2 uses
  %i.z = uitofp i64 %i.w to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fadd double %i.u, %i.aa                 ; 4 uses
  %i.ac = fsub double %i.x, %i.ab
  %i.ad = fmul double %i.y, %i.ac
  %i.ae = fadd double %i.t, %i.ad                 ; 2 uses
  store double %i.ab, ptr %i.h, align 8, !tbaa !598
  store double %i.ae, ptr %i.i, align 8, !tbaa !599
  %i.af = add i64 %i.v, 2                         ; 4 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ab                ; 2 uses
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.ab, %i.aj                ; 4 uses
  %i.al = fsub double %i.ag, %i.ak
  %i.am = fmul double %i.ah, %i.al
  %i.an = fadd double %i.ae, %i.am                ; 3 uses
  store double %i.ak, ptr %i.h, align 8, !tbaa !598
  store double %i.an, ptr %i.i, align 8, !tbaa !599
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !793

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %4, align 8, !tbaa !201
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !38
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cd

_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_31StandardErrorOfTheMeanOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %.not52 = icmp eq i64 %i.b, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %.not.i, label %.thread.us, label %.lr.ph51.split

.thread.us:                                       ; preds = %.lr.ph51, %.loopexit.us
  %.049.us = phi i64 [ %i.ah, %.loopexit.us ], [ 0, %.lr.ph51 ]
  %.sroa.4.048.us = phi i64 [ %.sroa.4.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph51 ] ; 9 uses
  %i.f = add i64 %.sroa.4.048.us, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 6 uses
  %i.h = icmp ult i64 %.sroa.4.048.us, %i.g
  br i1 %i.h, label %.lr.ph42.us, label %.loopexit.us

.lr.ph42.us.new:                                  ; preds = %.prol.loopexit87, %.lr.ph42.us.new
  %i.i = phi double [ %i.af, %.lr.ph42.us.new ], [ %.unr90, %.prol.loopexit87 ]
  %i.j = phi double [ %i.ac, %.lr.ph42.us.new ], [ %.unr91, %.prol.loopexit87 ] ; 2 uses
  %i.k = phi i64 [ %i.x, %.lr.ph42.us.new ], [ %.unr92, %.prol.loopexit87 ] ; 2 uses
  %.sroa.4.141.us = phi i64 [ %i.ag, %.lr.ph42.us.new ], [ %.sroa.4.141.us.unr, %.prol.loopexit87 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.m = add i64 %i.k, 1
  %i.n = load double, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.o = fsub double %i.n, %i.j                   ; 2 uses
  %i.p = uitofp i64 %i.m to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fadd double %i.j, %i.q                   ; 3 uses
  %i.s = fsub double %i.n, %i.r
  %i.t = fmul double %i.o, %i.s
  %i.u = fadd double %i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = add i64 %i.k, 2                          ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  %i.z = fsub double %i.y, %i.r                   ; 2 uses
  %i.aa = uitofp i64 %i.x to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.r, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.y, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.u, %i.ae                 ; 2 uses
  %i.ag = add nuw i64 %.sroa.4.141.us, 2          ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond64.not.1, label %..loopexit_crit_edge.us, label %.lr.ph42.us.new, !llvm.loop !831

.loopexit.us:                                     ; preds = %..loopexit_crit_edge.us, %.thread.us
  %.sroa.4.1.lcssa.us = phi i64 [ %i.g, %..loopexit_crit_edge.us ], [ %.sroa.4.048.us, %.thread.us ]
end_hunk_14
begin_hunk_15_@_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE:bb.a
  %.lcssa83.unr = phi double [ poison, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.lcssa82.unr = phi double [ poison, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted46, %.lr.ph42 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.unr84 = phi double [ %.promoted44, %.lr.ph42 ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  %.unr85 = phi i64 [ %.promoted, %.lr.ph42 ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.141.unr = phi i64 [ %.sroa.4.048, %.lr.ph42 ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ba, %.neg
  br i1 %i.bp, label %..loopexit_crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %.lr.ph42.new
  %i.bq = phi double [ %i.cn, %.lr.ph42.new ], [ %.unr, %.prol.loopexit ]
  %i.br = phi double [ %i.ck, %.lr.ph42.new ], [ %.unr84, %.prol.loopexit ] ; 2 uses
  %i.bs = phi i64 [ %i.cf, %.lr.ph42.new ], [ %.unr85, %.prol.loopexit ] ; 2 uses
  %.sroa.4.141 = phi i64 [ %i.co, %.lr.ph42.new ], [ %.sroa.4.141.unr, %.prol.loopexit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.bu = add i64 %i.bs, 1
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bw = fsub double %i.bv, %i.br                ; 2 uses
  %i.bx = uitofp i64 %i.bu to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.br, %i.by                ; 3 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fmul double %i.bw, %i.ca
  %i.cc = fadd double %i.bq, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add i64 %i.bs, 2                        ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.ch = fsub double %i.cg, %i.bz                ; 2 uses
  %i.ci = uitofp i64 %i.cf to double
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fadd double %i.bz, %i.cj                ; 3 uses
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = fadd double %i.cc, %i.cm                ; 2 uses
  %i.co = add nuw i64 %.sroa.4.141, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %.lr.ph42.new, !llvm.loop !831

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.4.240 = phi i64 [ %i.df, %bb.d ], [ %.sroa.4.048, %.preheader ] ; 3 uses
  %i.cp = sub nuw i64 %.sroa.4.240, %.sroa.4.048
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.ay
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.240
  %i.ct = load i64, ptr %2, align 8, !tbaa !596
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %2, align 8, !tbaa !596
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.cw = load double, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw                ; 2 uses
  %i.cy = uitofp i64 %i.cu to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cw, %i.cz                ; 2 uses
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = load double, ptr %i.e, align 8, !tbaa !599
  %i.de = fadd double %i.dd, %i.dc
  store double %i.da, ptr %i.d, align 8, !tbaa !598
  store double %i.de, ptr %i.e, align 8, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.df = add nuw i64 %.sroa.4.240, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph, !llvm.loop !833

..loopexit_crit_edge:                             ; preds = %.lr.ph42.new, %.prol.loopexit
  %.lcssa83 = phi double [ %.lcssa83.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph42.new ]
  %.lcssa82 = phi double [ %.lcssa82.unr, %.prol.loopexit ], [ %i.cn, %.lr.ph42.new ]
  %i.dg = add i64 %.promoted, %i.ba
  %i.dh = sub i64 %i.dg, %.sroa.4.048
  store i64 %i.dh, ptr %2, align 8, !tbaa !596
  store double %.lcssa83, ptr %i.d, align 8, !tbaa !598
  store double %.lcssa82, ptr %i.e, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b, %..loopexit_crit_edge, %.lr.ph51.split
  %.sroa.4.3 = phi i64 [ %i.ba, %.lr.ph51.split ], [ %.sroa.4.048, %bb.b ], [ %i.ba, %..loopexit_crit_edge ], [ %.sroa.4.048, %.preheader ], [ %i.ba, %bb.d ]
  %i.di = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph51.split, !llvm.loop !832
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_11StddevStateEdNS_31StandardErrorOfTheMeanOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !181    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not34 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.b = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %bb.c
  %.01724.us = phi i64 [ %i.x, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.e = lshr i64 %.01724.us, 6
  %i.f = and i64 %.01724.us, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58
  %i.i = shl nuw i64 1, %i.f
  %i.j = and i64 %i.i, %i.h
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01724.us
  %i.l = load i64, ptr %2, align 8, !tbaa !596
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !596
  %i.n = load double, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = uitofp i64 %i.m to double
  %i.r = fdiv double %i.p, %i.q
  %i.s = fadd double %i.o, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = load double, ptr %i.d, align 8, !tbaa !599
  %i.w = fadd double %i.v, %i.u
  store double %i.s, ptr %i.c, align 8, !tbaa !598
  store double %i.w, ptr %i.d, align 8, !tbaa !599
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.x = add nuw i64 %.01724.us, 1                ; 2 uses
  %exitcond42.not = icmp eq i64 %i.x, %3
  br i1 %exitcond42.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !834

.preheader:                                       ; preds = %bb.a
  br i1 %.not34, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %5, align 8, !tbaa !210    ; 4 uses
  %.not.i20 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted = load i64, ptr %2, align 8, !tbaa !596 ; 5 uses
  %.promoted27 = load double, ptr %i.z, align 8, !tbaa !598 ; 4 uses
  %.promoted29 = load double, ptr %i.aa, align 8, !tbaa !599 ; 4 uses
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader: ; preds = %.lr.ph26
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader: ; preds = %.lr.ph26
  %xtraiter72 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  br i1 %i.ac, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %unroll_iter83 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new
  %i.ad = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ae = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %i.af = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 2 uses
  %.025.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ] ; 3 uses
  %niter84 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader.new ], [ %niter84.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ah = add i64 %i.af, 1
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = fsub double %i.ai, %i.ae                ; 2 uses
  %i.ak = uitofp i64 %i.ah to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.ae, %i.al                ; 3 uses
  %i.an = fsub double %i.ai, %i.am
  %i.ao = fmul double %i.aj, %i.an
  %i.ap = fadd double %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add i64 %i.af, 2                        ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.au = fsub double %i.at, %i.am                ; 2 uses
  %i.av = uitofp i64 %i.as to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.am, %i.aw                ; 4 uses
  %i.ay = fsub double %i.at, %i.ax
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.ap, %i.az                ; 3 uses
  %i.bb = add nuw i64 %.025.us, 2                 ; 2 uses
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !835

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.e
  %.01724 = phi i64 [ %i.by, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01724
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.be, 63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = shl nuw i64 1, %i.bg
  %i.bk = and i64 %i.bj, %i.bi
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bm = load i64, ptr %2, align 8, !tbaa !596
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %2, align 8, !tbaa !596
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bp = load double, ptr %i.c, align 8, !tbaa !598 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp                ; 2 uses
  %i.br = uitofp i64 %i.bn to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fmul double %i.bq, %i.bu
  %i.bw = load double, ptr %i.d, align 8, !tbaa !599
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bt, ptr %i.c, align 8, !tbaa !598
  store double %i.bx, ptr %i.d, align 8, !tbaa !599
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.d
  %i.by = add nuw i64 %.01724, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !834

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new
  %i.bz = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.ca = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %i.cb = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 2 uses
  %.025 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = add i64 %i.cb, 1
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !59 ; 2 uses
  %i.ci = fsub double %i.ch, %i.ca                ; 2 uses
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ca, %i.ck                ; 3 uses
  %i.cm = fsub double %i.ch, %i.cl
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = fadd double %i.bz, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = add i64 %i.cb, 2                        ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl                ; 2 uses
  %i.cx = uitofp i64 %i.cu to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cl, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cw, %i.da
  %i.dc = fadd double %i.co, %i.db                ; 3 uses
  %i.dd = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !835

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %lcmp.mod79.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod79.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader
  %.epil.init74 = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.epil.init76 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.as, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %.025.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.preheader ], [ %i.bb, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025.us.epil.init
  %i.df = add i64 %.epil.init78, 1
  %i.dg = load double, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dh = fsub double %i.dg, %.epil.init76        ; 2 uses
  %i.di = uitofp i64 %i.df to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = fadd double %.epil.init76, %i.dj        ; 2 uses
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dh, %i.dl
  %i.dn = fadd double %.epil.init74, %i.dm
  br label %..loopexit_crit_edge

..loopexit_crit_edge.loopexit61.unr-lcssa:        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader: ; preds = %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader
  %.epil.init = phi double [ %.promoted29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.epil.init66 = phi double [ %.promoted27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init68 = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.cu, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %.025.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.preheader ], [ %i.dd, %..loopexit_crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.025.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = add i64 %.epil.init68, 1
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.du = fsub double %i.dt, %.epil.init66        ; 2 uses
  %i.dv = uitofp i64 %i.ds to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %.epil.init66, %i.dw        ; 2 uses
  %i.dy = fsub double %i.dt, %i.dx
  %i.dz = fmul double %i.du, %i.dy
  %i.ea = fadd double %.epil.init, %i.dz
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader, %..loopexit_crit_edge.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader, %..loopexit_crit_edge.loopexit.unr-lcssa
  %.us-phi = phi double [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ba, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.dc, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi31 = phi double [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.epil.preheader ], [ %i.ax, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cz, %..loopexit_crit_edge.loopexit61.unr-lcssa ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.epil.preheader ]
  %.us-phi32 = add i64 %.promoted, %3
  store i64 %.us-phi32, ptr %2, align 8, !tbaa !596
  store double %.us-phi31, ptr %i.z, align 8, !tbaa !598
  store double %.us-phi, ptr %i.aa, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader22, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(368) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !86     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775552
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 368                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 25063510969714064)
  %i.l = select i1 %i.j, i64 25063510969714064, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 368
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %i.q, ptr noundef nonnull align 8 dereferenceable(368) %2)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %_ZNKSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE12_M_check_lenEmPKc.exit
  %lpad.thr_comm48 = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %lpad.thr_comm48, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %i.q, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.t, ptr noundef nonnull align 8 dereferenceable(106) %i.u, i64 106, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.y = load <2 x ptr>, ptr %i.w, align 8, !tbaa !32
  store ptr null, ptr %i.x, align 8, !tbaa !29
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !32
  store ptr null, ptr %i.w, align 8, !tbaa !33
  %i.z = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6duckdb17AggregateFunctionEPS1_ET0_T_S6_S5_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.e ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 368 ; 2 uses
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6duckdb17AggregateFunctionEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.aa)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit28, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(368) %.05.i.i) #22, !inline_history !836
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 368 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !88

_ZSt8_DestroyIPN6duckdb17AggregateFunctionEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN6duckdb17AggregateFunctionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionEEvT_S3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb17AggregateFunctionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb17AggregateFunctionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionEEvT_S3_.exit, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !86
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [368 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !26
  ret void

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #22 ; 0 uses
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(368) %i.q) #22, !inline_history !837
  br label %.loopexit

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb17AggregateFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #22 ; 0 uses
  %.not4.i.i30 = icmp eq ptr %i.p, %i.aa
  br i1 %.not4.i.i30, label %.loopexit, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.f, %.lr.ph.i.i31
  %.05.i.i32 = phi ptr [ %i.ap, %.lr.ph.i.i31 ], [ %i.p, %bb.f ] ; 4 uses
  %i.an = load ptr, ptr %.05.i.i32, align 8, !tbaa !27
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(368) %.05.i.i32) #22, !inline_history !836
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i32, i64 368
  %.not.i.i33 = icmp eq ptr %.05.i.i32, %i.z
  br i1 %.not.i.i33, label %.loopexit, label %.lr.ph.i.i31, !llvm.loop !88

bb.g:                                             ; preds = %.loopexit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i.i31, %.thread, %bb.e, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #25
end_hunk_15
begin_hunk_16_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aq = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %bb.p, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %bb.p, label %common.resume.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.am) #22
  br label %common.resume.i

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !183 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !181, !noalias !849 ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i39.i, label %.preheader.i.i, label %bb.r

.preheader.i.i:                                   ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %.not72.i.i = icmp eq i64 %4, 0
  br i1 %.not72.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph70.i.i.preheader

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter69 = and i64 %4, 1
  %i.aw = icmp eq i64 %4, 1
  br i1 %i.aw, label %.lr.ph70.i.i.epil.preheader, label %.lr.ph70.i.i.preheader.new

.lr.ph70.i.i.preheader.new:                       ; preds = %.lr.ph70.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph70.i.i

bb.r:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %i.ax = add i64 %4, 63
  %i.ay = lshr i64 %i.ax, 6                       ; 2 uses
  %.not71.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not71.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %bb.r, %.loopexit59.i.i
  %.068.i.i = phi i64 [ %i.cu, %.loopexit59.i.i ], [ 0, %bb.r ] ; 2 uses
  %.sroa.450.067.i.i = phi i64 [ %.sroa.450.3.i.i, %.loopexit59.i.i ], [ 0, %bb.r ] ; 13 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.068.i.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !58, !noalias !849 ; 2 uses
  %i.bb = add i64 %.sroa.450.067.i.i, 64
  %i.bc = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %4) ; 10 uses
  switch i64 %i.ba, label %.preheader58.i.i [
    i64 -1, label %.preheader60.i.i
    i64 0, label %.loopexit59.i.i
  ]

.preheader60.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bd = icmp ult i64 %.sroa.450.067.i.i, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %.loopexit59.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader60.i.i
  %i.be = sub nuw i64 %i.bc, %.sroa.450.067.i.i
  %.neg = add i64 %.sroa.450.067.i.i, 1
  %xtraiter = and i64 %i.be, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.067.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.450.067.i.i
  %.val43.i.i.prol = load double, ptr %i.bh, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !841, !noalias !849
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !841, !noalias !849
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !843, !noalias !849
  %i.bm = fadd double %.val43.i.i.prol, %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !843, !noalias !849
  %i.bn = add nuw i64 %.sroa.450.067.i.i, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.450.163.i.i.unr = phi i64 [ %.sroa.450.067.i.i, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = icmp eq i64 %i.bc, %.neg
  br i1 %i.bo, label %.loopexit59.i.i, label %.lr.ph.i.i

.preheader58.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bp = icmp ult i64 %.sroa.450.067.i.i, %i.bc
  br i1 %i.bp, label %.lr.ph65.i.i, label %.loopexit59.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.450.163.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.sroa.450.163.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.163.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.450.163.i.i
  %.val43.i.i = load double, ptr %i.bs, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !841, !noalias !849
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !841, !noalias !849
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !843, !noalias !849
  %i.bx = fadd double %.val43.i.i, %i.bw
  store double %i.bx, ptr %i.bv, align 8, !tbaa !843, !noalias !849
  %i.by = add nuw i64 %.sroa.450.163.i.i, 1       ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.by
  %.val43.i.i.1 = load double, ptr %i.cb, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !841, !noalias !849
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !841, !noalias !849
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !843, !noalias !849
  %i.cg = fadd double %.val43.i.i.1, %i.cf
  store double %i.cg, ptr %i.ce, align 8, !tbaa !843, !noalias !849
  %i.ch = add nuw i64 %.sroa.450.163.i.i, 2       ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ch, %i.bc
  br i1 %exitcond.not.i.i.1, label %.loopexit59.i.i, label %.lr.ph.i.i, !llvm.loop !850

.lr.ph65.i.i:                                     ; preds = %.preheader58.i.i, %bb.t
  %.sroa.450.264.i.i = phi i64 [ %i.ct, %bb.t ], [ %.sroa.450.067.i.i, %.preheader58.i.i ] ; 4 uses
  %i.ci = sub nuw i64 %.sroa.450.264.i.i, %.sroa.450.067.i.i
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ba
  %.not.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph65.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.450.264.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.450.264.i.i
  %.val42.i.i = load double, ptr %i.cn, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !841, !noalias !849
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !841, !noalias !849
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !843, !noalias !849
  %i.cs = fadd double %.val42.i.i, %i.cr
  store double %i.cs, ptr %i.cq, align 8, !tbaa !843, !noalias !849
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph65.i.i
  %i.ct = add nuw i64 %.sroa.450.264.i.i, 1       ; 2 uses
  %exitcond76.not.i.i = icmp eq i64 %i.ct, %i.bc
  br i1 %exitcond76.not.i.i, label %.loopexit59.i.i, label %.lr.ph65.i.i, !llvm.loop !851

.loopexit59.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.t, %.preheader58.i.i, %.preheader60.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.450.3.i.i = phi i64 [ %i.bc, %bb.t ], [ %i.bc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.450.067.i.i, %.preheader58.i.i ], [ %.sroa.450.067.i.i, %.preheader60.i.i ], [ %i.bc, %.lr.ph.i.i ], [ %i.bc, %.lr.ph.i.i.prol.loopexit ]
  %i.cu = add nuw nsw i64 %.068.i.i, 1            ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %i.cu, %i.ay
  br i1 %exitcond77.not.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !852

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i, %.lr.ph70.i.i.preheader.new
  %storemerge69.i.i = phi i64 [ 0, %.lr.ph70.i.i.preheader.new ], [ %i.dm, %.lr.ph70.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph70.i.i.preheader.new ], [ %niter.next.1, %.lr.ph70.i.i ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %storemerge69.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %storemerge69.i.i
  %.val.i40.i = load double, ptr %i.cx, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !841, !noalias !849
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !841, !noalias !849
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !843, !noalias !849
  %i.dc = fadd double %.val.i40.i, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !843, !noalias !849
  %i.dd = or disjoint i64 %storemerge69.i.i, 1    ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !839, !alias.scope !847, !noalias !844 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.dd
  %.val.i40.i.1 = load double, ptr %i.dg, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !841, !noalias !849
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.df, align 8, !tbaa !841, !noalias !849
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !843, !noalias !849
  %i.dl = fadd double %.val.i40.i.1, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !843, !noalias !849
  %i.dm = add nuw i64 %storemerge69.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph70.i.i, !llvm.loop !853

.thread.i:                                        ; preds = %bb.j, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %.thread.i
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %9, align 8, !tbaa !201
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !210
  %.not.i = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %10, align 8, !tbaa !201
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !210
  %.not85.i = icmp eq ptr %i.dq, null             ; 2 uses
  br i1 %.not.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not85.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !211 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !211 ; 4 uses
  %i.dv = load ptr, ptr %9, align 8, !tbaa !201
  %i.dw = load ptr, ptr %10, align 8, !tbaa !201
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val34.i = load ptr, ptr %i.dv, align 8        ; 4 uses
  %.val35.i = load ptr, ptr %i.dw, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !181, !noalias !859 ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.dy, null
  %.not13.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i41.i, label %.preheader.i45.i, label %.preheader7.i.i

.preheader7.i.i:                                  ; preds = %bb.z
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i42.i

.preheader.i45.i:                                 ; preds = %bb.z
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph11.i.i.preheader

.lr.ph11.i.i.preheader:                           ; preds = %.preheader.i45.i
  %xtraiter72 = and i64 %4, 1
  %i.dz = icmp eq i64 %4, 1
  br i1 %i.dz, label %.lr.ph11.i.i.epil.preheader, label %.lr.ph11.i.i.preheader.new

.lr.ph11.i.i.preheader.new:                       ; preds = %.lr.ph11.i.i.preheader
  %unroll_iter75 = and i64 %4, -2
  br label %.lr.ph11.i.i

.lr.ph.i42.i:                                     ; preds = %.preheader7.i.i, %bb.ab
  %.09.i.i = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader7.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.09.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3, !noalias !859
  %i.ec = zext i32 %i.eb to i64                   ; 3 uses
  %i.ed = lshr i64 %i.ec, 6
  %i.ee = and i64 %i.ec, 63
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ed
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !58, !noalias !859
  %i.eh = shl nuw i64 1, %i.ee
  %i.ei = and i64 %i.eh, %i.eg
  %.not.i43.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i43.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i42.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.09.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !859
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !839, !alias.scope !857, !noalias !854 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ec
  %.val26.i.i = load double, ptr %i.eo, align 8, !tbaa !59, !alias.scope !854, !noalias !857
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !841, !noalias !859
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !841, !noalias !859
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !843, !noalias !859
  %i.et = fadd double %.val26.i.i, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !843, !noalias !859
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i42.i
  %i.eu = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.eu, %4
  br i1 %exitcond.not.i44.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i42.i, !llvm.loop !860

.lr.ph11.i.i:                                     ; preds = %.lr.ph11.i.i, %.lr.ph11.i.i.preheader.new
  %.02510.i.i = phi i64 [ 0, %.lr.ph11.i.i.preheader.new ], [ %i.fy, %.lr.ph11.i.i ] ; 4 uses
  %niter76 = phi i64 [ 0, %.lr.ph11.i.i.preheader.new ], [ %niter76.next.1, %.lr.ph11.i.i ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.02510.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !859
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.02510.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !859
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !839, !alias.scope !857, !noalias !854 ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ex
  %.val.i46.i = load double, ptr %i.fd, align 8, !tbaa !59, !alias.scope !854, !noalias !857
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !841, !noalias !859
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !841, !noalias !859
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !843, !noalias !859
  %i.fi = fadd double %.val.i46.i, %i.fh
  store double %i.fi, ptr %i.fg, align 8, !tbaa !843, !noalias !859
  %i.fj = or disjoint i64 %.02510.i.i, 1          ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !859
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %i.fj
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !859
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !839, !alias.scope !857, !noalias !854 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fm
  %.val.i46.i.1 = load double, ptr %i.fs, align 8, !tbaa !59, !alias.scope !854, !noalias !857
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !841, !noalias !859
  %i.fu = add i64 %i.ft, 1
  store i64 %i.fu, ptr %i.fr, align 8, !tbaa !841, !noalias !859
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !843, !noalias !859
  %i.fx = fadd double %.val.i46.i.1, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !843, !noalias !859
  %i.fy = add nuw i64 %.02510.i.i, 2              ; 2 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, label %.lr.ph11.i.i, !llvm.loop !861

bb.ac:                                            ; preds = %.thread.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.an, %bb.aj, %bb.ae, %bb.y, %bb.v, %bb.u
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #22
  br label %bb.bp

bb.ae:                                            ; preds = %bb.x
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !211 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !211 ; 4 uses
  %i.gf = load ptr, ptr %9, align 8, !tbaa !201
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val36.i = load ptr, ptr %i.gf, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !181, !noalias !867 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.gh, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i48.i, label %.preheader.i52.i, label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %bb.af
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i49.i

.preheader.i52.i:                                 ; preds = %bb.af
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i.i.preheader

.lr.ph8.i.i.preheader:                            ; preds = %.preheader.i52.i
  %xtraiter77 = and i64 %4, 1
  %i.gi = icmp eq i64 %4, 1
  br i1 %i.gi, label %.lr.ph8.i.i.epil.preheader, label %.lr.ph8.i.i.preheader.new

.lr.ph8.i.i.preheader.new:                        ; preds = %.lr.ph8.i.i.preheader
  %unroll_iter80 = and i64 %4, -2
  br label %.lr.ph8.i.i

.lr.ph.i49.i:                                     ; preds = %.preheader4.i.i, %bb.ah
  %.06.i.i = phi i64 [ %i.ha, %bb.ah ], [ 0, %.preheader4.i.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.06.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !867
  %i.gl = zext i32 %i.gk to i64                   ; 3 uses
  %i.gm = lshr i64 %i.gl, 6
  %i.gn = and i64 %i.gl, 63
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gm
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !58, !noalias !867
  %i.gq = shl nuw i64 1, %i.gn
  %i.gr = and i64 %i.gq, %i.gp
  %.not.i50.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i50.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i49.i
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.06.i.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !839, !alias.scope !865, !noalias !862 ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gl
  %.val24.i.i = load double, ptr %i.gu, align 8, !tbaa !59, !alias.scope !862, !noalias !865
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !841, !noalias !867
  %i.gw = add i64 %i.gv, 1
  store i64 %i.gw, ptr %i.gt, align 8, !tbaa !841, !noalias !867
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !843, !noalias !867
  %i.gz = fadd double %.val24.i.i, %i.gy
  store double %i.gz, ptr %i.gx, align 8, !tbaa !843, !noalias !867
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i49.i
  %i.ha = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %i.ha, %4
  br i1 %exitcond.not.i51.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i49.i, !llvm.loop !868

.lr.ph8.i.i:                                      ; preds = %.lr.ph8.i.i, %.lr.ph8.i.i.preheader.new
  %.0237.i.i = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %i.hy, %.lr.ph8.i.i ] ; 4 uses
  %niter81 = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %niter81.next.1, %.lr.ph8.i.i ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.0237.i.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3, !noalias !867
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.0237.i.i
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !839, !alias.scope !865, !noalias !862 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.hd
  %.val.i53.i = load double, ptr %i.hg, align 8, !tbaa !59, !alias.scope !862, !noalias !865
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !841, !noalias !867
  %i.hi = add i64 %i.hh, 1
  store i64 %i.hi, ptr %i.hf, align 8, !tbaa !841, !noalias !867
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !843, !noalias !867
  %i.hl = fadd double %.val.i53.i, %i.hk
  store double %i.hl, ptr %i.hj, align 8, !tbaa !843, !noalias !867
  %i.hm = or disjoint i64 %.0237.i.i, 1           ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3, !noalias !867
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hm
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !839, !alias.scope !865, !noalias !862 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.hp
  %.val.i53.i.1 = load double, ptr %i.hs, align 8, !tbaa !59, !alias.scope !862, !noalias !865
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !841, !noalias !867
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.hr, align 8, !tbaa !841, !noalias !867
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !843, !noalias !867
  %i.hx = fadd double %.val.i53.i.1, %i.hw
  store double %i.hx, ptr %i.hv, align 8, !tbaa !843, !noalias !867
  %i.hy = add nuw i64 %.0237.i.i, 2               ; 2 uses
  %niter81.next.1 = add nuw i64 %niter81, 2       ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, label %.lr.ph8.i.i, !llvm.loop !869

bb.ai:                                            ; preds = %bb.w
  br i1 %.not85.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ak unwind label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !211 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !211 ; 4 uses
  %i.id = load ptr, ptr %10, align 8, !tbaa !201
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val37.i = load ptr, ptr %i.id, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !181, !noalias !875 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %i.if, null
  %.not11.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i55.i, label %.preheader.i60.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.ak
  br i1 %.not11.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i56.i

.preheader.i60.i:                                 ; preds = %bb.ak
  br i1 %.not11.i.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph9.i.i.preheader

.lr.ph9.i.i.preheader:                            ; preds = %.preheader.i60.i
  %xtraiter82 = and i64 %4, 1
  %i.ig = icmp eq i64 %4, 1
  br i1 %i.ig, label %.lr.ph9.i.i.epil.preheader, label %.lr.ph9.i.i.preheader.new

.lr.ph9.i.i.preheader.new:                        ; preds = %.lr.ph9.i.i.preheader
  %unroll_iter85 = and i64 %4, -2
  br label %.lr.ph9.i.i

.lr.ph.i56.i:                                     ; preds = %.preheader5.i.i, %bb.am
  %.07.i.i = phi i64 [ %i.iy, %bb.am ], [ 0, %.preheader5.i.i ] ; 5 uses
  %i.ih = lshr i64 %.07.i.i, 6
  %i.ii = and i64 %.07.i.i, 63
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ih
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !58, !noalias !875
  %i.il = shl nuw i64 1, %i.ii
  %i.im = and i64 %i.il, %i.ik
  %.not.i57.i = icmp eq i64 %i.im, 0
  br i1 %.not.i57.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i56.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.07.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3, !noalias !875
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !839, !alias.scope !873, !noalias !870 ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.07.i.i
  %.val24.i58.i = load double, ptr %i.is, align 8, !tbaa !59, !alias.scope !870, !noalias !873
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !841, !noalias !875
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.ir, align 8, !tbaa !841, !noalias !875
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !843, !noalias !875
  %i.ix = fadd double %.val24.i58.i, %i.iw
  store double %i.ix, ptr %i.iv, align 8, !tbaa !843, !noalias !875
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i56.i
  %i.iy = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %exitcond.not.i59.i = icmp eq i64 %i.iy, %4
  br i1 %exitcond.not.i59.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i56.i, !llvm.loop !876

.lr.ph9.i.i:                                      ; preds = %.lr.ph9.i.i, %.lr.ph9.i.i.preheader.new
  %.0238.i.i = phi i64 [ 0, %.lr.ph9.i.i.preheader.new ], [ %i.jw, %.lr.ph9.i.i ] ; 4 uses
  %niter86 = phi i64 [ 0, %.lr.ph9.i.i.preheader.new ], [ %niter86.next.1, %.lr.ph9.i.i ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.0238.i.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !3, !noalias !875
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !839, !alias.scope !873, !noalias !870 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.0238.i.i
  %.val.i61.i = load double, ptr %i.je, align 8, !tbaa !59, !alias.scope !870, !noalias !873
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !841, !noalias !875
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.jd, align 8, !tbaa !841, !noalias !875
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !843, !noalias !875
  %i.jj = fadd double %.val.i61.i, %i.ji
  store double %i.jj, ptr %i.jh, align 8, !tbaa !843, !noalias !875
  %i.jk = or disjoint i64 %.0238.i.i, 1           ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3, !noalias !875
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !839, !alias.scope !873, !noalias !870 ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jk
  %.val.i61.i.1 = load double, ptr %i.jq, align 8, !tbaa !59, !alias.scope !870, !noalias !873
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !841, !noalias !875
  %i.js = add i64 %i.jr, 1
  store i64 %i.js, ptr %i.jp, align 8, !tbaa !841, !noalias !875
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !843, !noalias !875
  %i.jv = fadd double %.val.i61.i.1, %i.ju
  store double %i.jv, ptr %i.jt, align 8, !tbaa !843, !noalias !875
  %i.jw = add nuw i64 %.0238.i.i, 2               ; 2 uses
  %niter86.next.1 = add nuw i64 %niter86, 2       ; 2 uses
  %niter86.ncmp.1 = icmp eq i64 %niter86.next.1, %unroll_iter85
  br i1 %niter86.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, label %.lr.ph9.i.i, !llvm.loop !877

bb.an:                                            ; preds = %bb.ai
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ao unwind label %bb.ad

bb.ao:                                            ; preds = %bb.an
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !211 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !211 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !181, !noalias !883 ; 2 uses
  %.not.i.i63.i = icmp eq ptr %i.kc, null
  %.not10.i64.i = icmp eq i64 %4, 0               ; 2 uses
  br i1 %.not.i.i63.i, label %.preheader.i70.i, label %.preheader4.i65.i

.preheader4.i65.i:                                ; preds = %bb.ao
  br i1 %.not10.i64.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i66.i

.preheader.i70.i:                                 ; preds = %bb.ao
  br i1 %.not10.i64.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i71.i.preheader

.lr.ph8.i71.i.preheader:                          ; preds = %.preheader.i70.i
  %xtraiter87 = and i64 %4, 1
  %i.kd = icmp eq i64 %4, 1
  br i1 %i.kd, label %.lr.ph8.i71.i.epil.preheader, label %.lr.ph8.i71.i.preheader.new

.lr.ph8.i71.i.preheader.new:                      ; preds = %.lr.ph8.i71.i.preheader
  %unroll_iter90 = and i64 %4, -2
  br label %.lr.ph8.i71.i

.lr.ph.i66.i:                                     ; preds = %.preheader4.i65.i, %bb.aq
  %.06.i67.i = phi i64 [ %i.ks, %bb.aq ], [ 0, %.preheader4.i65.i ] ; 5 uses
  %i.ke = lshr i64 %.06.i67.i, 6
  %i.kf = and i64 %.06.i67.i, 63
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ke
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !58, !noalias !883
  %i.ki = shl nuw i64 1, %i.kf
  %i.kj = and i64 %i.ki, %i.kh
  %.not.i68.i = icmp eq i64 %i.kj, 0
  br i1 %.not.i68.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i66.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.06.i67.i
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !839, !alias.scope !881, !noalias !878 ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.06.i67.i
  %.val22.i.i = load double, ptr %i.km, align 8, !tbaa !59, !alias.scope !878, !noalias !881
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !841, !noalias !883
  %i.ko = add i64 %i.kn, 1
  store i64 %i.ko, ptr %i.kl, align 8, !tbaa !841, !noalias !883
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !843, !noalias !883
  %i.kr = fadd double %.val22.i.i, %i.kq
  store double %i.kr, ptr %i.kp, align 8, !tbaa !843, !noalias !883
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i66.i
  %i.ks = add nuw i64 %.06.i67.i, 1               ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.ks, %4
  br i1 %exitcond.not.i69.i, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph.i66.i, !llvm.loop !884

.lr.ph8.i71.i:                                    ; preds = %.lr.ph8.i71.i, %.lr.ph8.i71.i.preheader.new
  %.0217.i.i = phi i64 [ 0, %.lr.ph8.i71.i.preheader.new ], [ %i.lk, %.lr.ph8.i71.i ] ; 4 uses
  %niter91 = phi i64 [ 0, %.lr.ph8.i71.i.preheader.new ], [ %niter91.next.1, %.lr.ph8.i71.i ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.0217.i.i
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !839, !alias.scope !881, !noalias !878 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.0217.i.i
  %.val.i72.i = load double, ptr %i.kv, align 8, !tbaa !59, !alias.scope !878, !noalias !881
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !841, !noalias !883
  %i.kx = add i64 %i.kw, 1
  store i64 %i.kx, ptr %i.ku, align 8, !tbaa !841, !noalias !883
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !843, !noalias !883
  %i.la = fadd double %.val.i72.i, %i.kz
  store double %i.la, ptr %i.ky, align 8, !tbaa !843, !noalias !883
  %i.lb = or disjoint i64 %.0217.i.i, 1           ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !839, !alias.scope !881, !noalias !878 ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.lb
  %.val.i72.i.1 = load double, ptr %i.le, align 8, !tbaa !59, !alias.scope !878, !noalias !881
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !841, !noalias !883
  %i.lg = add i64 %i.lf, 1
  store i64 %i.lg, ptr %i.ld, align 8, !tbaa !841, !noalias !883
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !843, !noalias !883
  %i.lj = fadd double %.val.i72.i.1, %i.li
  store double %i.lj, ptr %i.lh, align 8, !tbaa !843, !noalias !883
  %i.lk = add nuw i64 %.0217.i.i, 2               ; 2 uses
  %niter91.next.1 = add nuw i64 %niter91, 2       ; 2 uses
  %niter91.ncmp.1 = icmp eq i64 %niter91.next.1, %unroll_iter90
  br i1 %niter91.ncmp.1, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, label %.lr.ph8.i71.i, !llvm.loop !885

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph8.i71.i
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i71.i.epil.preheader

.lr.ph8.i71.i.epil.preheader:                     ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, %.lr.ph8.i71.i.preheader
  %.0217.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i71.i.preheader ], [ %i.lk, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod89)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.0217.i.i.epil.init
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !839, !alias.scope !881, !noalias !878 ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.0217.i.i.epil.init
  %.val.i72.i.epil = load double, ptr %i.ln, align 8, !tbaa !59, !alias.scope !878, !noalias !881
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !841, !noalias !883
  %i.lp = add i64 %i.lo, 1
  store i64 %i.lp, ptr %i.lm, align 8, !tbaa !841, !noalias !883
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !843, !noalias !883
  %i.ls = fadd double %.val.i72.i.epil, %i.lr
  store double %i.ls, ptr %i.lq, align 8, !tbaa !843, !noalias !883
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa: ; preds = %.lr.ph9.i.i
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph9.i.i.epil.preheader

.lr.ph9.i.i.epil.preheader:                       ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, %.lr.ph9.i.i.preheader
  %.0238.i.i.epil.init = phi i64 [ 0, %.lr.ph9.i.i.preheader ], [ %i.jw, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %.0238.i.i.epil.init
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !3, !noalias !875
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !839, !alias.scope !873, !noalias !870 ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.0238.i.i.epil.init
  %.val.i61.i.epil = load double, ptr %i.ly, align 8, !tbaa !59, !alias.scope !870, !noalias !873
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !841, !noalias !875
  %i.ma = add i64 %i.lz, 1
  store i64 %i.ma, ptr %i.lx, align 8, !tbaa !841, !noalias !875
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 2 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !843, !noalias !875
  %i.md = fadd double %.val.i61.i.epil, %i.mc
  store double %i.md, ptr %i.mb, align 8, !tbaa !843, !noalias !875
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa: ; preds = %.lr.ph8.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph8.i.i.epil.preheader

.lr.ph8.i.i.epil.preheader:                       ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, %.lr.ph8.i.i.preheader
  %.0237.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i.i.preheader ], [ %i.hy, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val36.i, i64 %.0237.i.i.epil.init
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3, !noalias !867
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.0237.i.i.epil.init
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !839, !alias.scope !865, !noalias !862 ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.mg
  %.val.i53.i.epil = load double, ptr %i.mj, align 8, !tbaa !59, !alias.scope !862, !noalias !865
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !841, !noalias !867
  %i.ml = add i64 %i.mk, 1
  store i64 %i.ml, ptr %i.mi, align 8, !tbaa !841, !noalias !867
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !843, !noalias !867
  %i.mo = fadd double %.val.i53.i.epil, %i.mn
  store double %i.mo, ptr %i.mm, align 8, !tbaa !843, !noalias !867
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa: ; preds = %.lr.ph11.i.i
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i, label %.lr.ph11.i.i.epil.preheader

.lr.ph11.i.i.epil.preheader:                      ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, %.lr.ph11.i.i.preheader
  %.02510.i.i.epil.init = phi i64 [ 0, %.lr.ph11.i.i.preheader ], [ %i.fy, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa ] ; 2 uses
  %lcmp.mod74 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod74)
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %.02510.i.i.epil.init
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3, !noalias !859
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %.02510.i.i.epil.init
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3, !noalias !859
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !839, !alias.scope !857, !noalias !854 ; 3 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.mr
  %.val.i46.i.epil = load double, ptr %i.mx, align 8, !tbaa !59, !alias.scope !854, !noalias !857
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !841, !noalias !859
  %i.mz = add i64 %i.my, 1
  store i64 %i.mz, ptr %i.mw, align 8, !tbaa !841, !noalias !859
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !843, !noalias !859
  %i.nc = fadd double %.val.i46.i.epil, %i.nb
  store double %i.nc, ptr %i.na, align 8, !tbaa !843, !noalias !859
  br label %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i

_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i: ; preds = %bb.ab, %.lr.ph11.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit65.unr-lcssa, %bb.ah, %.lr.ph8.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit63.unr-lcssa, %bb.am, %.lr.ph9.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit61.unr-lcssa, %bb.aq, %.lr.ph8.i71.i.epil.preheader, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i.loopexit.unr-lcssa, %.preheader.i70.i, %.preheader4.i65.i, %.preheader.i60.i, %.preheader5.i.i, %.preheader.i52.i, %.preheader4.i.i, %.preheader.i45.i, %.preheader7.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 4 uses
  %i.ng = load atomic i64, ptr %i.nf acquire, align 8 ; 2 uses
  %i.nh = icmp eq i64 %i.ng, 4294967297
  %i.ni = trunc i64 %i.ng to i32                  ; 2 uses
  br i1 %i.nh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.nf, align 8, !tbaa !36
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  store i32 0, ptr %i.nj, align 4, !tbaa !38
  %i.nk = load ptr, ptr %i.ne, align 8, !tbaa !27
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #22, !inline_history !886
  %i.nn = load ptr, ptr %i.ne, align 8, !tbaa !27
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #22, !inline_history !886
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %i.nq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nr = add nsw i32 %i.ni, -1
  store i32 %i.nr, ptr %i.nf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ns = atomicrmw volatile add ptr %i.nf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ni, %bb.au ], [ %i.ns, %bb.av ]
  %i.nt = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.nt, label %bb.aw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.as, %_ZN6duckdb17AggregateExecutor16UnaryScatterLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationELb1ELb1EEEvPKT0_RNS_18AggregateInputDataEPPT_RKNS_15SelectionVectorESG_RNS_12ValidityMaskEm.exit.i
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 4 uses
  %i.nx = load atomic i64, ptr %i.nw acquire, align 8 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, 4294967297
  %i.nz = trunc i64 %i.nx to i32                  ; 2 uses
  br i1 %i.ny, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.nw, align 8, !tbaa !36
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 0, ptr %i.oa, align 4, !tbaa !38
  %i.ob = load ptr, ptr %i.nv, align 8, !tbaa !27
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #22, !inline_history !887
  %i.oe = load ptr, ptr %i.nv, align 8, !tbaa !27
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #22, !inline_history !887
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.oh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oi = add nsw i32 %i.nz, -1
  store i32 %i.oi, ptr %i.nw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.bb:                                            ; preds = %bb.az
  %i.oj = atomicrmw volatile add ptr %i.nw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.nz, %bb.ba ], [ %i.oj, %bb.bb ]
  %i.ok = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ok, label %bb.bc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ay, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
end_hunk_16
begin_hunk_17_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m:bb.a
  %.val.i40.i.epil = load double, ptr %i.pv, align 8, !tbaa !59, !alias.scope !844, !noalias !847
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !841, !noalias !849
  %i.px = add i64 %i.pw, 1
  store i64 %i.px, ptr %i.pu, align 8, !tbaa !841, !noalias !849
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !843, !noalias !849
  %i.qa = fadd double %.val.i40.i.epil, %i.pz
  store double %i.qa, ptr %i.py, align 8, !tbaa !843, !noalias !849
  br label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit: ; preds = %.loopexit59.i.i, %.lr.ph70.i.i.epil.preheader, %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i, %.preheader.i.i, %bb.r, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit83.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !48
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = load i8, ptr %i.e, align 1, !tbaa !48
  store i8 %i.i, ptr %i.d, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.l = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !183 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !48
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !48
  store i8 %i.t, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i13.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i16.i = load ptr, ptr %i.z, align 8, !tbaa !183 ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %xtraiter = and i64 %3, 1
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !839 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !839 ; 3 uses
  %.val.i = load i64, ptr %i.ac, align 8, !tbaa !841
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i = load double, ptr %i.af, align 8, !tbaa !843
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !841
  %i.ah = add i64 %i.ag, %.val.i
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !841
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !843
  %i.ak = fadd double %.val9.i, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !843
  %i.al = or disjoint i64 %.01.i, 1               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !839 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !839 ; 3 uses
  %.val.i.1 = load i64, ptr %i.an, align 8, !tbaa !841
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val9.i.1 = load double, ptr %i.aq, align 8, !tbaa !843
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !841
  %i.as = add i64 %i.ar, %.val.i.1
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !841
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !843
  %i.av = fadd double %.val9.i.1, %i.au
  store double %i.av, ptr %i.at, align 8, !tbaa !843
  %i.aw = add nuw i64 %.01.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !888

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !839 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !839 ; 3 uses
  %.val.i.epil = load i64, ptr %i.ay, align 8, !tbaa !841
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %.val9.i.epil = load double, ptr %i.bb, align 8, !tbaa !843
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !841
  %i.bd = add i64 %i.bc, %.val.i.epil
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !841
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !843
  %i.bg = fadd double %.val9.i.epil, %i.bf
  store double %i.bg, ptr %i.be, align 8, !tbaa !843
  br label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_18AvgStateIdEENS2_23NumericAverageOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES7_mm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !167
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !48
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.k = load i8, ptr %i.g, align 1, !tbaa !48
  store i8 %i.k, ptr %i.d, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.n = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %2, ptr %9, align 8, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !249
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !251
  %i.v = load ptr, ptr %.val.i.i, align 8, !tbaa !839 ; 2 uses
  %.val21.i = load i64, ptr %i.v, align 8, !tbaa !841 ; 2 uses
  %i.w = icmp eq i64 %.val21.i, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN6duckdb12_GLOBAL__N_123NumericAverageOperation8FinalizeIdNS0_8AvgStateIdEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val22.i = load double, ptr %i.x, align 8
  %i.y = uitofp i64 %.val21.i to double
  %i.z = fdiv double %.val22.i, %i.y
  store double %i.z, ptr %i.s, align 8, !tbaa !59
  br label %_ZN6duckdb12_GLOBAL__N_123NumericAverageOperation8FinalizeIdNS0_8AvgStateIdEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

_ZN6duckdb12_GLOBAL__N_123NumericAverageOperation8FinalizeIdNS0_8AvgStateIdEEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES7_mm.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  %i.aa = load i8, ptr %i.g, align 1, !tbaa !48
  %i.ab = icmp eq i8 %i.aa, 8
  br i1 %i.ab, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_18AvgStateIdEEEEPT_RNS_6VectorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ad = load i8, ptr %i.g, align 1, !tbaa !48
  store i8 %i.ad, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_17
begin_hunk_18_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bs, label %..loopexit_crit_edge.i.i, label %.lr.ph47.i.i.new

.lr.ph47.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph47.i.i.new
  %i.bt = phi double [ %i.cq, %.lr.ph47.i.i.new ], [ %.unr, %.prol.loopexit ]
  %.sroa.4.146.i.i = phi i64 [ %i.cr, %.lr.ph47.i.i.new ], [ %.sroa.4.146.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %.val28.i.i = load double, ptr %i.bu, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.bv = fadd double %i.bt, %.val28.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val28.i.i.1 = load double, ptr %i.bx, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.by = fadd double %i.bv, %.val28.i.i.1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.val28.i.i.2 = load double, ptr %i.ca, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.cb = fadd double %i.by, %.val28.i.i.2
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.val28.i.i.3 = load double, ptr %i.cd, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.ce = fadd double %i.cb, %.val28.i.i.3
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.val28.i.i.4 = load double, ptr %i.cg, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.ch = fadd double %i.ce, %.val28.i.i.4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.val28.i.i.5 = load double, ptr %i.cj, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.ck = fadd double %i.ch, %.val28.i.i.5
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.val28.i.i.6 = load double, ptr %i.cm, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.cn = fadd double %i.ck, %.val28.i.i.6
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.146.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %.val28.i.i.7 = load double, ptr %i.cp, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.cq = fadd double %i.cn, %.val28.i.i.7        ; 2 uses
  %i.cr = add nuw i64 %.sroa.4.146.i.i, 8         ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.cr, %i.bj
  br i1 %exitcond.not.i.i.7, label %..loopexit_crit_edge.i.i, label %.lr.ph47.i.i.new, !llvm.loop !896

.lr.ph.i.i:                                       ; preds = %.preheader43.i.i, %bb.e
  %.sroa.4.245.i.i = phi i64 [ %i.da, %bb.e ], [ %.sroa.4.051.i.i, %.preheader43.i.i ] ; 3 uses
  %i.cs = sub nuw i64 %.sroa.4.245.i.i, %.sroa.4.051.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bh
  %.not.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.245.i.i
  %.val.i.i = load double, ptr %i.cv, align 8, !tbaa !59, !alias.scope !890, !noalias !893
  %i.cw = load i64, ptr %3, align 8, !tbaa !841, !alias.scope !893, !noalias !890
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %3, align 8, !tbaa !841, !alias.scope !893, !noalias !890
  %i.cy = load double, ptr %i.t, align 8, !tbaa !843, !alias.scope !893, !noalias !890
  %i.cz = fadd double %.val.i.i, %i.cy
  store double %i.cz, ptr %i.t, align 8, !tbaa !843, !alias.scope !893, !noalias !890
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.da = add nuw i64 %.sroa.4.245.i.i, 1         ; 2 uses
  %exitcond63.not.i.i = icmp eq i64 %i.da, %i.bj
  br i1 %exitcond63.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !900

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa45 = phi double [ %.lcssa45.unr, %.prol.loopexit ], [ %i.cq, %.lr.ph47.i.i.new ]
  %i.db = sub i64 %i.bj, %.sroa.4.051.i.i
  %i.dc = add i64 %i.db, %.promoted.i.i
  store i64 %i.dc, ptr %3, align 8, !tbaa !841, !alias.scope !893, !noalias !890
  store double %.lcssa45, ptr %i.t, align 8, !tbaa !843, !alias.scope !893, !noalias !890
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.e, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader43.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.051.i.i, %.preheader.i.i ], [ %i.bj, %..loopexit_crit_edge.i.i ], [ %.sroa.4.051.i.i, %.preheader43.i.i ], [ %i.bj, %bb.e ]
  %i.dd = add nuw nsw i64 %.052.i.i, 1            ; 2 uses
  %exitcond64.not.i.i = icmp eq i64 %i.dd, %i.q
  br i1 %exitcond64.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !897

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !211 ; 16 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dh = load ptr, ptr %5, align 8, !tbaa !201
  %.val20.i = load ptr, ptr %i.dh, align 8        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !181, !noalias !906 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.di, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i27.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.h
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %bb.j
  %.0173.us.i.i = phi i64 [ %i.dv, %bb.j ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.dk = lshr i64 %.0173.us.i.i, 6
  %i.dl = and i64 %.0173.us.i.i, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dk
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !58, !noalias !906
  %i.do = shl nuw i64 1, %i.dl
  %i.dp = and i64 %i.do, %i.dn
  %.not.us.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0173.us.i.i
  %.val18.us.i.i = load double, ptr %i.dq, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.dr = load i64, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  %i.dt = load double, ptr %i.dj, align 8, !tbaa !843, !alias.scope !904, !noalias !901
  %i.du = fadd double %.val18.us.i.i, %i.dt
  store double %i.du, ptr %i.dj, align 8, !tbaa !843, !alias.scope !904, !noalias !901
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dv = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.dv, %4
  br i1 %exitcond16.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !907

.preheader.i27.i:                                 ; preds = %bb.h
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  %.promoted6.i.i = load double, ptr %i.dw, align 8, !tbaa !843, !alias.scope !904, !noalias !901 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter52 = and i64 %4, 3                     ; 3 uses
  %i.dx = icmp ult i64 %4, 4
  br i1 %i.dx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter57 = and i64 %4, 7                     ; 3 uses
  %i.dy = icmp ult i64 %4, 8
  br i1 %i.dy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %unroll_iter64 = and i64 %4, -8
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new
  %i.dz = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ] ; 9 uses
  %niter65 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %niter65.next.7, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %.val.us.i.i = load double, ptr %i.ea, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.eb = fadd double %i.dz, %.val.us.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.val.us.i.i.1 = load double, ptr %i.ed, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.ee = fadd double %i.eb, %.val.us.i.i.1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.val.us.i.i.2 = load double, ptr %i.eg, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.eh = fadd double %i.ee, %.val.us.i.i.2
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val.us.i.i.3 = load double, ptr %i.ej, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.ek = fadd double %i.eh, %.val.us.i.i.3
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.val.us.i.i.4 = load double, ptr %i.em, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.en = fadd double %i.ek, %.val.us.i.i.4
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.val.us.i.i.5 = load double, ptr %i.ep, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.eq = fadd double %i.en, %.val.us.i.i.5
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %.val.us.i.i.6 = load double, ptr %i.es, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.et = fadd double %i.eq, %.val.us.i.i.6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %.val.us.i.i.7 = load double, ptr %i.ev, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.ew = fadd double %i.et, %.val.us.i.i.7       ; 3 uses
  %i.ex = add nuw i64 %.04.us.i.i, 8              ; 2 uses
  %niter65.next.7 = add nuw i64 %niter65, 8       ; 2 uses
  %niter65.ncmp.7 = icmp eq i64 %niter65.next.7, %unroll_iter64
  br i1 %niter65.ncmp.7, label %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !908

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %bb.l
  %.0173.i.i = phi i64 [ %i.fm, %bb.l ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !906
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = and i64 %i.fa, 63
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fb
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !58, !noalias !906
  %i.ff = shl nuw i64 1, %i.fc
  %i.fg = and i64 %i.ff, %i.fe
  %.not.i24.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fa
  %.val18.i.i = load double, ptr %i.fh, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.fi = load i64, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  %i.fk = load double, ptr %i.dj, align 8, !tbaa !843, !alias.scope !904, !noalias !901
  %i.fl = fadd double %.val18.i.i, %i.fk
  store double %i.fl, ptr %i.dj, align 8, !tbaa !843, !alias.scope !904, !noalias !901
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fm = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %i.fm, %4
  br i1 %exitcond.not.i25.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !907

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.fn = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !906
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fq
  %.val.i29.i = load double, ptr %i.fr, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.fs = fadd double %i.fn, %.val.i29.i
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3, !noalias !906
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fw
  %.val.i29.i.1 = load double, ptr %i.fx, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.fy = fadd double %i.fs, %.val.i29.i.1
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3, !noalias !906
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.gc
  %.val.i29.i.2 = load double, ptr %i.gd, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.ge = fadd double %i.fy, %.val.i29.i.2
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3, !noalias !906
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.gi
  %.val.i29.i.3 = load double, ptr %i.gj, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.gk = fadd double %i.ge, %.val.i29.i.3        ; 3 uses
  %i.gl = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !908

..loopexit_crit_edge.i30.i.loopexit.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod61.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %.epil.init60 = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ew, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ex, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter57, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %i.gm = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %.epil.init60, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ]
  %.04.us.i.i.epil = phi i64 [ %i.gp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter58 = phi i64 [ %epil.iter58.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load double, ptr %i.gn, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.go = fadd double %i.gm, %.val.us.i.i.epil    ; 2 uses
  %i.gp = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil, !llvm.loop !909

..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod54.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gk, %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gl, %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter52, 0
  call void @llvm.assume(i1 %lcmp.mod56)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader
  %i.gq = phi double [ %i.gv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ %.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ %.04.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !906
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.gt
  %.val.i29.i.epil = load double, ptr %i.gu, align 8, !tbaa !59, !alias.scope !901, !noalias !904
  %i.gv = fadd double %i.gq, %.val.i29.i.epil     ; 2 uses
  %i.gw = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, !llvm.loop !910

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.ew, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gk, %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa ], [ %i.gv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  %.us-phi8.i.i = add i64 %.promoted.i28.i, %4
  store i64 %.us-phi8.i.i, ptr %3, align 8, !tbaa !841, !alias.scope !904, !noalias !901
  store double %.us-phi.i.i, ptr %i.dw, align 8, !tbaa !843, !alias.scope !904, !noalias !901
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.l, %bb.j, %..loopexit_crit_edge.i30.i, %.preheader.i27.i, %.preheader1.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  %i.ha = load atomic i64, ptr %i.gz acquire, align 8 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 4294967297
  %i.hc = trunc i64 %i.ha to i32                  ; 2 uses
  br i1 %i.hb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.gz, align 8, !tbaa !36
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 0, ptr %i.hd, align 4, !tbaa !38
  %i.he = load ptr, ptr %i.gy, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #22, !inline_history !911
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !27
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #22, !inline_history !911
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hl = add nsw i32 %i.hc, -1
  store i32 %i.hl, ptr %i.gz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.hm = atomicrmw volatile add ptr %i.gz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hc, %bb.p ], [ %i.hm, %bb.q ]
  %i.hn = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hn, label %bb.r, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.hr = load atomic i64, ptr %i.hq acquire, align 8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.hq, align 8, !tbaa !36
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 0, ptr %i.hu, align 4, !tbaa !38
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #22, !inline_history !912
  %i.hy = load ptr, ptr %i.hp, align 8, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #22, !inline_history !912
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = add nsw i32 %i.ht, -1
  store i32 %i.ic, ptr %i.hq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.w:                                             ; preds = %bb.u
  %i.id = atomicrmw volatile add ptr %i.hq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.ht, %bb.v ], [ %i.id, %bb.w ]
  %i.ie = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ie, label %bb.x, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.t, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.y:                                             ; preds = %bb.g, %bb.f
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.if

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateIdEEdNS2_23NumericAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEENS2_24DiscreteAverageOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !297
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i64 0, ptr %1, align 8, !tbaa !298
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
end_hunk_18
begin_hunk_19_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %i.cb = icmp uge i64 %i.ca, %.val28.i.i.1
  %.not.i.i.i.i.i.1 = xor i1 %i.bz, %i.cb
  br i1 %.not.i.i.i.i.i.1, label %bb.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1

bb.i:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.cc = select i1 %i.bz, i64 1, i64 -1
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !310, !alias.scope !962, !noalias !959
  %i.ce = add nsw i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.r, align 8, !tbaa !310, !alias.scope !962, !noalias !959
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1: ; preds = %bb.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.cf = add nuw i64 %.sroa.4.148.i.i, 2         ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cf, %i.bc
  br i1 %exitcond.not.i.i.1, label %..loopexit_crit_edge.i.i, label %.lr.ph49.i.i.new, !llvm.loop !965

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i
  %.sroa.4.247.i.i = phi i64 [ %i.ct, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ] ; 3 uses
  %i.cg = sub nuw i64 %.sroa.4.247.i.i, %.sroa.4.053.i.i
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.ba
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.4.247.i.i
  %.val.i.i = load i64, ptr %i.cj, align 8, !tbaa !58, !alias.scope !959, !noalias !962 ; 3 uses
  %i.ck = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !962, !noalias !959
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %3, align 8, !tbaa !298, !alias.scope !962, !noalias !959
  %i.cm = icmp sgt i64 %.val.i.i, -1              ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !309, !alias.scope !962, !noalias !959
  %i.co = add i64 %i.cn, %.val.i.i                ; 2 uses
  store i64 %i.co, ptr %i.q, align 8, !tbaa !309, !alias.scope !962, !noalias !959
  %i.cp = icmp uge i64 %i.co, %.val.i.i
  %.not.i.i.i29.i.i = xor i1 %i.cm, %i.cp
  br i1 %.not.i.i.i29.i.i, label %bb.k, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

bb.k:                                             ; preds = %bb.j
  %i.cq = select i1 %i.cm, i64 1, i64 -1
  %i.cr = load i64, ptr %i.r, align 8, !tbaa !310, !alias.scope !962, !noalias !959
  %i.cs = add nsw i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.r, align 8, !tbaa !310, !alias.scope !962, !noalias !959
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.ct = add nuw i64 %.sroa.4.247.i.i, 1         ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %i.ct, %i.bc
  br i1 %exitcond65.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !967

..loopexit_crit_edge.i.i:                         ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1, %.prol.loopexit
  %.lcssa49 = phi i64 [ %.lcssa49.unr, %.prol.loopexit ], [ %i.ca, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1 ]
  %i.cu = sub i64 %i.bc, %.sroa.4.053.i.i
  %i.cv = add i64 %i.cu, %.promoted.i.i
  store i64 %i.cv, ptr %3, align 8, !tbaa !298, !alias.scope !962, !noalias !959
  store i64 %.lcssa49, ptr %i.q, align 8, !tbaa !309, !alias.scope !962, !noalias !959
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader45.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.053.i.i, %.preheader.i.i ], [ %i.bc, %..loopexit_crit_edge.i.i ], [ %.sroa.4.053.i.i, %.preheader45.i.i ], [ %i.bc, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit30.i.i ]
  %i.cw = add nuw nsw i64 %.054.i.i, 1            ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond66.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !966

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !211 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load ptr, ptr %5, align 8, !tbaa !201
  %.val.i = load ptr, ptr %i.da, align 8          ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !181, !noalias !973 ; 3 uses
  %.not.i.i21.i = icmp eq ptr %i.db, null
  %.not10.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i21.i, label %.preheader.i30.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val.i, null
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i22.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i
  %.0173.us.i.i = phi i64 [ %i.du, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i ], [ 0, %.lr.ph.i22.i ] ; 4 uses
  %i.de = lshr i64 %.0173.us.i.i, 6
  %i.df = and i64 %.0173.us.i.i, 63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !58, !noalias !973
  %i.di = shl nuw i64 1, %i.df
  %i.dj = and i64 %i.di, %i.dh
  %.not.us.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.dk, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.dl = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  %i.dn = icmp sgt i64 %.val18.us.i.i, -1         ; 2 uses
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !309, !alias.scope !971, !noalias !968
  %i.dp = add i64 %i.do, %.val18.us.i.i           ; 2 uses
  store i64 %i.dp, ptr %i.dc, align 8, !tbaa !309, !alias.scope !971, !noalias !968
  %i.dq = icmp uge i64 %i.dp, %.val18.us.i.i
  %.not.i.i.i.us.i28.i = xor i1 %i.dn, %i.dq
  br i1 %.not.i.i.i.us.i28.i, label %bb.p, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i

bb.p:                                             ; preds = %bb.o
  %i.dr = select i1 %i.dn, i64 1, i64 -1
  %i.ds = load i64, ptr %i.dd, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.dt = add nsw i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %i.dd, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.du, %4
  br i1 %exitcond16.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !974

.preheader.i30.i:                                 ; preds = %bb.n
  br i1 %.not10.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i30.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %.promoted.i31.i = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  %.promoted6.i.i = load i64, ptr %i.dv, align 8, !tbaa !309, !alias.scope !971, !noalias !968 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter55 = and i64 %4, 1
  %i.dx = icmp eq i64 %4, 1
  br i1 %i.dx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter60 = and i64 %4, 1
  %i.dy = icmp eq i64 %4, 1
  br i1 %i.dy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %unroll_iter66 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new
  %i.dz = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ek, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.ep, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ] ; 3 uses
  %niter67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %niter67.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1 ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.ea, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.eb = icmp sgt i64 %.val.us.i.i, -1           ; 2 uses
  %i.ec = add i64 %.val.us.i.i, %i.dz             ; 2 uses
  %i.ed = icmp uge i64 %i.ec, %.val.us.i.i
  %.not.i.i.i23.us.i.i = xor i1 %i.eb, %i.ed
  br i1 %.not.i.i.i23.us.i.i, label %bb.q, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.ee = select i1 %i.eb, i64 1, i64 -1
  %i.ef = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.eg = add nsw i64 %i.ef, %i.ee
  store i64 %i.eg, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val.us.i.i.1 = load i64, ptr %i.ei, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.ej = icmp sgt i64 %.val.us.i.i.1, -1         ; 2 uses
  %i.ek = add i64 %.val.us.i.i.1, %i.ec           ; 4 uses
  %i.el = icmp uge i64 %i.ek, %.val.us.i.i.1
  %.not.i.i.i23.us.i.i.1 = xor i1 %i.ej, %i.el
  br i1 %.not.i.i.i23.us.i.i.1, label %bb.r, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

bb.r:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.em = select i1 %i.ej, i64 1, i64 -1
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1: ; preds = %bb.r, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i
  %i.ep = add nuw i64 %.04.us.i.i, 2              ; 2 uses
  %niter67.next.1 = add nuw i64 %niter67, 2       ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !975

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i22.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fj, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i22.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !973
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = lshr i64 %i.es, 6
  %i.eu = and i64 %i.es, 63
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.et
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !58, !noalias !973
  %i.ex = shl nuw i64 1, %i.eu
  %i.ey = and i64 %i.ex, %i.ew
  %.not.i23.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i23.i, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.es
  %.val18.i.i = load i64, ptr %i.ez, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.fa = load i64, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  %i.fc = icmp sgt i64 %.val18.i.i, -1            ; 2 uses
  %i.fd = load i64, ptr %i.dc, align 8, !tbaa !309, !alias.scope !971, !noalias !968
  %i.fe = add i64 %i.fd, %.val18.i.i              ; 2 uses
  store i64 %i.fe, ptr %i.dc, align 8, !tbaa !309, !alias.scope !971, !noalias !968
  %i.ff = icmp uge i64 %i.fe, %.val18.i.i
  %.not.i.i.i.i24.i = xor i1 %i.fc, %i.ff
  br i1 %.not.i.i.i.i24.i, label %bb.t, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.t:                                             ; preds = %bb.s
  %i.fg = select i1 %i.fc, i64 1, i64 -1
  %i.fh = load i64, ptr %i.dd, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.fi = add nsw i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dd, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.t, %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fj, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !974

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.fk = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gb, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.gg, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1 ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !973
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fn
  %.val.i32.i = load i64, ptr %i.fo, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.fp = icmp sgt i64 %.val.i32.i, -1            ; 2 uses
  %i.fq = add i64 %.val.i32.i, %i.fk              ; 2 uses
  %i.fr = icmp uge i64 %i.fq, %.val.i32.i
  %.not.i.i.i23.i.i = xor i1 %i.fp, %i.fr
  br i1 %.not.i.i.i23.i.i, label %bb.u, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.fs = select i1 %i.fp, i64 1, i64 -1
  %i.ft = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.fu = add nsw i64 %i.ft, %i.fs
  store i64 %i.fu, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i: ; preds = %bb.u, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !973
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fy
  %.val.i32.i.1 = load i64, ptr %i.fz, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.ga = icmp sgt i64 %.val.i32.i.1, -1          ; 2 uses
  %i.gb = add i64 %.val.i32.i.1, %i.fq            ; 4 uses
  %i.gc = icmp uge i64 %i.gb, %.val.i32.i.1
  %.not.i.i.i23.i.i.1 = xor i1 %i.ga, %i.gc
  br i1 %.not.i.i.i23.i.i.1, label %bb.v, label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

bb.v:                                             ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gd = select i1 %i.ga, i64 1, i64 -1
  %i.ge = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.gf = add nsw i64 %i.ge, %i.gd
  store i64 %i.gf, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1

_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1: ; preds = %bb.v, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i
  %i.gg = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !975

..loopexit_crit_edge.i33.i.loopexit.unr-lcssa:    ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.us.i.i.1
  %lcmp.mod63.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod63.not, label %..loopexit_crit_edge.i33.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %.epil.init62 = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ek, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.ep, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.04.us.i.i.epil.init
  %.val.us.i.i.epil = load i64, ptr %i.gh, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.gi = icmp sgt i64 %.val.us.i.i.epil, -1      ; 2 uses
  %i.gj = add i64 %.val.us.i.i.epil, %.epil.init62 ; 3 uses
  %i.gk = icmp uge i64 %i.gj, %.val.us.i.i.epil
  %.not.i.i.i23.us.i.i.epil = xor i1 %i.gi, %i.gk
  br i1 %.not.i.i.i23.us.i.i.epil, label %bb.w, label %..loopexit_crit_edge.i33.i

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %i.gl = select i1 %i.gi, i64 1, i64 -1
  %i.gm = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.gn = add nsw i64 %i.gm, %i.gl
  store i64 %i.gn, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa:  ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit24.i.i.1
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %..loopexit_crit_edge.i33.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi i64 [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gb, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.gg, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil.init
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3, !noalias !973
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.gq
  %.val.i32.i.epil = load i64, ptr %i.gr, align 8, !tbaa !58, !alias.scope !968, !noalias !971 ; 3 uses
  %i.gs = icmp sgt i64 %.val.i32.i.epil, -1       ; 2 uses
  %i.gt = add i64 %.val.i32.i.epil, %.epil.init   ; 3 uses
  %i.gu = icmp uge i64 %i.gt, %.val.i32.i.epil
  %.not.i.i.i23.i.i.epil = xor i1 %i.gs, %i.gu
  br i1 %.not.i.i.i23.i.i.epil, label %bb.x, label %..loopexit_crit_edge.i33.i

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader
  %i.gv = select i1 %i.gs, i64 1, i64 -1
  %i.gw = load i64, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  %i.gx = add nsw i64 %i.gw, %i.gv
  store i64 %i.gx, ptr %i.dw, align 8, !tbaa !310, !alias.scope !971, !noalias !968
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i:                       ; preds = %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa, %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %.us-phi.i.i = phi i64 [ %i.gj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ], [ %i.ek, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ], [ %i.gj, %bb.w ], [ %i.gb, %..loopexit_crit_edge.i33.i.loopexit44.unr-lcssa ], [ %i.gt, %bb.x ], [ %i.gt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi8.i.i = add i64 %.promoted.i31.i, %4
  store i64 %.us-phi8.i.i, ptr %3, align 8, !tbaa !298, !alias.scope !971, !noalias !968
  store i64 %.us-phi.i.i, ptr %i.dv, align 8, !tbaa !309, !alias.scope !971, !noalias !968
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_119AverageSetOperationENS_12AddToHugeintEE9OperationIlNS1_8AvgStateINS_9hugeint_tEEENS1_24DiscreteAverageOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i29.i, %..loopexit_crit_edge.i33.i, %.preheader.i30.i, %.preheader1.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ha, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !38
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22, !inline_history !976
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22, !inline_history !976
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hd, %bb.ab ], [ %i.hn, %bb.ac ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ho, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.hr, align 8, !tbaa !36
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !38
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22, !inline_history !977
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22, !inline_history !977
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hu, %bb.ah ], [ %i.ie, %bb.ai ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.if, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.af, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.ak:                                            ; preds = %bb.m, %bb.l
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ig

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18AvgStateINS_9hugeint_tEEElNS2_24DiscreteAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_124DiscreteAverageOperation8FinalizeIlNS0_8AvgStateINS_9hugeint_tEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !298    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.b)
  %i.e = load i64, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_19
begin_hunk_20_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %i.cn = fadd double %i.cj, %i.cm                ; 3 uses
  %i.co = fsub double %i.cn, %i.cj
  %i.cp = fsub double %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.val28.i.i.1 = load double, ptr %i.cr, align 8, !tbaa !59, !alias.scope !1095, !noalias !1098
  %i.cs = fsub double %.val28.i.i.1, %i.cp        ; 2 uses
  %i.ct = fadd double %i.cn, %i.cs                ; 3 uses
  %i.cu = fsub double %i.ct, %i.cn
  %i.cv = fsub double %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.val28.i.i.2 = load double, ptr %i.cx, align 8, !tbaa !59, !alias.scope !1095, !noalias !1098
  %i.cy = fsub double %.val28.i.i.2, %i.cv        ; 2 uses
  %i.cz = fadd double %i.ct, %i.cy                ; 3 uses
  %i.da = fsub double %i.cz, %i.ct
  %i.db = fsub double %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.val28.i.i.3 = load double, ptr %i.dd, align 8, !tbaa !59, !alias.scope !1095, !noalias !1098
  %i.de = fsub double %.val28.i.i.3, %i.db        ; 2 uses
  %i.df = fadd double %i.cz, %i.de                ; 3 uses
  %i.dg = fsub double %i.df, %i.cz
  %i.dh = fsub double %i.dg, %i.de                ; 2 uses
  %i.di = add nuw i64 %.sroa.4.146.i.i, 4         ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.di, %i.bv
  br i1 %exitcond.not.i.i.3, label %..loopexit_crit_edge.i.i, label %.lr.ph47.i.i.new, !llvm.loop !1101

.lr.ph.i.i:                                       ; preds = %.preheader43.i.i, %bb.e
  %.sroa.4.245.i.i = phi i64 [ %i.dv, %bb.e ], [ %.sroa.4.053.i.i, %.preheader43.i.i ] ; 3 uses
  %i.dj = sub nuw i64 %.sroa.4.245.i.i, %.sroa.4.053.i.i
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.bt
  %.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.245.i.i
  %.val.i.i = load double, ptr %i.dm, align 8, !tbaa !59, !alias.scope !1095, !noalias !1098
  %i.dn = load i64, ptr %3, align 8, !tbaa !1045, !alias.scope !1098, !noalias !1095
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %3, align 8, !tbaa !1045, !alias.scope !1098, !noalias !1095
  %i.dp = load double, ptr %i.aa, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095
  %i.dq = fsub double %.val.i.i, %i.dp            ; 2 uses
  %i.dr = load double, ptr %i.z, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095 ; 2 uses
  %i.ds = fadd double %i.dr, %i.dq                ; 2 uses
  %i.dt = fsub double %i.ds, %i.dr
  %i.du = fsub double %i.dt, %i.dq
  store double %i.du, ptr %i.aa, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095
  store double %i.ds, ptr %i.z, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.dv = add nuw i64 %.sroa.4.245.i.i, 1         ; 2 uses
  %exitcond67.not.i.i = icmp eq i64 %i.dv, %i.bv
  br i1 %exitcond67.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1105

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa65 = phi double [ %.lcssa65.unr, %.prol.loopexit ], [ %i.df, %.lr.ph47.i.i.new ]
  %.lcssa64 = phi double [ %.lcssa64.unr, %.prol.loopexit ], [ %i.dh, %.lr.ph47.i.i.new ]
  %i.dw = sub i64 %i.bv, %.sroa.4.053.i.i
  %i.dx = add i64 %i.dw, %.promoted.i.i
  store i64 %i.dx, ptr %3, align 8, !tbaa !1045, !alias.scope !1098, !noalias !1095
  store double %.lcssa64, ptr %i.aa, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095
  store double %.lcssa65, ptr %i.z, align 8, !tbaa !59, !alias.scope !1098, !noalias !1095
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.e, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader43.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bv, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.053.i.i, %.preheader.i.i ], [ %i.bv, %..loopexit_crit_edge.i.i ], [ %.sroa.4.053.i.i, %.preheader43.i.i ], [ %i.bv, %bb.e ]
  %i.dy = add nuw nsw i64 %.054.i.i, 1            ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %i.dy, %i.w
  br i1 %exitcond68.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !1102

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !211 ; 10 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ec = load ptr, ptr %5, align 8, !tbaa !201
  %.val20.i = load ptr, ptr %i.ec, align 8        ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !181, !noalias !1111 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.ed, null
  %.not13.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i27.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.h
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %bb.j
  %.0173.us.i.i = phi i64 [ %i.ev, %bb.j ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.eg = lshr i64 %.0173.us.i.i, 6
  %i.eh = and i64 %.0173.us.i.i, 63
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eg
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !58, !noalias !1111
  %i.ek = shl nuw i64 1, %i.eh
  %i.el = and i64 %i.ek, %i.ej
  %.not.us.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.0173.us.i.i
  %.val18.us.i.i = load double, ptr %i.em, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.en = load i64, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  %i.ep = load double, ptr %i.ef, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  %i.eq = fsub double %.val18.us.i.i, %i.ep       ; 2 uses
  %i.er = load double, ptr %i.ee, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106 ; 2 uses
  %i.es = fadd double %i.er, %i.eq                ; 2 uses
  %i.et = fsub double %i.es, %i.er
  %i.eu = fsub double %i.et, %i.eq
  store double %i.eu, ptr %i.ef, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  store double %i.es, ptr %i.ee, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ev = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.ev, %4
  br i1 %exitcond21.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !1112

.preheader.i27.i:                                 ; preds = %bb.h
  br i1 %.not13.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted.i28.i = load i64, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  %.promoted6.i.i = load double, ptr %i.ex, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106 ; 4 uses
  %.promoted8.i.i = load double, ptr %i.ew, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter74 = and i64 %4, 1
  %i.ey = icmp eq i64 %4, 1
  br i1 %i.ey, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter82 = and i64 %4, 3                     ; 3 uses
  %i.ez = icmp ult i64 %4, 4
  br i1 %i.ez, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %unroll_iter91 = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new
  %i.fa = phi double [ %.promoted8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.fw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ] ; 2 uses
  %i.fb = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ] ; 5 uses
  %niter92 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader.new ], [ %niter92.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %.val.us.i.i = load double, ptr %i.fc, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.fd = fsub double %.val.us.i.i, %i.fb         ; 2 uses
  %i.fe = fadd double %i.fa, %i.fd                ; 3 uses
  %i.ff = fsub double %i.fe, %i.fa
  %i.fg = fsub double %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.val.us.i.i.1 = load double, ptr %i.fi, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.fj = fsub double %.val.us.i.i.1, %i.fg       ; 2 uses
  %i.fk = fadd double %i.fe, %i.fj                ; 3 uses
  %i.fl = fsub double %i.fk, %i.fe
  %i.fm = fsub double %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.val.us.i.i.2 = load double, ptr %i.fo, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.fp = fsub double %.val.us.i.i.2, %i.fm       ; 2 uses
  %i.fq = fadd double %i.fk, %i.fp                ; 3 uses
  %i.fr = fsub double %i.fq, %i.fk
  %i.fs = fsub double %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %.val.us.i.i.3 = load double, ptr %i.fu, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.fv = fsub double %.val.us.i.i.3, %i.fs       ; 2 uses
  %i.fw = fadd double %i.fq, %i.fv                ; 4 uses
  %i.fx = fsub double %i.fw, %i.fq
  %i.fy = fsub double %i.fx, %i.fv                ; 3 uses
  %i.fz = add nuw i64 %.04.us.i.i, 4              ; 2 uses
  %niter92.next.3 = add nuw i64 %niter92, 4       ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, !llvm.loop !1113

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %bb.l
  %.0173.i.i = phi i64 [ %i.gs, %bb.l ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3, !noalias !1111
  %i.gc = zext i32 %i.gb to i64                   ; 3 uses
  %i.gd = lshr i64 %i.gc, 6
  %i.ge = and i64 %i.gc, 63
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gd
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !58, !noalias !1111
  %i.gh = shl nuw i64 1, %i.ge
  %i.gi = and i64 %i.gh, %i.gg
  %.not.i24.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gc
  %.val18.i.i = load double, ptr %i.gj, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.gk = load i64, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  %i.gm = load double, ptr %i.ef, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  %i.gn = fsub double %.val18.i.i, %i.gm          ; 2 uses
  %i.go = load double, ptr %i.ee, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106 ; 2 uses
  %i.gp = fadd double %i.go, %i.gn                ; 2 uses
  %i.gq = fsub double %i.gp, %i.go
  %i.gr = fsub double %i.gq, %i.gn
  store double %i.gr, ptr %i.ef, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  store double %i.gp, ptr %i.ee, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gs = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %i.gs, %4
  br i1 %exitcond.not.i25.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !1112

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new
  %i.gt = phi double [ %.promoted8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ] ; 2 uses
  %i.gu = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.hl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %i.hm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !1111
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gx
  %.val.i29.i = load double, ptr %i.gy, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.gz = fsub double %.val.i29.i, %i.gu          ; 2 uses
  %i.ha = fadd double %i.gt, %i.gz                ; 3 uses
  %i.hb = fsub double %i.ha, %i.gt
  %i.hc = fsub double %i.hb, %i.gz
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !1111
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hg
  %.val.i29.i.1 = load double, ptr %i.hh, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.hi = fsub double %.val.i29.i.1, %i.hc        ; 2 uses
  %i.hj = fadd double %i.ha, %i.hi                ; 4 uses
  %i.hk = fsub double %i.hj, %i.ha
  %i.hl = fsub double %i.hk, %i.hi                ; 3 uses
  %i.hm = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i, !llvm.loop !1113

..loopexit_crit_edge.i30.i.loopexit.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i
  %lcmp.mod87.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod87.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader
  %.epil.init84 = phi double [ %.promoted8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.fw, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ]
  %.epil.init86 = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.fy, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader ], [ %i.fz, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter82, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %i.hn = phi double [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %.epil.init84, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ] ; 2 uses
  %i.ho = phi double [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %.epil.init86, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ]
  %.04.us.i.i.epil = phi i64 [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ]
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load double, ptr %i.hp, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.hq = fsub double %.val.us.i.i.epil, %i.ho    ; 2 uses
  %i.hr = fadd double %i.hn, %i.hq                ; 3 uses
  %i.hs = fsub double %i.hr, %i.hn
  %i.ht = fsub double %i.hs, %i.hq                ; 2 uses
  %i.hu = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter82
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil, !llvm.loop !1114

..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod78.not, label %..loopexit_crit_edge.i30.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
  %.epil.init = phi double [ %.promoted8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hj, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ] ; 2 uses
  %.epil.init77 = phi double [ %.promoted6.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hl, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader ], [ %i.hm, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !1111
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hx
  %.val.i29.i.epil = load double, ptr %i.hy, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.hz = fsub double %.val.i29.i.epil, %.epil.init77 ; 2 uses
  %i.ia = fadd double %.epil.init, %i.hz          ; 2 uses
  %i.ib = fsub double %i.ia, %.epil.init
  %i.ic = fsub double %i.ib, %i.hz
  br label %..loopexit_crit_edge.i30.i

..loopexit_crit_edge.i30.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fw, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hj, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ia, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi10.i.i = phi double [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fy, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hl, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi11.i.i = add i64 %.promoted.i28.i, %4
  store i64 %.us-phi11.i.i, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  store double %.us-phi10.i.i, ptr %i.ex, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  store double %.us-phi.i.i, ptr %i.ew, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.l, %bb.j, %..loopexit_crit_edge.i30.i, %.preheader.i27.i, %.preheader1.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.if, align 8, !tbaa !36
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !38
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1115
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !27
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1115
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ii, %bb.p ], [ %i.is, %bb.q ]
  %i.it = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.it, label %bb.r, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.iw, align 8, !tbaa !36
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !38
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1116
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1116
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.w:                                             ; preds = %bb.u
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.iz, %bb.v ], [ %i.jj, %bb.w ]
  %i.jk = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jk, label %bb.x, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.t, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.y:                                             ; preds = %bb.g, %bb.f
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.jl

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_10CovarStateEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #5 comdat align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_10CovarStateENS_17CovarPopOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
end_hunk_20
