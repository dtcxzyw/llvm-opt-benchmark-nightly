inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 464
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not220 = icmp eq i64 %i.bd, 8
  br i1 %.not220, label %bb.l, label %.critedge276

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0)
          to label %bb.m unwind label %.loopexit520

bb.m:                                             ; preds = %bb.l
  %i.bf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.n unwind label %.loopexit520

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !26
  %.not221 = icmp eq i8 %i.bh, -28
  br i1 %.not221, label %bb.o, label %.critedge276

.loopexit520:                                     ; preds = %bb.l, %bb.m, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit521 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0)
          to label %bb.p unwind label %.loopexit524

bb.p:                                             ; preds = %bb.o
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.q unwind label %.loopexit524

bb.q:                                             ; preds = %bb.p
  %i.bk = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.bj)
          to label %bb.r unwind label %.loopexit524 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88 ; 2 uses
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !27  ; 5 uses
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !31
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.l, align 8, !tbaa !27
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_.exit

bb.t:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %10, align 8, !tbaa !33   ; 5 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775792
  br i1 %i.bu, label %bb.u, label %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc unwind label %.loopexit.split-lp525

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bv = ashr exact i64 %i.bt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 576460752303423487)
  %i.bz = select i1 %i.bx, i64 576460752303423487, i64 %i.by ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #25
          to label %.noexc307 unwind label %.loopexit524 ; 5 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !31
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bm
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc307, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %.noexc307 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %.noexc307 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31, !alias.scope !34
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc307
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc307 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #26
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.cb, ptr %10, align 8, !tbaa !33
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cg, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !40
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 25)
          to label %.noexc308 unwind label %bb.ac

.noexc308:                                        ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_.exit
  %i.ci = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.w unwind label %bb.y, !noalias !40

bb.w:                                             ; preds = %.noexc308
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !40
  br i1 %i.ci, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.val6.i = load i64, ptr %i.aa, align 8, !tbaa !24, !noalias !40
  %i.cj = icmp eq i64 %.val6.i, 3
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.x
  %.val.i = load ptr, ptr %i.z, align 8, !noalias !40 ; 2 uses
  %i.ck = load i16, ptr %.val.i, align 1
  %i.cl = xor i16 %i.ck, 26989
  %i.cm = getelementptr i8, ptr %.val.i, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 110
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.sink.split.i, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.x
  br label %.sink.split.i

bb.y:                                             ; preds = %.noexc308
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !40
  br label %.body

bb.z:                                             ; preds = %bb.w
  %i.cv = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType9IsNumericEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.noexc309 unwind label %bb.ac

.noexc309:                                        ; preds = %bb.z
  br i1 %i.cv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc309
  %i.cw = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsTemporalEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.noexc310 unwind label %bb.ac

.noexc310:                                        ; preds = %bb.aa
  br i1 %i.cw, label %bb.ab, label %.critedge276

bb.ab:                                            ; preds = %.noexc310, %.noexc309
  %.val8.i = load i64, ptr %i.aa, align 8, !tbaa !24, !noalias !40
  %i.cx = icmp eq i64 %.val8.i, 3
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i: ; preds = %bb.ab
  %.val7.i = load ptr, ptr %i.z, align 8, !noalias !40 ; 2 uses
  %i.cy = load i16, ptr %.val7.i, align 1
  %i.cz = xor i16 %i.cy, 26989
  %i.da = getelementptr i8, ptr %.val7.i, i64 2
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i16
  %i.dd = xor i16 %i.dc, 110
  %i.de = or i16 %i.cz, %i.dd
  %i.df = icmp ne i16 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.sink.split.i, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i, %bb.ab
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %.sink.i9.sink.i = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MinValueCompINS_11StringStatsEEE, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MaxValueCompINS_11StringStatsEEE, i64 16), %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MaxValueCompINS_12NumericStatsEEE, i64 16), %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MinValueCompINS_12NumericStatsEEE, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i ] ; 2 uses
  %i.di = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.ad unwind label %bb.ac     ; 5 uses

.loopexit524:                                     ; preds = %bb.o, %bb.p, %bb.q, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit526 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp525:                            ; preds = %bb.u
  %lpad.loopexit.split-lp527 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.sink.split.i, %bb.aa, %bb.z, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %.sink.split.i
  store ptr %.sink.i9.sink.i, ptr %i.di, align 8, !tbaa !43, !noalias !40
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !45  ; 6 uses
  %i.dl = load ptr, ptr %i.o, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = ptrtoint ptr %i.di to i64
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dn, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %.val.i.i.i = load ptr, ptr %11, align 8, !tbaa !51 ; 10 uses
  %i.do = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.dp = ptrtoint ptr %.val.i.i.i to i64         ; 3 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc312 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp

.noexc312:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %i.dt = icmp eq ptr %i.dk, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dt, i64 1, i64 %i.ds
  %i.du = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ds ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.ds
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 1152921504606846975)
  %i.dx = select i1 %i.dv, i64 1152921504606846975, i64 %i.dw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #25
          to label %.noexc313 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ; 10 uses

.noexc313:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dq
  %i.eb = ptrtoint ptr %i.di to i64
  store i64 %i.eb, ptr %i.ea, align 8, !tbaa !49
  br i1 %i.dt, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc313
  %i.ec = add i64 %i.do, -8
  %i.ed = sub i64 %i.ec, %i.dp                    ; 2 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader910, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dz, i64 8
  %i.eg = add i64 %i.do, -8
  %i.eh = sub i64 %i.eg, %i.dp
  %i.ei = and i64 %i.eh, -8                       ; 2 uses
  %scevgep858 = getelementptr i8, ptr %scevgep, i64 %i.ei
  %scevgep859 = getelementptr i8, ptr %.val.i.i.i, i64 8
  %scevgep860 = getelementptr i8, ptr %scevgep859, i64 %i.ei
  %bound0 = icmp ult ptr %i.dz, %scevgep860
  %bound1 = icmp ult ptr %.val.i.i.i, %scevgep858
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader910, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ef, 4611686018427387900     ; 3 uses
  %i.ej = shl i64 %n.vec, 3                       ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dz, i64 %i.ej  ; 2 uses
  %i.el = getelementptr i8, ptr %.val.i.i.i, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.em = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dz, i64 %i.em ; 2 uses
  %next.gep861 = getelementptr i8, ptr %.val.i.i.i, i64 %i.em ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.en = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep861, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %wide.load862 = load <2 x i64>, ptr %i.en, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %i.eo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  store <2 x i64> %wide.load862, ptr %i.eo, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  %i.ep = getelementptr i8, ptr %next.gep861, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep861, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  store <2 x ptr> splat (ptr null), ptr %i.ep, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader910

.lr.ph.i.i.i.i.i.i.i.preheader910:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.el, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader910, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader910 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader910 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !55, !noalias !52
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !52, !noalias !55
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !55, !noalias !52
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.er, %i.dk
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !65

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc313
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.noexc313 ], [ %i.ek, %middle.block ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.val.i.i.i) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  store ptr %i.dz, ptr %11, align 8, !tbaa !51
  store ptr %i.et, ptr %i.n, align 8, !tbaa !45
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.eu, ptr %i.o, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit529 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp: ; preds = %bb.ag
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup
  %.pre702 = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit
  %i.ev = phi ptr [ %.sink.i9.sink.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %.pre702, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %lpad.phi531 = phi { ptr, i32 } [ %lpad.loopexit529, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %lpad.loopexit.split-lp530, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.di) #23, !inline_history !66
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !25
  %bcmp.i318 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.2, i64 %i.ab)
  %i.ey = icmp eq i32 %bcmp.i318, 0
  br i1 %i.ey, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread, label %.critedge276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319
  %.not.i320 = icmp eq ptr %.sroa.10.0623, %.sroa.15.0622
  br i1 %.not.i320, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  store i64 %storemerge625, ptr %.sroa.10.0623, align 8, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.10.0623, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  %i.fa = ptrtoint ptr %.sroa.10.0623 to i64
  %i.fb = ptrtoint ptr %.sroa.0469.0624 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 5 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775800
  br i1 %i.fd, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc323 unwind label %.loopexit.split-lp

.noexc323:                                        ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EEixEm:bb.a
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !311

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_19PartitionStatisticsELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EEdeEv(ptr nofree readnone returned captures(address_is_null, ret: address, provenance) %.0.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #5

declare void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !326
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !7
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268
  store ptr %i.h, ptr %i.f, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.a, align 8, !tbaa !323
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12emplace_backIJS8_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12emplace_backIJS8_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12emplace_backIJS8_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_20LogicalExpressionGetEJRmNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEELb1ESaISD_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.289") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.6", align 8  ; 4 uses
  %5 = alloca %"class.duckdb::vector.283", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25 ; 11 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !32
  %i.c = load ptr, ptr %2, align 8, !tbaa !327    ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !327
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263  ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !263
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !328
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !323  ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !323
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !326  ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i8 noundef zeroext 28)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit unwind label %bb.b

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb20LogicalExpressionGetE, i64 16), ptr %i.a, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.b, ptr %i.q, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.c, ptr %i.r, align 8, !tbaa !327
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.f, ptr %i.s, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.i, ptr %i.t, align 8, !tbaa !264
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.j, ptr %i.u, align 8, !tbaa !328
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.m, ptr %i.v, align 8, !tbaa !323
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.p, ptr %i.w, align 8, !tbaa !326
  store ptr %i.a, ptr %0, align 8, !tbaa !303
  ret void

bb.b:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalExpressionGetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !303    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20LogicalExpressionGetESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !258

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

_ZN6duckdb10unique_ptrINS_20LogicalExpressionGetESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !300
  store i64 %i.e, ptr %i.b, align 8, !tbaa !300
  store ptr null, ptr %1, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !312
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !313    ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i64, ptr %1, align 8, !tbaa !300
  store i64 %i.t, ptr %i.s, align 8, !tbaa !300
  store ptr null, ptr %1, align 8, !tbaa !300
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.h, -8
  %i.v = sub i64 %i.u, %i.i                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.y = add i64 %i.h, -8
  %i.z = sub i64 %i.y, %i.i
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep4 = getelementptr i8, ptr %i.g, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !300, !alias.scope !341, !noalias !336
  %wide.load6 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !300, !alias.scope !341, !noalias !336
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !300, !alias.scope !344, !noalias !341
  store <2 x i64> %wide.load6, ptr %i.ah, align 8, !tbaa !300, !alias.scope !344, !noalias !341
  %i.ai = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !300, !alias.scope !341, !noalias !336
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !300, !alias.scope !341, !noalias !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !300, !alias.scope !339, !noalias !336
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !300, !alias.scope !336, !noalias !339
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !300, !alias.scope !339, !noalias !336
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !347

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !313
  store ptr %i.an, ptr %i.a, align 8, !tbaa !312
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !335
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_16LogicalDummyScanEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.298") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25 ; 5 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !32
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i8 noundef zeroext 29)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb16LogicalDummyScanE, i64 16), ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.b, ptr %i.c, align 8, !tbaa !348
  store ptr %i.a, ptr %0, align 8, !tbaa !296
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !328    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.g) #23, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !351

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.l = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #26
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !352

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !328
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #26
  br label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #23, !inline_history !353
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !351

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #26
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !327    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #23
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !354

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !327
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #26
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i2, label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i3 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb12StorageIndexEEvPT_(ptr noundef %.0.i.i3), !inline_history !355
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !238

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #26
  br label %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i
end_hunk_1
