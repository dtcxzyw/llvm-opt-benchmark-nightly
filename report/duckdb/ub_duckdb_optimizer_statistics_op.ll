Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_statistics_op?download=true
inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  %i.aj = load ptr, ptr %5, align 8, !tbaa !237
  %.not104 = icmp eq ptr %i.aj, null
  br i1 %.not104, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit67, label %bb.k

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !481
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !482
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 48
  %i.as = icmp ugt i64 %i.ar, 1
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.at = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb14BaseStatistics3SetENS_9StatsInfoE(ptr noundef nonnull align 8 dereferenceable(128) %i.at, i8 noundef zeroext 0)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.av = load i64, ptr %i.s, align 8, !tbaa !495
  store i64 %i.av, ptr %7, align 8, !tbaa !283
  store i64 %.053115, ptr %i.t, align 8, !tbaa !87
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEESaISA_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit unwind label %bb.q ; 2 uses

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit: ; preds = %bb.o
  %i.ax = load ptr, ptr %5, align 8, !tbaa !237
  store ptr null, ptr %5, align 8, !tbaa !237
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !237 ; 3 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !237
  %.not.i.i.i.i.i62 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i62, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit64, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i63

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i63: ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ay) #23
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #26
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit64

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit64: ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit64
  %.pr87 = load ptr, ptr %5, align 8, !tbaa !237  ; 3 uses
  %.not.i65 = icmp eq ptr %.pr87, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i66: ; preds = %bb.p
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr87) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr87) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, %bb.p, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.az = add nuw i64 %.053115, 1                 ; 2 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ult i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.b, label %.preheader108, !llvm.loop !477

bb.q:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.j
  %.pn56 = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.bh, %bb.q ], [ %.pn, %bb.j ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ah

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74, %.preheader108
  %.lcssa113 = phi ptr [ %i.x, %.preheader108 ], [ %i.bt, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74 ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.y, %.preheader108 ], [ %i.bu, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74 ] ; 2 uses
  %.not99131 = icmp eq ptr %.lcssa111, %.lcssa113
  br i1 %.not99131, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph118, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74
  %.043117 = phi i64 [ 0, %.lr.ph118 ], [ %i.bs, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %.043117)
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bn = load ptr, ptr %8, align 8, !tbaa !237
  %.not102 = icmp eq ptr %i.bn, null
  br i1 %.not102, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !496
  store i64 %i.bo, ptr %9, align 8, !tbaa !283
  store i64 %.043117, ptr %i.aa, align 8, !tbaa !87
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEESaISA_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit68 unwind label %bb.v ; 2 uses

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit68: ; preds = %bb.t
  %i.bq = load ptr, ptr %8, align 8, !tbaa !237
  store ptr null, ptr %8, align 8, !tbaa !237
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !237 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !237
  %.not.i.i.i.i.i69 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i69, label %bb.u, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i70

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i70: ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit68
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.br) #23
  call void @_ZdlPv(ptr noundef nonnull %i.br) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i70, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEEixERSA_.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pr89 = load ptr, ptr %8, align 8, !tbaa !237  ; 3 uses
  %.not.i72 = icmp eq ptr %.pr89, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i73

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i73: ; preds = %bb.u
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr89) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr89) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit74: ; preds = %bb.s, %bb.u, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bs = add nuw i64 %.043117, 1                 ; 2 uses
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bs, %i.by
  br i1 %i.bz, label %bb.s, label %.preheader, !llvm.loop !478

bb.v:                                             ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ah

bb.w:                                             ; preds = %.lr.ph134, %.critedge.thread
  %.0133 = phi i8 [ 1, %.lr.ph134 ], [ %.5.ph, %.critedge.thread ]
  %.sroa.083.0132 = phi ptr [ %.lcssa111, %.lr.ph134 ], [ %i.et, %.critedge.thread ] ; 3 uses
  %i.cb = icmp eq i8 %.0133, 0
  br i1 %i.cb, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.0132)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !41
  %.not = icmp eq i8 %i.ce, 25
  br i1 %.not, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cf = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.0132)
  %i.cg = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 456
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 464
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 2 uses
  %.not100120 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not100120, label %.critedge.thread, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.y, %.critedge
  %.1122 = phi i8 [ %spec.select59, %.critedge ], [ 1, %bb.y ]
  %.sroa.079.0121 = phi ptr [ %i.es, %.critedge ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cl = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.079.0121)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !41
  %.not54 = icmp eq i8 %i.cn, 28
  br i1 %.not54, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %.lr.ph123
  %i.co = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.079.0121)
  %i.cp = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.co) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !284
  %.not.not.i.i = icmp eq i64 %i.cr, 0
  %i.cs = load i64, ptr %i.cq, align 8            ; 4 uses
  br i1 %.not.not.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cu = load i64, ptr %i.ct, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.06.0.in.i.i = phi ptr [ %i.bl, %bb.aa ], [ %.sroa.06.0.i.i, %bb.ac ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !285 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !283
  %i.cx = icmp eq i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cu, %i.cz
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.ab, !llvm.loop !11

bb.ad:                                            ; preds = %bb.z
  %i.dc = lshr i64 %i.cs, 32
  %i.dd = xor i64 %i.dc, %i.cs
  %i.de = mul i64 %i.dd, -2960836687051489901     ; 2 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -2960836687051489901     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !87 ; 3 uses
  %i.dk = lshr i64 %i.dj, 32
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -2960836687051489901     ; 2 uses
  %i.dn = lshr i64 %i.dm, 32
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -2960836687051489901     ; 2 uses
  %i.dq = xor i64 %i.dp, %i.dh
  %i.dr = lshr i64 %i.dq, 32
  %i.ds = xor i64 %i.dh, %i.dr
  %i.dt = xor i64 %i.ds, %i.dp                    ; 2 uses
  %i.du = load i64, ptr %i.bk, align 8, !tbaa !286 ; 2 uses
  %i.dv = urem i64 %i.dt, %i.du                   ; 2 uses
  %i.dw = load ptr, ptr %i.bj, align 8, !tbaa !287
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !288 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !285 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !290
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.ea = phi i64 [ %.pre.i.i.i.i, %bb.ae ], [ %i.em, %bb.ag ]
  %i.eb = phi ptr [ %i.dz, %bb.ae ], [ %i.ek, %bb.ag ] ; 4 uses
  %i.ec = icmp eq i64 %i.dt, %i.ea
  br i1 %i.ec, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i: ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !283
  %i.ef = icmp eq i64 %i.cs, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp eq i64 %i.dj, %i.eh
  %i.ej = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %i.ej, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.af
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !285 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not18.i.i.i.i, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !290 ; 2 uses
  %i.en = urem i64 %i.em, %i.du
  %.not19.i.i.i.i = icmp eq i64 %i.en, %i.dv
  br i1 %.not19.i.i.i.i, label %bb.af, label %.critedge.thread, !llvm.loop !12

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.ac
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ac ], [ %i.eb, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !237
  %.not101 = icmp eq ptr %i.ep, null
  br i1 %.not101, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %i.eq = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
  %i.er = call noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) ; 2 uses
  %spec.select59 = select i1 %i.er, i8 0, i8 %.1122 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.079.0121, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.es, %i.ck
  %or.cond = select i1 %i.er, i1 true, i1 %.not100
  br i1 %or.cond, label %.critedge.thread, label %.lr.ph123

.critedge.thread:                                 ; preds = %.critedge, %.lr.ph123, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, %bb.ad, %bb.ag, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i, %bb.ab, %bb.y
  %.5.ph = phi i8 [ 1, %bb.y ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i ], [ 0, %.lr.ph123 ], [ 0, %bb.ad ], [ 0, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit ], [ %spec.select59, %.critedge ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.083.0132, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.et, %.lcssa113
  br i1 %.not99, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %.critedge.thread, %bb.x, %bb.w, %.preheader
  %.6 = phi i8 [ 1, %.preheader ], [ 0, %bb.x ], [ 0, %bb.w ], [ %.5.ph, %.critedge.thread ]
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i8 %.6, ptr %i.eu, align 8, !tbaa !497
  call void @_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !274
  store i64 %i.ev, ptr %0, align 8, !tbaa !274
  store ptr null, ptr %i.c, align 8, !tbaa !274
  ret void

bb.ah:                                            ; preds = %bb.v, %bb.r
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.r ], [ %i.ca, %bb.v ]
  resume { ptr, i32 } %.pn56.pn
}

declare void @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.207") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !292    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !293
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !276
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !291
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !276
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.z = add i64 %i.d, -8
  %i.aa = sub i64 %i.z, %i.e                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %i.ag
  %bound1 = icmp ult ptr %i.c, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !237, !alias.scope !508, !noalias !506
  %wide.load18 = load <2 x i64>, ptr %i.al, align 8, !tbaa !237, !alias.scope !508, !noalias !506
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !237, !alias.scope !509, !noalias !508
  store <2 x i64> %wide.load18, ptr %i.am, align 8, !tbaa !237, !alias.scope !509, !noalias !508
  %i.an = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !237, !alias.scope !508, !noalias !506
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !237, !alias.scope !508, !noalias !506
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !237, !alias.scope !507, !noalias !506
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !237, !alias.scope !506, !noalias !507
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !237, !alias.scope !507, !noalias !506
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !505

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !292
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.j, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.au = icmp ult i64 %1, %i.g
  br i1 %i.au, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.av
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.aw) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #26
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.av, ptr %i.a, align 8, !tbaa !291
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.53") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !237    ; 2 uses
end_hunk_0
