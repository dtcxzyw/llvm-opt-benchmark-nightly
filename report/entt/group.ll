Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/group?download=true
inline.NumInlined: 24122
inline.NumDeleted: 8482
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN28GroupOwning_SortOrdered_Test8TestBodyEv:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !364
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !365
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = load i32, ptr %9, align 4, !tbaa !352
  %i.bx = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.bw, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc235:                                        ; preds = %.noexc234
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %.011.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 5 uses
  %i.bz = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352
  %i.ca = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.bz, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.by)
          to label %.noexc235.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc235.1:                                      ; preds = %.noexc235
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.011.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.cc = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352
  %i.cd = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.cb)
          to label %.noexc235.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc235.2:                                      ; preds = %.noexc235.1
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.011.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.cf = load i32, ptr %.011.i.i.i.ptr.3, align 4, !tbaa !352
  %i.cg = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.cf, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.ce)
          to label %.noexc235.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc235.3:                                      ; preds = %.noexc235.2
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.011.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ci = load i32, ptr %.011.i.i.i.ptr.4, align 4, !tbaa !352
  %i.cj = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.ci, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
          to label %.noexc235.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc235.4:                                      ; preds = %.noexc235.3
  %.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !364
  %.pre13.i.i = load ptr, ptr %i.bo, align 8, !tbaa !365
  %.pre14.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre15.i.i = ptrtoint ptr %.pre13.i.i to i64
  %.pre17.i.i = sub i64 %.pre14.i.i, %.pre15.i.i
  %.pre19.i.i = ashr exact i64 %.pre17.i.i, 2     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !526
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 112 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !517
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 120 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !517
  %i.cq = icmp eq ptr %i.cn, %i.cp
  %.not10.i.i = icmp eq i64 %i.bv, %.pre19.i.i
  %or.cond.i.i = select i1 %i.cq, i1 true, i1 %.not10.i.i
  br i1 %or.cond.i.i, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i229

.lr.ph.split.i.i229:                              ; preds = %.noexc235.4, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i
  %.011.i.i = phi i64 [ %i.dg, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i ], [ %i.bv, %.noexc235.4 ] ; 2 uses
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !365
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.011.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !352
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !346 ; 2 uses
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i230 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not5.i.i.i230, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i231

.lr.ph.preheader.i.i.i231:                        ; preds = %.lr.ph.split.i.i229
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 4
  br label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %.noexc236, %.lr.ph.preheader.i.i.i231
  %.06.i.i.i232 = phi i64 [ %i.da, %.noexc236 ], [ %i.cz, %.lr.ph.preheader.i.i.i231 ]
  %i.da = add i64 %.06.i.i.i232, -1               ; 3 uses
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !347
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !349
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !350
  invoke void %i.de(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(336) %i.cl, i32 noundef %i.ct)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !45

.noexc236:                                        ; preds = %.lr.ph.i8.i.i
  %.not.i9.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i9.i.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i, !llvm.loop !46

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i: ; preds = %.noexc236, %.lr.ph.split.i.i229
  %i.dg = add i64 %.011.i.i, 1                    ; 2 uses
  %.not.i.i233 = icmp eq i64 %i.dg, %.pre19.i.i
  br i1 %.not.i.i233, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i229, !llvm.loop !47

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, %.noexc235.4
  %i.dh = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %6, i32 noundef -1471413475)
          to label %.noexc257 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc257:                                        ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !364
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !365
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2                 ; 2 uses
  %i.dq = load i32, ptr %9, align 4, !tbaa !352
  %i.dr = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dq, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc258:                                        ; preds = %.noexc257
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  %i.dt = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352
  %i.du = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dt, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.ds)
          to label %.noexc258.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc258.1:                                      ; preds = %.noexc258
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.dw = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352
  %i.dx = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dw, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.dv)
          to label %.noexc258.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc258.2:                                      ; preds = %.noexc258.1
  %.pre.i.i241 = load ptr, ptr %i.dj, align 8, !tbaa !364
  %.pre13.i.i242 = load ptr, ptr %i.di, align 8, !tbaa !365
  %.pre14.i.i243 = ptrtoint ptr %.pre.i.i241 to i64
  %.pre15.i.i244 = ptrtoint ptr %.pre13.i.i242 to i64
  %.pre17.i.i245 = sub i64 %.pre14.i.i243, %.pre15.i.i244
  %.pre19.i.i246 = ashr exact i64 %.pre17.i.i245, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !345
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 112 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !517
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 120 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !517
  %i.ee = icmp eq ptr %i.eb, %i.ed
  %.not10.i.i247 = icmp eq i64 %i.dp, %.pre19.i.i246
  %or.cond.i.i248 = select i1 %i.ee, i1 true, i1 %.not10.i.i247
  br i1 %or.cond.i.i248, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i249

.lr.ph.split.i.i249:                              ; preds = %.noexc258.2, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i
  %.011.i.i250 = phi i64 [ %i.eu, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i ], [ %i.dp, %.noexc258.2 ] ; 2 uses
  %i.ef = load ptr, ptr %i.di, align 8, !tbaa !365
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.011.i.i250
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !352
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !346 ; 2 uses
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i251 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not5.i.i.i251, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i252

.lr.ph.preheader.i.i.i252:                        ; preds = %.lr.ph.split.i.i249
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 4
  br label %.lr.ph.i8.i.i253

.lr.ph.i8.i.i253:                                 ; preds = %.noexc259, %.lr.ph.preheader.i.i.i252
  %.06.i.i.i254 = phi i64 [ %i.eo, %.noexc259 ], [ %i.en, %.lr.ph.preheader.i.i.i252 ]
  %i.eo = add i64 %.06.i.i.i254, -1               ; 3 uses
  %i.ep = load ptr, ptr %i.ea, align 8, !tbaa !347
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !349
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !350
  invoke void %i.es(ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(336) %i.dz, i32 noundef %i.eh)
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !48

.noexc259:                                        ; preds = %.lr.ph.i8.i.i253
  %.not.i9.i.i255 = icmp eq i64 %i.eo, 0
  br i1 %.not.i9.i.i255, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i253, !llvm.loop !4

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i: ; preds = %.noexc259, %.lr.ph.split.i.i249
  %i.eu = add i64 %.011.i.i250, 1                 ; 2 uses
  %.not.i.i256 = icmp eq i64 %i.eu, %.pre19.i.i246
  br i1 %.not.i.i256, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i249, !llvm.loop !49

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, %.noexc258.2
  %i.ev = load ptr, ptr %7, align 8, !tbaa !530, !noalias !2532, !nonnull !367, !noundef !367 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !371, !noalias !2532 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !371, !noalias !2532 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !532 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !300, !noalias !2533 ; 4 uses
  %.idx.i.i = shl nsw i64 %i.fb, 2
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i.i ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fg = icmp eq i64 %i.fb, 0
  br i1 %i.fg, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.thread.i", label %bb.c

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.thread.i": ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i"

bb.c:                                             ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  %i.fh = ptrtoint ptr %i.fd to i64
  store i64 %i.ff, ptr %3, align 8, !tbaa !300
  store i64 %i.fh, ptr %4, align 8, !tbaa !300
  %i.fi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fb, i1 true)
  %i.fj = shl nuw nsw i64 %i.fi, 1
  %i.fk = sub nuw nsw i64 126, %i.fj
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4, i64 noundef %i.fk, ptr nonnull readonly %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fl = icmp sgt i64 %i.fb, 16
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZNK4entt8std_sortclIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPNS_6entityESt6vectorIS7_SaIS7_EEEEETkSt22random_access_iteratorSD_EEvT1_T2_T_DpOT0_.exit.thread34.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c
  store i64 %i.ff, ptr %1, align 8, !tbaa !300
  %i.fm = getelementptr inbounds i8, ptr %i.fe, i64 -64 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nonnull %i.fm, ptr nonnull readonly %7)
  %.val.val.i.i.i.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !530, !noalias !2534, !nonnull !367, !noundef !367
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !371, !noalias !2535 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !372 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !533 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.sroa.03.04.i.i.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ft, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !352 ; 2 uses
  %i.fv = and i32 %i.fu, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = and i64 %i.fw, 4095
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !300
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fy
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.gc = phi ptr [ %.sroa.03.04.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.03.0.i.i.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !352 ; 2 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !352
  %i.gf = and i32 %i.ge, 1048575
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gh = lshr i64 %i.gg, 10
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !535
  %i.gk = and i64 %i.gg, 1023
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !537
  %i.gn = and i32 %i.gd, 1048575
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = lshr i64 %i.go, 12
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !300
  %i.gs = and i64 %i.go, 4095
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !352
  %i.gv = and i32 %i.gu, 1048575
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = lshr i64 %i.gw, 10
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !535
  %i.ha = and i64 %i.gw, 1023
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !537
  %i.hd = icmp slt i32 %i.gm, %i.hc
  br i1 %i.hd, label %bb.f, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  %.sroa.03.0.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.he = getelementptr inbounds i8, ptr %i.gc, i64 -4
  store i32 %i.gd, ptr %i.he, align 4, !tbaa !352
  br label %bb.e, !llvm.loop !50

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  %i.hf = getelementptr inbounds i8, ptr %i.gc, i64 -4
  store i32 %i.fu, ptr %i.hf, align 4, !tbaa !352
  %i.hg = icmp eq ptr %i.ft, %i.fd
  br i1 %i.hg, label %.lr.ph27.i.i, label %bb.d, !llvm.loop !2446

"_ZNK4entt8std_sortclIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPNS_6entityESt6vectorIS7_SaIS7_EEEEETkSt22random_access_iteratorSD_EEvT1_T2_T_DpOT0_.exit.thread34.i.i": ; preds = %bb.c
  store i64 %i.ff, ptr %2, align 8, !tbaa !300
  call fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %i.fd, ptr nonnull readonly %7)
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i", %"_ZNK4entt8std_sortclIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPNS_6entityESt6vectorIS7_SaIS7_EEEEETkSt22random_access_iteratorSD_EEvT1_T2_T_DpOT0_.exit.thread34.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %.pre.i.i260 = load ptr, ptr %i.fc, align 8, !tbaa !365
  %.pre30.i.i = load ptr, ptr %i.hh, align 8, !tbaa !372
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.hi = phi ptr [ %.pre30.i.i, %.lr.ph27.i.i ], [ %i.je, %._crit_edge.i.i ] ; 3 uses
  %i.hj = phi ptr [ %.pre.i.i260, %.lr.ph27.i.i ], [ %i.jf, %._crit_edge.i.i ] ; 3 uses
  %.026.i.i = phi i64 [ 0, %.lr.ph27.i.i ], [ %i.jg, %._crit_edge.i.i ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.026.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !352
  %i.hm = and i32 %i.hl, 1048575
  %i.hn = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.ho = lshr i64 %i.hn, 12
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !300
  %i.hr = and i64 %i.hn, 4095
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !352
  %i.hu = and i32 %i.ht, 1048575
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %.not23.i.i = icmp eq i64 %.026.i.i, %i.hv
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc261
  %i.hw = phi ptr [ %i.iz, %.noexc261 ], [ %i.hi, %bb.g ]
  %i.hx = phi ptr [ %i.iq, %.noexc261 ], [ %i.hj, %bb.g ] ; 2 uses
  %.01325.i.i = phi i64 [ %.02224.i.i, %.noexc261 ], [ %.026.i.i, %bb.g ] ; 3 uses
  %.02224.i.i = phi i64 [ %i.ij, %.noexc261 ], [ %i.hv, %bb.g ] ; 4 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.02224.i.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !352
  %i.ia = and i32 %i.hz, 1048575
  %i.ib = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.ic = lshr i64 %i.ib, 12
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !300
  %i.if = and i64 %i.ib, 4095
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !352
  %i.ii = and i32 %i.ih, 1048575
  %i.ij = zext nneg i32 %i.ii to i64              ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.01325.i.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !352
  %i.im = load ptr, ptr %i.ex, align 8, !tbaa !267
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, i64 noundef %.02224.i.i, i64 noundef %i.ij)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2447

.noexc261:                                        ; preds = %.lr.ph.i.i
  %i.ip = trunc i64 %.01325.i.i to i32
  %i.iq = load ptr, ptr %i.fc, align 8, !tbaa !365 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.01325.i.i
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !352
  %i.it = and i32 %i.ip, 1048575
  %i.iu = and i32 %i.is, -1048576
  %i.iv = or disjoint i32 %i.iu, %i.it
  %i.iw = and i32 %i.il, 1048575
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = lshr i64 %i.ix, 12
  %i.iz = load ptr, ptr %i.hh, align 8, !tbaa !372 ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.iy
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !300
  %i.jc = and i64 %i.ix, 4095
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jc
  store i32 %i.iv, ptr %i.jd, align 4, !tbaa !352
  %.not.i5.i = icmp eq i64 %.02224.i.i, %i.ij
  br i1 %.not.i5.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2448

._crit_edge.i.i:                                  ; preds = %.noexc261, %bb.g
  %i.je = phi ptr [ %i.hi, %bb.g ], [ %i.iz, %.noexc261 ]
  %i.jf = phi ptr [ %i.hj, %bb.g ], [ %i.iq, %.noexc261 ]
  %i.jg = add nuw i64 %.026.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jg, %i.fb
  br i1 %exitcond.not.i.i, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.loopexit.i", label %bb.g, !llvm.loop !2449

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.loopexit.i": ; preds = %._crit_edge.i.i
  %.val.val.pre.i = load ptr, ptr %7, align 8, !tbaa !530
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i"

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i": ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.loopexit.i", %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.thread.i"
  %.val.val.i = phi ptr [ %.val.val.pre.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.loopexit.i" ], [ %i.ev, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.thread.i" ] ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.val.val.i, i64 32
  %.val.val.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !532 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.val.val.val.pre.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i"
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.jh, align 8, !tbaa !365
  %.pre3.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !372
  br label %bb.h

bb.h:                                             ; preds = %.noexc262, %.lr.ph.i.i.i.i.i.i
  %i.jj = phi ptr [ %.pre3.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.kx, %.noexc262 ] ; 2 uses
  %i.jk = phi ptr [ %.pre.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ko, %.noexc262 ]
  %.02.i.i.i.i.i.i = phi i64 [ %.val.val.val.pre.i, %.lr.ph.i.i.i.i.i.i ], [ %i.jl, %.noexc262 ]
  %i.jl = add i64 %.02.i.i.i.i.i.i, -1            ; 4 uses
  %i.jm = load ptr, ptr %i.fc, align 8, !tbaa !365
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jl
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !352
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jl
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !352
  %i.jr = and i32 %i.jq, 1048575
  %i.js = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.jt = lshr i64 %i.js, 12
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !300
  %i.jw = and i64 %i.js, 4095
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !352
  %i.jz = and i32 %i.jy, 1048575                  ; 2 uses
  %i.ka = zext nneg i32 %i.jz to i64              ; 2 uses
  %i.kb = and i32 %i.jo, 1048575
  %i.kc = zext nneg i32 %i.kb to i64              ; 2 uses
  %i.kd = lshr i64 %i.kc, 12
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !300
  %i.kg = and i64 %i.kc, 4095
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !352
  %i.kj = and i32 %i.ki, 1048575                  ; 2 uses
  %i.kk = zext nneg i32 %i.kj to i64              ; 2 uses
  %i.kl = load ptr, ptr %i.ez, align 8, !tbaa !267
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  invoke void %i.kn(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 noundef %i.ka, i64 noundef %i.kk)
          to label %.noexc262 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2450

.noexc262:                                        ; preds = %bb.h
  %i.ko = load ptr, ptr %i.jh, align 8, !tbaa !365 ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.ka ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kk ; 3 uses
  %i.kr = load i32, ptr %i.kp, align 4, !tbaa !352 ; 2 uses
  %i.ks = and i32 %i.kr, -1048576
  %i.kt = or disjoint i32 %i.ks, %i.kj
  %i.ku = and i32 %i.kr, 1048575
  %i.kv = zext nneg i32 %i.ku to i64              ; 2 uses
  %i.kw = lshr i64 %i.kv, 12
  %i.kx = load ptr, ptr %i.ji, align 8, !tbaa !372 ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !300
  %i.la = and i64 %i.kv, 4095
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.la
  store i32 %i.kt, ptr %i.lb, align 4, !tbaa !352
  %i.lc = load i32, ptr %i.kq, align 4, !tbaa !352 ; 2 uses
  %i.ld = and i32 %i.lc, -1048576
  %i.le = or disjoint i32 %i.ld, %i.jz
  %i.lf = and i32 %i.lc, 1048575
  %i.lg = zext nneg i32 %i.lf to i64              ; 2 uses
  %i.lh = lshr i64 %i.lg, 12
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !300
  %i.lk = and i64 %i.lg, 4095
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lk
  store i32 %i.le, ptr %i.ll, align 4, !tbaa !352
  %i.lm = load i32, ptr %i.kp, align 4, !tbaa !352
  %i.ln = load i32, ptr %i.kq, align 4, !tbaa !352
  store i32 %i.ln, ptr %i.kp, align 4, !tbaa !352
  store i32 %i.lm, ptr %i.kq, align 4, !tbaa !352
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit.loopexit", label %bb.h, !llvm.loop !2451

"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit.loopexit": ; preds = %.noexc262
  %.pre630 = load ptr, ptr %7, align 8, !tbaa !530
  br label %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit"

"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit": ; preds = %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit.loopexit", %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i"
  %73 = phi ptr [ %.pre630, %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit.loopexit" ], [ %.val.val.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.lo = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !371
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !365 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !352, !noalias !2536
  %i.lt = load i32, ptr %9, align 4, !tbaa !352, !noalias !2536
  %i.lu = icmp eq i32 %i.ls, %i.lt
  br i1 %i.lu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit"
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.l

bb.j:                                             ; preds = %"_ZNK4entt11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS7_EEENS_14basic_registryIS8_SaIS8_EEEEENS2_INS3_IcS8_SaIcEEESD_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortITpTnmJEZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit"
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.210, ptr noundef nonnull align 4 dereferenceable(4) %i.lr, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.l

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.i, %bb.j
  %i.lv = load i8, ptr %11, align 8, !tbaa !310, !range !366, !noundef !367
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %.critedge, label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i8.i.i, %.lr.ph.i8.i.i253, %bb.h, %.lr.ph.i.i, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i, %.noexc234, %.noexc235, %.noexc235.1, %.noexc235.2, %.noexc235.3, %.noexc258.1, %.noexc258, %.noexc257, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit, %bb.b
  %lpad.loopexit.split-lp849 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.lz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i265, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !315
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.o, %bb.n
  %i.mc = phi ptr [ %i.mb, %bb.o ], [ @.str.300, %bb.n ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 996, ptr noundef %i.mc)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.md = load ptr, ptr %12, align 8, !tbaa !317  ; 3 uses
  %.not.i.i266 = icmp eq ptr %i.md, null
  br i1 %.not.i.i266, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !267
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(128) %i.md) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.mh = load ptr, ptr %i.lz, align 8, !tbaa !318 ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i267, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !315 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !295
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.jo

bb.s:                                             ; preds = %bb.m
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit270

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.mp, %bb.u ], [ %i.mo, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.mq = load ptr, ptr %12, align 8, !tbaa !317  ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i268, label %_ZN7testing7MessageD2Ev.exit270, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.v
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !267
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(128) %i.mq) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit270

_ZN7testing7MessageD2Ev.exit270:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.mn, %bb.s ], [ %.pn, %bb.v ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #28
  br label %bb.aa

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !318 ; 4 uses
  %.not.i.i271 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i271, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !315 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272: ; preds = %bb.w
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !295
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i272
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef 32) #29
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i273, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.nb = load ptr, ptr %7, align 8, !tbaa !530, !nonnull !367, !noundef !367
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !371
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !365
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !352, !noalias !2537
  %i.ni = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352, !noalias !2537
  %i.nj = icmp eq i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit278 unwind label %bb.ab

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.211, ptr noundef nonnull align 4 dereferenceable(4) %i.ng, ptr noundef nonnull align 4 dereferenceable(4) %.011.i.i.i.ptr.1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit278 unwind label %bb.ab

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit278: ; preds = %bb.y, %bb.z
  %i.nk = load i8, ptr %14, align 8, !tbaa !310, !range !366, !noundef !367
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %.critedge195, label %bb.ac

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit270, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit270 ], [ %i.ly, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
end_hunk_0
begin_hunk_1_@_ZN28GroupOwning_SortReverse_Test8TestBodyEv:bb.a
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = load i32, ptr %8, align 4, !tbaa !352
  %i.bx = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.bw, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc234:                                        ; preds = %.noexc233
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.011.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.bz = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352
  %i.ca = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.bz, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.by)
          to label %.noexc234.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc234.1:                                      ; preds = %.noexc234
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.011.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.cc = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352
  %i.cd = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.cb)
          to label %.noexc234.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc234.2:                                      ; preds = %.noexc234.1
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.011.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.cf = load i32, ptr %.011.i.i.i.ptr.3, align 4, !tbaa !352
  %i.cg = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.cf, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.ce)
          to label %.noexc234.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc234.3:                                      ; preds = %.noexc234.2
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.011.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ci = load i32, ptr %.011.i.i.i.ptr.4, align 4, !tbaa !352
  %i.cj = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.bn, i32 noundef %i.ci, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
          to label %.noexc234.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc234.4:                                      ; preds = %.noexc234.3
  %.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !364
  %.pre13.i.i = load ptr, ptr %i.bo, align 8, !tbaa !365
  %.pre14.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre15.i.i = ptrtoint ptr %.pre13.i.i to i64
  %.pre17.i.i = sub i64 %.pre14.i.i, %.pre15.i.i
  %.pre19.i.i = ashr exact i64 %.pre17.i.i, 2     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !526
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 112 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !517
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 120 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !517
  %i.cq = icmp eq ptr %i.cn, %i.cp
  %.not10.i.i = icmp eq i64 %i.bv, %.pre19.i.i
  %or.cond.i.i = select i1 %i.cq, i1 true, i1 %.not10.i.i
  br i1 %or.cond.i.i, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i228

.lr.ph.split.i.i228:                              ; preds = %.noexc234.4, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i
  %.011.i.i = phi i64 [ %i.dg, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i ], [ %i.bv, %.noexc234.4 ] ; 2 uses
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !365
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.011.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !352
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !346 ; 2 uses
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i229 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not5.i.i.i229, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i230

.lr.ph.preheader.i.i.i230:                        ; preds = %.lr.ph.split.i.i228
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 4
  br label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %.noexc235, %.lr.ph.preheader.i.i.i230
  %.06.i.i.i231 = phi i64 [ %i.da, %.noexc235 ], [ %i.cz, %.lr.ph.preheader.i.i.i230 ]
  %i.da = add i64 %.06.i.i.i231, -1               ; 3 uses
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !347
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !349
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !350
  invoke void %i.de(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(336) %i.cl, i32 noundef %i.ct)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !45

.noexc235:                                        ; preds = %.lr.ph.i8.i.i
  %.not.i9.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i9.i.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i, !llvm.loop !46

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i: ; preds = %.noexc235, %.lr.ph.split.i.i228
  %i.dg = add i64 %.011.i.i, 1                    ; 2 uses
  %.not.i.i232 = icmp eq i64 %i.dg, %.pre19.i.i
  br i1 %.not.i.i232, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i228, !llvm.loop !47

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, %.noexc234.4
  %i.dh = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %5, i32 noundef -1471413475)
          to label %.noexc256 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc256:                                        ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !364
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !365
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2                 ; 2 uses
  %i.dq = load i32, ptr %8, align 4, !tbaa !352
  %i.dr = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dq, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc257 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc257:                                        ; preds = %.noexc256
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 4 uses
  %i.dt = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352
  %i.du = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dt, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.ds)
          to label %.noexc257.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc257.1:                                      ; preds = %.noexc257
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.dw = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352
  %i.dx = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef %i.dw, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.dv)
          to label %.noexc257.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc257.2:                                      ; preds = %.noexc257.1
  %.pre.i.i240 = load ptr, ptr %i.dj, align 8, !tbaa !364
  %.pre13.i.i241 = load ptr, ptr %i.di, align 8, !tbaa !365
  %.pre14.i.i242 = ptrtoint ptr %.pre.i.i240 to i64
  %.pre15.i.i243 = ptrtoint ptr %.pre13.i.i241 to i64
  %.pre17.i.i244 = sub i64 %.pre14.i.i242, %.pre15.i.i243
  %.pre19.i.i245 = ashr exact i64 %.pre17.i.i244, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !345
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 112 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !517
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 120 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !517
  %i.ee = icmp eq ptr %i.eb, %i.ed
  %.not10.i.i246 = icmp eq i64 %i.dp, %.pre19.i.i245
  %or.cond.i.i247 = select i1 %i.ee, i1 true, i1 %.not10.i.i246
  br i1 %or.cond.i.i247, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i248

.lr.ph.split.i.i248:                              ; preds = %.noexc257.2, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i
  %.011.i.i249 = phi i64 [ %i.eu, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i ], [ %i.dp, %.noexc257.2 ] ; 2 uses
  %i.ef = load ptr, ptr %i.di, align 8, !tbaa !365
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.011.i.i249
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !352
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !346 ; 2 uses
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i250 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not5.i.i.i250, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i251

.lr.ph.preheader.i.i.i251:                        ; preds = %.lr.ph.split.i.i248
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 4
  br label %.lr.ph.i8.i.i252

.lr.ph.i8.i.i252:                                 ; preds = %.noexc258, %.lr.ph.preheader.i.i.i251
  %.06.i.i.i253 = phi i64 [ %i.eo, %.noexc258 ], [ %i.en, %.lr.ph.preheader.i.i.i251 ]
  %i.eo = add i64 %.06.i.i.i253, -1               ; 3 uses
  %i.ep = load ptr, ptr %i.ea, align 8, !tbaa !347
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !349
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !350
  invoke void %i.es(ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(336) %i.dz, i32 noundef %i.eh)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !48

.noexc258:                                        ; preds = %.lr.ph.i8.i.i252
  %.not.i9.i.i254 = icmp eq i64 %i.eo, 0
  br i1 %.not.i9.i.i254, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i252, !llvm.loop !4

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i: ; preds = %.noexc258, %.lr.ph.split.i.i248
  %i.eu = add i64 %.011.i.i249, 1                 ; 2 uses
  %.not.i.i255 = icmp eq i64 %i.eu, %.pre19.i.i245
  br i1 %.not.i.i255, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i248, !llvm.loop !49

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, %.noexc257.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  %i.ev = load ptr, ptr %6, align 8, !tbaa !530, !noalias !2722, !nonnull !367, !noundef !367 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !371, !noalias !2722 ; 10 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !371, !noalias !2722 ; 5 uses
  store ptr %i.ez, ptr %3, align 8, !tbaa !549, !alias.scope !2722
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ex, ptr %i.fa, align 8, !tbaa !551, !alias.scope !2722
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !532 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !300, !noalias !2723 ; 4 uses
  %.idx.i.i.i = shl nsw i64 %i.fc, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %.idx.i.i.i ; 5 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fh = icmp eq i64 %i.fc, 0
  br i1 %i.fh, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i", label %bb.c

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i": ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"

bb.c:                                             ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  %i.fi = ptrtoint ptr %i.fe to i64
  store i64 %i.fg, ptr %1, align 8, !tbaa !300
  store i64 %i.fi, ptr %2, align 8, !tbaa !300
  %i.fj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fk = shl nuw nsw i64 %i.fj, 1
  %i.fl = sub nuw nsw i64 126, %i.fk
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, i64 noundef %i.fl, ptr nonnull readonly %3)
  %i.fm = icmp sgt i64 %i.fc, 16
  %.ptr20.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 5 uses
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.fn = getelementptr i8, ptr %i.ex, i64 8
  %.val.val.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.fn, align 8, !tbaa !372 ; 6 uses
  %i.fo = getelementptr i8, ptr %i.ex, i64 80
  %.val.val.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !tbaa !533 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.07.013.i.idx.i.i.i.i.i.i.i = phi i64 [ -4, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.013.i.add.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.07.013.i.ptr.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ff, i64 %.sroa.07.013.i.idx.i.i.i.i.i.i.i ; 2 uses
  %.sroa.07.013.i.add.i.i.i.i.i.i.i = add nsw i64 %.sroa.07.013.i.idx.i.i.i.i.i.i.i, -4 ; 3 uses
  %.ptr.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ff, i64 %.sroa.07.013.i.add.i.i.i.i.i.i.i ; 2 uses
  %i.fp = load i32, ptr %.ptr.i.i.i.i.i.i.i, align 4, !tbaa !352 ; 3 uses
  %i.fq = load i32, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  %i.fr = and i32 %i.fp, 1048575
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = lshr i64 %i.fs, 12
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !300
  %i.fw = and i64 %i.fs, 4095
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !352 ; 2 uses
  %i.fz = and i32 %i.fy, 1048575
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = lshr i64 %i.ga, 10
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !535
  %i.ge = and i64 %i.ga, 1023
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = and i32 %i.fq, 1048575
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = lshr i64 %i.gh, 12
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !300
  %i.gl = and i64 %i.gh, 4095
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !352
  %i.go = and i32 %i.gn, 1048575
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = lshr i64 %i.gp, 10
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !535
  %i.gt = and i64 %i.gp, 1023
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gt
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gf, align 4, !tbaa !537
  %.val2.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gu, align 4, !tbaa !537
  %i.gv = icmp slt i32 %.val.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gv, label %bb.e, label %.preheader.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %gepdiff.i.i.i.i.i.i.i = sub nsw i64 0, %.sroa.07.013.i.idx.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.07.013.i.ptr.i.i.i.i.i.i.i, i64 %gepdiff.i.i.i.i.i.i.i, i1 false), !tbaa !352, !noalias !2724
  store i32 %i.fp, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  br label %bb.g

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %bb.f
  %i.gw = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %bb.f ], [ %i.fy, %bb.d ]
  %i.gx = phi ptr [ %.sroa.04.0.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.07.013.i.ptr.i.i.i.i.i.i.i, %bb.d ] ; 4 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !352 ; 2 uses
  %i.gz = and i32 %i.gw, 1048575
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = lshr i64 %i.ha, 10
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !535
  %i.he = and i64 %i.ha, 1023
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
  %i.hg = and i32 %i.gy, 1048575
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = lshr i64 %i.hh, 12
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !300
  %i.hl = and i64 %i.hh, 4095
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !352
  %i.ho = and i32 %i.hn, 1048575
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = lshr i64 %i.hp, 10
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !535
  %i.ht = and i64 %i.hp, 1023
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.ht
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hf, align 4, !tbaa !537
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hu, align 4, !tbaa !537
  %i.hv = icmp slt i32 %.val.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hv, label %bb.f, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hw = getelementptr inbounds i8, ptr %i.gx, i64 -4
  store i32 %i.gy, ptr %i.hw, align 4, !tbaa !352
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.fx, align 4, !tbaa !352
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !2624

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i": ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.gx, i64 -4
  store i32 %i.fp, ptr %i.hx, align 4, !tbaa !352
  br label %bb.g

bb.g:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i", %bb.e
  %i.hy = icmp eq i64 %.sroa.07.013.i.add.i.i.i.i.i.i.i, -64
  br i1 %i.hy, label %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i", label %bb.d, !llvm.loop !2625

"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.hz = getelementptr inbounds i8, ptr %i.ff, i64 -64
  br label %.lr.ph.i9.i.i.i.i.i.i.i

.lr.ph.i9.i.i.i.i.i.i.i:                          ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i", %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i"
  %.sroa.03.04.i.i.i.i.i.i.i.i = phi ptr [ %i.ia, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i" ], [ %i.hz, %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !352 ; 2 uses
  %i.ic = and i32 %i.ib, 1048575
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ie = lshr i64 %i.id, 12
  %i.if = and i64 %i.id, 4095
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !300
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.if
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i9.i.i.i.i.i.i.i
  %i.ij = phi ptr [ %.sroa.03.04.i.i.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i.i.i ], [ %.sroa.04.0.i.i13.i.i.i.i.i.i.i, %bb.i ] ; 4 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !352 ; 2 uses
  %i.il = load i32, ptr %i.ii, align 4, !tbaa !352
  %i.im = and i32 %i.il, 1048575
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %i.io = lshr i64 %i.in, 10
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !535
  %i.ir = and i64 %i.in, 1023
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ir
  %i.it = and i32 %i.ik, 1048575
  %i.iu = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iv = lshr i64 %i.iu, 12
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !300
  %i.iy = and i64 %i.iu, 4095
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !352
  %i.jb = and i32 %i.ja, 1048575
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = lshr i64 %i.jc, 10
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i.i.i.i.i.i.i.i, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !535
  %i.jg = and i64 %i.jc, 1023
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.jg
  %.val.i.i.i.i10.i.i.i.i.i.i.i = load i32, ptr %i.is, align 4, !tbaa !537
  %.val2.i.i.i.i11.i.i.i.i.i.i.i = load i32, ptr %i.jh, align 4, !tbaa !537
  %i.ji = icmp slt i32 %.val.i.i.i.i10.i.i.i.i.i.i.i, %.val2.i.i.i.i11.i.i.i.i.i.i.i
  br i1 %i.ji, label %bb.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  %.sroa.04.0.i.i13.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.jj = getelementptr inbounds i8, ptr %i.ij, i64 -4
  store i32 %i.ik, ptr %i.jj, align 4, !tbaa !352
  br label %bb.h, !llvm.loop !2624

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i": ; preds = %bb.h
  %i.jk = getelementptr inbounds i8, ptr %i.ij, i64 -4
  store i32 %i.ib, ptr %i.jk, align 4, !tbaa !352
  %i.jl = icmp eq ptr %i.ia, %i.fe
  br i1 %i.jl, label %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.i.i.i", label %.lr.ph.i9.i.i.i.i.i.i.i, !llvm.loop !2626

bb.j:                                             ; preds = %bb.c
  %i.jm = icmp eq i64 %i.fc, 1
  br i1 %i.jm, label %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.thread43.i.i.i", label %.lr.ph.i15.i.i.i.i.i.i.i

"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.thread43.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.pre37.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !372
  br label %.lr.ph31.i.i.i

.lr.ph.i15.i.i.i.i.i.i.i:                         ; preds = %bb.j
  %i.jn = getelementptr i8, ptr %i.ex, i64 8
  %.val.val.val.i17.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !tbaa !372 ; 4 uses
  %i.jo = getelementptr i8, ptr %i.ex, i64 80
  %.val.val.val5.i18.i.i.i.i.i.i.i = load ptr, ptr %i.jo, align 8, !tbaa !533 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i15.i.i.i.i.i.i.i
  %.sroa.07.013.i19.i.i.i.i.i.i.i = phi ptr [ %.ptr20.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i ], [ %i.jp, %bb.n ] ; 4 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.07.013.i19.i.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !352 ; 3 uses
  %i.jr = load i32, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  %i.js = and i32 %i.jq, 1048575
  %i.jt = zext nneg i32 %i.js to i64              ; 2 uses
  %i.ju = lshr i64 %i.jt, 12
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !300
  %i.jx = and i64 %i.jt, 4095
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !352 ; 2 uses
  %i.ka = and i32 %i.jz, 1048575
  %i.kb = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kc = lshr i64 %i.kb, 10
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i18.i.i.i.i.i.i.i, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !535
  %i.kf = and i64 %i.kb, 1023
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = and i32 %i.jr, 1048575
  %i.ki = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.kj = lshr i64 %i.ki, 12
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !300
  %i.km = and i64 %i.ki, 4095
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !352
  %i.kp = and i32 %i.ko, 1048575
  %i.kq = zext nneg i32 %i.kp to i64              ; 2 uses
  %i.kr = lshr i64 %i.kq, 10
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i18.i.i.i.i.i.i.i, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !535
  %i.ku = and i64 %i.kq, 1023
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ku
  %.val.i.i.i20.i.i.i.i.i.i.i = load i32, ptr %i.kg, align 4, !tbaa !537
  %.val2.i.i.i21.i.i.i.i.i.i.i = load i32, ptr %i.kv, align 4, !tbaa !537
  %i.kw = icmp slt i32 %.val.i.i.i20.i.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i.i.i.i
  br i1 %i.kw, label %bb.l, label %.preheader.i22.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.kx = ptrtoint ptr %.sroa.07.013.i19.i.i.i.i.i.i.i to i64
  %i.ky = sub i64 %i.fg, %i.kx                    ; 2 uses
  %i.kz = icmp sgt i64 %i.ky, 0
  br i1 %i.kz, label %.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i:     ; preds = %bb.l
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jp, ptr nonnull align 4 %.sroa.07.013.i19.i.i.i.i.i.i.i, i64 %i.ky, i1 false), !tbaa !352, !noalias !2725
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i, %bb.l
  store i32 %i.jq, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  br label %bb.n

.preheader.i22.i.i.i.i.i.i.i:                     ; preds = %bb.k, %bb.m
  %i.la = phi i32 [ %.pre.i27.i.i.i.i.i.i.i, %bb.m ], [ %i.jz, %bb.k ]
  %i.lb = phi ptr [ %.sroa.04.0.i.i26.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.07.013.i19.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !352 ; 2 uses
  %i.ld = and i32 %i.la, 1048575
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = lshr i64 %i.le, 10
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i18.i.i.i.i.i.i.i, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !535
  %i.li = and i64 %i.le, 1023
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.li
  %i.lk = and i32 %i.lc, 1048575
  %i.ll = zext nneg i32 %i.lk to i64              ; 2 uses
  %i.lm = lshr i64 %i.ll, 12
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !300
  %i.lp = and i64 %i.ll, 4095
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !352
  %i.ls = and i32 %i.lr, 1048575
  %i.lt = zext nneg i32 %i.ls to i64              ; 2 uses
  %i.lu = lshr i64 %i.lt, 10
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val5.i18.i.i.i.i.i.i.i, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !535
  %i.lx = and i64 %i.lt, 1023
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lx
  %.val.i.i.i.i23.i.i.i.i.i.i.i = load i32, ptr %i.lj, align 4, !tbaa !537
  %.val2.i.i.i.i24.i.i.i.i.i.i.i = load i32, ptr %i.ly, align 4, !tbaa !537
  %i.lz = icmp slt i32 %.val.i.i.i.i23.i.i.i.i.i.i.i, %.val2.i.i.i.i24.i.i.i.i.i.i.i
  br i1 %i.lz, label %bb.m, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.preheader.i22.i.i.i.i.i.i.i
  %.sroa.04.0.i.i26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ma = getelementptr inbounds i8, ptr %i.lb, i64 -4
  store i32 %i.lc, ptr %i.ma, align 4, !tbaa !352
  %.pre.i27.i.i.i.i.i.i.i = load i32, ptr %i.jy, align 4, !tbaa !352
  br label %.preheader.i22.i.i.i.i.i.i.i, !llvm.loop !2624

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i": ; preds = %.preheader.i22.i.i.i.i.i.i.i
  %i.mb = getelementptr inbounds i8, ptr %i.lb, i64 -4
  store i32 %i.jq, ptr %i.mb, align 4, !tbaa !352
  br label %bb.n

bb.n:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i", %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i
  %i.mc = icmp eq ptr %i.jp, %i.fe
  br i1 %i.mc, label %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.i.i.i", label %bb.k, !llvm.loop !2625

"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.i.i.i": ; preds = %bb.n, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i"
  %.pre37.i17.i.i = phi ptr [ %.val.val.val.i.i.i.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i" ], [ %.val.val.val.i17.i.i.i.i.i.i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.lr.ph31.i.i.i

.lr.ph31.i.i.i:                                   ; preds = %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.i.i.i", %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.thread43.i.i.i"
  %.pre37.i.i.i = phi ptr [ %.pre37.i17.i.i, %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.i.i.i" ], [ %.pre37.i.pre.i.i, %"_ZNK4entt8std_sortclIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS9_EEENS_14basic_registryISA_SaISA_EEEEENS4_INS5_IcSA_SaIcEEESF_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlSA_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SE_EEEETkSt22random_access_iteratorS16_EEvSU_T2_T_DpOT0_.exit.thread43.i.i.i" ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.pre.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !365
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph31.i.i.i
  %i.me = phi ptr [ %.pre37.i.i.i, %.lr.ph31.i.i.i ], [ %i.oa, %._crit_edge.i.i.i ] ; 3 uses
  %i.mf = phi ptr [ %.pre.i.i.i, %.lr.ph31.i.i.i ], [ %i.ob, %._crit_edge.i.i.i ] ; 3 uses
  %.030.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %i.oc, %._crit_edge.i.i.i ] ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.030.i.i.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !352
  %i.mi = and i32 %i.mh, 1048575
  %i.mj = zext nneg i32 %i.mi to i64              ; 2 uses
  %i.mk = lshr i64 %i.mj, 12
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !300
  %i.mn = and i64 %i.mj, 4095
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !352
  %i.mq = and i32 %i.mp, 1048575
  %i.mr = zext nneg i32 %i.mq to i64              ; 2 uses
  %.not27.i.i.i = icmp eq i64 %.030.i.i.i, %i.mr
  br i1 %.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %bb.o, %.noexc260
  %i.ms = phi ptr [ %i.nv, %.noexc260 ], [ %i.me, %bb.o ]
  %i.mt = phi ptr [ %i.nm, %.noexc260 ], [ %i.mf, %bb.o ] ; 2 uses
  %.01429.i.i.i = phi i64 [ %.02328.i.i.i, %.noexc260 ], [ %.030.i.i.i, %bb.o ] ; 3 uses
  %.02328.i.i.i = phi i64 [ %i.nf, %.noexc260 ], [ %i.mr, %bb.o ] ; 4 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %.02328.i.i.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !352
  %i.mw = and i32 %i.mv, 1048575
  %i.mx = zext nneg i32 %i.mw to i64              ; 2 uses
  %i.my = lshr i64 %i.mx, 12
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !300
  %i.nb = and i64 %i.mx, 4095
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !352
  %i.ne = and i32 %i.nd, 1048575
  %i.nf = zext nneg i32 %i.ne to i64              ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %.01429.i.i.i
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !352
  %i.ni = load ptr, ptr %i.ex, align 8, !tbaa !267
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  invoke void %i.nk(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, i64 noundef %.02328.i.i.i, i64 noundef %i.nf)
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2637

.noexc260:                                        ; preds = %.lr.ph.i.i.i259
  %i.nl = trunc i64 %.01429.i.i.i to i32
  %i.nm = load ptr, ptr %i.fd, align 8, !tbaa !365 ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %.01429.i.i.i
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !352
  %i.np = and i32 %i.nl, 1048575
  %i.nq = and i32 %i.no, -1048576
  %i.nr = or disjoint i32 %i.nq, %i.np
  %i.ns = and i32 %i.nh, 1048575
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = lshr i64 %i.nt, 12
  %i.nv = load ptr, ptr %i.md, align 8, !tbaa !372 ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nu
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !300
  %i.ny = and i64 %i.nt, 4095
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ny
  store i32 %i.nr, ptr %i.nz, align 4, !tbaa !352
  %.not.i5.i.i = icmp eq i64 %.02328.i.i.i, %i.nf
  br i1 %.not.i5.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i259, !llvm.loop !2638

._crit_edge.i.i.i:                                ; preds = %.noexc260, %bb.o
  %i.oa = phi ptr [ %i.me, %bb.o ], [ %i.nv, %.noexc260 ]
  %i.ob = phi ptr [ %i.mf, %bb.o ], [ %i.nm, %.noexc260 ]
  %i.oc = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.oc, %i.fc
  br i1 %exitcond.not.i.i.i, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i", label %bb.o, !llvm.loop !2639

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i": ; preds = %._crit_edge.i.i.i
  %.val.val.pre.i.i = load ptr, ptr %6, align 8, !tbaa !530
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i": ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i", %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i"
  %.val.val.i.i = phi ptr [ %.val.val.pre.i.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i" ], [ %i.ev, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i" ] ; 2 uses
  %.phi.trans.insert19.i.i = getelementptr i8, ptr %.val.val.i.i, i64 32
  %.val.val.val.pre.i.i = load i64, ptr %.phi.trans.insert19.i.i, align 8, !tbaa !532 ; 2 uses
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.val.val.val.pre.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %.loopexit577, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"
  %i.od = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !365
  %.pre3.i.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !372
  br label %bb.p

bb.p:                                             ; preds = %.noexc261, %.lr.ph.i.i.i.i.i.i.i
  %i.of = phi ptr [ %.pre3.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.pt, %.noexc261 ] ; 2 uses
  %i.og = phi ptr [ %.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.pk, %.noexc261 ]
  %.02.i.i.i.i.i.i.i = phi i64 [ %.val.val.val.pre.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.oh, %.noexc261 ]
  %i.oh = add i64 %.02.i.i.i.i.i.i.i, -1          ; 4 uses
  %i.oi = load ptr, ptr %i.fd, align 8, !tbaa !365
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.oh
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !352
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oh
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !352
  %i.on = and i32 %i.om, 1048575
  %i.oo = zext nneg i32 %i.on to i64              ; 2 uses
  %i.op = lshr i64 %i.oo, 12
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !300
  %i.os = and i64 %i.oo, 4095
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !352
  %i.ov = and i32 %i.ou, 1048575                  ; 2 uses
  %i.ow = zext nneg i32 %i.ov to i64              ; 2 uses
  %i.ox = and i32 %i.ok, 1048575
  %i.oy = zext nneg i32 %i.ox to i64              ; 2 uses
  %i.oz = lshr i64 %i.oy, 12
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !300
  %i.pc = and i64 %i.oy, 4095
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !352
  %i.pf = and i32 %i.pe, 1048575                  ; 2 uses
  %i.pg = zext nneg i32 %i.pf to i64              ; 2 uses
  %i.ph = load ptr, ptr %i.ez, align 8, !tbaa !267
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8
  invoke void %i.pj(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 noundef %i.ow, i64 noundef %i.pg)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2640

.noexc261:                                        ; preds = %bb.p
  %i.pk = load ptr, ptr %i.od, align 8, !tbaa !365 ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ow ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pg ; 3 uses
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !352 ; 2 uses
  %i.po = and i32 %i.pn, -1048576
  %i.pp = or disjoint i32 %i.po, %i.pf
  %i.pq = and i32 %i.pn, 1048575
  %i.pr = zext nneg i32 %i.pq to i64              ; 2 uses
  %i.ps = lshr i64 %i.pr, 12
  %i.pt = load ptr, ptr %i.oe, align 8, !tbaa !372 ; 3 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.ps
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !300
  %i.pw = and i64 %i.pr, 4095
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.pw
  store i32 %i.pp, ptr %i.px, align 4, !tbaa !352
  %i.py = load i32, ptr %i.pm, align 4, !tbaa !352 ; 2 uses
  %i.pz = and i32 %i.py, -1048576
  %i.qa = or disjoint i32 %i.pz, %i.ov
  %i.qb = and i32 %i.py, 1048575
  %i.qc = zext nneg i32 %i.qb to i64              ; 2 uses
  %i.qd = lshr i64 %i.qc, 12
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !300
  %i.qg = and i64 %i.qc, 4095
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.qg
  store i32 %i.qa, ptr %i.qh, align 4, !tbaa !352
  %i.qi = load i32, ptr %i.pl, align 4, !tbaa !352
  %i.qj = load i32, ptr %i.pm, align 4, !tbaa !352
  store i32 %i.qj, ptr %i.pl, align 4, !tbaa !352
  store i32 %i.qi, ptr %i.pm, align 4, !tbaa !352
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit577.loopexit, label %bb.p, !llvm.loop !2641

.loopexit577.loopexit:                            ; preds = %.noexc261
  %.pre636 = load ptr, ptr %6, align 8, !tbaa !530
  br label %.loopexit577

.loopexit577:                                     ; preds = %.loopexit577.loopexit, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"
  %72 = phi ptr [ %.pre636, %.loopexit577.loopexit ], [ %.val.val.i.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEENS7_INS8_IcS1_SaIcEEESG_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.qk = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !371
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !365 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !352, !noalias !2726
  %i.qp = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352, !noalias !2726
  %i.qq = icmp eq i32 %i.qo, %i.qp
  br i1 %i.qq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit577
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.t

bb.r:                                             ; preds = %.loopexit577
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.212, ptr noundef nonnull align 4 dereferenceable(4) %i.qn, ptr noundef nonnull align 4 dereferenceable(4) %.011.i.i.i.ptr.2)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.t

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.q, %bb.r
  %i.qr = load i8, ptr %10, align 8, !tbaa !310, !range !366, !noundef !367
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %.critedge, label %bb.u

bb.s:                                             ; preds = %bb.a
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i8.i.i, %.lr.ph.i8.i.i252, %bb.p, %.lr.ph.i.i.i259, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i, %.noexc233, %.noexc234, %.noexc234.1, %.noexc234.2, %.noexc234.3, %.noexc257.1, %.noexc257, %.noexc256, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit, %bb.b
  %lpad.loopexit.split-lp866 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.qv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i264, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !315
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.qy = phi ptr [ %i.qx, %bb.w ], [ @.str.300, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1036, ptr noundef %i.qy)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.qz = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i.i265 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i265, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !267
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(128) %i.qz) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.rd = load ptr, ptr %i.qv, align 8, !tbaa !318 ; 4 uses
  %.not.i.i266 = icmp eq ptr %i.rd, null
  br i1 %.not.i.i266, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !315 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !295
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.jw

bb.aa:                                            ; preds = %bb.u
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit269

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.rl, %bb.ac ], [ %i.rk, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.rm = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i.i267 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i267, label %_ZN7testing7MessageD2Ev.exit269, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i268

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i268: ; preds = %bb.ad
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !267
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(128) %i.rm) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit269

_ZN7testing7MessageD2Ev.exit269:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i268, %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.aa ], [ %.pn, %bb.ad ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i268 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #28
  br label %bb.ai

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !318 ; 4 uses
  %.not.i.i270 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i270, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !315 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i271: ; preds = %bb.ae
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !295
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i271
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef 32) #29
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.rx = load ptr, ptr %6, align 8, !tbaa !530, !nonnull !367, !noundef !367
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !371
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !365
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !352, !noalias !2727
  %i.se = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352, !noalias !2727
  %i.sf = icmp eq i32 %i.sd, %i.se
  br i1 %i.sf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit277 unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.211, ptr noundef nonnull align 4 dereferenceable(4) %i.sc, ptr noundef nonnull align 4 dereferenceable(4) %.011.i.i.i.ptr.1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit277 unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit277: ; preds = %bb.ag, %bb.ah
  %i.sg = load i8, ptr %13, align 8, !tbaa !310, !range !366, !noundef !367
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %.critedge194, label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit269, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit269 ], [ %i.qu, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit277
end_hunk_1
begin_hunk_2_@_ZN30GroupOwning_SortUnordered_Test8TestBodyEv:bb.a
          to label %.noexc260.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc260.3:                                      ; preds = %.noexc260.2
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.011.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.de = load i32, ptr %.011.i.i.i.ptr.4, align 4, !tbaa !352
  %i.df = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.cj, i32 noundef %i.de, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.dd)
          to label %.noexc260.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc260.4:                                      ; preds = %.noexc260.3
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.011.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.dh = load i32, ptr %.011.i.i.i.ptr.5, align 4, !tbaa !352
  %i.di = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.cj, i32 noundef %i.dh, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.dg)
          to label %.noexc260.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc260.5:                                      ; preds = %.noexc260.4
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.011.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.dk = load i32, ptr %.011.i.i.i.ptr.6, align 4, !tbaa !352
  %i.dl = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal10value_typeIiEENS_6entityESaIS4_EE15emplace_elementIJRKS4_EEEDaS5_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.cj, i32 noundef %i.dk, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %i.dj)
          to label %.noexc260.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc260.6:                                      ; preds = %.noexc260.5
  %.pre.i.i = load ptr, ptr %i.cl, align 8, !tbaa !364
  %.pre13.i.i = load ptr, ptr %i.ck, align 8, !tbaa !365
  %.pre14.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre15.i.i = ptrtoint ptr %.pre13.i.i to i64
  %.pre17.i.i = sub i64 %.pre14.i.i, %.pre15.i.i
  %.pre19.i.i = ashr exact i64 %.pre17.i.i, 2     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !526
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 112 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !517
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !517
  %i.ds = icmp eq ptr %i.dp, %i.dr
  %.not10.i.i = icmp eq i64 %i.cr, %.pre19.i.i
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %.not10.i.i
  br i1 %or.cond.i.i, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i254

.lr.ph.split.i.i254:                              ; preds = %.noexc260.6, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i
  %.011.i.i = phi i64 [ %i.ei, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i ], [ %i.cr, %.noexc260.6 ] ; 2 uses
  %i.dt = load ptr, ptr %i.ck, align 8, !tbaa !365
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.011.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !352
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !346 ; 2 uses
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i255 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not5.i.i.i255, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i256

.lr.ph.preheader.i.i.i256:                        ; preds = %.lr.ph.split.i.i254
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 4
  br label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %.noexc261, %.lr.ph.preheader.i.i.i256
  %.06.i.i.i257 = phi i64 [ %i.ec, %.noexc261 ], [ %i.eb, %.lr.ph.preheader.i.i.i256 ]
  %i.ec = add i64 %.06.i.i.i257, -1               ; 3 uses
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !347
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ec ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !349
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !350
  invoke void %i.eg(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(336) %i.dn, i32 noundef %i.dv)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !45

.noexc261:                                        ; preds = %.lr.ph.i8.i.i
  %.not.i9.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i9.i.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i, !llvm.loop !46

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i: ; preds = %.noexc261, %.lr.ph.split.i.i254
  %i.ei = add i64 %.011.i.i, 1                    ; 2 uses
  %.not.i.i258 = icmp eq i64 %i.ei, %.pre19.i.i
  br i1 %.not.i.i258, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, label %.lr.ph.split.i.i254, !llvm.loop !47

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIN4test8internal10value_typeIiEEEE7publishES5_S2_.exit.i.i, %.noexc260.6
  %i.ej = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %5, i32 noundef -1471413475)
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc282:                                        ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !364
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !365
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2                 ; 2 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !352
  %i.et = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, i32 noundef %i.es, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc283 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc283:                                        ; preds = %.noexc282
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.ev = load i32, ptr %.011.i.i.i.ptr.1, align 4, !tbaa !352
  %i.ew = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, i32 noundef %i.ev, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.eu)
          to label %.noexc283.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc283.1:                                      ; preds = %.noexc283
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ey = load i32, ptr %.011.i.i.i.ptr.2, align 4, !tbaa !352
  %i.ez = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, i32 noundef %i.ey, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.ex)
          to label %.noexc283.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc283.2:                                      ; preds = %.noexc283.1
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.fb = load i32, ptr %.011.i.i.i.ptr.3, align 4, !tbaa !352
  %i.fc = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, i32 noundef %i.fb, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.fa)
          to label %.noexc283.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc283.3:                                      ; preds = %.noexc283.2
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fe = load i32, ptr %.011.i.i.i.ptr.4, align 4, !tbaa !352
  %i.ff = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJRKcEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, i32 noundef %i.fe, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.fd)
          to label %.noexc283.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc283.4:                                      ; preds = %.noexc283.3
  %.pre.i.i266 = load ptr, ptr %i.el, align 8, !tbaa !364
  %.pre13.i.i267 = load ptr, ptr %i.ek, align 8, !tbaa !365
  %.pre14.i.i268 = ptrtoint ptr %.pre.i.i266 to i64
  %.pre15.i.i269 = ptrtoint ptr %.pre13.i.i267 to i64
  %.pre17.i.i270 = sub i64 %.pre14.i.i268, %.pre15.i.i269
  %.pre19.i.i271 = ashr exact i64 %.pre17.i.i270, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !345
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 112 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !517
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 120 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !517
  %i.fm = icmp eq ptr %i.fj, %i.fl
  %.not10.i.i272 = icmp eq i64 %i.er, %.pre19.i.i271
  %or.cond.i.i273 = select i1 %i.fm, i1 true, i1 %.not10.i.i272
  br i1 %or.cond.i.i273, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i274

.lr.ph.split.i.i274:                              ; preds = %.noexc283.4, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i
  %.011.i.i275 = phi i64 [ %i.gc, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i ], [ %i.er, %.noexc283.4 ] ; 2 uses
  %i.fn = load ptr, ptr %i.ek, align 8, !tbaa !365
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.011.i.i275
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !352
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !346 ; 2 uses
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !347 ; 2 uses
  %.not5.i.i.i276 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not5.i.i.i276, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.preheader.i.i.i277

.lr.ph.preheader.i.i.i277:                        ; preds = %.lr.ph.split.i.i274
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 4
  br label %.lr.ph.i8.i.i278

.lr.ph.i8.i.i278:                                 ; preds = %.noexc284, %.lr.ph.preheader.i.i.i277
  %.06.i.i.i279 = phi i64 [ %i.fw, %.noexc284 ], [ %i.fv, %.lr.ph.preheader.i.i.i277 ]
  %i.fw = add i64 %.06.i.i.i279, -1               ; 3 uses
  %i.fx = load ptr, ptr %i.fi, align 8, !tbaa !347
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fw ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !349
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !350
  invoke void %i.ga(ptr noundef %i.gb, ptr noundef nonnull align 8 dereferenceable(336) %i.fh, i32 noundef %i.fp)
          to label %.noexc284 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !48

.noexc284:                                        ; preds = %.lr.ph.i8.i.i278
  %.not.i9.i.i280 = icmp eq i64 %i.fw, 0
  br i1 %.not.i9.i.i280, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, label %.lr.ph.i8.i.i278, !llvm.loop !4

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i: ; preds = %.noexc284, %.lr.ph.split.i.i274
  %i.gc = add i64 %.011.i.i275, 1                 ; 2 uses
  %.not.i.i281 = icmp eq i64 %i.gc, %.pre19.i.i271
  br i1 %.not.i.i281, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit, label %.lr.ph.split.i.i274, !llvm.loop !49

_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ESaIcEE7publishES5_S2_.exit.i.i, %.noexc283.4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.gd = load ptr, ptr %6, align 8, !tbaa !553, !noalias !2848, !nonnull !367, !noundef !367 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !371, !noalias !2848 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !371, !noalias !2848 ; 9 uses
  store ptr %i.gh, ptr %3, align 8, !tbaa !549, !alias.scope !2848
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !551, !alias.scope !2848
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !500 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !300, !noalias !2849 ; 4 uses
  %.idx.i.i.i = shl nsw i64 %i.gk, 2
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %.idx.i.i.i ; 5 uses
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.gp = icmp eq i64 %i.gk, 0
  br i1 %i.gp, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i", label %bb.c

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i": ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"

bb.c:                                             ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIcPS1_PKcQsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SD_T1_.exit
  %i.gq = ptrtoint ptr %i.gm to i64
  store i64 %i.go, ptr %1, align 8, !tbaa !300
  store i64 %i.gq, ptr %2, align 8, !tbaa !300
  %i.gr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gk, i1 true)
  %i.gs = shl nuw nsw i64 %i.gr, 1
  %i.gt = sub nuw nsw i64 126, %i.gs
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, i64 noundef %i.gt, ptr nonnull readonly %3)
  %i.gu = icmp sgt i64 %i.gk, 16
  %.ptr20.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gn, i64 -4 ; 5 uses
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.gv = getelementptr i8, ptr %i.gh, i64 8
  %.val.val.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.gv, align 8, !tbaa !372 ; 5 uses
  %i.gw = getelementptr i8, ptr %i.gh, i64 80
  %.val.val.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.gw, align 8, !tbaa !376 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.07.013.i.idx.i.i.i.i.i.i.i = phi i64 [ -4, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.013.i.add.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.07.013.i.ptr.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gn, i64 %.sroa.07.013.i.idx.i.i.i.i.i.i.i ; 2 uses
  %.sroa.07.013.i.add.i.i.i.i.i.i.i = add nsw i64 %.sroa.07.013.i.idx.i.i.i.i.i.i.i, -4 ; 3 uses
  %.ptr.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gn, i64 %.sroa.07.013.i.add.i.i.i.i.i.i.i ; 2 uses
  %i.gx = load i32, ptr %.ptr.i.i.i.i.i.i.i, align 4, !tbaa !352 ; 3 uses
  %i.gy = load i32, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  %i.gz = and i32 %i.gx, 1048575
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = lshr i64 %i.ha, 12
  %i.hc = and i64 %i.ha, 4095
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !300
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hc ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !352 ; 2 uses
  %i.hh = and i32 %i.hg, 1048575
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = lshr i64 %i.hi, 10
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !377
  %i.hm = and i64 %i.hi, 1023
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  %i.ho = and i32 %i.gy, 1048575
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = lshr i64 %i.hp, 12
  %i.hr = and i64 %i.hp, 4095
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.hq
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !300
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hr
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !352
  %i.hw = and i32 %i.hv, 1048575
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = lshr i64 %i.hx, 10
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !377
  %i.ib = and i64 %i.hx, 1023
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  %.val.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hn, align 1, !tbaa !295
  %.val4.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ic, align 1, !tbaa !295
  %i.id = icmp slt i8 %.val.val.i.i.i.i.i.i.i.i.i.i, %.val4.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.id, label %bb.e, label %.preheader.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %gepdiff.i.i.i.i.i.i.i = sub nsw i64 0, %.sroa.07.013.i.idx.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.07.013.i.ptr.i.i.i.i.i.i.i, i64 %gepdiff.i.i.i.i.i.i.i, i1 false), !tbaa !352, !noalias !2850
  store i32 %i.gx, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  br label %bb.g

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %bb.f
  %i.ie = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %bb.f ], [ %i.hg, %bb.d ]
  %i.if = phi ptr [ %.sroa.06.0.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.07.013.i.ptr.i.i.i.i.i.i.i, %bb.d ] ; 4 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !352 ; 2 uses
  %i.ih = and i32 %i.ie, 1048575
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = lshr i64 %i.ii, 10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !377
  %i.im = and i64 %i.ii, 1023
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.im
  %i.io = and i32 %i.ig, 1048575
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = lshr i64 %i.ip, 12
  %i.ir = and i64 %i.ip, 4095
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.iq
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !300
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ir
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !352
  %i.iw = and i32 %i.iv, 1048575
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = lshr i64 %i.ix, 10
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !377
  %i.jb = and i64 %i.ix, 1023
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.in, align 1, !tbaa !295
  %.val4.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.jc, align 1, !tbaa !295
  %i.jd = icmp slt i8 %.val.val.i.i.i.i.i.i.i.i.i.i.i, %.val4.val.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.jd, label %bb.f, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.je = getelementptr inbounds i8, ptr %i.if, i64 -4
  store i32 %i.ig, ptr %i.je, align 4, !tbaa !352
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.hf, align 4, !tbaa !352
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !2763

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i": ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.jf = getelementptr inbounds i8, ptr %i.if, i64 -4
  store i32 %i.gx, ptr %i.jf, align 4, !tbaa !352
  br label %bb.g

bb.g:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i.i.i.i.i.i.i.i", %bb.e
  %i.jg = icmp eq i64 %.sroa.07.013.i.add.i.i.i.i.i.i.i, -64
  br i1 %i.jg, label %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i", label %bb.d, !llvm.loop !2764

"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.jh = getelementptr inbounds i8, ptr %i.gn, i64 -64
  br label %.lr.ph.i9.i.i.i.i.i.i.i

.lr.ph.i9.i.i.i.i.i.i.i:                          ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i", %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i"
  %.sroa.03.04.i.i.i.i.i.i.i.i = phi ptr [ %i.ji, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i" ], [ %i.jh, %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !352 ; 2 uses
  %i.jk = and i32 %i.jj, 1048575
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jm = lshr i64 %i.jl, 12
  %i.jn = and i64 %i.jl, 4095
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !300
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jn
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i9.i.i.i.i.i.i.i
  %i.jr = phi ptr [ %.sroa.03.04.i.i.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i13.i.i.i.i.i.i.i, %bb.i ] ; 4 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !352 ; 2 uses
  %i.jt = load i32, ptr %i.jq, align 4, !tbaa !352
  %i.ju = and i32 %i.jt, 1048575
  %i.jv = zext nneg i32 %i.ju to i64              ; 2 uses
  %i.jw = lshr i64 %i.jv, 10
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !377
  %i.jz = and i64 %i.jv, 1023
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  %i.kb = and i32 %i.js, 1048575
  %i.kc = zext nneg i32 %i.kb to i64              ; 2 uses
  %i.kd = lshr i64 %i.kc, 12
  %i.ke = and i64 %i.kc, 4095
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i.i, i64 %i.kd
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !300
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ke
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !352
  %i.kj = and i32 %i.ki, 1048575
  %i.kk = zext nneg i32 %i.kj to i64              ; 2 uses
  %i.kl = lshr i64 %i.kk, 10
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i.i.i.i.i.i.i.i, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !377
  %i.ko = and i64 %i.kk, 1023
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  %.val.val.i.i.i.i10.i.i.i.i.i.i.i = load i8, ptr %i.ka, align 1, !tbaa !295
  %.val4.val.i.i.i.i11.i.i.i.i.i.i.i = load i8, ptr %i.kp, align 1, !tbaa !295
  %i.kq = icmp slt i8 %.val.val.i.i.i.i10.i.i.i.i.i.i.i, %.val4.val.i.i.i.i11.i.i.i.i.i.i.i
  br i1 %i.kq, label %bb.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  %.sroa.06.0.i.i13.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.kr = getelementptr inbounds i8, ptr %i.jr, i64 -4
  store i32 %i.js, ptr %i.kr, align 4, !tbaa !352
  br label %bb.h, !llvm.loop !2763

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i": ; preds = %bb.h
  %i.ks = getelementptr inbounds i8, ptr %i.jr, i64 -4
  store i32 %i.jj, ptr %i.ks, align 4, !tbaa !352
  %i.kt = icmp eq ptr %i.ji, %i.gm
  br i1 %i.kt, label %.lr.ph31.i.i.i, label %.lr.ph.i9.i.i.i.i.i.i.i, !llvm.loop !2765

bb.j:                                             ; preds = %bb.c
  %i.ku = icmp eq i64 %i.gk, 1
  br i1 %i.ku, label %.lr.ph31.i.i.i, label %.lr.ph.i15.i.i.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i.i.i:                         ; preds = %bb.j
  %i.kv = getelementptr i8, ptr %i.gh, i64 8
  %.val.val.val.i17.i.i.i.i.i.i.i = load ptr, ptr %i.kv, align 8, !tbaa !372 ; 3 uses
  %i.kw = getelementptr i8, ptr %i.gh, i64 80
  %.val.val.val6.i18.i.i.i.i.i.i.i = load ptr, ptr %i.kw, align 8, !tbaa !376 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i15.i.i.i.i.i.i.i
  %.sroa.07.013.i19.i.i.i.i.i.i.i = phi ptr [ %.ptr20.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i ], [ %i.kx, %bb.n ] ; 4 uses
  %i.kx = getelementptr inbounds i8, ptr %.sroa.07.013.i19.i.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !352 ; 3 uses
  %i.kz = load i32, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  %i.la = and i32 %i.ky, 1048575
  %i.lb = zext nneg i32 %i.la to i64              ; 2 uses
  %i.lc = lshr i64 %i.lb, 12
  %i.ld = and i64 %i.lb, 4095
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.lc
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !300
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ld ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !352 ; 2 uses
  %i.li = and i32 %i.lh, 1048575
  %i.lj = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lk = lshr i64 %i.lj, 10
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i18.i.i.i.i.i.i.i, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !377
  %i.ln = and i64 %i.lj, 1023
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ln
  %i.lp = and i32 %i.kz, 1048575
  %i.lq = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lr = lshr i64 %i.lq, 12
  %i.ls = and i64 %i.lq, 4095
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.lr
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !300
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ls
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !352
  %i.lx = and i32 %i.lw, 1048575
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.lz = lshr i64 %i.ly, 10
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i18.i.i.i.i.i.i.i, i64 %i.lz
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !377
  %i.mc = and i64 %i.ly, 1023
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  %.val.val.i.i.i20.i.i.i.i.i.i.i = load i8, ptr %i.lo, align 1, !tbaa !295
  %.val4.val.i.i.i21.i.i.i.i.i.i.i = load i8, ptr %i.md, align 1, !tbaa !295
  %i.me = icmp slt i8 %.val.val.i.i.i20.i.i.i.i.i.i.i, %.val4.val.i.i.i21.i.i.i.i.i.i.i
  br i1 %i.me, label %bb.l, label %.preheader.i22.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.mf = ptrtoint ptr %.sroa.07.013.i19.i.i.i.i.i.i.i to i64
  %i.mg = sub i64 %i.go, %i.mf                    ; 2 uses
  %i.mh = icmp sgt i64 %i.mg, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i:     ; preds = %bb.l
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kx, ptr nonnull align 4 %.sroa.07.013.i19.i.i.i.i.i.i.i, i64 %i.mg, i1 false), !tbaa !352, !noalias !2851
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i29.i.i.i.i.i.i.i, %bb.l
  store i32 %i.ky, ptr %.ptr20.i.i.i.i.i.i.i, align 4, !tbaa !352
  br label %bb.n

.preheader.i22.i.i.i.i.i.i.i:                     ; preds = %bb.k, %bb.m
  %i.mi = phi i32 [ %.pre.i27.i.i.i.i.i.i.i, %bb.m ], [ %i.lh, %bb.k ]
  %i.mj = phi ptr [ %.sroa.06.0.i.i26.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.07.013.i19.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !352 ; 2 uses
  %i.ml = and i32 %i.mi, 1048575
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = lshr i64 %i.mm, 10
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i18.i.i.i.i.i.i.i, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !377
  %i.mq = and i64 %i.mm, 1023
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq
  %i.ms = and i32 %i.mk, 1048575
  %i.mt = zext nneg i32 %i.ms to i64              ; 2 uses
  %i.mu = lshr i64 %i.mt, 12
  %i.mv = and i64 %i.mt, 4095
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i17.i.i.i.i.i.i.i, i64 %i.mu
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !300
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mv
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !352
  %i.na = and i32 %i.mz, 1048575
  %i.nb = zext nneg i32 %i.na to i64              ; 2 uses
  %i.nc = lshr i64 %i.nb, 10
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val6.i18.i.i.i.i.i.i.i, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !377
  %i.nf = and i64 %i.nb, 1023
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nf
  %.val.val.i.i.i.i23.i.i.i.i.i.i.i = load i8, ptr %i.mr, align 1, !tbaa !295
  %.val4.val.i.i.i.i24.i.i.i.i.i.i.i = load i8, ptr %i.ng, align 1, !tbaa !295
  %i.nh = icmp slt i8 %.val.val.i.i.i.i23.i.i.i.i.i.i.i, %.val4.val.i.i.i.i24.i.i.i.i.i.i.i
  br i1 %i.nh, label %bb.m, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.preheader.i22.i.i.i.i.i.i.i
  %.sroa.06.0.i.i26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ni = getelementptr inbounds i8, ptr %i.mj, i64 -4
  store i32 %i.mk, ptr %i.ni, align 4, !tbaa !352
  %.pre.i27.i.i.i.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !352
  br label %.preheader.i22.i.i.i.i.i.i.i, !llvm.loop !2763

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i": ; preds = %.preheader.i22.i.i.i.i.i.i.i
  %i.nj = getelementptr inbounds i8, ptr %i.mj, i64 -4
  store i32 %i.ky, ptr %i.nj, align 4, !tbaa !352
  br label %bb.n

bb.n:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i25.i.i.i.i.i.i.i", %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i28.i.i.i.i.i.i.i
  %i.nk = icmp eq ptr %i.kx, %i.gm
  br i1 %i.nk, label %.lr.ph31.i.i.i, label %bb.k, !llvm.loop !2764

.lr.ph31.i.i.i:                                   ; preds = %bb.n, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_.exit.i12.i.i.i.i.i.i.i", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.gl, align 8, !tbaa !365
  %.pre37.i.i.i = load ptr, ptr %i.nl, align 8, !tbaa !372
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph31.i.i.i
  %i.nm = phi ptr [ %.pre37.i.i.i, %.lr.ph31.i.i.i ], [ %i.pi, %._crit_edge.i.i.i ] ; 3 uses
  %i.nn = phi ptr [ %.pre.i.i.i, %.lr.ph31.i.i.i ], [ %i.pj, %._crit_edge.i.i.i ] ; 3 uses
  %.030.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %i.pk, %._crit_edge.i.i.i ] ; 4 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %.030.i.i.i
  %i.np = load i32, ptr %i.no, align 4, !tbaa !352
  %i.nq = and i32 %i.np, 1048575
  %i.nr = zext nneg i32 %i.nq to i64              ; 2 uses
  %i.ns = lshr i64 %i.nr, 12
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !300
  %i.nv = and i64 %i.nr, 4095
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !352
  %i.ny = and i32 %i.nx, 1048575
  %i.nz = zext nneg i32 %i.ny to i64              ; 2 uses
  %.not27.i.i.i = icmp eq i64 %.030.i.i.i, %i.nz
  br i1 %.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i285

.lr.ph.i.i.i285:                                  ; preds = %bb.o, %.noexc286
  %i.oa = phi ptr [ %i.pd, %.noexc286 ], [ %i.nm, %bb.o ]
  %i.ob = phi ptr [ %i.ou, %.noexc286 ], [ %i.nn, %bb.o ] ; 2 uses
  %.01429.i.i.i = phi i64 [ %.02328.i.i.i, %.noexc286 ], [ %.030.i.i.i, %bb.o ] ; 3 uses
  %.02328.i.i.i = phi i64 [ %i.on, %.noexc286 ], [ %i.nz, %bb.o ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.02328.i.i.i
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !352
  %i.oe = and i32 %i.od, 1048575
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = lshr i64 %i.of, 12
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !300
  %i.oj = and i64 %i.of, 4095
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !352
  %i.om = and i32 %i.ol, 1048575
  %i.on = zext nneg i32 %i.om to i64              ; 3 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.01429.i.i.i
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !352
  %i.oq = load ptr, ptr %i.gf, align 8, !tbaa !267
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  invoke void %i.os(ptr noundef nonnull align 8 dereferenceable(80) %i.gf, i64 noundef %.02328.i.i.i, i64 noundef %i.on)
          to label %.noexc286 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2776

.noexc286:                                        ; preds = %.lr.ph.i.i.i285
  %i.ot = trunc i64 %.01429.i.i.i to i32
  %i.ou = load ptr, ptr %i.gl, align 8, !tbaa !365 ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %.01429.i.i.i
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !352
  %i.ox = and i32 %i.ot, 1048575
  %i.oy = and i32 %i.ow, -1048576
  %i.oz = or disjoint i32 %i.oy, %i.ox
  %i.pa = and i32 %i.op, 1048575
  %i.pb = zext nneg i32 %i.pa to i64              ; 2 uses
  %i.pc = lshr i64 %i.pb, 12
  %i.pd = load ptr, ptr %i.nl, align 8, !tbaa !372 ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pc
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !300
  %i.pg = and i64 %i.pb, 4095
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pg
  store i32 %i.oz, ptr %i.ph, align 4, !tbaa !352
  %.not.i5.i.i = icmp eq i64 %.02328.i.i.i, %i.on
  br i1 %.not.i5.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i285, !llvm.loop !2777

._crit_edge.i.i.i:                                ; preds = %.noexc286, %bb.o
  %i.pi = phi ptr [ %i.nm, %bb.o ], [ %i.pd, %.noexc286 ]
  %i.pj = phi ptr [ %i.nn, %bb.o ], [ %i.ou, %.noexc286 ]
  %i.pk = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.pk, %i.gk
  br i1 %exitcond.not.i.i.i, label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i", label %bb.o, !llvm.loop !2778

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i": ; preds = %._crit_edge.i.i.i
  %.val.val.pre.i.i = load ptr, ptr %6, align 8, !tbaa !553
  br label %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"

"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i": ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i", %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i"
  %.val.val.i.i = phi ptr [ %.val.val.pre.i.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.loopexit.i.i" ], [ %i.gd, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.thread.i.i" ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.val.val.i.i, i64 32
  %.val.val.val.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !500 ; 2 uses
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.val.val.val.pre.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %.loopexit628, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"
  %i.pl = getelementptr inbounds nuw i8, ptr %i.gh, i64 32 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.pl, align 8, !tbaa !365
  %.pre3.i.i.i.i.i.i.i = load ptr, ptr %i.pm, align 8, !tbaa !372
  br label %bb.p

bb.p:                                             ; preds = %.noexc287, %.lr.ph.i.i.i.i.i.i.i
  %i.pn = phi ptr [ %.pre3.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.rb, %.noexc287 ] ; 2 uses
  %i.po = phi ptr [ %.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qs, %.noexc287 ]
  %.02.i.i.i.i.i.i.i = phi i64 [ %.val.val.val.pre.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.pp, %.noexc287 ]
  %i.pp = add i64 %.02.i.i.i.i.i.i.i, -1          ; 4 uses
  %i.pq = load ptr, ptr %i.gl, align 8, !tbaa !365
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pp
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !352
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.pp
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !352
  %i.pv = and i32 %i.pu, 1048575
  %i.pw = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.px = lshr i64 %i.pw, 12
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.px
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !300
  %i.qa = and i64 %i.pw, 4095
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !352
  %i.qd = and i32 %i.qc, 1048575                  ; 2 uses
  %i.qe = zext nneg i32 %i.qd to i64              ; 2 uses
  %i.qf = and i32 %i.ps, 1048575
  %i.qg = zext nneg i32 %i.qf to i64              ; 2 uses
  %i.qh = lshr i64 %i.qg, 12
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !300
  %i.qk = and i64 %i.qg, 4095
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !352
  %i.qn = and i32 %i.qm, 1048575                  ; 2 uses
  %i.qo = zext nneg i32 %i.qn to i64              ; 2 uses
  %i.qp = load ptr, ptr %i.gh, align 8, !tbaa !267
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  invoke void %i.qr(ptr noundef nonnull align 8 dereferenceable(80) %i.gh, i64 noundef %i.qe, i64 noundef %i.qo)
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2779

.noexc287:                                        ; preds = %bb.p
  %i.qs = load ptr, ptr %i.pl, align 8, !tbaa !365 ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qe ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qo ; 3 uses
  %i.qv = load i32, ptr %i.qt, align 4, !tbaa !352 ; 2 uses
  %i.qw = and i32 %i.qv, -1048576
  %i.qx = or disjoint i32 %i.qw, %i.qn
  %i.qy = and i32 %i.qv, 1048575
  %i.qz = zext nneg i32 %i.qy to i64              ; 2 uses
  %i.ra = lshr i64 %i.qz, 12
  %i.rb = load ptr, ptr %i.pm, align 8, !tbaa !372 ; 3 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.ra
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !300
  %i.re = and i64 %i.qz, 4095
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %i.re
  store i32 %i.qx, ptr %i.rf, align 4, !tbaa !352
  %i.rg = load i32, ptr %i.qu, align 4, !tbaa !352 ; 2 uses
  %i.rh = and i32 %i.rg, -1048576
  %i.ri = or disjoint i32 %i.rh, %i.qd
  %i.rj = and i32 %i.rg, 1048575
  %i.rk = zext nneg i32 %i.rj to i64              ; 2 uses
  %i.rl = lshr i64 %i.rk, 12
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.rl
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !300
  %i.ro = and i64 %i.rk, 4095
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.ro
  store i32 %i.ri, ptr %i.rp, align 4, !tbaa !352
  %i.rq = load i32, ptr %i.qt, align 4, !tbaa !352
  %i.rr = load i32, ptr %i.qu, align 4, !tbaa !352
  store i32 %i.rr, ptr %i.qt, align 4, !tbaa !352
  store i32 %i.rq, ptr %i.qu, align 4, !tbaa !352
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.pp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit628.loopexit, label %bb.p, !llvm.loop !2780

.loopexit628.loopexit:                            ; preds = %.noexc287
  %.pre696 = load ptr, ptr %6, align 8, !tbaa !553
  br label %.loopexit628

.loopexit628:                                     ; preds = %.loopexit628.loopexit, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i"
  %75 = phi ptr [ %.pre696, %.loopexit628.loopexit ], [ %.val.val.i.i, %"_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNKS_11basic_groupINS_7owned_tIJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES1_SaISC_EEENS_14basic_registryIS1_S2_EEEEEEENS_5get_tIJNS7_INS8_IcS1_SaIcEEESG_EEEEENS_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_EUlS1_S1_E_SU_JEEEvmT_SV_DpOT1_.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.rs = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !371
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !365 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !352, !noalias !2852
  %i.rx = load i32, ptr %.011.i.i.i.ptr.4, align 4, !tbaa !352, !noalias !2852
  %i.ry = icmp eq i32 %i.rw, %i.rx
  br i1 %i.ry, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit628
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.t

bb.r:                                             ; preds = %.loopexit628
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.216, ptr noundef nonnull align 4 dereferenceable(4) %i.rv, ptr noundef nonnull align 4 dereferenceable(4) %.011.i.i.i.ptr.4)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.t

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.q, %bb.r
  %i.rz = load i8, ptr %10, align 8, !tbaa !310, !range !366, !noundef !367
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %.critedge, label %bb.u

bb.s:                                             ; preds = %bb.a
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i285, %bb.p, %.lr.ph.i8.i.i278, %.lr.ph.i8.i.i, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i, %.noexc259, %.noexc260, %.noexc260.1, %.noexc260.2, %.noexc260.3, %.noexc260.4, %.noexc260.5, %.noexc283.3, %.noexc283.2, %.noexc283.1, %.noexc283, %.noexc282, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6insertIN4test8internal10value_typeIiEEPS1_PKS8_Qsr3stlE7same_asINSt15iterator_traitsITL0_1_E10value_typeETL0__EEEvT0_SH_T1_.exit, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit, %bb.b
  %lpad.loopexit.split-lp961 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.sd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i290, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !315
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.sg = phi ptr [ %i.sf, %bb.w ], [ @.str.300, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1078, ptr noundef %i.sg)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.sh = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i.i291 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i291, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !267
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(128) %i.sh) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.sl = load ptr, ptr %i.sd, align 8, !tbaa !318 ; 4 uses
  %.not.i.i292 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i292, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !315 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !295
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.lf

bb.aa:                                            ; preds = %bb.u
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit295

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.st, %bb.ac ], [ %i.ss, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.su = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.su, null
  br i1 %.not.i.i293, label %_ZN7testing7MessageD2Ev.exit295, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294: ; preds = %bb.ad
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !267
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(128) %i.su) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit295

_ZN7testing7MessageD2Ev.exit295:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294, %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.sr, %bb.aa ], [ %.pn, %bb.ad ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #28
  br label %bb.ai

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.sy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !318 ; 4 uses
  %.not.i.i296 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i296, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !315 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297: ; preds = %bb.ae
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !295
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297
  call void @_ZdlPvm(ptr noundef nonnull %i.sz, i64 noundef 32) #29
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.tf = load ptr, ptr %6, align 8, !tbaa !553, !nonnull !367, !noundef !367
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !371
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !365
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !352, !noalias !2853
  %i.tm = load i32, ptr %.011.i.i.i.ptr.3, align 4, !tbaa !352, !noalias !2853
  %i.tn = icmp eq i32 %i.tl, %i.tm
  br i1 %i.tn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit303 unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.214, ptr noundef nonnull align 4 dereferenceable(4) %i.tk, ptr noundef nonnull align 4 dereferenceable(4) %.011.i.i.i.ptr.3)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit303 unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit303: ; preds = %bb.ag, %bb.ah
  %i.to = load i8, ptr %13, align 8, !tbaa !310, !range !366, !noundef !367
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %.critedge214, label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit295, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit295 ], [ %i.sc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit303
end_hunk_2
