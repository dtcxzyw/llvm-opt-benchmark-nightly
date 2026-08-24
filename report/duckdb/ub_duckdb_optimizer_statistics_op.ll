Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_statistics_op?download=true
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
          to label %bb.m unwind label %.loopexit521

bb.m:                                             ; preds = %bb.l
  %i.bf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.n unwind label %.loopexit521

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !26
  %.not221 = icmp eq i8 %i.bh, -28
  br i1 %.not221, label %bb.o, label %.critedge276

.loopexit521:                                     ; preds = %bb.l, %bb.m, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0)
          to label %bb.p unwind label %.loopexit525

bb.p:                                             ; preds = %bb.o
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.q unwind label %.loopexit525

bb.q:                                             ; preds = %bb.p
  %i.bk = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.bj)
          to label %bb.r unwind label %.loopexit525 ; 2 uses

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
          to label %.noexc unwind label %.loopexit.split-lp526

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
          to label %.noexc307 unwind label %.loopexit525 ; 5 uses

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

.loopexit525:                                     ; preds = %bb.o, %bb.p, %bb.q, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit527 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp526:                            ; preds = %bb.u
  %lpad.loopexit.split-lp528 = landingpad { ptr, i32 }
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader908, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dz, i64 8
  %i.eg = add i64 %i.do, -8
  %i.eh = sub i64 %i.eg, %i.dp
  %i.ei = and i64 %i.eh, -8                       ; 2 uses
  %scevgep859 = getelementptr i8, ptr %scevgep, i64 %i.ei
  %scevgep860 = getelementptr i8, ptr %.val.i.i.i, i64 8
  %scevgep861 = getelementptr i8, ptr %scevgep860, i64 %i.ei
  %bound0 = icmp ult ptr %i.dz, %scevgep861
  %bound1 = icmp ult ptr %.val.i.i.i, %scevgep859
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader908, label %vector.ph

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
  %next.gep862 = getelementptr i8, ptr %.val.i.i.i, i64 %i.em ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.en = getelementptr i8, ptr %next.gep862, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep862, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %wide.load863 = load <2 x i64>, ptr %i.en, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %i.eo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  store <2 x i64> %wide.load863, ptr %i.eo, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  %i.ep = getelementptr i8, ptr %next.gep862, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep862, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  store <2 x ptr> splat (ptr null), ptr %i.ep, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader908

.lr.ph.i.i.i.i.i.i.i.preheader908:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.el, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader908, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader908 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader908 ] ; 3 uses
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
  %lpad.loopexit530 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp: ; preds = %bb.ag
  %lpad.loopexit.split-lp531 = landingpad { ptr, i32 }
          cleanup
  %.pre704 = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit
  %35 = phi ptr [ %.sink.i9.sink.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %.pre704, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %lpad.phi532 = phi { ptr, i32 } [ %lpad.loopexit530, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %lpad.loopexit.split-lp531, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %i.ev = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.di) #23, !inline_history !66
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !25
  %bcmp.i318 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.2, i64 %i.ab)
  %i.ex = icmp eq i32 %bcmp.i318, 0
  br i1 %i.ex, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread, label %.critedge276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319
  %.not.i320 = icmp eq ptr %.sroa.10.0624, %.sroa.15.0623
  br i1 %.not.i320, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  store i64 %storemerge626, ptr %.sroa.10.0624, align 8, !tbaa !32
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.10.0624, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  %i.ez = ptrtoint ptr %.sroa.10.0624 to i64
  %i.fa = ptrtoint ptr %.sroa.0469.0625 to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 5 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775800
  br i1 %i.fc, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc323 unwind label %.loopexit.split-lp

.noexc323:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.fd = ashr exact i64 %i.fb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i321 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i321, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i.i.i322 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i322)
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #25
          to label %.noexc324 unwind label %.loopexit521 ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.fb ; 2 uses
  store i64 %storemerge626, ptr %i.fk, align 8, !tbaa !32
  %i.fl = icmp sgt i64 %i.fb, 0
  br i1 %i.fl, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.al:                                            ; preds = %.noexc324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fj, ptr align 8 %.sroa.0469.0625, i64 %i.fb, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.al, %.noexc324
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0469.0625, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0469.0625) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ae
  %.sroa.15.1 = phi ptr [ %.sroa.15.0623, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.15.0623, %bb.ae ], [ %i.fn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15.0623, %bb.ai ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0624, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.10.0624, %bb.ae ], [ %i.fm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ey, %bb.ai ] ; 2 uses
  %.sroa.0469.1 = phi ptr [ %.sroa.0469.0625, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.0469.0625, %bb.ae ], [ %i.fj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0469.0625, %bb.ai ] ; 2 uses
  %i.fo = add nuw i64 %storemerge626, 1           ; 2 uses
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 3
  %.not227 = icmp ult i64 %i.fo, %i.fu
  br i1 %.not227, label %bb.c, label %.critedge277, !llvm.loop !67

.critedge277:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.10.1, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.0469.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.0469.1, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit ] ; 11 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i64 noundef 0)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %.critedge277
  %i.fx = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %.preheader518 unwind label %bb.aq

.preheader518:                                    ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader518, %bb.ay
  %.sroa.0457.0 = phi ptr [ %i.gs, %bb.ay ], [ %i.fx, %.preheader518 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0457.0, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !68
  switch i8 %i.ga, label %.critedge276 [
    i8 1, label %bb.ap
    i8 25, label %bb.ba
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gb = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !88 ; 2 uses
  %.not511630 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not511630, label %.critedge280, label %.lr.ph632

.lr.ph632:                                        ; preds = %bb.ap
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0457.0, i64 40
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an, %.critedge277
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %.lr.ph632, %bb.ax
  %.sroa.0454.0631 = phi ptr [ %i.gb, %.lr.ph632 ], [ %i.gp, %bb.ax ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0454.0631, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !89
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 noundef %i.gg)
          to label %bb.as unwind label %bb.au     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.gi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !26
  %.not271 = icmp eq i8 %i.gk, -28
  br i1 %.not271, label %bb.av, label %.critedge276

bb.au:                                            ; preds = %bb.aw, %bb.av, %bb.as, %bb.ar
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.at
  %i.gm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.gn = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.gm)
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.aw
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0454.0631, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !31
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0454.0631, i64 16 ; 2 uses
  %.not511 = icmp eq ptr %i.gp, %i.gc
  br i1 %.not511, label %.critedge280, label %bb.ar

.critedge280:                                     ; preds = %bb.ax, %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0457.0, i64 16
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 noundef 0)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.critedge280
  %i.gs = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %bb.ao unwind label %bb.az, !llvm.loop !91

bb.az:                                            ; preds = %bb.ay, %.critedge280
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ba:                                            ; preds = %bb.ao
  %i.gu = invoke noundef nonnull align 8 dereferenceable(1104) ptr @_ZN6duckdb15LogicalOperator4CastINS_10LogicalGetEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.0457.0)
          to label %bb.bb unwind label %bb.bc     ; 10 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 576
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !92 ; 2 uses
  %.not229 = icmp eq ptr %i.gw, null
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 1040
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = icmp ne ptr %i.gy, null
  %or.cond = select i1 %.not229, i1 true, i1 %i.gz
  br i1 %or.cond, label %.critedge276, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %bb.bb
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 656
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !188
  store ptr %i.hb, ptr %12, align 8, !tbaa !189
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8
end_hunk_0
