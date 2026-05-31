inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZN6duckdb10VacuumTask11ExecuteTaskEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182: ; preds = %.noexc.i317
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc, %.noexc318
  %.0.i.i.i185 = phi i1 [ false, %bb.dc ], [ true, %.noexc318 ] ; 2 uses
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qe = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.px
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.dd
  call void @_ZdlPv(ptr noundef %i.qe) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i.i.i185, label %bb.de, label %.body278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i.i.i185, label %bb.de, label %.body278

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182
  %.pn8.i.i.i183 = phi { ptr, i32 } [ %i.qc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182 ], [ %i.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187 ], [ %i.qd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186 ]
  call void @__cxa_free_exception(ptr %i.pw) #37
  br label %.body278

bb.df:                                            ; preds = %bb.dc
  unreachable

bb.dg:                                            ; preds = %.loopexit467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %.288558 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !24
  %i.qi = add i64 %i.qh, %i.jl                    ; 2 uses
  store i64 %i.qi, ptr %i.qg, align 8, !tbaa !24
  %i.qj = sub i64 %.085559, %i.jl                 ; 3 uses
  %i.qk = add nuw i64 %.288558, 1                 ; 6 uses
  %i.ql = load ptr, ptr %i.gc, align 8, !tbaa !5327
  %i.qm = load ptr, ptr %22, align 8, !tbaa !5331 ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = ashr exact i64 %i.qp, 3                 ; 3 uses
  %.not102 = icmp eq i64 %i.qj, 0                 ; 2 uses
  br i1 %.not102, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qr = icmp uge i64 %i.qk, %i.qq
  %i.qs = icmp ne i64 %i.qi, %i.ak
  %or.cond = select i1 %i.qs, i1 true, i1 %i.qr
  br i1 %or.cond, label %.loopexit468, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.qk, ptr %i.w, align 8, !tbaa !24
  store i64 %i.qq, ptr %i.x, align 8, !tbaa !24
  %.not.i.i.i201 = icmp ult i64 %i.qk, %i.qq
  br i1 %.not.i.i.i201, label %bb.dn, label %.noexc.i325, !prof !432

.noexc.i325:                                      ; preds = %bb.di
  %i.qt = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.qu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.qu, ptr %15, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  store i64 55, ptr %i.n, align 8, !tbaa !24
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc326 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ; 3 uses

.noexc326:                                        ; preds = %.noexc.i325
  store ptr %i.qv, ptr %15, align 8, !tbaa !35
  %i.qw = load i64, ptr %i.n, align 8, !tbaa !24  ; 3 uses
  store i64 %i.qw, ptr %i.qu, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.qv, ptr noundef nonnull align 1 dereferenceable(55) @.str.183, i64 55, i1 false)
  %i.qx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.qw, ptr %i.qx, align 8, !tbaa !117
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qw
  store i8 0, ptr %i.qy, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %.noexc326
  invoke void @__cxa_throw(ptr nonnull %i.qt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.dm unwind label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202: ; preds = %.noexc.i325
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %.noexc326
  %.0.i.i.i205 = phi i1 [ false, %bb.dj ], [ true, %.noexc326 ] ; 2 uses
  %i.ra = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rb = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.qu
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.dk
  call void @_ZdlPv(ptr noundef %i.rb) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0.i.i.i205, label %bb.dl, label %.body278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0.i.i.i205, label %bb.dl, label %.body278

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202
  %.pn8.i.i.i203 = phi { ptr, i32 } [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ], [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207 ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206 ]
  call void @__cxa_free_exception(ptr %i.qt) #37
  br label %.body278

bb.dm:                                            ; preds = %bb.dj
  unreachable

bb.dn:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qk
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !314 ; 7 uses
  %.not.i211 = icmp eq ptr %i.re, null
  br i1 %.not.i211, label %.noexc.i329, label %_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit220, !prof !99

.noexc.i329:                                      ; preds = %bb.dn
  %i.rf = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.rg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.rg, ptr %14, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  store i64 49, ptr %i.m, align 8, !tbaa !24
  %i.rh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc330 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i212 ; 3 uses

.noexc330:                                        ; preds = %.noexc.i329
  store ptr %i.rh, ptr %14, align 8, !tbaa !35
  %i.ri = load i64, ptr %i.m, align 8, !tbaa !24  ; 3 uses
  store i64 %i.ri, ptr %i.rg, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.rh, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ri, ptr %i.rj, align 8, !tbaa !117
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.ri
  store i8 0, ptr %i.rk, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.rf, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.noexc330
  invoke void @__cxa_throw(ptr nonnull %i.rf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.dr unwind label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i212: ; preds = %.noexc.i329
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do, %.noexc330
  %.0.i.i215 = phi i1 [ false, %bb.do ], [ true, %.noexc330 ] ; 2 uses
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rn = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.rg
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216: ; preds = %bb.dp
  call void @_ZdlPv(ptr noundef %i.rn) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br i1 %.0.i.i215, label %bb.dq, label %.body278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br i1 %.0.i.i215, label %bb.dq, label %.body278

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i212
  %.pn9.i.i213 = phi { ptr, i32 } [ %i.rl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i212 ], [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217 ], [ %i.rm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216 ]
  call void @__cxa_free_exception(ptr %i.rf) #37
  br label %.body278

bb.dr:                                            ; preds = %bb.do
  unreachable

_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit220: ; preds = %bb.dn
  store ptr %i.re, ptr %i.gh, align 8, !tbaa !2638
  %i.rp = load atomic i64, ptr %i.re seq_cst, align 8
  store i64 %i.rp, ptr %i.gg, align 8, !tbaa !2648
  %i.rq = getelementptr inbounds nuw i8, ptr %i.re, i64 40 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.re, i64 48 ; 4 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !2359 ; 3 uses
  %i.rt = load ptr, ptr %i.rq, align 8, !tbaa !2362 ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %.fr14.i = freeze i64 %i.rw
  %i.rx = ashr i64 %.fr14.i, 4                    ; 2 uses
  %i.ry = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rx, i64 48) ; 2 uses
  %i.rz = extractvalue { i64, i1 } %i.ry, 1
  %i.sa = extractvalue { i64, i1 } %i.ry, 0       ; 3 uses
  %i.sb = or disjoint i64 %i.sa, 8
  %i.sc = select i1 %i.rz, i64 -1, i64 %i.sb
  %i.sd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sc) #38
          to label %.noexc224 unwind label %.loopexit.split-lp ; 2 uses

.noexc224:                                        ; preds = %_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit220
  store i64 %i.rx, ptr %i.sd, align 16, !noalias !5357
  %i.se = getelementptr i8, ptr %i.sd, i64 8      ; 2 uses
  %i.sf = icmp eq ptr %i.rs, %i.rt
  br i1 %i.sf, label %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i, label %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.loopexit.i

_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.loopexit.i: ; preds = %.noexc224
  %i.sg = add i64 %i.sa, -48
  %i.sh = urem i64 %i.sg, 48
  %i.si = sub i64 %i.sa, %i.sh
  call void @llvm.memset.p0.i64(ptr align 8 %i.se, i8 0, i64 %i.si, i1 false), !noalias !5357
  br label %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i

_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i: ; preds = %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.loopexit.i, %.noexc224
  %i.sj = load ptr, ptr %i.ge, align 8, !tbaa !2090 ; 4 uses
  store ptr %i.se, ptr %i.ge, align 8, !tbaa !2090
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit.i, label %_ZN6duckdb10unique_ptrIA_NS_17ColumnAppendStateESt14default_deleteIS2_ELb0EEaSEOS5_.exit._ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit_crit_edge.i

_ZN6duckdb10unique_ptrIA_NS_17ColumnAppendStateESt14default_deleteIS2_ELb0EEaSEOS5_.exit._ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit_crit_edge.i: ; preds = %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i
  %i.sk = getelementptr inbounds i8, ptr %i.sj, i64 -8 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8            ; 2 uses
  %i.sm = icmp eq i64 %i.sl, 0
  br i1 %i.sm, label %_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN6duckdb10unique_ptrIA_NS_17ColumnAppendStateESt14default_deleteIS2_ELb0EEaSEOS5_.exit._ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit_crit_edge.i
  %.idx.i = mul nsw i64 %i.sl, 48
  %i.sn = getelementptr inbounds i8, ptr %i.sj, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6duckdb17ColumnAppendStateD2Ev.exit.i, %.preheader.preheader.i
  %i.so = phi ptr [ %i.sp, %_ZN6duckdb17ColumnAppendStateD2Ev.exit.i ], [ %i.sn, %.preheader.preheader.i ] ; 5 uses
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -48 ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %i.so, i64 -8
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !1254 ; 3 uses
  %.not.i.i.i352 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i352, label %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i.i.i: ; preds = %.preheader.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !12
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.sr) #37, !inline_history !5360
  br label %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22CompressionAppendStateEEclEPS1_.exit.i.i.i, %.preheader.i
  %i.sv = getelementptr inbounds i8, ptr %i.so, i64 -16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !1011 ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.sw, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.sw) #37, !inline_history !2043
  call void @_ZdlPv(ptr noundef nonnull %i.sw) #39, !inline_history !2043
  br label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i.i.i, %_ZNSt10unique_ptrIN6duckdb22CompressionAppendStateESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.sx = getelementptr inbounds i8, ptr %i.so, i64 -40 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !2044
  %i.sz = getelementptr inbounds i8, ptr %i.so, i64 -32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !2047
  invoke void @_ZSt8_DestroyIPN6duckdb17ColumnAppendStateEEvT_S3_(ptr noundef %i.sy, ptr noundef %i.ta)
          to label %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit.i.i unwind label %bb.ds, !inline_history !2048

bb.ds:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #41, !inline_history !2048
  unreachable

_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.td = load ptr, ptr %i.sx, align 8, !tbaa !2044 ; 2 uses
  %.not.i.i.i.i353 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i353, label %_ZN6duckdb17ColumnAppendStateD2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.td) #39, !inline_history !2043
  br label %_ZN6duckdb17ColumnAppendStateD2Ev.exit.i

_ZN6duckdb17ColumnAppendStateD2Ev.exit.i:         ; preds = %bb.dt, %_ZNSt6vectorIN6duckdb17ColumnAppendStateESaIS1_EED2Ev.exit.i.i
  %i.te = icmp eq ptr %i.sp, %i.sj
  br i1 %i.te, label %_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit: ; preds = %_ZN6duckdb17ColumnAppendStateD2Ev.exit.i, %_ZN6duckdb10unique_ptrIA_NS_17ColumnAppendStateESt14default_deleteIS2_ELb0EEaSEOS5_.exit._ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit_crit_edge.i
  call void @_ZdaPv(ptr noundef nonnull %i.sk) #39
  %.pre.i = load ptr, ptr %i.rr, align 8, !tbaa !2359
  %.pre11.i = load ptr, ptr %i.rq, align 8, !tbaa !2362
  br label %_ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i
  %i.tf = phi ptr [ %.pre11.i, %_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit ], [ %i.rt, %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i ]
  %i.tg = phi ptr [ %.pre.i, %_ZNKSt14default_deleteIA_N6duckdb17ColumnAppendStateEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit ], [ %i.rs, %_ZN6duckdb22make_unsafe_uniq_arrayINS_17ColumnAppendStateEEENS_10unique_ptrIA_T_St14default_deleteIS4_ELb0EEEm.exit.i ]
  %.not.i221 = icmp eq ptr %i.tg, %i.tf
  br i1 %.not.i221, label %_ZN6duckdb8RowGroup16InitializeAppendERNS_19RowGroupAppendStateE.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %_ZNSt10unique_ptrIA_N6duckdb17ColumnAppendStateESt14default_deleteIS2_EED2Ev.exit.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.re, i64 208
  br label %bb.du

bb.du:                                            ; preds = %.noexc229, %.lr.ph.i222
  %.010.i = phi i64 [ 0, %.lr.ph.i222 ], [ %i.us, %.noexc229 ] ; 7 uses
  invoke void @_ZNK6duckdb8RowGroup10LoadColumnEm(ptr noundef nonnull align 8 dereferenceable(218) %i.re, i64 noundef %.010.i)
          to label %.noexc225 unwind label %.loopexit

.noexc225:                                        ; preds = %bb.du
  %i.ti = icmp eq i64 %.010.i, %i.gd
  br i1 %i.ti, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %.noexc225
  %i.tj = load ptr, ptr %i.th, align 8, !tbaa !316 ; 2 uses
  %.not.i342 = icmp eq ptr %i.tj, null
  br i1 %.not.i342, label %.noexc.i398, label %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i223, !prof !99

.noexc.i398:                                      ; preds = %bb.dv
  %i.tk = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.tl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.tl, ptr %7, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 49, ptr %i.c, align 8, !tbaa !24
  %i.tm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc399 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i343 ; 3 uses

.noexc399:                                        ; preds = %.noexc.i398
  store ptr %i.tm, ptr %7, align 8, !tbaa !35
  %i.tn = load i64, ptr %i.c, align 8, !tbaa !24  ; 3 uses
  store i64 %i.tn, ptr %i.tl, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.tm, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.to = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !117
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tn
  store i8 0, ptr %i.tp, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.tk, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %.noexc399
  invoke void @__cxa_throw(ptr nonnull %i.tk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.dz unwind label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i343: ; preds = %.noexc.i398
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dw, %.noexc399
  %.0.i.i346 = phi i1 [ false, %bb.dw ], [ true, %.noexc399 ] ; 2 uses
  %i.tr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ts = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.tl
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347: ; preds = %bb.dx
  call void @_ZdlPv(ptr noundef %i.ts) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i346, label %bb.dy, label %.body278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i346, label %bb.dy, label %.body278

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i343
  %.pn9.i.i344 = phi { ptr, i32 } [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i343 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348 ], [ %i.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347 ]
  call void @__cxa_free_exception(ptr %i.tk) #37
  br label %.body278

bb.dz:                                            ; preds = %bb.dw
  unreachable

bb.ea:                                            ; preds = %.noexc225
  %i.tu = load ptr, ptr %i.rr, align 8, !tbaa !2359
  %i.tv = load ptr, ptr %i.rq, align 8, !tbaa !2362 ; 2 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.010.i, ptr %i.k, align 8, !tbaa !24
  store i64 %i.tz, ptr %i.l, align 8, !tbaa !24
  %.not.i.i.i332 = icmp ult i64 %.010.i, %i.tz
  br i1 %.not.i.i.i332, label %.noexc227, label %.noexc.i394, !prof !432

.noexc.i394:                                      ; preds = %bb.ea
  %i.ua = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ub = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ub, ptr %8, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 55, ptr %i.d, align 8, !tbaa !24
  %i.uc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc395 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i333 ; 3 uses

.noexc395:                                        ; preds = %.noexc.i394
  store ptr %i.uc, ptr %8, align 8, !tbaa !35
  %i.ud = load i64, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.uc, ptr noundef nonnull align 1 dereferenceable(55) @.str.183, i64 55, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ud, ptr %i.ue, align 8, !tbaa !117
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  store i8 0, ptr %i.uf, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ua, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %.noexc395
end_hunk_0
