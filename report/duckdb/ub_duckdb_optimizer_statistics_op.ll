inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

_ZNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i: ; preds = %bb.cc, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jc) #23, !inline_history !244
  %i.kg = load ptr, ptr %i.iz, align 8, !tbaa !25 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ja
  br i1 %i.kh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i337: ; preds = %_ZNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.kg) #26, !inline_history !244
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i339: ; preds = %_ZNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.ki = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0448.0635) #28 ; 2 uses
  %.not502 = icmp eq ptr %i.ki, %i.ix
  br i1 %.not502, label %.critedge286, label %bb.bs

bb.cd:                                            ; preds = %bb.by, %bb.bx
  %.pn233 = phi { ptr, i32 } [ %i.jt, %bb.by ], [ %i.js, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN6duckdb11ColumnIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %19) #23
  br label %.body329

.body329:                                         ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cd
  %.pn233.pn = phi { ptr, i32 } [ %.pn233, %bb.cd ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.jo, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.di

.critedge286:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i339, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.kj = load ptr, ptr %13, align 8, !tbaa !208  ; 2 uses
  %i.kk = load ptr, ptr %i.hi, align 8, !tbaa !208 ; 2 uses
  %.not503643 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not503643, label %._crit_edge, label %.lr.ph645

.lr.ph645:                                        ; preds = %.critedge286
  %i.kl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph645, %bb.dg
  %.sroa.0444.0644 = phi ptr [ %i.kj, %.lr.ph645 ], [ %i.mg, %bb.dg ] ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0444.0644, i64 24 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !245
  %.not504 = icmp eq ptr %i.kn, null
  br i1 %.not504, label %.critedge298.critedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ko = load ptr, ptr %i.is, align 8, !tbaa !214 ; 2 uses
  %.not505637 = icmp eq ptr %i.ko, %i.iq
  br i1 %.not505637, label %.thread486.thread, label %.lr.ph640

.lr.ph640:                                        ; preds = %bb.cf
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0444.0644, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph640, %bb.dd
  %.0208639 = phi i8 [ 1, %.lr.ph640 ], [ %.4212, %bb.dd ] ; 3 uses
  %.sroa.0440.0638 = phi ptr [ %i.ko, %.lr.ph640 ], [ %i.me, %bb.dd ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0440.0638, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0440.0638, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !245 ; 3 uses
  store ptr %i.ks, ptr %22, align 8, !tbaa !245
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !248 ; 3 uses
  store ptr %i.kt, ptr %i.kl, align 8, !tbaa !248
  %.not.i.i.i.i340 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i340, label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 3 uses
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kw = load i32, ptr %i.ku, align 4, !tbaa !3
  %i.kx = add nsw i32 %i.kw, 1
  store i32 %i.kx, ptr %i.ku, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit

bb.cj:                                            ; preds = %bb.ch
  %i.ky = atomicrmw volatile add ptr %i.ku, i32 1 acq_rel, align 4 ; 0 uses
  %.pre703 = load ptr, ptr %22, align 8, !tbaa !245
  br label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit: ; preds = %bb.cg, %bb.ci, %bb.cj
  %i.kz = phi ptr [ %i.ks, %bb.cg ], [ %i.ks, %bb.ci ], [ %.pre703, %bb.cj ]
  %.not506 = icmp eq ptr %i.kz, null
  br i1 %.not506, label %bb.cw, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.la = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.cl unwind label %bb.cn     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !43
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull align 8 dereferenceable(104) %i.kq)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.le = load ptr, ptr %23, align 8, !tbaa !249
  %.not507 = icmp eq ptr %i.le, null
  br i1 %.not507, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %bb.co

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.co:                                            ; preds = %bb.cm
  %i.lg = load ptr, ptr %i.kr, align 8, !tbaa !251
  %i.lh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lg)
          to label %bb.cp unwind label %bb.cs     ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.li = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !43
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = invoke noundef zeroext i8 %i.ll(ptr noundef nonnull align 8 dereferenceable(9) %i.lh, ptr noundef nonnull align 8 dereferenceable(128) %i.li)
          to label %bb.cr unwind label %bb.cs     ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  switch i8 %i.lm, label %bb.ct [
    i8 2, label %bb.cv
    i8 1, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #23
  br label %bb.de

bb.ct:                                            ; preds = %bb.cr
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cr, %bb.ct
  %.3211.ph = phi i8 [ %.0208639, %bb.cu ], [ %i.lm, %bb.ct ], [ %i.lm, %bb.cr ] ; 2 uses
  %.12.ph = phi i32 [ 0, %bb.cu ], [ 0, %bb.ct ], [ 16, %bb.cr ] ; 2 uses
  %.pr = load ptr, ptr %23, align 8, !tbaa !249   ; 3 uses
  %.not.i341 = icmp eq ptr %.pr, null
  br i1 %.not.i341, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.cv
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cm, %bb.cv, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  %.12485 = phi i32 [ %.12.ph, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i ], [ %.12.ph, %bb.cv ], [ 1, %bb.cm ]
  %.3211484 = phi i8 [ %.3211.ph, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i ], [ %.3211.ph, %bb.cv ], [ %.0208639, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.4212 = phi i8 [ %.3211484, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ], [ %.0208639, %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit ] ; 2 uses
  %.13 = phi i32 [ %.12485, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ], [ 1, %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEC2ERKS2_.exit ]
  %i.lo = load ptr, ptr %i.kl, align 8, !tbaa !248 ; 8 uses
  %.not.i.i.i342 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i342, label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.lp, align 8, !tbaa !254
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !256
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #23, !inline_history !257
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #23, !inline_history !257
  br label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit

bb.cz:                                            ; preds = %bb.cx
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i343 = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i.i343, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i.i = phi i32 [ %i.ls, %bb.da ], [ %i.mc, %bb.db ]
  %i.md = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.md, label %bb.dc, label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit, !prof !258

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #23
  br label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit: ; preds = %bb.cw, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  switch i32 %.13, label %.critedge298.critedge [
    i32 0, label %bb.dd
    i32 16, label %.thread486
  ]

bb.dd:                                            ; preds = %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit
  %i.me = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0440.0638) #28 ; 2 uses
  %.not505 = icmp eq ptr %i.me, %i.iq
  br i1 %.not505, label %.thread486, label %bb.cg

bb.de:                                            ; preds = %bb.cs, %bb.cn
  %.pn236 = phi { ptr, i32 } [ %i.ln, %bb.cs ], [ %i.lf, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dh

.thread486:                                       ; preds = %bb.dd, %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit
  switch i8 %.4212, label %.critedge298.critedge [
    i8 1, label %.thread486.thread
    i8 2, label %bb.dg
  ]

.thread486.thread:                                ; preds = %bb.cf, %.thread486
  invoke void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0444.0644)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %.thread486.thread
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %.thread486.thread, %.thread486
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0444.0644, i64 40 ; 2 uses
  %.not503 = icmp eq ptr %i.mg, %i.kk
  br i1 %.not503, label %._crit_edge, label %bb.ce

bb.dh:                                            ; preds = %bb.df, %bb.de
  %.pn239 = phi { ptr, i32 } [ %i.mf, %bb.df ], [ %.pn236, %bb.de ]
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.di

._crit_edge:                                      ; preds = %bb.dg, %.critedge286
  %i.mh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %21) #23 ; 0 uses
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZNSt3mapIN6duckdb12StorageIndexESt17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS4_ELb1EEEESt4lessIS1_ESaISt4pairIKS1_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.pre704 = load ptr, ptr %10, align 8, !tbaa !88
  %.pre705 = load ptr, ptr %i.fz, align 8, !tbaa !88
  br label %bb.dj

bb.di:                                            ; preds = %bb.dh, %.body329
  %.pn239.pn = phi { ptr, i32 } [ %.pn239, %bb.dh ], [ %.pn233.pn, %.body329 ]
  call void @_ZNSt3mapIN6duckdb12StorageIndexESt17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS4_ELb1EEEESt4lessIS1_ESaISt4pairIKS1_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body345

bb.dj:                                            ; preds = %._crit_edge, %.critedge282
  %i.mi = phi ptr [ %.pre705, %._crit_edge ], [ %i.il, %.critedge282 ]
  %i.mj = phi ptr [ %.pre704, %._crit_edge ], [ %i.im, %.critedge282 ]
  %i.mk = icmp eq ptr %i.mj, %i.mi
  br i1 %i.mk, label %.critedge296, label %.preheader513

.preheader513:                                    ; preds = %bb.dj
  %i.ml = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !236
  %i.mn = load ptr, ptr %14, align 8, !tbaa !233
  %.not251649.not = icmp eq ptr %i.mm, %i.mn
  br i1 %.not251649.not, label %.critedge296, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader513
  %.val300 = load ptr, ptr %11, align 8           ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val301 = load ptr, ptr %i.mo, align 8
  %i.mp = ptrtoint ptr %.val301 to i64
  %i.mq = ptrtoint ptr %.val300 to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = ashr exact i64 %i.mr, 3                 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph651, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.0214650 = phi i64 [ 0, %.lr.ph651 ], [ %i.qj, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.mx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_12StorageIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %.0214650)
          to label %bb.dl unwind label %bb.dy     ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.0214650, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ms, ptr %i.b, align 8, !tbaa !32
  %exitcond.not = icmp eq i64 %.0214650, %i.ms
  br i1 %exitcond.not, label %bb.dm, label %bb.ds, !prof !258

bb.dm:                                            ; preds = %bb.dl
  %i.my = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.dn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  invoke void @__cxa_throw(ptr nonnull %i.my, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.dr unwind label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.dm
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.0.i.i.i = phi i1 [ false, %bb.do ], [ true, %bb.dn ] ; 2 uses
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nb = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.dp
  call void @_ZdlPv(ptr noundef %i.nb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0.i.i.i, label %bb.dq, label %.body345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0.i.i.i, label %bb.dq, label %.body345

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.my) #23
  br label %.body345

bb.dr:                                            ; preds = %bb.do
  unreachable

bb.ds:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %.val300, i64 %.0214650 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 noundef zeroext 1)
          to label %bb.dt unwind label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %25)
          to label %bb.du unwind label %bb.ea

bb.du:                                            ; preds = %bb.dt
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #23
  %i.nf = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 0)
          to label %bb.dv unwind label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %.val303 = load ptr, ptr %i.ne, align 8, !tbaa !49 ; 2 uses
  %i.ng = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EEdeEv(ptr %.val303)
          to label %bb.dw unwind label %bb.eb     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.nh = invoke fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_120TryGetValueFromStatsERKNS_19PartitionStatisticsERKNS_12StorageIndexERKNS0_15ValueComparatorERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.nf, ptr noundef nonnull align 8 dereferenceable(104) %i.mx, ptr noundef nonnull align 8 dereferenceable(8) %.val303, ptr noundef nonnull align 8 dereferenceable(64) %24)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.nh, label %.preheader512, label %.loopexit514

.preheader512:                                    ; preds = %bb.dx
  %i.ni = load ptr, ptr %i.hi, align 8, !tbaa !259
  %i.nj = load ptr, ptr %13, align 8, !tbaa !261
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit384, %.critedge296
  %i.se = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !10
  %i.sg = load ptr, ptr %17, align 8, !tbaa !12
  %.not665 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not665, label %._crit_edge664, label %.lr.ph663

._crit_edge664:                                   ; preds = %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.gd unwind label %bb.gs

.lr.ph663:                                        ; preds = %.loopexit, %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0661 = phi i64 [ %i.sn, %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 0, %.loopexit ] ; 3 uses
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %.0661)
          to label %bb.fy unwind label %bb.gc

bb.fy:                                            ; preds = %.lr.ph663
  %i.si = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sh)
          to label %bb.fz unwind label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.0661)
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.sk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sj)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sm, ptr noundef nonnull align 8 dereferenceable(32) %i.sl)
          to label %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.gc

_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.gb
  %i.sn = add nuw i64 %.0661, 1                   ; 2 uses
  %i.so = load ptr, ptr %i.se, align 8, !tbaa !10
  %i.sp = load ptr, ptr %17, align 8, !tbaa !12
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 3
  %i.su = icmp ult i64 %i.sn, %i.st
  br i1 %i.su, label %.lr.ph663, label %._crit_edge664, !llvm.loop !295

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fy, %.lr.ph663
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body345

bb.gd:                                            ; preds = %._crit_edge664
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6duckdb9make_uniqINS_20LogicalExpressionGetEJRmNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEELb1ESaISD_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.289") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.sw, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.ge unwind label %bb.gt

bb.ge:                                            ; preds = %bb.gd
  %i.sx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalExpressionGetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.gf unwind label %bb.gu

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_ZN6duckdb9make_uniqINS_16LogicalDummyScanEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.298") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.sy)
          to label %bb.gg unwind label %bb.gv

bb.gg:                                            ; preds = %bb.gf
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.ta = load ptr, ptr %34, align 8, !tbaa !296
  store ptr null, ptr %34, align 8, !tbaa !296
  store ptr %i.ta, ptr %33, align 8, !tbaa !298
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.sz, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.gh unwind label %bb.gw

bb.gh:                                            ; preds = %bb.gg
  %i.tb = load ptr, ptr %33, align 8, !tbaa !300  ; 3 uses
  %.not.i389 = icmp eq ptr %i.tb, null
  br i1 %.not.i389, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.gh
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !43
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = load ptr, ptr %i.td, align 8
  call void %i.te(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.tb) #23, !inline_history !301
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.gh, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.tf = load ptr, ptr %34, align 8, !tbaa !296  ; 3 uses
  %.not.i390 = icmp eq ptr %i.tf, null
  br i1 %.not.i390, label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !43
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(112) %i.tf) #23, !inline_history !302
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.tj = load ptr, ptr %32, align 8, !tbaa !303
  store ptr null, ptr %32, align 8, !tbaa !303
  %i.tk = load ptr, ptr %2, align 8, !tbaa !300   ; 3 uses
  store ptr %i.tj, ptr %2, align 8, !tbaa !300
  %.not.i.i.i.i.i391 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i.i.i.i391, label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit394

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit394: ; preds = %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !43
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8
  call void %i.tn(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.tk) #23, !inline_history !305
  %.pr499 = load ptr, ptr %32, align 8, !tbaa !303 ; 3 uses
  %.not.i395 = icmp eq ptr %.pr499, null
  br i1 %.not.i395, label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit394
  %i.to = load ptr, ptr %.pr499, align 8, !tbaa !43
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8
  call void %i.tq(ptr noundef nonnull align 8 dereferenceable(160) %.pr499) #23, !inline_history !306
  br label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit394, %_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.critedge298

.critedge288:                                     ; preds = %bb.bw
  call void @_ZN6duckdb12StorageIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN6duckdb11ColumnIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZNSt3mapIN6duckdb12StorageIndexESt17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS4_ELb1EEEESt4lessIS1_ESaISt4pairIKS1_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.critedge298

.critedge298.critedge:                            ; preds = %.thread486, %bb.ce, %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev.exit
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZNSt3mapIN6duckdb12StorageIndexESt17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS4_ELb1EEEESt4lessIS1_ESaISt4pairIKS1_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.critedge298

.critedge298:                                     ; preds = %.lr.ph656, %.loopexit514, %.critedge298.critedge, %.critedge288, %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.loopexit780

.loopexit780:                                     ; preds = %bb.bq, %.critedge298
  call void @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.pre706 = load ptr, ptr %13, align 8, !tbaa !261 ; 3 uses
  %.pre707 = load ptr, ptr %i.hi, align 8, !tbaa !259 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre706, %.pre707
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit780, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ui, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i ], [ %.pre706, %.loopexit780 ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !248 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 4 uses
  %i.tu = load atomic i64, ptr %i.tt acquire, align 8 ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 4294967297
  %i.tw = trunc i64 %i.tu to i32                  ; 2 uses
  br i1 %i.tv, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  store i32 0, ptr %i.tt, align 8, !tbaa !254
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ts, i64 12
  store i32 0, ptr %i.tx, align 4, !tbaa !256
  %i.ty = load ptr, ptr %i.ts, align 8, !tbaa !43
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8
  call void %i.ua(ptr noundef nonnull align 8 dereferenceable(16) %i.ts) #23, !inline_history !307
  %i.ub = load ptr, ptr %i.ts, align 8, !tbaa !43
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(16) %i.ts) #23, !inline_history !307
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i

bb.gk:                                            ; preds = %bb.gi
  %i.ue = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ue, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.uf = add nsw i32 %i.tw, -1
  store i32 %i.uf, ptr %i.tt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %bb.gk
  %i.ug = atomicrmw volatile add ptr %i.tt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.gm, %bb.gl
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.tw, %bb.gl ], [ %i.ug, %bb.gm ]
  %i.uh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.uh, label %bb.gn, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i, !prof !258

bb.gn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ts) #23
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i: ; preds = %bb.gn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.gj, %.lr.ph.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i396 = icmp eq ptr %i.ui, %.pre707
  br i1 %.not.i.i.i396, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !308

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !261
  br label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.bf, %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.loopexit780
  %i.uj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre706, %.loopexit780 ], [ %i.hh, %bb.bf ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit, label %bb.go

bb.go:                                            ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.uj) #26
  br label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.critedge276

.critedge276:                                     ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.n, %bb.i, %bb.e, %.noexc310, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit306, %bb.ao, %bb.at, %bb.bd, %bb.bb, %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit
  %.sroa.0469.0603 = phi ptr [ %.sroa.0469.0.lcssa, %bb.ao ], [ %.sroa.0469.0.lcssa, %bb.at ], [ %.sroa.0469.0.lcssa, %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit ], [ %.sroa.0469.0.lcssa, %bb.bd ], [ %.sroa.0469.0.lcssa, %bb.bb ], [ %.sroa.0469.0624, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit306 ], [ %.sroa.0469.0624, %.noexc310 ], [ %.sroa.0469.0624, %bb.e ], [ %.sroa.0469.0624, %bb.i ], [ %.sroa.0469.0624, %bb.n ], [ %.sroa.0469.0624, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.0469.0624, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319 ], [ %.sroa.0469.0624, %bb.k ] ; 2 uses
  %i.uk = load ptr, ptr %11, align 8, !tbaa !51   ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i397 = icmp eq ptr %i.uk, %i.um
  br i1 %.not4.i.i.i397, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i398

.lr.ph.i.i.i398:                                  ; preds = %.critedge276, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i399 = phi ptr [ %i.uq, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i ], [ %i.uk, %.critedge276 ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i399, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i400 = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i400, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i398
  %i.un = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !43
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8
  call void %i.up(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.0.val.i.i.i) #23, !inline_history !309
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i398
  %i.uq = getelementptr inbounds nuw i8, ptr %.05.i.i.i399, i64 8 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %i.uq, %i.um
  br i1 %.not.i.i.i401, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i398, !llvm.loop !310

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, %.critedge276
  %.not.i.i2.i = icmp eq ptr %i.uk, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.uk) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ur = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i403 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i403, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ur) #26
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i404 = icmp eq ptr %.sroa.0469.0603, null
  br i1 %.not.i.i.i404, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0469.0603) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.gr, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.a
  ret void

bb.gs:                                            ; preds = %._crit_edge664
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gt:                                            ; preds = %bb.gd
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413

bb.gu:                                            ; preds = %bb.ge
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gf
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410

bb.gw:                                            ; preds = %bb.gg
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %33, align 8, !tbaa !300  ; 3 uses
  %.not.i405 = icmp eq ptr %i.ux, null
  br i1 %.not.i405, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i406

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i406: ; preds = %bb.gw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !43
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load ptr, ptr %i.uz, align 8
  call void %i.va(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ux) #23, !inline_history !301
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407: ; preds = %bb.gw, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i406
  %i.vb = load ptr, ptr %34, align 8, !tbaa !296  ; 3 uses
  %.not.i408 = icmp eq ptr %i.vb, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410, label %_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i409

_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i409: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !43
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(112) %i.vb) #23, !inline_history !302
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410

_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410: ; preds = %_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i409, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407, %bb.gv
  %.pn260 = phi { ptr, i32 } [ %i.uv, %bb.gv ], [ %i.uw, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit407 ], [ %i.uw, %_ZNKSt14default_deleteIN6duckdb16LogicalDummyScanEEclEPS1_.exit.i409 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410, %bb.gu
  %.pn260.pn = phi { ptr, i32 } [ %.pn260, %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit410 ], [ %i.uu, %bb.gu ] ; 2 uses
  %i.vf = load ptr, ptr %32, align 8, !tbaa !303  ; 3 uses
  %.not.i411 = icmp eq ptr %i.vf, null
  br i1 %.not.i411, label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413, label %_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i412

_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i412: ; preds = %bb.gx
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !43
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(160) %i.vf) #23, !inline_history !306
  br label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413

_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413: ; preds = %_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i412, %bb.gx, %bb.gt
  %.pn260.pn.pn = phi { ptr, i32 } [ %i.ut, %bb.gt ], [ %.pn260.pn, %bb.gx ], [ %.pn260.pn, %_ZNKSt14default_deleteIN6duckdb20LogicalExpressionGetEEclEPS1_.exit.i412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.gy

bb.gy:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413, %bb.gs
  %.pn260.pn.pn.pn = phi { ptr, i32 } [ %.pn260.pn.pn, %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit413 ], [ %i.us, %bb.gs ]
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.body345

.body345:                                         ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.dy, %bb.fi, %bb.gy, %bb.gc, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit387, %bb.di
  %.pn265 = phi { ptr, i32 } [ %i.sv, %bb.gc ], [ %.pn260.pn.pn.pn, %bb.gy ], [ %.pn255.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit387 ], [ %.pn239.pn, %bb.di ], [ %i.no, %bb.dy ], [ %.pn245.pn.pn, %bb.fi ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.dq ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.gz

bb.gz:                                            ; preds = %bb.bo, %bb.bp, %.body345
  %.pn265.pn = phi { ptr, i32 } [ %.pn265, %.body345 ], [ %i.ik, %bb.bp ], [ %i.ij, %bb.bo ]
  call void @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #23
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.bj
  %.pn265.pn.pn = phi { ptr, i32 } [ %.pn265.pn, %bb.gz ], [ %i.ib, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #23
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.bg
  %.pn265.pn.pn.pn = phi { ptr, i32 } [ %.pn265.pn.pn, %bb.ha ], [ %i.hl, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

.body:                                            ; preds = %.loopexit524, %.loopexit.split-lp525, %.loopexit520, %.loopexit.split-lp, %bb.aq, %bb.au, %bb.az, %bb.hb, %bb.bc, %bb.f, %bb.j, %bb.ac, %bb.y, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317
  %.sroa.0469.0586 = phi ptr [ %.sroa.0469.0624, %bb.y ], [ %.sroa.0469.0624, %bb.f ], [ %.sroa.0469.0624, %bb.j ], [ %.sroa.0469.0.lcssa, %bb.bc ], [ %.sroa.0469.0624, %.loopexit.split-lp ], [ %.sroa.0469.0624, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317 ], [ %.sroa.0469.0624, %bb.ac ], [ %.sroa.0469.0.lcssa, %bb.az ], [ %.sroa.0469.0.lcssa, %bb.au ], [ %.sroa.0469.0.lcssa, %bb.aq ], [ %.sroa.0469.0.lcssa, %bb.hb ], [ %.sroa.0469.0624, %.loopexit520 ], [ %.sroa.0469.0624, %.loopexit524 ], [ %.sroa.0469.0624, %.loopexit.split-lp525 ] ; 2 uses
  %.pn272.pn = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.t, %bb.f ], [ %i.y, %bb.j ], [ %i.gz, %bb.bc ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp ], [ %lpad.phi531, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317 ], [ %i.dj, %bb.ac ], [ %i.gu, %bb.az ], [ %i.gm, %bb.au ], [ %i.gf, %bb.aq ], [ %.pn265.pn.pn.pn, %bb.hb ], [ %lpad.loopexit521, %.loopexit520 ], [ %lpad.loopexit526, %.loopexit524 ], [ %lpad.loopexit.split-lp527, %.loopexit.split-lp525 ]
  call fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv:bb.a
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !317    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !249    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !249    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !256
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !318
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !318
  br label %_ZNSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !258

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !319
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !320
  store ptr null, ptr %i.h, align 8, !tbaa !248
  store <2 x ptr> %i.i, ptr %i.e, align 8, !tbaa !320
  store ptr null, ptr %i.f, align 8, !tbaa !245
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.k, ptr %i.a, align 8, !tbaa !259
  br label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !208
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !319
  store ptr %i.g, ptr %i.d, align 8, !tbaa !319
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !248  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !256
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !321
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !321
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.w, %bb.f ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.g, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i, !prof !258

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !308

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !256
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !322
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !322
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i, !prof !258

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !308

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !261
  br label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #26
  br label %_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb12StorageIndexESt17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS4_ELb1EEEESt4lessIS1_ESaISt4pairIKS1_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  invoke void @_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #2

declare void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_120TryGetValueFromStatsERKNS_19PartitionStatisticsERKNS_12StorageIndexERKNS0_15ValueComparatorERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.g = load ptr, ptr %4, align 8, !tbaa !249
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.h, label %bb.y

bb.g:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef zeroext i8 @_ZNK6duckdb14BaseStatistics12GetStatsTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.o)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  %i.s = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.r)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  br i1 %i.s, label %bb.u, label %bb.y

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.t = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb11StringStats3MinB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.t)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.u = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb11StringStats3MaxB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.u)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i, 0
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !25 ; 3 uses
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.r
  %i.aa = load ptr, ptr %5, align 8, !tbaa !25
  %i.ab = call i32 @memcmp(ptr noundef %i.aa, ptr noundef %.pre.pre, i64 noundef %.sroa.speculated.i.i) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.r
  %i.ac = sub i64 %i.w, %i.y
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.ad = icmp sgt i32 %.0.i.i, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = icmp eq ptr %.pre.pre, %i.ae
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ag = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %.pre.pre) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ah = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

end_hunk_2
begin_hunk_3_@_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !792  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !794
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !230
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !25
  %i.o = load i64, ptr %i.i, align 8, !tbaa !231
  store i64 %i.o, ptr %i.g, align 8, !tbaa !231
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !24
  store ptr %i.i, ptr %i.f, align 8, !tbaa !25
  store i64 0, ptr %i.q, align 8, !tbaa !24
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !792
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !792
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !25 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE17_M_emplace_uniqueIJRS1_RS9_EEES2_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #25 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_ZN6duckdb12StorageIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #23 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %2, ptr %i.i, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.j, align 8, !tbaa !490 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !845  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.h ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !845  ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o                  ; 2 uses
  %.in.v.i = select i1 %i.p, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !490 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !852

._crit_edge.i:                                    ; preds = %bb.h
  br i1 %i.p, label %._crit_edge.thread.i, label %bb.j

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.g
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.k, %bb.g ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !214
  %i.s = icmp eq ptr %.019.lcssa29.i, %i.r
  br i1 %i.s, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !845
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8, !tbaa !845
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %i.u = phi i64 [ %.pre26, %bb.i ], [ %i.m, %._crit_edge.i ]
  %i.v = phi i64 [ %.pre, %bb.i ], [ %i.o, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.i ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.t, %bb.i ], [ %.02024.i, %._crit_edge.i ]
  %i.w = icmp ult i64 %i.v, %i.u
  %cond.fr = freeze i1 %i.w
  br i1 %cond.fr, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %bb.j, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.j ] ; 3 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph, %i.k
  br i1 %i.x, label %.thread19, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !845
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !845
  %i.ac = icmp ult i64 %i.z, %i.ab
  br label %.thread19

.thread19:                                        ; preds = %select.unfold, %bb.k
  %i.ad = phi i1 [ %i.ac, %bb.k ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !211
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !211
  br label %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !233 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i2.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.l ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb12StorageIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i), !inline_history !237
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !238

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i, %bb.l
  %i.am = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i ], [ %i.ai, %bb.l ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #26, !inline_history !239
  br label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.m, %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #23, !inline_history !240
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ap) #26, !inline_history !240
  br label %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i

_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread19, %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i
  %.sroa.3.024 = phi i8 [ 1, %.thread19 ], [ 0, %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  %.sroa.011.023 = phi ptr [ %i.a, %.thread19 ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeIN6duckdb12StorageIndexESt4pairIKS1_St17reference_wrapperINS0_10unique_ptrINS0_11TableFilterESt14default_deleteIS6_ELb1EEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.023, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.024, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12StorageIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !230
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !32
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !25
  %i.j = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.j, ptr %i.d, align 8, !tbaa !231
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !231
  store i8 %i.l, ptr %i.k, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !24
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !853
  store i8 %i.u, ptr %i.s, align 8, !tbaa !853
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !236  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !233  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sdiv exact i64 %i.ac, 104
  %i.ae = icmp ugt i64 %i.ad, 88686269585142075
  br i1 %i.ae, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6duckdb12StorageIndexEE8allocateEmPKv.exit.i.i.i.i, !prof !258

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j, !inline_history !854

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb12StorageIndexEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #25
          to label %.noexc9 unwind label %bb.j, !inline_history !854

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb12StorageIndexEE8allocateEmPKv.exit.i.i.i.i, %bb.d
  %i.ag = phi ptr [ null, %bb.d ], [ %i.af, %_ZNSt15__new_allocatorIN6duckdb12StorageIndexEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !236
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !762
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !855
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !855
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb12StorageIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.ak, ptr %i.al, ptr noundef %i.ag)
          to label %bb.h unwind label %bb.f, !inline_history !856

bb.f:                                             ; preds = %.noexc9
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #26, !inline_history !854
  br label %.body

bb.h:                                             ; preds = %.noexc9
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !236
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb12StorageIndexEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_emplace_auxIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEN9__gnu_cxx17__normal_iteratorIPS5_S7_EENSD_IPKS5_S7_EEDpOT_:bb.a
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.d
  ret ptr %i.cl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !264
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.k, ptr %i.e, align 8, !tbaa !263
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -24
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #23
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !263  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !263
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.t = udiv exact i64 %i.r, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #23 ; 0 uses
  %i.x = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.y = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit, !llvm.loop !911

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2) #23 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit, %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !327
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.d
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !327    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #23
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #23
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !874

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19) #23
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i19) #23
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !874

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !327
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !263
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !264
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !912
  store i8 %i.a, ptr %0, align 8, !tbaa !912
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !913
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !913
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !248  ; 8 uses
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !320
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !256
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23, !inline_history !914
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23, !inline_history !914
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, !prof !258

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !248 ; 8 uses
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !320
  %.not.i.i.i.i4.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !256
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23, !inline_history !914
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23, !inline_history !914
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i7.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i7.i, 1
  br i1 %i.ap, label %bb.m, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !258

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i, %bb.m
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !328    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !7
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !268
  store ptr %i.u, ptr %i.s, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !918, !noalias !915
  store <2 x ptr> %i.v, ptr %.012.i.i.i.i, align 8, !tbaa !7, !alias.scope !915, !noalias !918
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !alias.scope !918, !noalias !915
  store ptr %i.y, ptr %i.w, align 8, !tbaa !268, !alias.scope !915, !noalias !918
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !918, !noalias !915
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !920

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 3 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i.i19, align 8, !tbaa !7, !alias.scope !924, !noalias !921
  store <2 x ptr> %i.ac, ptr %.012.i.i.i.i18, align 8, !tbaa !7, !alias.scope !921, !noalias !924
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !268, !alias.scope !924, !noalias !921
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !268, !alias.scope !921, !noalias !924
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !924, !noalias !921
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !920

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.ah, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !328
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !323
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !326
  ret void
}

declare void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97), i8 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEESaISA_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<duckdb::ColumnBinding, std::pair<const duckdb::ColumnBinding, duckdb::unique_ptr<duckdb::BaseStatistics>>, std::allocator<std::pair<const duckdb::ColumnBinding, duckdb::unique_ptr<duckdb::BaseStatistics>>>, std::__detail::_Select1st, duckdb::ColumnBindingEquality, duckdb::ColumnBindingHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !383    ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -2960836687051489901       ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -2960836687051489901       ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -2960836687051489901       ; 2 uses
  %i.p = xor i64 %i.o, %i.g
  %i.q = lshr i64 %i.p, 32
  %i.r = xor i64 %i.g, %i.q
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !390  ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !392  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.loopexit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !388  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !393
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = phi i64 [ %.pre.i.i, %bb.b ], [ %i.am, %bb.d ]
  %i.ab = phi ptr [ %i.z, %bb.b ], [ %i.ak, %bb.d ] ; 4 uses
  %i.ac = icmp eq i64 %i.s, %i.aa
  br i1 %i.ac, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !383
  %i.af = icmp eq i64 %i.a, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.i, %i.ah
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, %bb.c
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !388 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ak, null
  br i1 %.not18.i.i, label %.loopexit28, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !393 ; 2 uses
  %i.an = urem i64 %i.am, %i.u
  %.not19.i.i = icmp eq i64 %i.an, %i.v
  br i1 %.not19.i.i, label %bb.c, label %.loopexit28, !llvm.loop !395

.loopexit28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !926
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 5 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !388
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr null, ptr %i.ar, align 8, !tbaa !358
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !930
  %i.as = invoke ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.v, i64 noundef %i.s, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit28
end_hunk_4
