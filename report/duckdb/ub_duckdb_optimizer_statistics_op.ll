inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
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
  %35 = add i64 %i.do, -8
  %36 = sub i64 %35, %i.dp                        ; 2 uses
  %i.ec = lshr i64 %36, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %36, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader909, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dz, i64 8
  %i.ee = add i64 %i.do, -8
  %i.ef = sub i64 %i.ee, %i.dp
  %i.eg = and i64 %i.ef, -8                       ; 2 uses
  %scevgep859 = getelementptr i8, ptr %scevgep, i64 %i.eg
  %scevgep860 = getelementptr i8, ptr %.val.i.i.i, i64 8
  %scevgep861 = getelementptr i8, ptr %scevgep860, i64 %i.eg
  %bound0 = icmp ult ptr %i.dz, %scevgep861
  %bound1 = icmp ult ptr %.val.i.i.i, %scevgep859
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader909, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 4611686018427387900     ; 3 uses
  %i.eh = shl i64 %n.vec, 3                       ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dz, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %.val.i.i.i, i64 %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ek = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dz, i64 %i.ek ; 2 uses
  %next.gep862 = getelementptr i8, ptr %.val.i.i.i, i64 %i.ek ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.el = getelementptr i8, ptr %next.gep862, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep862, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %wide.load863 = load <2 x i64>, ptr %i.el, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %i.em = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  store <2 x i64> %wide.load863, ptr %i.em, align 8, !tbaa !49, !alias.scope !60, !noalias !57
  %i.en = getelementptr i8, ptr %next.gep862, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep862, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  store <2 x ptr> splat (ptr null), ptr %i.en, align 8, !tbaa !49, !alias.scope !57, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader909

.lr.ph.i.i.i.i.i.i.i.preheader909:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ei, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ej, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader909, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader909 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader909 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !55, !noalias !52
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !52, !noalias !55
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !55, !noalias !52
  %i.ep = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.dk
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !65

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc313
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.noexc313 ], [ %i.ei, %middle.block ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.val.i.i.i) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  store ptr %i.dz, ptr %11, align 8, !tbaa !51
  store ptr %i.er, ptr %i.n, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.es, ptr %i.o, align 8, !tbaa !48
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit530 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp: ; preds = %bb.ag
  %lpad.loopexit.split-lp531 = landingpad { ptr, i32 }
          cleanup
  %.pre703 = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit
  %i.et = phi ptr [ %.sink.i9.sink.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %.pre703, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %lpad.phi532 = phi { ptr, i32 } [ %lpad.loopexit530, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %lpad.loopexit.split-lp531, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.di) #23, !inline_history !66
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319: ; preds = %bb.k
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !25
  %bcmp.i318 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.2, i64 %i.ab)
  %i.ew = icmp eq i32 %bcmp.i318, 0
  br i1 %i.ew, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread, label %.critedge276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319
  %.not.i320 = icmp eq ptr %.sroa.10.0624, %.sroa.15.0623
  br i1 %.not.i320, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  store i64 %storemerge626, ptr %.sroa.10.0624, align 8, !tbaa !32
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.10.0624, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319.thread
  %i.ey = ptrtoint ptr %.sroa.10.0624 to i64
  %i.ez = ptrtoint ptr %.sroa.0469.0625 to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 5 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc323 unwind label %.loopexit.split-lp

.noexc323:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i321 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i321, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i322 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i322)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #25
          to label %.noexc324 unwind label %.loopexit521 ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.fa ; 2 uses
  store i64 %storemerge626, ptr %i.fj, align 8, !tbaa !32
  %i.fk = icmp sgt i64 %i.fa, 0
  br i1 %i.fk, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.al:                                            ; preds = %.noexc324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr align 8 %.sroa.0469.0625, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.al, %.noexc324
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0469.0625, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0469.0625) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ae
  %.sroa.15.1 = phi ptr [ %.sroa.15.0623, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.15.0623, %bb.ae ], [ %i.fm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15.0623, %bb.ai ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0624, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.10.0624, %bb.ae ], [ %i.fl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ex, %bb.ai ] ; 2 uses
  %.sroa.0469.1 = phi ptr [ %.sroa.0469.0625, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.0469.0625, %bb.ae ], [ %i.fi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0469.0625, %bb.ai ] ; 2 uses
  %i.fn = add nuw i64 %storemerge626, 1           ; 2 uses
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.fp = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %.not227 = icmp ult i64 %i.fn, %i.ft
  br i1 %.not227, label %bb.c, label %.critedge277, !llvm.loop !67

.critedge277:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.10.1, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.sroa.0469.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.0469.1, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit ] ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 noundef 0)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %.critedge277
  %i.fw = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %.preheader518 unwind label %bb.aq

.preheader518:                                    ; preds = %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader518, %bb.ay
  %.sroa.0457.0 = phi ptr [ %i.gr, %bb.ay ], [ %i.fw, %.preheader518 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0457.0, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
          cleanup
  br label %.body348

.body348:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.eu, %bb.eo
  %eh.lpad-body349 = phi { ptr, i32 } [ %i.on, %bb.eo ], [ %i.oq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.eu ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #23
  br label %bb.ez

bb.ep:                                            ; preds = %bb.el
  %.val304 = load ptr, ptr %i.nu, align 8, !tbaa !49 ; 3 uses
  %.not.i347 = icmp eq ptr %.val304, null
  br i1 %.not.i347, label %bb.eq, label %_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EEptEv.exit, !prof !257

bb.eq:                                            ; preds = %bb.ep
  %i.oo = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.er unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %bb.er
  invoke void @__cxa_throw(ptr nonnull %i.oo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ev unwind label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.eq
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.eu

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0.i.i = phi i1 [ false, %bb.es ], [ true, %bb.er ] ; 2 uses
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.or = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.or) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i, label %bb.eu, label %.body348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i, label %bb.eu, label %.body348

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.op, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.oq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.oo) #23
  br label %.body348

bb.ev:                                            ; preds = %bb.es
  unreachable

_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EEptEv.exit: ; preds = %bb.ep
  %i.ou = load ptr, ptr %.val304, align 8, !tbaa !43
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef zeroext i1 %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %.val304, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %bb.ew unwind label %bb.eo

bb.ew:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_ELb1EEptEv.exit
  br i1 %i.ox, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.oy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %bb.ey unwind label %bb.eo     ; 0 uses

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.oz = add nuw i64 %.0218648, 1                ; 2 uses
  %i.pa = load ptr, ptr %i.hh, align 8, !tbaa !258
  %i.pb = load ptr, ptr %13, align 8, !tbaa !260
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = sdiv exact i64 %i.pe, 40
  %.not244 = icmp ult i64 %i.oz, %i.pf
  br i1 %.not244, label %.lr.ph649, label %.critedge292, !llvm.loop !261

bb.ez:                                            ; preds = %.body348, %bb.en, %bb.em
  %.pn242 = phi { ptr, i32 } [ %eh.lpad-body349, %.body348 ], [ %i.om, %bb.en ], [ %i.ol, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %.body354

bb.fa:                                            ; preds = %bb.el
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %.loopexit515

.critedge292:                                     ; preds = %bb.ey, %.preheader513
  %i.pg = load ptr, ptr %i.nj, align 8, !tbaa !262 ; 3 uses
  %i.ph = load ptr, ptr %i.nk, align 8, !tbaa !263
  %.not.i350 = icmp eq ptr %i.pg, %i.ph
  br i1 %.not.i350, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.critedge292
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %.noexc351 unwind label %bb.eg

.noexc351:                                        ; preds = %bb.fb
  %i.pi = load ptr, ptr %i.nj, align 8, !tbaa !262
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  store ptr %i.pj, ptr %i.nj, align 8, !tbaa !262
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.fc:                                            ; preds = %.critedge292
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.eg

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc351, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.pk = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc353 unwind label %bb.fm ; 6 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %24)
          to label %bb.fd unwind label %bb.fe, !noalias !264

bb.fd:                                            ; preds = %.noexc353
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.pk, ptr noundef nonnull %4)
          to label %bb.fh unwind label %bb.ff, !noalias !264

bb.fe:                                            ; preds = %.noexc353
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !264
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn.i = phi { ptr, i32 } [ %i.pm, %bb.ff ], [ %i.pl, %bb.fe ]
  call void @_ZdlPv(ptr noundef nonnull %i.pk) #26, !noalias !264
  br label %.body354

bb.fh:                                            ; preds = %bb.fd
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.pn = load ptr, ptr %i.nl, align 8, !tbaa !10 ; 6 uses
  %i.po = load ptr, ptr %i.nm, align 8, !tbaa !267
  %.not.i.i356 = icmp eq ptr %i.pn, %i.po
  br i1 %.not.i.i356, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pp = ptrtoint ptr %i.pk to i64
  store i64 %i.pp, ptr %i.pn, align 8, !tbaa !22
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store ptr %i.pq, ptr %i.nl, align 8, !tbaa !10
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.fj:                                            ; preds = %bb.fh
  %i.pr = load ptr, ptr %17, align 8, !tbaa !12   ; 10 uses
  %i.ps = ptrtoint ptr %i.pn to i64               ; 3 uses
  %i.pt = ptrtoint ptr %i.pr to i64               ; 3 uses
  %i.pu = sub i64 %i.ps, %i.pt                    ; 3 uses
  %i.pv = icmp eq i64 %i.pu, 9223372036854775800
  br i1 %i.pv, label %bb.fk, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc362 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit.split-lp

.noexc362:                                        ; preds = %bb.fk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fj
  %i.pw = ashr exact i64 %i.pu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i357 = call i64 @llvm.umax.i64(i64 %i.pw, i64 1)
  %i.px = add nsw i64 %.sroa.speculated.i.i.i.i357, %i.pw ; 2 uses
  %i.py = icmp ult i64 %i.px, %i.pw
  %i.pz = call i64 @llvm.umin.i64(i64 %i.px, i64 1152921504606846975)
  %i.qa = select i1 %i.py, i64 1152921504606846975, i64 %i.pz ; 3 uses
  %.not.i.i.i.i358 = icmp ne i64 %i.qa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i358)
  %i.qb = shl nuw nsw i64 %i.qa, 3
  %i.qc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qb) #25
          to label %.noexc363 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit ; 10 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.pu
  %i.qe = ptrtoint ptr %i.pk to i64
  store i64 %i.qe, ptr %i.qd, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.pr, %i.pn
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i359.preheader

.lr.ph.i.i.i.i.i.i.i359.preheader:                ; preds = %.noexc363
  %37 = add i64 %i.ps, -8
  %38 = sub i64 %37, %i.pt                        ; 2 uses
  %i.qf = lshr i64 %38, 3
  %i.qg = add nuw nsw i64 %i.qf, 1                ; 2 uses
  %min.iters.check874 = icmp ult i64 %38, 56
  br i1 %min.iters.check874, label %.lr.ph.i.i.i.i.i.i.i359.preheader895, label %vector.memcheck865

vector.memcheck865:                               ; preds = %.lr.ph.i.i.i.i.i.i.i359.preheader
  %scevgep866 = getelementptr i8, ptr %i.qc, i64 8
  %i.qh = add i64 %i.ps, -8
  %i.qi = sub i64 %i.qh, %i.pt
  %i.qj = and i64 %i.qi, -8                       ; 2 uses
  %scevgep867 = getelementptr i8, ptr %scevgep866, i64 %i.qj
  %scevgep868 = getelementptr i8, ptr %i.pr, i64 8
  %scevgep869 = getelementptr i8, ptr %scevgep868, i64 %i.qj
  %bound0870 = icmp ult ptr %i.qc, %scevgep869
  %bound1871 = icmp ult ptr %i.pr, %scevgep867
  %found.conflict872 = and i1 %bound0870, %bound1871
  br i1 %found.conflict872, label %.lr.ph.i.i.i.i.i.i.i359.preheader895, label %vector.ph875

vector.ph875:                                     ; preds = %vector.memcheck865
  %n.vec877 = and i64 %i.qg, 4611686018427387900  ; 3 uses
  %i.qk = shl i64 %n.vec877, 3                    ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qc, i64 %i.qk  ; 2 uses
  %i.qm = getelementptr i8, ptr %i.pr, i64 %i.qk
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph875
  %index879 = phi i64 [ 0, %vector.ph875 ], [ %index.next884, %vector.body878 ] ; 2 uses
  %i.qn = shl i64 %index879, 3                    ; 2 uses
  %next.gep880 = getelementptr i8, ptr %i.qc, i64 %i.qn ; 2 uses
  %next.gep881 = getelementptr i8, ptr %i.pr, i64 %i.qn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.qo = getelementptr i8, ptr %next.gep881, i64 16
  %wide.load882 = load <2 x i64>, ptr %next.gep881, align 8, !tbaa !22, !alias.scope !273, !noalias !268
  %wide.load883 = load <2 x i64>, ptr %i.qo, align 8, !tbaa !22, !alias.scope !273, !noalias !268
  %i.qp = getelementptr i8, ptr %next.gep880, i64 16
  store <2 x i64> %wide.load882, ptr %next.gep880, align 8, !tbaa !22, !alias.scope !276, !noalias !273
  store <2 x i64> %wide.load883, ptr %i.qp, align 8, !tbaa !22, !alias.scope !276, !noalias !273
  %i.qq = getelementptr i8, ptr %next.gep881, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep881, align 8, !tbaa !22, !alias.scope !273, !noalias !268
  store <2 x ptr> splat (ptr null), ptr %i.qq, align 8, !tbaa !22, !alias.scope !273, !noalias !268
  %index.next884 = add nuw i64 %index879, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next884, %n.vec877
  br i1 %i.qr, label %middle.block885, label %vector.body878, !llvm.loop !278

middle.block885:                                  ; preds = %vector.body878
  %cmp.n886 = icmp eq i64 %i.qg, %n.vec877
  br i1 %cmp.n886, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i359.preheader895

.lr.ph.i.i.i.i.i.i.i359.preheader895:             ; preds = %vector.memcheck865, %.lr.ph.i.i.i.i.i.i.i359.preheader, %middle.block885
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.qc, %vector.memcheck865 ], [ %i.qc, %.lr.ph.i.i.i.i.i.i.i359.preheader ], [ %i.ql, %middle.block885 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.pr, %vector.memcheck865 ], [ %i.pr, %.lr.ph.i.i.i.i.i.i.i359.preheader ], [ %i.qm, %middle.block885 ]
  br label %.lr.ph.i.i.i.i.i.i.i359

.lr.ph.i.i.i.i.i.i.i359:                          ; preds = %.lr.ph.i.i.i.i.i.i.i359.preheader895, %.lr.ph.i.i.i.i.i.i.i359
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i.i.i359 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i359.preheader895 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i.i.i359 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i359.preheader895 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.qs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !271, !noalias !268
  store i64 %i.qs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !268, !noalias !271
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !271, !noalias !268
  %i.qt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i360 = icmp eq ptr %i.qt, %i.pn
  br i1 %.not.i.i.i.i.i.i.i360, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i359, !llvm.loop !279

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i359, %middle.block885, %.noexc363
  %.0.lcssa.i.i.i.i.i.i.i361 = phi ptr [ %i.qc, %.noexc363 ], [ %i.ql, %middle.block885 ], [ %i.qu, %.lr.ph.i.i.i.i.i.i.i359 ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i361, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.pr) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.fl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.qc, ptr %17, align 8, !tbaa !12
  store ptr %i.qv, ptr %i.nl, align 8, !tbaa !10
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qa
  store ptr %i.qw, ptr %i.nm, align 8, !tbaa !267
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.fi
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.qx = add nuw i64 %.0214651, 1                ; 2 uses
  %i.qy = load ptr, ptr %i.nb, align 8, !tbaa !235
  %i.qz = load ptr, ptr %14, align 8, !tbaa !232
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = sdiv exact i64 %i.rc, 104
  %.not251 = icmp ult i64 %i.qx, %i.rd
  br i1 %.not251, label %bb.dp, label %.critedge296, !llvm.loop !280

.loopexit515:                                     ; preds = %bb.ec, %bb.fa
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.critedge298

bb.fm:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body354

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit.split-lp: ; preds = %bb.fk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371.loopexit.split-lp ]
  %i.rf = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(88) %i.pk) #23, !inline_history !281
  br label %.body354

.body354:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371, %bb.fg, %bb.fm, %bb.ez, %bb.eg
  %.pn245.pn = phi { ptr, i32 } [ %.pn242, %bb.ez ], [ %i.oh, %bb.eg ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit371 ], [ %i.re, %bb.fm ], [ %.pn.i, %bb.fg ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #23
  br label %bb.fn

bb.fn:                                            ; preds = %.body354, %bb.ef, %bb.ee
  %.pn245.pn.pn = phi { ptr, i32 } [ %.pn245.pn, %.body354 ], [ %i.og, %bb.ef ], [ %i.of, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.body345

.critedge296:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %.preheader514, %bb.do
  %i.ri = icmp eq ptr %.sroa.0469.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.ri, label %.loopexit, label %bb.fo

bb.fo:                                            ; preds = %.critedge296
  %i.rj = load ptr, ptr %13, align 8, !tbaa !207  ; 2 uses
  %i.rk = load ptr, ptr %i.hh, align 8, !tbaa !207 ; 2 uses
  %.not509653 = icmp eq ptr %i.rj, %i.rk
  br i1 %.not509653, label %.lr.ph661.preheader, label %.lr.ph657

.lr.ph661.preheader:                              ; preds = %bb.fp, %bb.fo
  %.0215.lcssa = phi i64 [ 0, %bb.fo ], [ %i.rp, %bb.fp ]
  br label %.lr.ph661

.lr.ph657:                                        ; preds = %bb.fo, %bb.fp
  %.0215655 = phi i64 [ %i.rp, %bb.fp ], [ 0, %bb.fo ]
  %.sroa.0430.0654 = phi ptr [ %i.rq, %bb.fp ], [ %i.rj, %bb.fo ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0430.0654, i64 16
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !282
  %.not252 = icmp eq i32 %i.rm, 1
  br i1 %.not252, label %.critedge298, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph657
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0430.0654, i64 8
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = add i64 %i.ro, %.0215655                ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0430.0654, i64 40 ; 2 uses
  %.not509 = icmp eq ptr %i.rq, %i.rk
  br i1 %.not509, label %.lr.ph661.preheader, label %.lr.ph657

.lr.ph661:                                        ; preds = %.lr.ph661.preheader, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit384
  %.sroa.0426.0660 = phi ptr [ %i.sh, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit384 ], [ %.sroa.0469.0.lcssa, %.lr.ph661.preheader ] ; 2 uses
  %i.rr = load i64, ptr %.sroa.0426.0660, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.rs = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %.0215.lcssa)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %bb.fu

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %.lr.ph661
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %29, i64 noundef %i.rs)
          to label %bb.fq unwind label %bb.fu

bb.fq:                                            ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.rt = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc373 unwind label %bb.fv ; 3 uses

.noexc373:                                        ; preds = %bb.fq
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %29) #23, !noalias !287
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.rt, ptr noundef nonnull %3)
          to label %bb.fs unwind label %bb.fr, !noalias !287

bb.fr:                                            ; preds = %.noexc373
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !287
  call void @_ZdlPv(ptr noundef nonnull %i.rt) #26, !noalias !287
  br label %.body374

bb.fs:                                            ; preds = %.noexc373
  store ptr %i.rt, ptr %28, align 8, !tbaa !290, !alias.scope !287
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #23
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_:bb.a
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !7
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267
  store ptr %i.h, ptr %i.f, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.a, align 8, !tbaa !322
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
  %i.c = load ptr, ptr %2, align 8, !tbaa !326    ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !326
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263  ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %3, align 8, !tbaa !327    ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322  ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !322
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !325  ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i8 noundef zeroext 28)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit unwind label %bb.b

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb20LogicalExpressionGetE, i64 16), ptr %i.a, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.b, ptr %i.q, align 8, !tbaa !328
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.c, ptr %i.r, align 8, !tbaa !326
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.f, ptr %i.s, align 8, !tbaa !262
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.i, ptr %i.t, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.j, ptr %i.u, align 8, !tbaa !327
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.m, ptr %i.v, align 8, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.p, ptr %i.w, align 8, !tbaa !325
  store ptr %i.a, ptr %0, align 8, !tbaa !302
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20LogicalExpressionGetESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !257

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !334
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !299
  store i64 %i.e, ptr %i.b, align 8, !tbaa !299
  store ptr null, ptr %1, align 8, !tbaa !299
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !311
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !312    ; 10 uses
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
  %i.t = load i64, ptr %1, align 8, !tbaa !299
  store i64 %i.t, ptr %i.s, align 8, !tbaa !299
  store ptr null, ptr %1, align 8, !tbaa !299
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %2 = add i64 %i.h, -8
  %3 = sub i64 %2, %i.i                           ; 2 uses
  %i.u = lshr i64 %3, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.w = add i64 %i.h, -8
  %i.x = sub i64 %i.w, %i.i
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep4 = getelementptr i8, ptr %i.g, i64 %i.z
  %bound0 = icmp ult ptr %i.r, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !299, !alias.scope !340, !noalias !335
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !299, !alias.scope !340, !noalias !335
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !299, !alias.scope !343, !noalias !340
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !tbaa !299, !alias.scope !343, !noalias !340
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !299, !alias.scope !340, !noalias !335
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !299, !alias.scope !340, !noalias !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !299, !alias.scope !338, !noalias !335
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !299, !alias.scope !335, !noalias !338
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !299, !alias.scope !338, !noalias !335
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !346

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !312
  store ptr %i.al, ptr %i.a, align 8, !tbaa !311
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.am, ptr %i.c, align 8, !tbaa !334
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
  store i64 %i.b, ptr %i.c, align 8, !tbaa !347
  store ptr %i.a, ptr %0, align 8, !tbaa !295
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !327    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.g) #23, !inline_history !349
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !350

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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !351

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !327
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
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #23, !inline_history !352
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 464
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !7  ; 2 uses
  %.not100120 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not100120, label %.critedge.thread, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.y, %.critedge
  %.152122 = phi i8 [ %spec.select, %.critedge ], [ 1, %bb.y ]
  %.sroa.079.0121 = phi ptr [ %i.es, %.critedge ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cl = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.079.0121)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %.not54 = icmp eq i8 %i.cn, 28
  br i1 %.not54, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %.lr.ph123
  %i.co = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.079.0121)
  %i.cp = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.co) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !386
  %.not.not.i.i = icmp eq i64 %i.cr, 0
  %i.cs = load i64, ptr %i.cq, align 8            ; 4 uses
  br i1 %.not.not.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cu = load i64, ptr %i.ct, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.06.0.in.i.i = phi ptr [ %i.bl, %bb.aa ], [ %.sroa.06.0.i.i, %bb.ac ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !387 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !382
  %i.cx = icmp eq i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cu, %i.cz
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.ab, !llvm.loop !388

bb.ad:                                            ; preds = %bb.z
  %i.dc = lshr i64 %i.cs, 32
  %i.dd = xor i64 %i.dc, %i.cs
  %i.de = mul i64 %i.dd, -2960836687051489901     ; 2 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -2960836687051489901     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !89 ; 3 uses
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
  %i.du = load i64, ptr %i.bk, align 8, !tbaa !389 ; 2 uses
  %i.dv = urem i64 %i.dt, %i.du                   ; 2 uses
  %i.dw = load ptr, ptr %i.bj, align 8, !tbaa !390
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !391 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !387 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !392
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.ea = phi i64 [ %.pre.i.i.i.i, %bb.ae ], [ %i.em, %bb.ag ]
  %i.eb = phi ptr [ %i.dz, %bb.ae ], [ %i.ek, %bb.ag ] ; 4 uses
  %i.ec = icmp eq i64 %i.dt, %i.ea
  br i1 %i.ec, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i: ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !382
  %i.ef = icmp eq i64 %i.cs, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp eq i64 %i.dj, %i.eh
  %i.ej = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %i.ej, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.af
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !387 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not18.i.i.i.i, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !392 ; 2 uses
  %i.en = urem i64 %i.em, %i.du
  %.not19.i.i.i.i = icmp eq i64 %i.en, %i.dv
  br i1 %.not19.i.i.i.i, label %bb.af, label %.critedge.thread, !llvm.loop !394

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.ac
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ac ], [ %i.eb, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !248
  %.not101 = icmp eq ptr %i.ep, null
  br i1 %.not101, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %i.eq = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
  %i.er = call noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) ; 2 uses
  %spec.select = select i1 %i.er, i8 0, i8 %.152122 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.079.0121, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.es, %i.ck
  %or.cond = select i1 %i.er, i1 true, i1 %.not100
  br i1 %or.cond, label %.critedge.thread, label %.lr.ph123

.critedge.thread:                                 ; preds = %.critedge, %.lr.ph123, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, %bb.ad, %bb.ag, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i, %bb.ab, %bb.y
  %.5.ph = phi i8 [ 1, %bb.y ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i ], [ 0, %.lr.ph123 ], [ 0, %bb.ad ], [ 0, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit ], [ %spec.select, %.critedge ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.083.0132, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.et, %.lcssa113
  br i1 %.not99, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %.critedge.thread, %bb.x, %bb.w, %.preheader
  %.6 = phi i8 [ 1, %.preheader ], [ 0, %bb.x ], [ 0, %bb.w ], [ %.5.ph, %.critedge.thread ]
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i8 %.6, ptr %i.eu, align 8, !tbaa !395
  call void @_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !356
  store i64 %i.ev, ptr %0, align 8, !tbaa !356
  store ptr null, ptr %i.c, align 8, !tbaa !356
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !397    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !398
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !357
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !396
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !357
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !248, !alias.scope !404, !noalias !399
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !248, !alias.scope !404, !noalias !399
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !248, !alias.scope !407, !noalias !404
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !248, !alias.scope !407, !noalias !404
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !248, !alias.scope !404, !noalias !399
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !248, !alias.scope !404, !noalias !399
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !402, !noalias !399
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !399, !noalias !402
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !402, !noalias !399
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !410

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !397
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !396
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !398
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !248 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.au) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #26
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !411

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !396
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !248    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !257

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

declare void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.53") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !396
  %i.e = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_12LogicalLimitERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !504
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.g = call noundef i64 @_ZNK6duckdb14BoundLimitNode16GetConstantValueEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %i.h = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25, !noalias !508 ; 5 uses
  store i8 1, ptr %i.h, align 8, !tbaa !413, !noalias !508
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.g, ptr %i.i, align 8, !tbaa !418, !noalias !508
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 1, ptr %i.j, align 8, !tbaa !417, !noalias !508
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !419, !noalias !508
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %storemerge = phi ptr [ %i.h, %bb.b ], [ null, %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !356
  ret void
}

declare noundef i64 @_ZNK6duckdb14BoundLimitNode16GetConstantValueEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_21LogicalComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::BoundLimitNode", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::BoundLimitNode", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 14 uses
  %6 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 14 uses
  %7 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.444", align 8 ; 10 uses
  %10 = alloca %"struct.duckdb::BoundLimitNode", align 8 ; 6 uses
  %11 = alloca %"struct.duckdb::BoundLimitNode", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 7 uses
  %14 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 4 uses
  %15 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 4 uses
  %16 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 7 uses
  %17 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.93", align 8 ; 4 uses
  %19 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 10 uses
  %20 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !511
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !514
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit202.jt0
  %.0241 = phi i64 [ 0, %.lr.ph ], [ %i.lv, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit202.jt0 ] ; 9 uses
  %i.o = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.0241) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !248
  %i.r = icmp ne ptr %i.q, null
  %i.s = load ptr, ptr %6, align 8
  %i.t = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !515
  switch i8 %i.v, label %bb.m [
    i8 37, label %bb.e
    i8 40, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.w)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.y)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.z, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.thread.jt0, label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.l:                                             ; preds = %bb.by, %bb.bx, %bb.bw, %bb.i, %bb.h, %bb.f, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.m:                                             ; preds = %bb.d, %bb.j, %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %.loopexit294

bb.n:                                             ; preds = %bb.m
  %i.ad = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %.loopexit294

bb.o:                                             ; preds = %bb.n
  %i.ae = load i8, ptr %i.u, align 8, !tbaa !515
  %i.af = invoke noundef zeroext i8 @_ZN6duckdb20StatisticsPropagator19PropagateComparisonERNS_14BaseStatisticsES2_NS_14ExpressionTypeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %i.ad, i8 noundef zeroext %i.ae)
          to label %bb.p unwind label %.loopexit294

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.ag)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !396 ; 6 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !398
  %.not.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.r
  %i.aj = load i64, ptr %7, align 8, !tbaa !248
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !248
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !397 ; 10 uses
  %i.am = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
          to label %.noexc103 unwind label %.loopexit ; 10 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = load i64, ptr %7, align 8, !tbaa !248
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !248
  store ptr null, ptr %7, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc103
  %21 = add i64 %i.am, -8
  %22 = sub i64 %21, %i.an                        ; 2 uses
  %i.az = lshr i64 %22, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %22, 56
  br i1 %min.iters.check317, label %.lr.ph.i.i.i.i.i.i.i.preheader333, label %vector.memcheck308

vector.memcheck308:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep309 = getelementptr i8, ptr %i.aw, i64 8
  %i.bb = add i64 %i.am, -8
  %i.bc = sub i64 %i.bb, %i.an
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.bd
  %scevgep311 = getelementptr i8, ptr %i.al, i64 8
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.bd
  %bound0313 = icmp ult ptr %i.aw, %scevgep312
  %bound1314 = icmp ult ptr %i.al, %scevgep310
  %found.conflict315 = and i1 %bound0313, %bound1314
  br i1 %found.conflict315, label %.lr.ph.i.i.i.i.i.i.i.preheader333, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck308
  %n.vec320 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.be = shl i64 %n.vec320, 3                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.al, i64 %i.be
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph318
  %index322 = phi i64 [ 0, %vector.ph318 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.bh = shl i64 %index322, 3                    ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.aw, i64 %i.bh ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.al, i64 %i.bh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bi = getelementptr i8, ptr %next.gep324, i64 16
  %wide.load325 = load <2 x i64>, ptr %next.gep324, align 8, !tbaa !248, !alias.scope !522, !noalias !517
  %wide.load326 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !248, !alias.scope !522, !noalias !517
  %i.bj = getelementptr i8, ptr %next.gep323, i64 16
  store <2 x i64> %wide.load325, ptr %next.gep323, align 8, !tbaa !248, !alias.scope !525, !noalias !522
  store <2 x i64> %wide.load326, ptr %i.bj, align 8, !tbaa !248, !alias.scope !525, !noalias !522
  %i.bk = getelementptr i8, ptr %next.gep324, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep324, align 8, !tbaa !248, !alias.scope !522, !noalias !517
  store <2 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !248, !alias.scope !522, !noalias !517
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.bl, label %middle.block328, label %vector.body321, !llvm.loop !527

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.ba, %n.vec320
  br i1 %cmp.n329, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader333

.lr.ph.i.i.i.i.i.i.i.preheader333:                ; preds = %vector.memcheck308, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block328
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck308 ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block328 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck308 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block328 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader333, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader333 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader333 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !520, !noalias !517
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !517, !noalias !520
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !520, !noalias !517
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !528

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block328, %.noexc103
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc103 ], [ %i.bf, %middle.block328 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.u
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !397
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !396
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bq, ptr %i.g, align 8, !tbaa !398
  %.pr = load ptr, ptr %7, align 8, !tbaa !248    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.br = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.br)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !396 ; 6 uses
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !398
  %.not.i.i104 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i104, label %bb.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119.thread: ; preds = %bb.w
  %i.bu = load i64, ptr %8, align 8, !tbaa !248
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !248
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !397 ; 10 uses
  %i.bx = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc117 unwind label %.loopexit.split-lp221

.noexc117:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105: ; preds = %bb.x
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i106, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #25
          to label %.noexc118 unwind label %.loopexit220 ; 10 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  %i.cj = load i64, ptr %8, align 8, !tbaa !248
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !248
  store ptr null, ptr %8, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i108 = icmp eq ptr %i.bw, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i108, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i109.preheader

.lr.ph.i.i.i.i.i.i.i109.preheader:                ; preds = %.noexc118
  %23 = add i64 %i.bx, -8
  %24 = sub i64 %23, %i.by                        ; 2 uses
  %i.ck = lshr i64 %24, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i109.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i109.preheader
  %scevgep = getelementptr i8, ptr %i.ch, i64 8
  %i.cm = add i64 %i.bx, -8
  %i.cn = sub i64 %i.cm, %i.by
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %scevgep302 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep303 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.co
  %bound0 = icmp ult ptr %i.ch, %scevgep304
  %bound1 = icmp ult ptr %i.bw, %scevgep302
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i109.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cs ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bw, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ct = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep305, align 8, !tbaa !248, !alias.scope !534, !noalias !529
  %wide.load306 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !248, !alias.scope !534, !noalias !529
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !248, !alias.scope !537, !noalias !534
  store <2 x i64> %wide.load306, ptr %i.cu, align 8, !tbaa !248, !alias.scope !537, !noalias !534
  %i.cv = getelementptr i8, ptr %next.gep305, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep305, align 8, !tbaa !248, !alias.scope !534, !noalias !529
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !248, !alias.scope !534, !noalias !529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i109.preheader332

.lr.ph.i.i.i.i.i.i.i109.preheader332:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i109.preheader, %middle.block
  %.012.i.i.i.i.i.i.i110.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i109.preheader ], [ %i.cq, %middle.block ]
  %.0911.i.i.i.i.i.i.i111.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i109.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i109:                          ; preds = %.lr.ph.i.i.i.i.i.i.i109.preheader332, %.lr.ph.i.i.i.i.i.i.i109
  %.012.i.i.i.i.i.i.i110 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i109 ], [ %.012.i.i.i.i.i.i.i110.ph, %.lr.ph.i.i.i.i.i.i.i109.preheader332 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i111 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i109 ], [ %.0911.i.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i.i109.preheader332 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i.i111, align 8, !tbaa !248, !alias.scope !532, !noalias !529
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i.i110, align 8, !tbaa !248, !alias.scope !529, !noalias !532
  store ptr null, ptr %.0911.i.i.i.i.i.i.i111, align 8, !tbaa !248, !alias.scope !532, !noalias !529
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i111, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i110, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i112 = icmp eq ptr %i.cy, %i.bs
  br i1 %.not.i.i.i.i.i.i.i112, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i.i109, !llvm.loop !540

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i.i109, %middle.block, %.noexc118
  %.0.lcssa.i.i.i.i.i.i.i114 = phi ptr [ %i.ch, %.noexc118 ], [ %i.cq, %middle.block ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i109 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i114, i64 8
  %.not.i23.i.i.i115 = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i113, %bb.z
  store ptr %i.ch, ptr %i.e, align 8, !tbaa !397
  store ptr %i.da, ptr %i.f, align 8, !tbaa !396
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.db, ptr %i.g, align 8, !tbaa !398
  %.pr204 = load ptr, ptr %8, align 8, !tbaa !248 ; 3 uses
  %.not.i120 = icmp eq ptr %.pr204, null
  br i1 %.not.i120, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i121

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i121: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr204) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr204) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit119, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  switch i8 %i.af, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit [
    i8 4, label %bb.ag
    i8 2, label %bb.ag
    i8 1, label %bb.am
  ]

.loopexit294:                                     ; preds = %bb.m, %bb.n, %bb.o, %bb.ap
  %lpad.loopexit296 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp295:                            ; preds = %.invoke300, %.invoke, %bb.ah, %bb.ai, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, %bb.as, %bb.at
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.aa:                                            ; preds = %bb.q, %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ab ], [ %i.dc, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cx

bb.ad:                                            ; preds = %bb.v, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit220:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i105
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp221:                            ; preds = %bb.y
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp221, %.loopexit220
  %lpad.phi224 = phi { ptr, i32 } [ %lpad.loopexit222, %.loopexit220 ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp221 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn84 = phi { ptr, i32 } [ %lpad.phi224, %bb.ae ], [ %i.dd, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cx

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit122
  %i.de = load i8, ptr %i.i, align 1, !tbaa !541
  switch i8 %i.de, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit [
    i8 9, label %.invoke
    i8 5, label %.invoke
    i8 3, label %.invoke
    i8 2, label %bb.al
    i8 1, label %.invoke300
    i8 10, label %bb.ah
    i8 6, label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit
  ]

.invoke:                                          ; preds = %bb.ar, %bb.ar, %bb.ag, %bb.ag, %bb.ag, %.invoke300
  %i.df = phi ptr [ %i.ea, %.invoke300 ], [ %2, %bb.ag ], [ %2, %bb.ag ], [ %2, %bb.ag ], [ %2, %bb.ar ], [ %2, %bb.ar ]
  invoke void @_ZN6duckdb20StatisticsPropagator22ReplaceWithEmptyResultERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.thread.jt1 unwind label %.loopexit.split-lp295

bb.ah:                                            ; preds = %bb.ag
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.ai unwind label %.loopexit.split-lp295 ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %bb.aj unwind label %.loopexit.split-lp295 ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !299
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr null, ptr %i.dg, align 8, !tbaa !299
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !299
  store ptr null, ptr %i.dh, align 8, !tbaa !299
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !299 ; 3 uses
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !299
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.dl) #23, !inline_history !544
end_hunk_4
begin_hunk_5_@_ZN6duckdb20StatisticsPropagator25CreateFilterFromJoinStatsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERNS1_INS_10ExpressionES3_IS7_ELb1EEERKNS_14BaseStatisticsESD_:bb.a
          cleanup
  br label %bb.bm

bb.t:                                             ; preds = %bb.w, %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.u:                                             ; preds = %bb.k, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit68

bb.v:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(104) %i.p) #23, !inline_history !565
  br label %.body

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i64: ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(152) %i.n) #23, !inline_history !293
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit62, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i64, %bb.v, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.av, %bb.v ], [ %i.ba, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i64 ], [ %i.z, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i ], [ %i.aw, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit62 ] ; 2 uses
  %i.be = load ptr, ptr %16, align 8, !tbaa !22   ; 3 uses
  %.not.i66 = icmp eq ptr %i.be, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit68, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i67

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i67: ; preds = %.body
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(88) %i.be) #23, !inline_history !281
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit68

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit68: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i67, %.body, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.u ], [ %.pn.pn, %.body ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bl

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.i
  %i.bi = phi ptr [ %i.ai, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.i ] ; 8 uses
  %i.bj = phi ptr [ %i.al, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.i ] ; 4 uses
  %i.bk = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %bb.w
  br i1 %i.bk, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.bl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.z unwind label %bb.ai      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(88) %i.bl)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bp = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc69 unwind label %bb.aj  ; 5 uses

.noexc69:                                         ; preds = %bb.aa
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %14) #23, !noalias !566
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.bp, ptr noundef nonnull %7)
          to label %bb.ac unwind label %bb.ab, !noalias !566

bb.ab:                                            ; preds = %.noexc69
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23, !noalias !566
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #26, !noalias !566
  br label %.body70

bb.ac:                                            ; preds = %.noexc69
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.br = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc84 unwind label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i117 ; 5 uses

.noexc84:                                         ; preds = %bb.ac
  %i.bs = load i64, ptr %17, align 8, !tbaa !22, !noalias !569
  store i64 %i.bs, ptr %5, align 8, !tbaa !22, !noalias !569
  store ptr null, ptr %17, align 8, !tbaa !22, !noalias !569
  store ptr %i.bp, ptr %6, align 8, !tbaa !563, !noalias !569
  invoke void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104) %i.br, i8 noundef zeroext 29, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.ad unwind label %bb.ae, !noalias !569

bb.ad:                                            ; preds = %.noexc84
  %i.bt = load ptr, ptr %6, align 8, !tbaa !22, !noalias !569 ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i79, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i81, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i80: ; preds = %bb.ad
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43, !noalias !569
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !569
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %i.bt) #23, !noalias !569, !inline_history !564
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i81

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i81: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i80, %bb.ad
  %i.bx = load ptr, ptr %5, align 8, !tbaa !22, !noalias !569 ; 3 uses
  %.not.i5.i82 = icmp eq ptr %i.bx, null
  br i1 %.not.i5.i82, label %bb.af, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i83

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i83: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i81
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43, !noalias !569
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !569
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(88) %i.bx) #23, !noalias !569, !inline_history !564
  br label %bb.af

bb.ae:                                            ; preds = %.noexc84
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %6, align 8, !tbaa !22, !noalias !569 ; 3 uses
  %.not.i8.i73 = icmp eq ptr %i.cc, null
  br i1 %.not.i8.i73, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i75, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i74

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i74: ; preds = %bb.ae
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !43, !noalias !569
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !569
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %i.cc) #23, !noalias !569, !inline_history !564
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i75

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i75: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i74, %bb.ae
  %i.cg = load ptr, ptr %5, align 8, !tbaa !22, !noalias !569 ; 3 uses
  %.not.i11.i76 = icmp eq ptr %i.cg, null
  br i1 %.not.i11.i76, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i78, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i77

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i77: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i75
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43, !noalias !569
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !569
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(88) %i.cg) #23, !noalias !569, !inline_history !564
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i78

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i78: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i77, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i75
  call void @_ZdlPv(ptr noundef nonnull %i.br) #26, !noalias !569
  br label %.body70

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i81, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cm = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.cn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i89

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc101 unwind label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit115

.noexc101:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.af
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i90 = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i90, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i91)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25
          to label %.noexc102 unwind label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit115 ; 8 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i89
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store ptr %i.br, ptr %i.cx, align 8, !tbaa !563
  %.not10.i.i.i.i.i.i92 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not10.i.i.i.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97, label %.lr.ph.i.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i.i93.preheader:                   ; preds = %.noexc102
  %23 = add i64 %i.cm, -8
  %24 = sub i64 %23, %i.cn                        ; 2 uses
  %i.cy = lshr i64 %24, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i93.preheader296, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i93.preheader
  %n.vec = and i64 %i.cz, 4611686018427387900     ; 3 uses
  %i.da = shl i64 %n.vec, 3                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.bi, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dd ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.bi, i64 %i.dd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.de = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep249, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  %wide.load250 = load <2 x i64>, ptr %i.de, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !22, !alias.scope !572, !noalias !575
  store <2 x i64> %wide.load250, ptr %i.df, align 8, !tbaa !22, !alias.scope !572, !noalias !575
  %i.dg = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep249, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  store <2 x ptr> splat (ptr null), ptr %i.dg, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97, label %.lr.ph.i.i.i.i.i.i93.preheader296

.lr.ph.i.i.i.i.i.i93.preheader296:                ; preds = %.lr.ph.i.i.i.i.i.i93.preheader, %middle.block
  %.012.i.i.i.i.i.i94.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i93.preheader ], [ %i.db, %middle.block ]
  %.0911.i.i.i.i.i.i95.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i93.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i93

.lr.ph.i.i.i.i.i.i93:                             ; preds = %.lr.ph.i.i.i.i.i.i93.preheader296, %.lr.ph.i.i.i.i.i.i93
  %.012.i.i.i.i.i.i94 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i93 ], [ %.012.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i93.preheader296 ] ; 2 uses
  %.0911.i.i.i.i.i.i95 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i93 ], [ %.0911.i.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i.i93.preheader296 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.di = load i64, ptr %.0911.i.i.i.i.i.i95, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  store i64 %i.di, ptr %.012.i.i.i.i.i.i94, align 8, !tbaa !22, !alias.scope !572, !noalias !575
  store ptr null, ptr %.0911.i.i.i.i.i.i95, align 8, !tbaa !22, !alias.scope !575, !noalias !572
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i95, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i94, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i96 = icmp eq ptr %i.dj, %i.bj
  br i1 %.not.i.i.i.i.i.i96, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97, label %.lr.ph.i.i.i.i.i.i93, !llvm.loop !578

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97: ; preds = %.lr.ph.i.i.i.i.i.i93, %middle.block, %.noexc102
  %.0.lcssa.i.i.i.i.i.i98 = phi ptr [ %i.cw, %.noexc102 ], [ %i.db, %middle.block ], [ %i.dk, %.lr.ph.i.i.i.i.i.i93 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i98, i64 8 ; 2 uses
  %.not.i23.i.i99 = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i99, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit109, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #26
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit109

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit109: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i97, %bb.ah
  store ptr %i.cw, ptr %15, align 8, !tbaa !12
  store ptr %i.dl, ptr %i.ck, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dm, ptr %i.cl, align 8, !tbaa !267
  %.pre = load ptr, ptr %17, align 8, !tbaa !22   ; 3 uses
  %.not.i110 = icmp eq ptr %.pre, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit109
  %i.dn = load ptr, ptr %.pre, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(88) %.pre) #23, !inline_history !281
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit109, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ak

bb.ai:                                            ; preds = %bb.z, %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit121

bb.aj:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body70

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit115: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i89, %bb.ag
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(104) %i.br) #23, !inline_history !565
  br label %.body70

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i117: ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(152) %i.bp) #23, !inline_history !293
  br label %.body70

.body70:                                          ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i78, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit115, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i117, %bb.aj, %bb.ab
  %.pn38.pn = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.dr, %bb.aj ], [ %i.dw, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i117 ], [ %i.cb, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i78 ], [ %i.ds, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit115 ] ; 2 uses
  %i.ea = load ptr, ptr %17, align 8, !tbaa !22   ; 3 uses
  %.not.i119 = icmp eq ptr %i.ea, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit121, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i120

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i120: ; preds = %.body70
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(88) %i.ea) #23, !inline_history !281
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit121

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit121: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i120, %.body70, %bb.ai
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ai ], [ %.pn38.pn, %.body70 ], [ %.pn38.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bl

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112, %bb.x
  %.pre212 = phi ptr [ %i.dl, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112 ], [ %i.bj, %bb.x ] ; 3 uses
  %.pre211 = phi ptr [ %i.cw, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112 ], [ %i.bi, %bb.x ] ; 5 uses
  %i.ee = icmp eq ptr %.pre211, %.pre212
  br i1 %i.ee, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.ef = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %.noexc122 unwind label %bb.as ; 3 uses

.noexc122:                                        ; preds = %bb.al
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ef)
          to label %bb.an unwind label %bb.am, !noalias !579

bb.am:                                            ; preds = %.noexc122
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #26, !noalias !579
  br label %.body123

bb.an:                                            ; preds = %.noexc122
  store ptr %i.ef, ptr %18, align 8, !tbaa !582, !alias.scope !579
  %i.eh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ao unwind label %bb.at     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !311 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !334
  %.not.i125 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i125, label %bb.ap, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.ao
  %i.en = load i64, ptr %1, align 8, !tbaa !299
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !299
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !311
  %i.ep = load ptr, ptr %18, align 8, !tbaa !582
  store ptr null, ptr %18, align 8, !tbaa !582
  store ptr %i.ep, ptr %1, align 8, !tbaa !299
  br label %.lr.ph.preheader

bb.ap:                                            ; preds = %bb.ao
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !312 ; 10 uses
  %i.er = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.es = ptrtoint ptr %i.eq to i64               ; 3 uses
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.aq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc135 unwind label %bb.at

.noexc135:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i126, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i127 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i127)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #25
          to label %.noexc136 unwind label %bb.at ; 10 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et
  %i.fd = load i64, ptr %1, align 8, !tbaa !299
  store i64 %i.fd, ptr %i.fc, align 8, !tbaa !299
  store ptr null, ptr %1, align 8, !tbaa !299
  %.not10.i.i.i.i.i.i128 = icmp eq ptr %i.eq, %i.ek
  br i1 %.not10.i.i.i.i.i.i128, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i129.preheader:                  ; preds = %.noexc136
  %25 = add i64 %i.er, -8
  %26 = sub i64 %25, %i.es                        ; 2 uses
  %i.fe = lshr i64 %26, 3
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check254 = icmp ult i64 %26, 152
  br i1 %min.iters.check254, label %.lr.ph.i.i.i.i.i.i129.preheader294, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i129.preheader
  %i.fg = add i64 %i.er, -8
  %i.fh = sub i64 %i.fg, %i.es
  %i.fi = and i64 %i.fh, -8
  %i.fj = add i64 %i.fi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fb, i64 %i.fj
  %scevgep252 = getelementptr i8, ptr %i.eq, i64 %i.fj
  %bound0 = icmp ult ptr %i.fb, %scevgep252
  %bound1 = icmp ult ptr %i.eq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i129.preheader294, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck
  %n.vec257 = and i64 %i.ff, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec257, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fb, i64 %i.fk  ; 2 uses
  %i.fm = getelementptr i8, ptr %i.eq, i64 %i.fk
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph255
  %index259 = phi i64 [ 0, %vector.ph255 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.fn = shl i64 %index259, 3                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.fb, i64 %i.fn ; 2 uses
  %next.gep261 = getelementptr i8, ptr %i.eq, i64 %i.fn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.fo = getelementptr i8, ptr %next.gep261, i64 16
  %wide.load262 = load <2 x i64>, ptr %next.gep261, align 8, !tbaa !299, !alias.scope !589, !noalias !584
  %wide.load263 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !299, !alias.scope !589, !noalias !584
  %i.fp = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x i64> %wide.load262, ptr %next.gep260, align 8, !tbaa !299, !alias.scope !592, !noalias !589
  store <2 x i64> %wide.load263, ptr %i.fp, align 8, !tbaa !299, !alias.scope !592, !noalias !589
  %i.fq = getelementptr i8, ptr %next.gep261, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep261, align 8, !tbaa !299, !alias.scope !589, !noalias !584
  store <2 x ptr> splat (ptr null), ptr %i.fq, align 8, !tbaa !299, !alias.scope !589, !noalias !584
  %index.next264 = add nuw i64 %index259, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.fr, label %middle.block265, label %vector.body258, !llvm.loop !594

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.ff, %n.vec257
  br i1 %cmp.n266, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i129.preheader294

.lr.ph.i.i.i.i.i.i129.preheader294:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i129.preheader, %middle.block265
  %.012.i.i.i.i.i.i130.ph = phi ptr [ %i.fb, %vector.memcheck ], [ %i.fb, %.lr.ph.i.i.i.i.i.i129.preheader ], [ %i.fl, %middle.block265 ]
  %.0911.i.i.i.i.i.i131.ph = phi ptr [ %i.eq, %vector.memcheck ], [ %i.eq, %.lr.ph.i.i.i.i.i.i129.preheader ], [ %i.fm, %middle.block265 ]
  br label %.lr.ph.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i129:                            ; preds = %.lr.ph.i.i.i.i.i.i129.preheader294, %.lr.ph.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i130 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i129.preheader294 ] ; 2 uses
  %.0911.i.i.i.i.i.i131 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i129.preheader294 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.fs = load i64, ptr %.0911.i.i.i.i.i.i131, align 8, !tbaa !299, !alias.scope !587, !noalias !584
  store i64 %i.fs, ptr %.012.i.i.i.i.i.i130, align 8, !tbaa !299, !alias.scope !584, !noalias !587
  store ptr null, ptr %.0911.i.i.i.i.i.i131, align 8, !tbaa !299, !alias.scope !587, !noalias !584
  %i.ft = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.ft, %i.ek
  br i1 %.not.i.i.i.i.i.i132, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i129, !llvm.loop !595

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129, %middle.block265, %.noexc136
  %.0.lcssa.i.i.i.i.i.i133 = phi ptr [ %i.fb, %.noexc136 ], [ %i.fl, %middle.block265 ], [ %i.fu, %.lr.ph.i.i.i.i.i.i129 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i133, i64 8
  %.not.i23.i.i134 = icmp eq ptr %i.eq, null
  br i1 %.not.i23.i.i134, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eq) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.ar
  store ptr %i.fb, ptr %i.ei, align 8, !tbaa !312
  store ptr %i.fv, ptr %i.ej, align 8, !tbaa !311
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  store ptr %i.fw, ptr %i.el, align 8, !tbaa !334
  %.pr = load ptr, ptr %1, align 8, !tbaa !299    ; 3 uses
  %i.fx = load ptr, ptr %18, align 8, !tbaa !582
  store ptr null, ptr %18, align 8, !tbaa !582
  store ptr %i.fx, ptr %1, align 8, !tbaa !299
  %.not.i.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.preheader, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.fy = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr) #23, !inline_history !304
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.gb = load ptr, ptr %0, align 8, !tbaa !596
  invoke void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %19, ptr noundef nonnull align 1 %i.gb, i1 noundef zeroext false)
          to label %bb.az unwind label %bb.bf

bb.as:                                            ; preds = %bb.al
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.at:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.aq, %bb.an
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %.sroa.0171.0207 = phi ptr [ %i.hs, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ %.pre211, %.lr.ph.preheader ] ; 5 uses
  %i.ge = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.au unwind label %.loopexit ; 3 uses

bb.au:                                            ; preds = %.lr.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 48 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !10 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 56 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !267
  %.not.i138 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not.i138, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = load i64, ptr %.sroa.0171.0207, align 8, !tbaa !22
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !22
  store ptr null, ptr %.sroa.0171.0207, align 8, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !10
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.aw:                                            ; preds = %bb.au
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !12 ; 10 uses
  %i.gn = ptrtoint ptr %i.gh to i64               ; 3 uses
  %i.go = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %bb.ax, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i139

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc150 unwind label %.loopexit.split-lp

.noexc150:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i139: ; preds = %bb.aw
  %i.gr = ashr exact i64 %i.gp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i140, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gs, i64 1152921504606846975)
  %i.gv = select i1 %i.gt, i64 1152921504606846975, i64 %i.gu ; 3 uses
  %.not.i.i.i141 = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %.not.i.i.i141)
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #25
          to label %.noexc151 unwind label %.loopexit ; 10 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i139
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp
  %i.gz = load i64, ptr %.sroa.0171.0207, align 8, !tbaa !22
  store i64 %i.gz, ptr %i.gy, align 8, !tbaa !22
  store ptr null, ptr %.sroa.0171.0207, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i142 = icmp eq ptr %i.gm, %i.gh
  br i1 %.not10.i.i.i.i.i.i142, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147, label %.lr.ph.i.i.i.i.i.i143.preheader

.lr.ph.i.i.i.i.i.i143.preheader:                  ; preds = %.noexc151
  %27 = add i64 %i.gn, -8
  %28 = sub i64 %27, %i.go                        ; 2 uses
  %i.ha = lshr i64 %28, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check278 = icmp ult i64 %28, 56
  br i1 %min.iters.check278, label %.lr.ph.i.i.i.i.i.i143.preheader293, label %vector.memcheck269

vector.memcheck269:                               ; preds = %.lr.ph.i.i.i.i.i.i143.preheader
  %scevgep270 = getelementptr i8, ptr %i.gx, i64 8
  %i.hc = add i64 %i.gn, -8
  %i.hd = sub i64 %i.hc, %i.go
  %i.he = and i64 %i.hd, -8                       ; 2 uses
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.he
  %scevgep272 = getelementptr i8, ptr %i.gm, i64 8
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.he
  %bound0274 = icmp ult ptr %i.gx, %scevgep273
  %bound1275 = icmp ult ptr %i.gm, %scevgep271
  %found.conflict276 = and i1 %bound0274, %bound1275
  br i1 %found.conflict276, label %.lr.ph.i.i.i.i.i.i143.preheader293, label %vector.ph279

vector.ph279:                                     ; preds = %vector.memcheck269
  %n.vec281 = and i64 %i.hb, 4611686018427387900  ; 3 uses
  %i.hf = shl i64 %n.vec281, 3                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gx, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gm, i64 %i.hf
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph279
  %index283 = phi i64 [ 0, %vector.ph279 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.hi = shl i64 %index283, 3                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.gx, i64 %i.hi ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.gm, i64 %i.hi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.hj = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286 = load <2 x i64>, ptr %next.gep285, align 8, !tbaa !22, !alias.scope !602, !noalias !597
  %wide.load287 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !22, !alias.scope !602, !noalias !597
  %i.hk = getelementptr i8, ptr %next.gep284, i64 16
  store <2 x i64> %wide.load286, ptr %next.gep284, align 8, !tbaa !22, !alias.scope !605, !noalias !602
  store <2 x i64> %wide.load287, ptr %i.hk, align 8, !tbaa !22, !alias.scope !605, !noalias !602
  %i.hl = getelementptr i8, ptr %next.gep285, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep285, align 8, !tbaa !22, !alias.scope !602, !noalias !597
  store <2 x ptr> splat (ptr null), ptr %i.hl, align 8, !tbaa !22, !alias.scope !602, !noalias !597
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.hm, label %middle.block289, label %vector.body282, !llvm.loop !607

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.hb, %n.vec281
  br i1 %cmp.n290, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147, label %.lr.ph.i.i.i.i.i.i143.preheader293

.lr.ph.i.i.i.i.i.i143.preheader293:               ; preds = %vector.memcheck269, %.lr.ph.i.i.i.i.i.i143.preheader, %middle.block289
  %.012.i.i.i.i.i.i144.ph = phi ptr [ %i.gx, %vector.memcheck269 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i143.preheader ], [ %i.hg, %middle.block289 ]
  %.0911.i.i.i.i.i.i145.ph = phi ptr [ %i.gm, %vector.memcheck269 ], [ %i.gm, %.lr.ph.i.i.i.i.i.i143.preheader ], [ %i.hh, %middle.block289 ]
  br label %.lr.ph.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i143:                            ; preds = %.lr.ph.i.i.i.i.i.i143.preheader293, %.lr.ph.i.i.i.i.i.i143
  %.012.i.i.i.i.i.i144 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i143 ], [ %.012.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i143.preheader293 ] ; 2 uses
  %.0911.i.i.i.i.i.i145 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i143 ], [ %.0911.i.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i.i143.preheader293 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.hn = load i64, ptr %.0911.i.i.i.i.i.i145, align 8, !tbaa !22, !alias.scope !600, !noalias !597
  store i64 %i.hn, ptr %.012.i.i.i.i.i.i144, align 8, !tbaa !22, !alias.scope !597, !noalias !600
  store ptr null, ptr %.0911.i.i.i.i.i.i145, align 8, !tbaa !22, !alias.scope !600, !noalias !597
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i145, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i144, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i146 = icmp eq ptr %i.ho, %i.gh
  br i1 %.not.i.i.i.i.i.i146, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147, label %.lr.ph.i.i.i.i.i.i143, !llvm.loop !608

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147: ; preds = %.lr.ph.i.i.i.i.i.i143, %middle.block289, %.noexc151
  %.0.lcssa.i.i.i.i.i.i148 = phi ptr [ %i.gx, %.noexc151 ], [ %i.hg, %middle.block289 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i143 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i148, i64 8
  %.not.i23.i.i149 = icmp eq ptr %i.gm, null
  br i1 %.not.i23.i.i149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147
  call void @_ZdlPv(ptr noundef nonnull %i.gm) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i147
  store ptr %i.gx, ptr %i.gf, align 8, !tbaa !12
  store ptr %i.hq, ptr %i.gg, align 8, !tbaa !10
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gv
  store ptr %i.hr, ptr %i.gi, align 8, !tbaa !267
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.av
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0171.0207, i64 8 ; 2 uses
  %.not202 = icmp eq ptr %i.hs, %.pre212
  br i1 %.not202, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i139
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.az:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ht = load i64, ptr %1, align 8, !tbaa !299
  store i64 %i.ht, ptr %21, align 8, !tbaa !299
  store ptr null, ptr %1, align 8, !tbaa !299
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.93") align 8 %20, ptr noundef nonnull align 8 dereferenceable(288) %19, ptr noundef nonnull %21)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.hu = load ptr, ptr %20, align 8, !tbaa !299
  store ptr null, ptr %20, align 8, !tbaa !299
  %i.hv = load ptr, ptr %1, align 8, !tbaa !299   ; 3 uses
  store ptr %i.hu, ptr %1, align 8, !tbaa !299
  %.not.i.i.i.i.i152 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i152, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit154

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit154: ; preds = %bb.ba
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.hv) #23, !inline_history !304
  %.pr200 = load ptr, ptr %20, align 8, !tbaa !299 ; 3 uses
  %.not.i155 = icmp eq ptr %.pr200, null
  br i1 %.not.i155, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i156

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i156: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit154
  %i.hz = load ptr, ptr %.pr200, align 8, !tbaa !43
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr200) #23, !inline_history !300
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157: ; preds = %bb.ba, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit154, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i156
  %i.ic = load ptr, ptr %21, align 8, !tbaa !299  ; 3 uses
  %.not.i158 = icmp eq ptr %i.ic, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit160, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i159

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i159: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !43
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ic) #23, !inline_history !300
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit160

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit160: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit157, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %22, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit160
  %i.ig = load ptr, ptr %22, align 8, !tbaa !248  ; 3 uses
  %.not.i161 = icmp eq ptr %i.ig, null
  br i1 %.not.i161, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.bb
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ig) #23
  call void @_ZdlPv(ptr noundef nonnull %i.ig) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bb, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ih) #23
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.ii) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.ij = load ptr, ptr %18, align 8, !tbaa !582  ; 3 uses
  %.not.i162 = icmp eq ptr %i.ij, null
  br i1 %.not.i162, label %bb.bc, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !43
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(128) %i.ij) #23, !inline_history !609
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ir, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre211, %bb.bc ] ; 2 uses
  %i.in = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i163 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i163, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(88) %i.in) #23, !inline_history !610
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.ir, %.pre212
  br i1 %.not.i.i.i164, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, %bb.ak
  %.not.i.i1.i = icmp eq ptr %.pre211, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.bd
end_hunk_5
begin_hunk_6_@_ZN6duckdb7Hugeint3AddILb1EEENS_9hugeint_tES2_S2_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %9, align 8, !tbaa !25     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.h ] ; 4 uses
  %.1 = phi i1 [ true, %bb.g ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.k = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.n = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.r = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread
  call void @_ZdlPv(ptr noundef %i.r) #26
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.1, label %bb.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.1, label %bb.i, label %bb.k

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn.pn22.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn.pn22 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn.pn22.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i64, ptr %4, align 8, !tbaa !32
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8, !tbaa !32
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.23.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.i
  %.pn.pn.pn21 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn.pn22, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn.pn21

bb.l:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20StatisticsPropagator14PropagateUnionERNS_19LogicalSetOperationERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.207") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(122) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::vector.525", align 8 ; 18 uses
  %9 = alloca %"class.duckdb::unique_ptr.207", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::vector.532", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.36", align 16 ; 9 uses
  %12 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !621  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !621  ; 2 uses
  %.not151167 = icmp eq ptr %i.j, %i.l
  br i1 %.not151167, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.preheader159

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !621 ; 2 uses
  %.pre189 = load ptr, ptr %i.k, align 8, !tbaa !621 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not152169 = icmp eq ptr %.pre, %.pre189
  br i1 %.not152169, label %.preheader159, label %.lr.ph172

.lr.ph172:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0135.0168 = phi ptr [ %i.j, %.lr.ph ], [ %i.bb, %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.207") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0135.0168)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !622  ; 6 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !625
  %.not.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.c
  %i.t = load i64, ptr %9, align 8, !tbaa !356
  store i64 %i.t, ptr %i.r, align 8, !tbaa !356
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.m, align 8, !tbaa !622
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %8, align 8, !tbaa !626    ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #25
          to label %.noexc51 unwind label %.loopexit160 ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  %i.ai = load i64, ptr %9, align 8, !tbaa !356
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !356
  store ptr null, ptr %9, align 8, !tbaa !356
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %15 = add i64 %i.w, -8
  %16 = sub i64 %15, %i.x                         ; 2 uses
  %i.aj = lshr i64 %16, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ag, i64 8
  %i.al = add i64 %i.w, -8
  %i.am = sub i64 %i.al, %i.x
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep, i64 %i.an
  %scevgep271 = getelementptr i8, ptr %i.v, i64 8
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep272
  %bound1 = icmp ult ptr %i.v, %scevgep270
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep273 = getelementptr i8, ptr %i.v, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.as = getelementptr i8, ptr %next.gep273, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep273, align 8, !tbaa !356, !alias.scope !632, !noalias !627
  %wide.load274 = load <2 x i64>, ptr %i.as, align 8, !tbaa !356, !alias.scope !632, !noalias !627
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !356, !alias.scope !635, !noalias !632
  store <2 x i64> %wide.load274, ptr %i.at, align 8, !tbaa !356, !alias.scope !635, !noalias !632
  %i.au = getelementptr i8, ptr %next.gep273, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep273, align 8, !tbaa !356, !alias.scope !632, !noalias !627
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !356, !alias.scope !632, !noalias !627
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader292

.lr.ph.i.i.i.i.i.i.i.preheader292:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader292, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader292 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader292 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !356, !alias.scope !630, !noalias !627
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !356, !alias.scope !627, !noalias !630
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !356, !alias.scope !630, !noalias !627
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !638

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc51 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.f
  store ptr %i.ag, ptr %8, align 8, !tbaa !626
  store ptr %i.az, ptr %i.m, align 8, !tbaa !622
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !625
  %.pr = load ptr, ptr %9, align 8, !tbaa !356    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0135.0168, i64 8 ; 2 uses
  %.not151 = icmp eq ptr %i.bb, %i.l
  br i1 %.not151, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit54

.loopexit160:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14NodeStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit160
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit160 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bd = load ptr, ptr %9, align 8, !tbaa !356   ; 2 uses
  %.not.i52 = icmp eq ptr %i.bd, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i53: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i53, %bb.h, %bb.g
  %.pn48 = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %lpad.phi, %bb.h ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bj

.preheader159:                                    ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %._crit_edge.thread, %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !639
  %.not181 = icmp eq i64 %i.bf, 0
  br i1 %.not181, label %.preheader, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader159
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph172, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  %.sroa.0131.0170 = phi ptr [ %.pre, %.lr.ph172 ], [ %i.bx, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0131.0170)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.36") align 8 %11, ptr noundef nonnull align 8 dereferenceable(97) %i.bn)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !641 ; 5 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !644
  %.not.i.i55 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i55, label %bb.l, label %_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.k
  %i.bt = load <2 x ptr>, ptr %11, align 16, !tbaa !88
  store <2 x ptr> %i.bt, ptr %i.br, align 8, !tbaa !88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load ptr, ptr %i.q, align 16, !tbaa !30
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.bw, ptr %i.o, align 8, !tbaa !641
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.br, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit unwind label %bb.o

_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.l
  %.pr144 = load ptr, ptr %11, align 16, !tbaa !33 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr144, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr144) #26
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN6duckdb6vectorINS0_13ColumnBindingELb1ESaIS2_EEESaIS4_EE9push_backEOS4_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0131.0170, i64 8 ; 2 uses
  %.not152 = icmp eq ptr %i.bx, %.pre189
  br i1 %.not152, label %.preheader159, label %bb.i

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit58

bb.o:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %11, align 16, !tbaa !33  ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.ca, null
end_hunk_6
begin_hunk_7_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_19LogicalSetOperationERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fg = load ptr, ptr %5, align 8, !tbaa !356   ; 2 uses
  %.not.i64 = icmp eq ptr %i.fg, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fh = load ptr, ptr %4, align 8, !tbaa !356   ; 2 uses
  %.not.i65 = icmp eq ptr %i.fh, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i66: ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.be

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %bb.ay, %bb.ax, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %.pn.pn.pn.pn, %bb.ax ], [ %.pn.pn.pn.pn, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fi = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #26
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69: ; preds = %bb.bd, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.l
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ], [ %.pn.pn.pn.pn.pn, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fj = load ptr, ptr %5, align 8, !tbaa !356   ; 2 uses
  %.not.i70 = icmp eq ptr %i.fj, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit72, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i71

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i71: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69
  call void @_ZdlPv(ptr noundef nonnull %i.fj) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit72

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit72: ; preds = %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i71, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit69 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fk = load ptr, ptr %4, align 8, !tbaa !356   ; 2 uses
  %.not.i73 = icmp eq ptr %i.fk, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit75, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i74

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i74: ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit72
  call void @_ZdlPv(ptr noundef nonnull %i.fk) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit75

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit75: ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit72, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit67, %bb.b
  ret void

bb.bf:                                            ; preds = %bb.ar
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_13LogicalWindowERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.207") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.207", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 5 uses
  %9 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 5 uses
  %11 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 5 uses
  %13 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 5 uses
  %15 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  call void @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.207") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !356
  store ptr null, ptr %4, align 8, !tbaa !356
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !356
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.e) #26
  %.pr = load ptr, ptr %4, align 8, !tbaa !356    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 2 uses
  %.not309 = icmp eq ptr %i.g, %i.i
  br i1 %.not309, label %._crit_edge312, label %.lr.ph311

._crit_edge312:                                   ; preds = %._crit_edge308, %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.j = load i64, ptr %i.c, align 8, !tbaa !356
  store i64 %i.j, ptr %0, align 8, !tbaa !356
  store ptr null, ptr %i.c, align 8, !tbaa !356
  ret void

.lr.ph311:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, %._crit_edge308
  %.sroa.0216.0310 = phi ptr [ %i.nf, %._crit_edge308 ], [ %i.g, %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.k = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0216.0310)
  %i.l = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.k) ; 25 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7    ; 2 uses
  %.not242297 = icmp eq ptr %i.n, %i.p
  br i1 %.not242297, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph311
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 168 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, %.lr.ph311
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !613  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !613  ; 2 uses
  %.not243299 = icmp eq ptr %i.u, %i.w
  br i1 %.not243299, label %._crit_edge303, label %.lr.ph302

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0212.0298 = phi ptr [ %i.n, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0212.0298)
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !396  ; 6 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !398
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.b
  %i.z = load i64, ptr %5, align 8, !tbaa !248
  store i64 %i.z, ptr %i.x, align 8, !tbaa !248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !397 ; 10 uses
  %i.ac = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #25
          to label %.noexc40 unwind label %.loopexit ; 10 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = load i64, ptr %5, align 8, !tbaa !248
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !248
  store ptr null, ptr %5, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc40
  %16 = add i64 %i.ac, -8
  %17 = sub i64 %16, %i.ad                        ; 2 uses
  %i.ap = lshr i64 %17, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check577 = icmp ult i64 %17, 56
  br i1 %min.iters.check577, label %.lr.ph.i.i.i.i.i.i.i.preheader592, label %vector.memcheck568

vector.memcheck568:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep569 = getelementptr i8, ptr %i.am, i64 8
  %i.ar = add i64 %i.ac, -8
  %i.as = sub i64 %i.ar, %i.ad
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %scevgep570 = getelementptr i8, ptr %scevgep569, i64 %i.at
  %scevgep571 = getelementptr i8, ptr %i.ab, i64 8
  %scevgep572 = getelementptr i8, ptr %scevgep571, i64 %i.at
  %bound0573 = icmp ult ptr %i.am, %scevgep572
  %bound1574 = icmp ult ptr %i.ab, %scevgep570
  %found.conflict575 = and i1 %bound0573, %bound1574
  br i1 %found.conflict575, label %.lr.ph.i.i.i.i.i.i.i.preheader592, label %vector.ph578

vector.ph578:                                     ; preds = %vector.memcheck568
  %n.vec580 = and i64 %i.aq, 4611686018427387900  ; 3 uses
  %i.au = shl i64 %n.vec580, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %i.am, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph578
  %index582 = phi i64 [ 0, %vector.ph578 ], [ %index.next587, %vector.body581 ] ; 2 uses
  %i.ax = shl i64 %index582, 3                    ; 2 uses
  %next.gep583 = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %next.gep584 = getelementptr i8, ptr %i.ab, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.ay = getelementptr i8, ptr %next.gep584, i64 16
  %wide.load585 = load <2 x i64>, ptr %next.gep584, align 8, !tbaa !248, !alias.scope !658, !noalias !653
  %wide.load586 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !248, !alias.scope !658, !noalias !653
  %i.az = getelementptr i8, ptr %next.gep583, i64 16
  store <2 x i64> %wide.load585, ptr %next.gep583, align 8, !tbaa !248, !alias.scope !661, !noalias !658
  store <2 x i64> %wide.load586, ptr %i.az, align 8, !tbaa !248, !alias.scope !661, !noalias !658
  %i.ba = getelementptr i8, ptr %next.gep584, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep584, align 8, !tbaa !248, !alias.scope !658, !noalias !653
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !248, !alias.scope !658, !noalias !653
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.bb, label %middle.block588, label %vector.body581, !llvm.loop !663

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %i.aq, %n.vec580
  br i1 %cmp.n589, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader592

.lr.ph.i.i.i.i.i.i.i.preheader592:                ; preds = %vector.memcheck568, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block588
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck568 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block588 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck568 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block588 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader592, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader592 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader592 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !656, !noalias !653
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !653, !noalias !656
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !248, !alias.scope !656, !noalias !653
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !664

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block588, %.noexc40
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc40 ], [ %i.av, %middle.block588 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.e
  store ptr %i.am, ptr %i.q, align 8, !tbaa !397
  store ptr %i.bf, ptr %i.r, align 8, !tbaa !396
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bg, ptr %i.s, align 8, !tbaa !398
  %.pr220 = load ptr, ptr %5, align 8, !tbaa !248 ; 3 uses
  %.not.i41 = icmp eq ptr %.pr220, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr220) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr220) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0212.0298, i64 8 ; 2 uses
  %.not242 = icmp eq ptr %i.bh, %i.p
  br i1 %.not242, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ay

._crit_edge303:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45, %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  %.not244 = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 4 uses
  br i1 %.not244, label %bb.l, label %bb.g

.lr.ph302:                                        ; preds = %._crit_edge, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45
  %.sroa.0208.0300 = phi ptr [ %i.br, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45 ], [ %i.u, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0208.0300, i64 8
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0208.0300, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !248
  store ptr null, ptr %6, align 8, !tbaa !248
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !248 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !248
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %.lr.ph302
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.bq) #23
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #26
  %.pr222 = load ptr, ptr %6, align 8, !tbaa !248 ; 3 uses
  %.not.i43 = icmp eq ptr %.pr222, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i44: ; preds = %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr222) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr222) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit45: ; preds = %.lr.ph302, %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0208.0300, i64 24 ; 2 uses
  %.not243 = icmp eq ptr %i.br, %i.w
  br i1 %.not243, label %._crit_edge303, label %.lr.ph302

bb.g:                                             ; preds = %._crit_edge303
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %7, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !396 ; 6 uses
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !398
  %.not.i.i46 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i46, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61.thread: ; preds = %bb.g
  %i.bu = load i64, ptr %7, align 8, !tbaa !248
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !248
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit64

bb.h:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !397 ; 10 uses
  %i.bx = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc59 unwind label %.loopexit.split-lp250

.noexc59:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47: ; preds = %bb.h
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i48 = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i48, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i49 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i49)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #25
          to label %.noexc60 unwind label %.loopexit249 ; 10 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  %i.cj = load i64, ptr %7, align 8, !tbaa !248
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !248
  store ptr null, ptr %7, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i50 = icmp eq ptr %i.bw, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i50, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i.i.i51.preheader:                 ; preds = %.noexc60
  %18 = add i64 %i.bx, -8
  %19 = sub i64 %18, %i.by                        ; 2 uses
  %i.ck = lshr i64 %19, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check553 = icmp ult i64 %19, 56
  br i1 %min.iters.check553, label %.lr.ph.i.i.i.i.i.i.i51.preheader600, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.lr.ph.i.i.i.i.i.i.i51.preheader
  %scevgep545 = getelementptr i8, ptr %i.ch, i64 8
  %i.cm = add i64 %i.bx, -8
  %i.cn = sub i64 %i.cm, %i.by
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %scevgep546 = getelementptr i8, ptr %scevgep545, i64 %i.co
  %scevgep547 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep548 = getelementptr i8, ptr %scevgep547, i64 %i.co
  %bound0549 = icmp ult ptr %i.ch, %scevgep548
  %bound1550 = icmp ult ptr %i.bw, %scevgep546
  %found.conflict551 = and i1 %bound0549, %bound1550
  br i1 %found.conflict551, label %.lr.ph.i.i.i.i.i.i.i51.preheader600, label %vector.ph554

vector.ph554:                                     ; preds = %vector.memcheck544
  %n.vec556 = and i64 %i.cl, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec556, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cp
  br label %vector.body557

vector.body557:                                   ; preds = %vector.body557, %vector.ph554
  %index558 = phi i64 [ 0, %vector.ph554 ], [ %index.next563, %vector.body557 ] ; 2 uses
  %i.cs = shl i64 %index558, 3                    ; 2 uses
  %next.gep559 = getelementptr i8, ptr %i.ch, i64 %i.cs ; 2 uses
  %next.gep560 = getelementptr i8, ptr %i.bw, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.ct = getelementptr i8, ptr %next.gep560, i64 16
  %wide.load561 = load <2 x i64>, ptr %next.gep560, align 8, !tbaa !248, !alias.scope !670, !noalias !665
  %wide.load562 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !248, !alias.scope !670, !noalias !665
  %i.cu = getelementptr i8, ptr %next.gep559, i64 16
  store <2 x i64> %wide.load561, ptr %next.gep559, align 8, !tbaa !248, !alias.scope !673, !noalias !670
  store <2 x i64> %wide.load562, ptr %i.cu, align 8, !tbaa !248, !alias.scope !673, !noalias !670
  %i.cv = getelementptr i8, ptr %next.gep560, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep560, align 8, !tbaa !248, !alias.scope !670, !noalias !665
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !248, !alias.scope !670, !noalias !665
  %index.next563 = add nuw i64 %index558, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.cw, label %middle.block564, label %vector.body557, !llvm.loop !675

middle.block564:                                  ; preds = %vector.body557
  %cmp.n565 = icmp eq i64 %i.cl, %n.vec556
  br i1 %cmp.n565, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51.preheader600

.lr.ph.i.i.i.i.i.i.i51.preheader600:              ; preds = %vector.memcheck544, %.lr.ph.i.i.i.i.i.i.i51.preheader, %middle.block564
  %.012.i.i.i.i.i.i.i52.ph = phi ptr [ %i.ch, %vector.memcheck544 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i51.preheader ], [ %i.cq, %middle.block564 ]
  %.0911.i.i.i.i.i.i.i53.ph = phi ptr [ %i.bw, %vector.memcheck544 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i51.preheader ], [ %i.cr, %middle.block564 ]
  br label %.lr.ph.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i51:                           ; preds = %.lr.ph.i.i.i.i.i.i.i51.preheader600, %.lr.ph.i.i.i.i.i.i.i51
  %.012.i.i.i.i.i.i.i52 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i51 ], [ %.012.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i51.preheader600 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i53 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i51 ], [ %.0911.i.i.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i.i.i51.preheader600 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i.i53, align 8, !tbaa !248, !alias.scope !668, !noalias !665
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i.i52, align 8, !tbaa !248, !alias.scope !665, !noalias !668
  store ptr null, ptr %.0911.i.i.i.i.i.i.i53, align 8, !tbaa !248, !alias.scope !668, !noalias !665
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i53, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i54 = icmp eq ptr %i.cy, %i.bs
  br i1 %.not.i.i.i.i.i.i.i54, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51, !llvm.loop !676

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i.i51, %middle.block564, %.noexc60
  %.0.lcssa.i.i.i.i.i.i.i56 = phi ptr [ %i.ch, %.noexc60 ], [ %i.cq, %middle.block564 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i51 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i56, i64 8
  %.not.i23.i.i.i57 = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, %bb.j
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !397
  store ptr %i.da, ptr %i.bl, align 8, !tbaa !396
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.db, ptr %i.bm, align 8, !tbaa !398
  %.pr224 = load ptr, ptr %7, align 8, !tbaa !248 ; 3 uses
  %.not.i62 = icmp eq ptr %.pr224, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit64, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i63

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i63: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr224) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr224) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit64

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit64: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit61, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.q

.loopexit249:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp250:                            ; preds = %bb.i
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp250, %.loopexit249
  %lpad.phi253 = phi { ptr, i32 } [ %lpad.loopexit251, %.loopexit249 ], [ %lpad.loopexit.split-lp252, %.loopexit.split-lp250 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ay

bb.l:                                             ; preds = %._crit_edge303
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr null, ptr %8, align 8, !tbaa !357
  %i.dc = load ptr, ptr %i.bl, align 8, !tbaa !396 ; 6 uses
  %i.dd = load ptr, ptr %i.bm, align 8, !tbaa !398
  %.not.i.i65 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i65, label %bb.m, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80.thread: ; preds = %bb.l
  store i64 0, ptr %i.dc, align 8, !tbaa !248
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.de, ptr %i.bl, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit83

bb.m:                                             ; preds = %bb.l
  %i.df = load ptr, ptr %i.bk, align 8, !tbaa !397 ; 10 uses
  %i.dg = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.n, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc78 unwind label %.loopexit.split-lp255

.noexc78:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66: ; preds = %bb.m
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i67, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i.i68 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i68)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #25
          to label %.noexc79 unwind label %.loopexit254 ; 10 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  store i64 0, ptr %i.dr, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i69 = icmp eq ptr %i.df, %i.dc
  br i1 %.not10.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i.i.i70.preheader:                 ; preds = %.noexc79
  %20 = add i64 %i.dg, -8
  %21 = sub i64 %20, %i.dh                        ; 2 uses
  %i.ds = lshr i64 %21, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check529 = icmp ult i64 %21, 56
  br i1 %min.iters.check529, label %.lr.ph.i.i.i.i.i.i.i70.preheader599, label %vector.memcheck520

vector.memcheck520:                               ; preds = %.lr.ph.i.i.i.i.i.i.i70.preheader
  %scevgep521 = getelementptr i8, ptr %i.dq, i64 8
  %i.du = add i64 %i.dg, -8
  %i.dv = sub i64 %i.du, %i.dh
  %i.dw = and i64 %i.dv, -8                       ; 2 uses
  %scevgep522 = getelementptr i8, ptr %scevgep521, i64 %i.dw
  %scevgep523 = getelementptr i8, ptr %i.df, i64 8
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.dw
  %bound0525 = icmp ult ptr %i.dq, %scevgep524
  %bound1526 = icmp ult ptr %i.df, %scevgep522
  %found.conflict527 = and i1 %bound0525, %bound1526
  br i1 %found.conflict527, label %.lr.ph.i.i.i.i.i.i.i70.preheader599, label %vector.ph530

vector.ph530:                                     ; preds = %vector.memcheck520
  %n.vec532 = and i64 %i.dt, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec532, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dq, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.df, i64 %i.dx
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph530
  %index534 = phi i64 [ 0, %vector.ph530 ], [ %index.next539, %vector.body533 ] ; 2 uses
  %i.ea = shl i64 %index534, 3                    ; 2 uses
  %next.gep535 = getelementptr i8, ptr %i.dq, i64 %i.ea ; 2 uses
  %next.gep536 = getelementptr i8, ptr %i.df, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.eb = getelementptr i8, ptr %next.gep536, i64 16
  %wide.load537 = load <2 x i64>, ptr %next.gep536, align 8, !tbaa !248, !alias.scope !682, !noalias !677
  %wide.load538 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !248, !alias.scope !682, !noalias !677
  %i.ec = getelementptr i8, ptr %next.gep535, i64 16
  store <2 x i64> %wide.load537, ptr %next.gep535, align 8, !tbaa !248, !alias.scope !685, !noalias !682
  store <2 x i64> %wide.load538, ptr %i.ec, align 8, !tbaa !248, !alias.scope !685, !noalias !682
  %i.ed = getelementptr i8, ptr %next.gep536, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep536, align 8, !tbaa !248, !alias.scope !682, !noalias !677
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !248, !alias.scope !682, !noalias !677
  %index.next539 = add nuw i64 %index534, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next539, %n.vec532
  br i1 %i.ee, label %middle.block540, label %vector.body533, !llvm.loop !687

middle.block540:                                  ; preds = %vector.body533
  %cmp.n541 = icmp eq i64 %i.dt, %n.vec532
  br i1 %cmp.n541, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70.preheader599

.lr.ph.i.i.i.i.i.i.i70.preheader599:              ; preds = %vector.memcheck520, %.lr.ph.i.i.i.i.i.i.i70.preheader, %middle.block540
  %.012.i.i.i.i.i.i.i71.ph = phi ptr [ %i.dq, %vector.memcheck520 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i70.preheader ], [ %i.dy, %middle.block540 ]
  %.0911.i.i.i.i.i.i.i72.ph = phi ptr [ %i.df, %vector.memcheck520 ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i70.preheader ], [ %i.dz, %middle.block540 ]
  br label %.lr.ph.i.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i.i70:                           ; preds = %.lr.ph.i.i.i.i.i.i.i70.preheader599, %.lr.ph.i.i.i.i.i.i.i70
  %.012.i.i.i.i.i.i.i71 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.012.i.i.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i.i.i70.preheader599 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i72 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.0911.i.i.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i.i.i70.preheader599 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i.i.i72, align 8, !tbaa !248, !alias.scope !680, !noalias !677
  store i64 %i.ef, ptr %.012.i.i.i.i.i.i.i71, align 8, !tbaa !248, !alias.scope !677, !noalias !680
  store ptr null, ptr %.0911.i.i.i.i.i.i.i72, align 8, !tbaa !248, !alias.scope !680, !noalias !677
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i72, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i71, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i73 = icmp eq ptr %i.eg, %i.dc
  br i1 %.not.i.i.i.i.i.i.i73, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70, !llvm.loop !688

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74: ; preds = %.lr.ph.i.i.i.i.i.i.i70, %middle.block540, %.noexc79
  %.0.lcssa.i.i.i.i.i.i.i75 = phi ptr [ %i.dq, %.noexc79 ], [ %i.dy, %middle.block540 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i70 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i75, i64 8
  %.not.i23.i.i.i76 = icmp eq ptr %i.df, null
  br i1 %.not.i23.i.i.i76, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74
  call void @_ZdlPv(ptr noundef nonnull %i.df) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, %bb.o
  store ptr %i.dq, ptr %i.bk, align 8, !tbaa !397
  store ptr %i.ei, ptr %i.bl, align 8, !tbaa !396
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.ej, ptr %i.bm, align 8, !tbaa !398
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit83

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit83: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit80.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.q

.loopexit254:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66
  %lpad.loopexit256 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp255:                            ; preds = %bb.n
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp255, %.loopexit254
  %lpad.phi258 = phi { ptr, i32 } [ %lpad.loopexit256, %.loopexit254 ], [ %lpad.loopexit.split-lp257, %.loopexit.split-lp255 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ay

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit83, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 224 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !22
  %.not245 = icmp eq ptr %i.el, null
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 4 uses
  br i1 %.not245, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !396 ; 6 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !398
  %.not.i.i84 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i84, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99.thread: ; preds = %bb.r
  %i.er = load i64, ptr %9, align 8, !tbaa !248
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !248
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.es, ptr %i.en, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit102

bb.s:                                             ; preds = %bb.r
  %i.et = load ptr, ptr %i.em, align 8, !tbaa !397 ; 10 uses
  %i.eu = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.ev = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775800
  br i1 %i.ex, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc97 unwind label %.loopexit.split-lp260

.noexc97:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.s
  %i.ey = ashr exact i64 %i.ew, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 1152921504606846975)
  %i.fc = select i1 %i.fa, i64 1152921504606846975, i64 %i.fb ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #25
          to label %.noexc98 unwind label %.loopexit259 ; 10 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew
  %i.fg = load i64, ptr %9, align 8, !tbaa !248
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !248
  store ptr null, ptr %9, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i88 = icmp eq ptr %i.et, %i.ep
  br i1 %.not10.i.i.i.i.i.i.i88, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i.i.i89.preheader:                 ; preds = %.noexc98
  %22 = add i64 %i.eu, -8
  %23 = sub i64 %22, %i.ev                        ; 2 uses
  %i.fh = lshr i64 %23, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check505 = icmp ult i64 %23, 56
  br i1 %min.iters.check505, label %.lr.ph.i.i.i.i.i.i.i89.preheader598, label %vector.memcheck496

vector.memcheck496:                               ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader
  %scevgep497 = getelementptr i8, ptr %i.fe, i64 8
  %i.fj = add i64 %i.eu, -8
  %i.fk = sub i64 %i.fj, %i.ev
  %i.fl = and i64 %i.fk, -8                       ; 2 uses
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 %i.fl
  %scevgep499 = getelementptr i8, ptr %i.et, i64 8
  %scevgep500 = getelementptr i8, ptr %scevgep499, i64 %i.fl
  %bound0501 = icmp ult ptr %i.fe, %scevgep500
  %bound1502 = icmp ult ptr %i.et, %scevgep498
  %found.conflict503 = and i1 %bound0501, %bound1502
  br i1 %found.conflict503, label %.lr.ph.i.i.i.i.i.i.i89.preheader598, label %vector.ph506

vector.ph506:                                     ; preds = %vector.memcheck496
  %n.vec508 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec508, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %i.et, i64 %i.fm
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph506
  %index510 = phi i64 [ 0, %vector.ph506 ], [ %index.next515, %vector.body509 ] ; 2 uses
  %i.fp = shl i64 %index510, 3                    ; 2 uses
  %next.gep511 = getelementptr i8, ptr %i.fe, i64 %i.fp ; 2 uses
  %next.gep512 = getelementptr i8, ptr %i.et, i64 %i.fp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.fq = getelementptr i8, ptr %next.gep512, i64 16
  %wide.load513 = load <2 x i64>, ptr %next.gep512, align 8, !tbaa !248, !alias.scope !694, !noalias !689
  %wide.load514 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !248, !alias.scope !694, !noalias !689
  %i.fr = getelementptr i8, ptr %next.gep511, i64 16
  store <2 x i64> %wide.load513, ptr %next.gep511, align 8, !tbaa !248, !alias.scope !697, !noalias !694
  store <2 x i64> %wide.load514, ptr %i.fr, align 8, !tbaa !248, !alias.scope !697, !noalias !694
  %i.fs = getelementptr i8, ptr %next.gep512, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep512, align 8, !tbaa !248, !alias.scope !694, !noalias !689
  store <2 x ptr> splat (ptr null), ptr %i.fs, align 8, !tbaa !248, !alias.scope !694, !noalias !689
  %index.next515 = add nuw i64 %index510, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.ft, label %middle.block516, label %vector.body509, !llvm.loop !699

middle.block516:                                  ; preds = %vector.body509
  %cmp.n517 = icmp eq i64 %i.fi, %n.vec508
  br i1 %cmp.n517, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader598

.lr.ph.i.i.i.i.i.i.i89.preheader598:              ; preds = %vector.memcheck496, %.lr.ph.i.i.i.i.i.i.i89.preheader, %middle.block516
  %.012.i.i.i.i.i.i.i90.ph = phi ptr [ %i.fe, %vector.memcheck496 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.fn, %middle.block516 ]
  %.0911.i.i.i.i.i.i.i91.ph = phi ptr [ %i.et, %vector.memcheck496 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.fo, %middle.block516 ]
  br label %.lr.ph.i.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i.i89:                           ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader598, %.lr.ph.i.i.i.i.i.i.i89
  %.012.i.i.i.i.i.i.i90 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.012.i.i.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader598 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i91 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.0911.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader598 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !248, !alias.scope !692, !noalias !689
  store i64 %i.fu, ptr %.012.i.i.i.i.i.i.i90, align 8, !tbaa !248, !alias.scope !689, !noalias !692
  store ptr null, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !248, !alias.scope !692, !noalias !689
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.fv, %i.ep
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89, !llvm.loop !700

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93: ; preds = %.lr.ph.i.i.i.i.i.i.i89, %middle.block516, %.noexc98
  %.0.lcssa.i.i.i.i.i.i.i94 = phi ptr [ %i.fe, %.noexc98 ], [ %i.fn, %middle.block516 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i89 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i94, i64 8
  %.not.i23.i.i.i95 = icmp eq ptr %i.et, null
  br i1 %.not.i23.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93
  call void @_ZdlPv(ptr noundef nonnull %i.et) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, %bb.u
  store ptr %i.fe, ptr %i.em, align 8, !tbaa !397
  store ptr %i.fx, ptr %i.en, align 8, !tbaa !396
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fy, ptr %i.eo, align 8, !tbaa !398
  %.pr228 = load ptr, ptr %9, align 8, !tbaa !248 ; 3 uses
  %.not.i100 = icmp eq ptr %.pr228, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit102, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i101

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i101: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr228) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr228) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit102

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit102: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit99, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ab

.loopexit259:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp260:                            ; preds = %bb.t
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp260, %.loopexit259
  %lpad.phi263 = phi { ptr, i32 } [ %lpad.loopexit261, %.loopexit259 ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp260 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr null, ptr %10, align 8, !tbaa !357
  %i.fz = load ptr, ptr %i.en, align 8, !tbaa !396 ; 6 uses
  %i.ga = load ptr, ptr %i.eo, align 8, !tbaa !398
  %.not.i.i103 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i.i103, label %bb.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118.thread: ; preds = %bb.w
  store i64 0, ptr %i.fz, align 8, !tbaa !248
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.gb, ptr %i.en, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit121

bb.x:                                             ; preds = %bb.w
  %i.gc = load ptr, ptr %i.em, align 8, !tbaa !397 ; 10 uses
  %i.gd = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.ge = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 3 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i104

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc116 unwind label %.loopexit.split-lp265

.noexc116:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.x
  %i.gh = ashr exact i64 %i.gf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975)
  %i.gl = select i1 %i.gj, i64 1152921504606846975, i64 %i.gk ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #25
          to label %.noexc117 unwind label %.loopexit264 ; 10 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i104
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf
  store i64 0, ptr %i.go, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i107 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not10.i.i.i.i.i.i.i107, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112, label %.lr.ph.i.i.i.i.i.i.i108.preheader

.lr.ph.i.i.i.i.i.i.i108.preheader:                ; preds = %.noexc117
  %24 = add i64 %i.gd, -8
  %25 = sub i64 %24, %i.ge                        ; 2 uses
  %i.gp = lshr i64 %25, 3
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check481 = icmp ult i64 %25, 56
  br i1 %min.iters.check481, label %.lr.ph.i.i.i.i.i.i.i108.preheader597, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.i.i.i.i.i.i.i108.preheader
  %scevgep473 = getelementptr i8, ptr %i.gn, i64 8
  %i.gr = add i64 %i.gd, -8
  %i.gs = sub i64 %i.gr, %i.ge
  %i.gt = and i64 %i.gs, -8                       ; 2 uses
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.gt
  %scevgep475 = getelementptr i8, ptr %i.gc, i64 8
  %scevgep476 = getelementptr i8, ptr %scevgep475, i64 %i.gt
  %bound0477 = icmp ult ptr %i.gn, %scevgep476
  %bound1478 = icmp ult ptr %i.gc, %scevgep474
  %found.conflict479 = and i1 %bound0477, %bound1478
  br i1 %found.conflict479, label %.lr.ph.i.i.i.i.i.i.i108.preheader597, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck472
  %n.vec484 = and i64 %i.gq, 4611686018427387900  ; 3 uses
  %i.gu = shl i64 %n.vec484, 3                    ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gn, i64 %i.gu  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gc, i64 %i.gu
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph482
  %index486 = phi i64 [ 0, %vector.ph482 ], [ %index.next491, %vector.body485 ] ; 2 uses
  %i.gx = shl i64 %index486, 3                    ; 2 uses
  %next.gep487 = getelementptr i8, ptr %i.gn, i64 %i.gx ; 2 uses
  %next.gep488 = getelementptr i8, ptr %i.gc, i64 %i.gx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.gy = getelementptr i8, ptr %next.gep488, i64 16
  %wide.load489 = load <2 x i64>, ptr %next.gep488, align 8, !tbaa !248, !alias.scope !706, !noalias !701
  %wide.load490 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !248, !alias.scope !706, !noalias !701
  %i.gz = getelementptr i8, ptr %next.gep487, i64 16
  store <2 x i64> %wide.load489, ptr %next.gep487, align 8, !tbaa !248, !alias.scope !709, !noalias !706
  store <2 x i64> %wide.load490, ptr %i.gz, align 8, !tbaa !248, !alias.scope !709, !noalias !706
  %i.ha = getelementptr i8, ptr %next.gep488, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep488, align 8, !tbaa !248, !alias.scope !706, !noalias !701
  store <2 x ptr> splat (ptr null), ptr %i.ha, align 8, !tbaa !248, !alias.scope !706, !noalias !701
  %index.next491 = add nuw i64 %index486, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next491, %n.vec484
  br i1 %i.hb, label %middle.block492, label %vector.body485, !llvm.loop !711

middle.block492:                                  ; preds = %vector.body485
  %cmp.n493 = icmp eq i64 %i.gq, %n.vec484
  br i1 %cmp.n493, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112, label %.lr.ph.i.i.i.i.i.i.i108.preheader597

.lr.ph.i.i.i.i.i.i.i108.preheader597:             ; preds = %vector.memcheck472, %.lr.ph.i.i.i.i.i.i.i108.preheader, %middle.block492
  %.012.i.i.i.i.i.i.i109.ph = phi ptr [ %i.gn, %vector.memcheck472 ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i108.preheader ], [ %i.gv, %middle.block492 ]
  %.0911.i.i.i.i.i.i.i110.ph = phi ptr [ %i.gc, %vector.memcheck472 ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.i108.preheader ], [ %i.gw, %middle.block492 ]
  br label %.lr.ph.i.i.i.i.i.i.i108

.lr.ph.i.i.i.i.i.i.i108:                          ; preds = %.lr.ph.i.i.i.i.i.i.i108.preheader597, %.lr.ph.i.i.i.i.i.i.i108
  %.012.i.i.i.i.i.i.i109 = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i108 ], [ %.012.i.i.i.i.i.i.i109.ph, %.lr.ph.i.i.i.i.i.i.i108.preheader597 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i110 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i108 ], [ %.0911.i.i.i.i.i.i.i110.ph, %.lr.ph.i.i.i.i.i.i.i108.preheader597 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.hc = load i64, ptr %.0911.i.i.i.i.i.i.i110, align 8, !tbaa !248, !alias.scope !704, !noalias !701
  store i64 %i.hc, ptr %.012.i.i.i.i.i.i.i109, align 8, !tbaa !248, !alias.scope !701, !noalias !704
  store ptr null, ptr %.0911.i.i.i.i.i.i.i110, align 8, !tbaa !248, !alias.scope !704, !noalias !701
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i110, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i109, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i111 = icmp eq ptr %i.hd, %i.fz
  br i1 %.not.i.i.i.i.i.i.i111, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112, label %.lr.ph.i.i.i.i.i.i.i108, !llvm.loop !712

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112: ; preds = %.lr.ph.i.i.i.i.i.i.i108, %middle.block492, %.noexc117
  %.0.lcssa.i.i.i.i.i.i.i113 = phi ptr [ %i.gn, %.noexc117 ], [ %i.gv, %middle.block492 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i108 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i113, i64 8
  %.not.i23.i.i.i114 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i.i.i114, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112
  call void @_ZdlPv(ptr noundef nonnull %i.gc) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i112, %bb.z
  store ptr %i.gn, ptr %i.em, align 8, !tbaa !397
  store ptr %i.hf, ptr %i.en, align 8, !tbaa !396
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.hg, ptr %i.eo, align 8, !tbaa !398
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit121

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit118.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ab

.loopexit264:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i104
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp265:                            ; preds = %bb.y
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp265, %.loopexit264
  %lpad.phi268 = phi { ptr, i32 } [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ay

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit121, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit102
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !22
  %.not246 = icmp eq ptr %i.hi, null
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 4 uses
  br i1 %.not246, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !396 ; 6 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !398
  %.not.i.i122 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i122, label %bb.ad, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137.thread: ; preds = %bb.ac
  %i.ho = load i64, ptr %11, align 8, !tbaa !248
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !248
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit140

bb.ad:                                            ; preds = %bb.ac
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !397 ; 10 uses
  %i.hr = ptrtoint ptr %i.hm to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i123

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc135 unwind label %.loopexit.split-lp270

.noexc135:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i123: ; preds = %bb.ad
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i124 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i124, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i125 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i125)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #25
          to label %.noexc136 unwind label %.loopexit269 ; 10 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i123
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  %i.id = load i64, ptr %11, align 8, !tbaa !248
  store i64 %i.id, ptr %i.ic, align 8, !tbaa !248
  store ptr null, ptr %11, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i126 = icmp eq ptr %i.hq, %i.hm
  br i1 %.not10.i.i.i.i.i.i.i126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131, label %.lr.ph.i.i.i.i.i.i.i127.preheader

.lr.ph.i.i.i.i.i.i.i127.preheader:                ; preds = %.noexc136
  %26 = add i64 %i.hr, -8
  %27 = sub i64 %26, %i.hs                        ; 2 uses
  %i.ie = lshr i64 %27, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check457 = icmp ult i64 %27, 56
  br i1 %min.iters.check457, label %.lr.ph.i.i.i.i.i.i.i127.preheader596, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.i.i.i.i.i.i.i127.preheader
  %scevgep449 = getelementptr i8, ptr %i.ib, i64 8
  %i.ig = add i64 %i.hr, -8
  %i.ih = sub i64 %i.ig, %i.hs
  %i.ii = and i64 %i.ih, -8                       ; 2 uses
  %scevgep450 = getelementptr i8, ptr %scevgep449, i64 %i.ii
  %scevgep451 = getelementptr i8, ptr %i.hq, i64 8
  %scevgep452 = getelementptr i8, ptr %scevgep451, i64 %i.ii
  %bound0453 = icmp ult ptr %i.ib, %scevgep452
  %bound1454 = icmp ult ptr %i.hq, %scevgep450
  %found.conflict455 = and i1 %bound0453, %bound1454
  br i1 %found.conflict455, label %.lr.ph.i.i.i.i.i.i.i127.preheader596, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck448
  %n.vec460 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.ij = shl i64 %n.vec460, 3                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ib, i64 %i.ij  ; 2 uses
  %i.il = getelementptr i8, ptr %i.hq, i64 %i.ij
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph458
  %index462 = phi i64 [ 0, %vector.ph458 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %i.im = shl i64 %index462, 3                    ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.ib, i64 %i.im ; 2 uses
  %next.gep464 = getelementptr i8, ptr %i.hq, i64 %i.im ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.in = getelementptr i8, ptr %next.gep464, i64 16
  %wide.load465 = load <2 x i64>, ptr %next.gep464, align 8, !tbaa !248, !alias.scope !718, !noalias !713
  %wide.load466 = load <2 x i64>, ptr %i.in, align 8, !tbaa !248, !alias.scope !718, !noalias !713
  %i.io = getelementptr i8, ptr %next.gep463, i64 16
  store <2 x i64> %wide.load465, ptr %next.gep463, align 8, !tbaa !248, !alias.scope !721, !noalias !718
  store <2 x i64> %wide.load466, ptr %i.io, align 8, !tbaa !248, !alias.scope !721, !noalias !718
  %i.ip = getelementptr i8, ptr %next.gep464, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep464, align 8, !tbaa !248, !alias.scope !718, !noalias !713
  store <2 x ptr> splat (ptr null), ptr %i.ip, align 8, !tbaa !248, !alias.scope !718, !noalias !713
  %index.next467 = add nuw i64 %index462, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.iq, label %middle.block468, label %vector.body461, !llvm.loop !723

middle.block468:                                  ; preds = %vector.body461
  %cmp.n469 = icmp eq i64 %i.if, %n.vec460
  br i1 %cmp.n469, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131, label %.lr.ph.i.i.i.i.i.i.i127.preheader596

.lr.ph.i.i.i.i.i.i.i127.preheader596:             ; preds = %vector.memcheck448, %.lr.ph.i.i.i.i.i.i.i127.preheader, %middle.block468
  %.012.i.i.i.i.i.i.i128.ph = phi ptr [ %i.ib, %vector.memcheck448 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i127.preheader ], [ %i.ik, %middle.block468 ]
  %.0911.i.i.i.i.i.i.i129.ph = phi ptr [ %i.hq, %vector.memcheck448 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i127.preheader ], [ %i.il, %middle.block468 ]
  br label %.lr.ph.i.i.i.i.i.i.i127

.lr.ph.i.i.i.i.i.i.i127:                          ; preds = %.lr.ph.i.i.i.i.i.i.i127.preheader596, %.lr.ph.i.i.i.i.i.i.i127
  %.012.i.i.i.i.i.i.i128 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i.i127 ], [ %.012.i.i.i.i.i.i.i128.ph, %.lr.ph.i.i.i.i.i.i.i127.preheader596 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i129 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i127 ], [ %.0911.i.i.i.i.i.i.i129.ph, %.lr.ph.i.i.i.i.i.i.i127.preheader596 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ir = load i64, ptr %.0911.i.i.i.i.i.i.i129, align 8, !tbaa !248, !alias.scope !716, !noalias !713
  store i64 %i.ir, ptr %.012.i.i.i.i.i.i.i128, align 8, !tbaa !248, !alias.scope !713, !noalias !716
  store ptr null, ptr %.0911.i.i.i.i.i.i.i129, align 8, !tbaa !248, !alias.scope !716, !noalias !713
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i129, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i128, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i130 = icmp eq ptr %i.is, %i.hm
  br i1 %.not.i.i.i.i.i.i.i130, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131, label %.lr.ph.i.i.i.i.i.i.i127, !llvm.loop !724

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131: ; preds = %.lr.ph.i.i.i.i.i.i.i127, %middle.block468, %.noexc136
  %.0.lcssa.i.i.i.i.i.i.i132 = phi ptr [ %i.ib, %.noexc136 ], [ %i.ik, %middle.block468 ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i127 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i132, i64 8
  %.not.i23.i.i.i133 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i133, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i131, %bb.af
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !397
  store ptr %i.iu, ptr %i.hk, align 8, !tbaa !396
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.iv, ptr %i.hl, align 8, !tbaa !398
  %.pr232 = load ptr, ptr %11, align 8, !tbaa !248 ; 3 uses
  %.not.i138 = icmp eq ptr %.pr232, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit140, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i139

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i139: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr232) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr232) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit140

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit140: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit137, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.am

.loopexit269:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i123
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp270:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp270, %.loopexit269
  %lpad.phi273 = phi { ptr, i32 } [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ay

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr null, ptr %12, align 8, !tbaa !357
  %i.iw = load ptr, ptr %i.hk, align 8, !tbaa !396 ; 6 uses
  %i.ix = load ptr, ptr %i.hl, align 8, !tbaa !398
  %.not.i.i141 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i141, label %bb.ai, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156.thread: ; preds = %bb.ah
  store i64 0, ptr %i.iw, align 8, !tbaa !248
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.iy, ptr %i.hk, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit159

bb.ai:                                            ; preds = %bb.ah
  %i.iz = load ptr, ptr %i.hj, align 8, !tbaa !397 ; 10 uses
  %i.ja = ptrtoint ptr %i.iw to i64               ; 3 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jc = sub i64 %i.ja, %i.jb                    ; 3 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %bb.aj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i142

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc154 unwind label %.loopexit.split-lp275

.noexc154:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i142: ; preds = %bb.ai
  %i.je = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i143 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i.i143, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 1152921504606846975)
  %i.ji = select i1 %i.jg, i64 1152921504606846975, i64 %i.jh ; 3 uses
  %.not.i.i.i.i144 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i.i.i144)
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #25
          to label %.noexc155 unwind label %.loopexit274 ; 10 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i142
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc
  store i64 0, ptr %i.jl, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i145 = icmp eq ptr %i.iz, %i.iw
  br i1 %.not10.i.i.i.i.i.i.i145, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150, label %.lr.ph.i.i.i.i.i.i.i146.preheader

.lr.ph.i.i.i.i.i.i.i146.preheader:                ; preds = %.noexc155
  %28 = add i64 %i.ja, -8
  %29 = sub i64 %28, %i.jb                        ; 2 uses
  %i.jm = lshr i64 %29, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check433 = icmp ult i64 %29, 56
  br i1 %min.iters.check433, label %.lr.ph.i.i.i.i.i.i.i146.preheader595, label %vector.memcheck424

vector.memcheck424:                               ; preds = %.lr.ph.i.i.i.i.i.i.i146.preheader
  %scevgep425 = getelementptr i8, ptr %i.jk, i64 8
  %i.jo = add i64 %i.ja, -8
  %i.jp = sub i64 %i.jo, %i.jb
  %i.jq = and i64 %i.jp, -8                       ; 2 uses
  %scevgep426 = getelementptr i8, ptr %scevgep425, i64 %i.jq
  %scevgep427 = getelementptr i8, ptr %i.iz, i64 8
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.jq
  %bound0429 = icmp ult ptr %i.jk, %scevgep428
  %bound1430 = icmp ult ptr %i.iz, %scevgep426
  %found.conflict431 = and i1 %bound0429, %bound1430
  br i1 %found.conflict431, label %.lr.ph.i.i.i.i.i.i.i146.preheader595, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck424
  %n.vec436 = and i64 %i.jn, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec436, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %i.jk, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %i.iz, i64 %i.jr
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph434
  %index438 = phi i64 [ 0, %vector.ph434 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %i.ju = shl i64 %index438, 3                    ; 2 uses
  %next.gep439 = getelementptr i8, ptr %i.jk, i64 %i.ju ; 2 uses
  %next.gep440 = getelementptr i8, ptr %i.iz, i64 %i.ju ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.jv = getelementptr i8, ptr %next.gep440, i64 16
  %wide.load441 = load <2 x i64>, ptr %next.gep440, align 8, !tbaa !248, !alias.scope !730, !noalias !725
  %wide.load442 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !248, !alias.scope !730, !noalias !725
  %i.jw = getelementptr i8, ptr %next.gep439, i64 16
  store <2 x i64> %wide.load441, ptr %next.gep439, align 8, !tbaa !248, !alias.scope !733, !noalias !730
  store <2 x i64> %wide.load442, ptr %i.jw, align 8, !tbaa !248, !alias.scope !733, !noalias !730
  %i.jx = getelementptr i8, ptr %next.gep440, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep440, align 8, !tbaa !248, !alias.scope !730, !noalias !725
  store <2 x ptr> splat (ptr null), ptr %i.jx, align 8, !tbaa !248, !alias.scope !730, !noalias !725
  %index.next443 = add nuw i64 %index438, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next443, %n.vec436
  br i1 %i.jy, label %middle.block444, label %vector.body437, !llvm.loop !735

middle.block444:                                  ; preds = %vector.body437
  %cmp.n445 = icmp eq i64 %i.jn, %n.vec436
  br i1 %cmp.n445, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150, label %.lr.ph.i.i.i.i.i.i.i146.preheader595

.lr.ph.i.i.i.i.i.i.i146.preheader595:             ; preds = %vector.memcheck424, %.lr.ph.i.i.i.i.i.i.i146.preheader, %middle.block444
  %.012.i.i.i.i.i.i.i147.ph = phi ptr [ %i.jk, %vector.memcheck424 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i146.preheader ], [ %i.js, %middle.block444 ]
  %.0911.i.i.i.i.i.i.i148.ph = phi ptr [ %i.iz, %vector.memcheck424 ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i146.preheader ], [ %i.jt, %middle.block444 ]
  br label %.lr.ph.i.i.i.i.i.i.i146

.lr.ph.i.i.i.i.i.i.i146:                          ; preds = %.lr.ph.i.i.i.i.i.i.i146.preheader595, %.lr.ph.i.i.i.i.i.i.i146
  %.012.i.i.i.i.i.i.i147 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i.i146 ], [ %.012.i.i.i.i.i.i.i147.ph, %.lr.ph.i.i.i.i.i.i.i146.preheader595 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i148 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i.i.i146 ], [ %.0911.i.i.i.i.i.i.i148.ph, %.lr.ph.i.i.i.i.i.i.i146.preheader595 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.jz = load i64, ptr %.0911.i.i.i.i.i.i.i148, align 8, !tbaa !248, !alias.scope !728, !noalias !725
  store i64 %i.jz, ptr %.012.i.i.i.i.i.i.i147, align 8, !tbaa !248, !alias.scope !725, !noalias !728
  store ptr null, ptr %.0911.i.i.i.i.i.i.i148, align 8, !tbaa !248, !alias.scope !728, !noalias !725
  %i.ka = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i148, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i147, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i149 = icmp eq ptr %i.ka, %i.iw
  br i1 %.not.i.i.i.i.i.i.i149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150, label %.lr.ph.i.i.i.i.i.i.i146, !llvm.loop !736

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150: ; preds = %.lr.ph.i.i.i.i.i.i.i146, %middle.block444, %.noexc155
  %.0.lcssa.i.i.i.i.i.i.i151 = phi ptr [ %i.jk, %.noexc155 ], [ %i.js, %middle.block444 ], [ %i.kb, %.lr.ph.i.i.i.i.i.i.i146 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i151, i64 8
  %.not.i23.i.i.i152 = icmp eq ptr %i.iz, null
  br i1 %.not.i23.i.i.i152, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150
  call void @_ZdlPv(ptr noundef nonnull %i.iz) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i150, %bb.ak
  store ptr %i.jk, ptr %i.hj, align 8, !tbaa !397
  store ptr %i.kc, ptr %i.hk, align 8, !tbaa !396
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.kd, ptr %i.hl, align 8, !tbaa !398
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit159

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit159: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit156.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

.loopexit274:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i142
  %lpad.loopexit276 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp275:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp275, %.loopexit274
  %lpad.phi278 = phi { ptr, i32 } [ %lpad.loopexit276, %.loopexit274 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp275 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ay

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit159, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit140
  %i.ke = getelementptr inbounds nuw i8, ptr %i.l, i64 240 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !22
  %.not247 = icmp eq ptr %i.kf, null
  %i.kg = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 4 uses
  br i1 %.not247, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %13, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ke)
  %i.kj = load ptr, ptr %i.kh, align 8, !tbaa !396 ; 6 uses
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !398
  %.not.i.i160 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not.i.i160, label %bb.ao, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175.thread: ; preds = %bb.an
  %i.kl = load i64, ptr %13, align 8, !tbaa !248
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !248
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.km, ptr %i.kh, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit178

bb.ao:                                            ; preds = %bb.an
  %i.kn = load ptr, ptr %i.kg, align 8, !tbaa !397 ; 10 uses
  %i.ko = ptrtoint ptr %i.kj to i64               ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64               ; 3 uses
  %i.kq = sub i64 %i.ko, %i.kp                    ; 3 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i161

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc173 unwind label %.loopexit.split-lp280

.noexc173:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i161: ; preds = %bb.ao
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i162 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i162, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i.i163 = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i163)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #25
          to label %.noexc174 unwind label %.loopexit279 ; 10 uses

.noexc174:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i161
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kq
  %i.la = load i64, ptr %13, align 8, !tbaa !248
  store i64 %i.la, ptr %i.kz, align 8, !tbaa !248
  store ptr null, ptr %13, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i164 = icmp eq ptr %i.kn, %i.kj
  br i1 %.not10.i.i.i.i.i.i.i164, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169, label %.lr.ph.i.i.i.i.i.i.i165.preheader

.lr.ph.i.i.i.i.i.i.i165.preheader:                ; preds = %.noexc174
  %30 = add i64 %i.ko, -8
  %31 = sub i64 %30, %i.kp                        ; 2 uses
  %i.lb = lshr i64 %31, 3
  %i.lc = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %min.iters.check409 = icmp ult i64 %31, 56
  br i1 %min.iters.check409, label %.lr.ph.i.i.i.i.i.i.i165.preheader594, label %vector.memcheck400

vector.memcheck400:                               ; preds = %.lr.ph.i.i.i.i.i.i.i165.preheader
  %scevgep401 = getelementptr i8, ptr %i.ky, i64 8
  %i.ld = add i64 %i.ko, -8
  %i.le = sub i64 %i.ld, %i.kp
  %i.lf = and i64 %i.le, -8                       ; 2 uses
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.lf
  %scevgep403 = getelementptr i8, ptr %i.kn, i64 8
  %scevgep404 = getelementptr i8, ptr %scevgep403, i64 %i.lf
  %bound0405 = icmp ult ptr %i.ky, %scevgep404
  %bound1406 = icmp ult ptr %i.kn, %scevgep402
  %found.conflict407 = and i1 %bound0405, %bound1406
  br i1 %found.conflict407, label %.lr.ph.i.i.i.i.i.i.i165.preheader594, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck400
  %n.vec412 = and i64 %i.lc, 4611686018427387900  ; 3 uses
  %i.lg = shl i64 %n.vec412, 3                    ; 2 uses
  %i.lh = getelementptr i8, ptr %i.ky, i64 %i.lg  ; 2 uses
  %i.li = getelementptr i8, ptr %i.kn, i64 %i.lg
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph410
  %index414 = phi i64 [ 0, %vector.ph410 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %i.lj = shl i64 %index414, 3                    ; 2 uses
  %next.gep415 = getelementptr i8, ptr %i.ky, i64 %i.lj ; 2 uses
  %next.gep416 = getelementptr i8, ptr %i.kn, i64 %i.lj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.lk = getelementptr i8, ptr %next.gep416, i64 16
  %wide.load417 = load <2 x i64>, ptr %next.gep416, align 8, !tbaa !248, !alias.scope !742, !noalias !737
  %wide.load418 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !248, !alias.scope !742, !noalias !737
  %i.ll = getelementptr i8, ptr %next.gep415, i64 16
  store <2 x i64> %wide.load417, ptr %next.gep415, align 8, !tbaa !248, !alias.scope !745, !noalias !742
  store <2 x i64> %wide.load418, ptr %i.ll, align 8, !tbaa !248, !alias.scope !745, !noalias !742
  %i.lm = getelementptr i8, ptr %next.gep416, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep416, align 8, !tbaa !248, !alias.scope !742, !noalias !737
  store <2 x ptr> splat (ptr null), ptr %i.lm, align 8, !tbaa !248, !alias.scope !742, !noalias !737
  %index.next419 = add nuw i64 %index414, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.ln, label %middle.block420, label %vector.body413, !llvm.loop !747

middle.block420:                                  ; preds = %vector.body413
  %cmp.n421 = icmp eq i64 %i.lc, %n.vec412
  br i1 %cmp.n421, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169, label %.lr.ph.i.i.i.i.i.i.i165.preheader594

.lr.ph.i.i.i.i.i.i.i165.preheader594:             ; preds = %vector.memcheck400, %.lr.ph.i.i.i.i.i.i.i165.preheader, %middle.block420
  %.012.i.i.i.i.i.i.i166.ph = phi ptr [ %i.ky, %vector.memcheck400 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i.i165.preheader ], [ %i.lh, %middle.block420 ]
  %.0911.i.i.i.i.i.i.i167.ph = phi ptr [ %i.kn, %vector.memcheck400 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i165.preheader ], [ %i.li, %middle.block420 ]
  br label %.lr.ph.i.i.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i.i165:                          ; preds = %.lr.ph.i.i.i.i.i.i.i165.preheader594, %.lr.ph.i.i.i.i.i.i.i165
  %.012.i.i.i.i.i.i.i166 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i.i165 ], [ %.012.i.i.i.i.i.i.i166.ph, %.lr.ph.i.i.i.i.i.i.i165.preheader594 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i167 = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.i165 ], [ %.0911.i.i.i.i.i.i.i167.ph, %.lr.ph.i.i.i.i.i.i.i165.preheader594 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.lo = load i64, ptr %.0911.i.i.i.i.i.i.i167, align 8, !tbaa !248, !alias.scope !740, !noalias !737
  store i64 %i.lo, ptr %.012.i.i.i.i.i.i.i166, align 8, !tbaa !248, !alias.scope !737, !noalias !740
  store ptr null, ptr %.0911.i.i.i.i.i.i.i167, align 8, !tbaa !248, !alias.scope !740, !noalias !737
  %i.lp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i167, i64 8 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i166, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i168 = icmp eq ptr %i.lp, %i.kj
  br i1 %.not.i.i.i.i.i.i.i168, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169, label %.lr.ph.i.i.i.i.i.i.i165, !llvm.loop !748

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169: ; preds = %.lr.ph.i.i.i.i.i.i.i165, %middle.block420, %.noexc174
  %.0.lcssa.i.i.i.i.i.i.i170 = phi ptr [ %i.ky, %.noexc174 ], [ %i.lh, %middle.block420 ], [ %i.lq, %.lr.ph.i.i.i.i.i.i.i165 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i170, i64 8
  %.not.i23.i.i.i171 = icmp eq ptr %i.kn, null
  br i1 %.not.i23.i.i.i171, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169
  call void @_ZdlPv(ptr noundef nonnull %i.kn) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i169, %bb.aq
  store ptr %i.ky, ptr %i.kg, align 8, !tbaa !397
  store ptr %i.lr, ptr %i.kh, align 8, !tbaa !396
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  store ptr %i.ls, ptr %i.ki, align 8, !tbaa !398
  %.pr236 = load ptr, ptr %13, align 8, !tbaa !248 ; 3 uses
  %.not.i176 = icmp eq ptr %.pr236, null
  br i1 %.not.i176, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit178, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i177

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i177: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr236) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr236) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit178

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit178: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit175, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ax

.loopexit279:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i161
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp280:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp280, %.loopexit279
  %lpad.phi283 = phi { ptr, i32 } [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp280 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ay

bb.as:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr null, ptr %14, align 8, !tbaa !357
  %i.lt = load ptr, ptr %i.kh, align 8, !tbaa !396 ; 6 uses
  %i.lu = load ptr, ptr %i.ki, align 8, !tbaa !398
  %.not.i.i179 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i179, label %bb.at, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194.thread: ; preds = %bb.as
  store i64 0, ptr %i.lt, align 8, !tbaa !248
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store ptr %i.lv, ptr %i.kh, align 8, !tbaa !396
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit197

bb.at:                                            ; preds = %bb.as
  %i.lw = load ptr, ptr %i.kg, align 8, !tbaa !397 ; 10 uses
  %i.lx = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.ly = ptrtoint ptr %i.lw to i64               ; 3 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 3 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.au, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i180

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc192 unwind label %.loopexit.split-lp285

.noexc192:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i180: ; preds = %bb.at
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i181 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i181, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #25
          to label %.noexc193 unwind label %.loopexit284 ; 10 uses

.noexc193:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i180
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lz
  store i64 0, ptr %i.mi, align 8, !tbaa !248
  %.not10.i.i.i.i.i.i.i183 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not10.i.i.i.i.i.i.i183, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188, label %.lr.ph.i.i.i.i.i.i.i184.preheader

.lr.ph.i.i.i.i.i.i.i184.preheader:                ; preds = %.noexc193
  %32 = add i64 %i.lx, -8
  %33 = sub i64 %32, %i.ly                        ; 2 uses
  %i.mj = lshr i64 %33, 3
  %i.mk = add nuw nsw i64 %i.mj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %33, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i184.preheader593, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i184.preheader
  %scevgep = getelementptr i8, ptr %i.mh, i64 8
  %i.ml = add i64 %i.lx, -8
  %i.mm = sub i64 %i.ml, %i.ly
  %i.mn = and i64 %i.mm, -8                       ; 2 uses
  %scevgep394 = getelementptr i8, ptr %scevgep, i64 %i.mn
  %scevgep395 = getelementptr i8, ptr %i.lw, i64 8
  %scevgep396 = getelementptr i8, ptr %scevgep395, i64 %i.mn
  %bound0 = icmp ult ptr %i.mh, %scevgep396
  %bound1 = icmp ult ptr %i.lw, %scevgep394
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i184.preheader593, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mk, 4611686018427387900     ; 3 uses
  %i.mo = shl i64 %n.vec, 3                       ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mh, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %i.lw, i64 %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mh, i64 %i.mr ; 2 uses
  %next.gep397 = getelementptr i8, ptr %i.lw, i64 %i.mr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.ms = getelementptr i8, ptr %next.gep397, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep397, align 8, !tbaa !248, !alias.scope !754, !noalias !749
  %wide.load398 = load <2 x i64>, ptr %i.ms, align 8, !tbaa !248, !alias.scope !754, !noalias !749
  %i.mt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !248, !alias.scope !757, !noalias !754
  store <2 x i64> %wide.load398, ptr %i.mt, align 8, !tbaa !248, !alias.scope !757, !noalias !754
  %i.mu = getelementptr i8, ptr %next.gep397, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep397, align 8, !tbaa !248, !alias.scope !754, !noalias !749
  store <2 x ptr> splat (ptr null), ptr %i.mu, align 8, !tbaa !248, !alias.scope !754, !noalias !749
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mv = icmp eq i64 %index.next, %n.vec
  br i1 %i.mv, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188, label %.lr.ph.i.i.i.i.i.i.i184.preheader593

.lr.ph.i.i.i.i.i.i.i184.preheader593:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i184.preheader, %middle.block
  %.012.i.i.i.i.i.i.i185.ph = phi ptr [ %i.mh, %vector.memcheck ], [ %i.mh, %.lr.ph.i.i.i.i.i.i.i184.preheader ], [ %i.mp, %middle.block ]
  %.0911.i.i.i.i.i.i.i186.ph = phi ptr [ %i.lw, %vector.memcheck ], [ %i.lw, %.lr.ph.i.i.i.i.i.i.i184.preheader ], [ %i.mq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i184

.lr.ph.i.i.i.i.i.i.i184:                          ; preds = %.lr.ph.i.i.i.i.i.i.i184.preheader593, %.lr.ph.i.i.i.i.i.i.i184
  %.012.i.i.i.i.i.i.i185 = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i.i.i184 ], [ %.012.i.i.i.i.i.i.i185.ph, %.lr.ph.i.i.i.i.i.i.i184.preheader593 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i186 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i.i.i184 ], [ %.0911.i.i.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i.i.i184.preheader593 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.mw = load i64, ptr %.0911.i.i.i.i.i.i.i186, align 8, !tbaa !248, !alias.scope !752, !noalias !749
  store i64 %i.mw, ptr %.012.i.i.i.i.i.i.i185, align 8, !tbaa !248, !alias.scope !749, !noalias !752
  store ptr null, ptr %.0911.i.i.i.i.i.i.i186, align 8, !tbaa !248, !alias.scope !752, !noalias !749
  %i.mx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i186, i64 8 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i185, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i187 = icmp eq ptr %i.mx, %i.lt
  br i1 %.not.i.i.i.i.i.i.i187, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188, label %.lr.ph.i.i.i.i.i.i.i184, !llvm.loop !760

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188: ; preds = %.lr.ph.i.i.i.i.i.i.i184, %middle.block, %.noexc193
  %.0.lcssa.i.i.i.i.i.i.i189 = phi ptr [ %i.mh, %.noexc193 ], [ %i.mp, %middle.block ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i184 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i189, i64 8
  %.not.i23.i.i.i190 = icmp eq ptr %i.lw, null
  br i1 %.not.i23.i.i.i190, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188
  call void @_ZdlPv(ptr noundef nonnull %i.lw) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i188, %bb.av
  store ptr %i.mh, ptr %i.kg, align 8, !tbaa !397
  store ptr %i.mz, ptr %i.kh, align 8, !tbaa !396
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.na, ptr %i.ki, align 8, !tbaa !398
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit197

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit197: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit194.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ax

.loopexit284:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i180
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp285:                            ; preds = %bb.au
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp285, %.loopexit284
  %lpad.phi288 = phi { ptr, i32 } [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp285 ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit197, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit178
  %i.nb = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !613 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !613 ; 2 uses
  %.not248304 = icmp eq ptr %i.nc, %i.ne
  br i1 %.not248304, label %._crit_edge308, label %.lr.ph307

._crit_edge308:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203, %bb.ax
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0216.0310, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.nf, %i.i
  br i1 %.not, label %._crit_edge312, label %.lr.ph311

.lr.ph307:                                        ; preds = %bb.ax, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203
  %.sroa.0204.0305 = phi ptr [ %i.nk, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203 ], [ %i.nc, %bb.ax ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0204.0305, i64 8
  call void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %15, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ng)
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0204.0305, i64 16 ; 2 uses
  %i.ni = load ptr, ptr %15, align 8, !tbaa !248
  store ptr null, ptr %15, align 8, !tbaa !248
  %i.nj = load ptr, ptr %i.nh, align 8, !tbaa !248 ; 3 uses
  store ptr %i.ni, ptr %i.nh, align 8, !tbaa !248
  %.not.i.i.i.i.i198 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i198, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit200

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit200: ; preds = %.lr.ph307
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.nj) #23
  call void @_ZdlPv(ptr noundef nonnull %i.nj) #26
  %.pr240 = load ptr, ptr %15, align 8, !tbaa !248 ; 3 uses
  %.not.i201 = icmp eq ptr %.pr240, null
  br i1 %.not.i201, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i202

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i202: ; preds = %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit200
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr240) #23
  call void @_ZdlPv(ptr noundef nonnull %.pr240) #26
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit203: ; preds = %.lr.ph307, %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit200, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0204.0305, i64 24 ; 2 uses
  %.not248 = icmp eq ptr %i.nk, %i.ne
  br i1 %.not248, label %._crit_edge308, label %.lr.ph307

bb.ay:                                            ; preds = %bb.aw, %bb.ar, %bb.al, %bb.ag, %bb.aa, %bb.v, %bb.p, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.f ], [ %lpad.phi283, %bb.ar ], [ %lpad.phi288, %bb.aw ], [ %lpad.phi273, %bb.ag ], [ %lpad.phi278, %bb.al ], [ %lpad.phi263, %bb.v ], [ %lpad.phi268, %bb.aa ], [ %lpad.phi253, %bb.k ], [ %lpad.phi258, %bb.p ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.50", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %.not = icmp eq i8 %i.b, 38
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

end_hunk_7
begin_hunk_8_@_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !32, !noalias !880
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !791  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !793
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !229
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !25
  %i.p = load i64, ptr %i.j, align 8, !tbaa !230
  store i64 %i.p, ptr %i.h, align 8, !tbaa !230
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !24
  store ptr %i.j, ptr %i.g, align 8, !tbaa !25
  store i64 0, ptr %i.r, align 8, !tbaa !24
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !791
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !791
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !25 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.x
}

declare void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_emplace_auxIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEN9__gnu_cxx17__normal_iteratorIPS5_S7_EENSD_IPKS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %i.j = load ptr, ptr %2, align 8, !tbaa !290    ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !290
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !563
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !10
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE16_Temporary_valueD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  store i64 %i.n, ptr %i.f, align 8, !tbaa !22
  store ptr null, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !10
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !22
  store ptr null, ptr %i.t, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !22   ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !22
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #23, !inline_history !883
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !884

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !22  ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE16_Temporary_valueD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(88) %i.ac) #23, !inline_history !885
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE16_Temporary_valueD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ah = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.ai = sub i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i12 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i12)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.d
  %i.as = load ptr, ptr %2, align 8, !tbaa !290
  store ptr null, ptr %2, align 8, !tbaa !290
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !563
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %3 = add i64 %i.b, -8
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.at = lshr i64 %4, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.av = add i64 %i.b, -8
  %i.aw = sub i64 %i.av, %i.c
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.ay
  %scevgep32 = getelementptr i8, ptr %i.a, i64 %i.ay
  %bound0 = icmp ult ptr %i.aq, %scevgep32
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bc ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.bc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.bd = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 8, !tbaa !22, !alias.scope !891, !noalias !886
  %wide.load34 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !22, !alias.scope !891, !noalias !886
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !22, !alias.scope !894, !noalias !891
  store <2 x i64> %wide.load34, ptr %i.be, align 8, !tbaa !22, !alias.scope !894, !noalias !891
  %i.bf = getelementptr i8, ptr %next.gep33, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep33, align 8, !tbaa !22, !alias.scope !891, !noalias !886
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !22, !alias.scope !891, !noalias !886
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !896

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader59

.lr.ph.i.i.i.i.i.preheader59:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader59, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader59 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader59 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !889, !noalias !886
  store i64 %i.bh, ptr %.012.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !886, !noalias !889
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !889, !noalias !886
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !897

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ba, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bk = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %5 = add i64 %i.ah, -8
  %6 = sub i64 %5, %i.b                           ; 2 uses
  %i.bl = lshr i64 %6, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check43 = icmp ult i64 %6, 216
  br i1 %min.iters.check43, label %.lr.ph.i.i.i.i17.i.preheader58, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %i.bn = add i64 %i.ah, -8
  %i.bo = sub i64 %i.bn, %i.b
  %i.bp = and i64 %i.bo, -8                       ; 2 uses
  %i.bq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bp
  %scevgep37 = getelementptr i8, ptr %i.bq, i64 16
  %i.br = add i64 %i.bp, %i.b
  %i.bs = add i64 %i.br, 8
  %i.bt = sub i64 %i.bs, %i.c
  %scevgep38 = getelementptr i8, ptr %i.a, i64 %i.bt
  %bound039 = icmp ult ptr %i.bk, %scevgep38
  %bound140 = icmp ult ptr %1, %scevgep37
  %found.conflict41 = and i1 %bound039, %bound140
  br i1 %found.conflict41, label %.lr.ph.i.i.i.i17.i.preheader58, label %vector.ph44

vector.ph44:                                      ; preds = %vector.memcheck36
  %n.vec46 = and i64 %i.bm, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec46, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.bx = shl i64 %index48, 3                     ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.by = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load51 = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !22, !alias.scope !903, !noalias !898
  %wide.load52 = load <2 x i64>, ptr %i.by, align 8, !tbaa !22, !alias.scope !903, !noalias !898
  %i.bz = getelementptr i8, ptr %next.gep49, i64 16
  store <2 x i64> %wide.load51, ptr %next.gep49, align 8, !tbaa !22, !alias.scope !906, !noalias !903
  store <2 x i64> %wide.load52, ptr %i.bz, align 8, !tbaa !22, !alias.scope !906, !noalias !903
  %i.ca = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !22, !alias.scope !903, !noalias !898
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !22, !alias.scope !903, !noalias !898
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next53, %n.vec46
  br i1 %i.cb, label %middle.block54, label %vector.body47, !llvm.loop !908

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.bm, %n.vec46
  br i1 %cmp.n55, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader58

.lr.ph.i.i.i.i17.i.preheader58:                   ; preds = %vector.memcheck36, %.lr.ph.i.i.i.i17.i.preheader, %middle.block54
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.bk, %vector.memcheck36 ], [ %i.bk, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bv, %middle.block54 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ag, %vector.memcheck36 ], [ %i.ag, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bw, %middle.block54 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader58, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader58 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader58 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.cc = load i64, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !22, !alias.scope !901, !noalias !898
  store i64 %i.cc, ptr %.012.i.i.i.i18.i, align 8, !tbaa !22, !alias.scope !898, !noalias !901
  store ptr null, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !22, !alias.scope !901, !noalias !898
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.cd, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !909

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block54, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.bk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ], [ %i.bv, %middle.block54 ], [ %i.ce, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.aq, ptr %0, align 8, !tbaa !12
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !267
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE16_Temporary_valueD2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !12
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.d
  ret ptr %i.ch
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !292    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.k, ptr %i.e, align 8, !tbaa !262
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -24
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #23
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !262  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !262
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
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit, !llvm.loop !910

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2) #23 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit, %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !326
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.d
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !326    ; 5 uses
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
end_hunk_8
