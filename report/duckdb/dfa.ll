inline.NumInlined: 1354
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10duckdb_re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !37, !range !118, !noundef !119
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !158
  %i.k = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #19
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.18)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

common.resume:                                    ; preds = %bb.bo, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn59.pn.pn.pn.pn.pn, %bb.bo ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #19
  br label %common.resume

_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit:  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store ptr null, ptr %i.p, align 8, !tbaa !170
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  store ptr %3, ptr %i.q, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i8 0, ptr %i.r, align 8, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.o, align 8, !tbaa !218
  %i.t = invoke noundef zeroext i1 @_ZN10duckdb_re23DFA13AnalyzeSearchEPNS0_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = icmp uge ptr %i.u, inttoptr (i64 2 to ptr)
  %or.cond.not = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.not, label %bb.h, label %bb.bn

bb.g:                                             ; preds = %_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !230
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 1, ptr %i.y, align 8, !tbaa !232
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN10duckdb_re23DFA5StateESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EEC2Ev.exit unwind label %bb.n

_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EEC2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !233
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !3
  %i.af = invoke { ptr, i8 } @_ZNSt10_HashtableIPN10duckdb_re23DFA5StateESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS3_iEEES4_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRS3_iEEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.o ; 0 uses

_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRS3_iEEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EEC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !240
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.not.i = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRS3_iEEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !98
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !234
  br label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9push_backERKS3_.exit

bb.j:                                             ; preds = %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRS3_iEEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  invoke void @_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9push_backERKS3_.exit unwind label %bb.p

_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = icmp slt i32 %i.ap, -1
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #20
          to label %.noexc67 unwind label %bb.q

.noexc67:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #21
          to label %.noexc68 unwind label %bb.q   ; 4 uses

.noexc68:                                         ; preds = %bb.l
  store i32 0, ptr %i.au, align 4, !tbaa !3
  %i.av = getelementptr i8, ptr %i.au, i64 4      ; 3 uses
  %i.aw = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc68
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aw, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0124.0 = phi ptr [ %i.au, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.au, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.av, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 2 uses
  br label %bb.r

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69: ; preds = %.critedge, %.critedge.thread
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !80
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bb
  store i32 256, ptr %i.bc, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69
  %i.bd = shl nuw nsw i64 %i.ar, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #21
          to label %.noexc76 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ; 4 uses

.noexc76:                                         ; preds = %bb.m
  store i32 0, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71: ; preds = %.noexc76
  %i.bh = getelementptr i8, ptr %i.be, i64 4
  %.idx.i.i.i.i.i.i.i72 = shl nuw nsw i64 %i.bf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 0, i64 %.idx.i.i.i.i.i.i.i72, i1 false), !tbaa !3
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77

bb.n:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.o:                                             ; preds = %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EEC2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.p:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.critedge
  %.047154 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %10, %.critedge ] ; 3 uses
  %7 = sext i32 %.047154 to i64                   ; 3 uses
  %8 = getelementptr inbounds i8, ptr %i.az, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !105       ; 3 uses
  %smax163 = call i64 @llvm.smax.i64(i64 %7, i64 255)
  %exitcond.not204 = icmp sgt i32 %.047154, 254
  br i1 %exitcond.not204, label %.critedge.thread, label %.lr.ph203

bb.s:                                             ; preds = %.lr.ph203
  %exitcond.not = icmp eq i64 %indvars.iv.next, %smax163
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph203, !llvm.loop !241

.critedge.thread:                                 ; preds = %bb.r, %bb.s
  %smax.le = call i32 @llvm.smax.i32(i32 %.047154, i32 255)
  %i.bm = zext i8 %9 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bm
  store i32 %smax.le, ptr %i.bn, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69

.lr.ph203:                                        ; preds = %bb.r, %bb.s
  %indvars.iv202 = phi i64 [ %indvars.iv.next, %bb.s ], [ %7, %bb.r ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv202, 1 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.az, i64 %indvars.iv.next
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !105
  %i.bq = icmp eq i8 %i.bp, %9
  br i1 %i.bq, label %bb.s, label %.critedge, !llvm.loop !241

.critedge:                                        ; preds = %.lr.ph203
  %i.br = trunc nsw i64 %indvars.iv202 to i32     ; 2 uses
  %i.bs = zext i8 %9 to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !3
  %10 = add nsw i32 %i.br, 1
  %i.bu = icmp slt i64 %indvars.iv202, 255
  br i1 %i.bu, label %bb.r, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69, !llvm.loop !242

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71, %.noexc76, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69
  %.sroa.0118.0 = phi ptr [ %i.be, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71 ], [ %i.be, %.noexc76 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69 ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %.not.not155 = icmp eq ptr %.sroa.0124.0, %.0.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.t

bb.t:                                             ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !243
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !243 ; 4 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.bg, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !98 ; 3 uses
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !244
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i78 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9pop_frontEv.exit

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !245
  call void @_ZdlPv(ptr noundef %i.cj) #22
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !246
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.by, align 8, !tbaa !247
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !248 ; 3 uses
  store ptr %i.cm, ptr %i.bx, align 8, !tbaa !249
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 512
  store ptr %i.cn, ptr %i.bw, align 8, !tbaa !250
  br label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9pop_frontEv.exit: ; preds = %bb.v, %bb.w
  %storemerge.i = phi ptr [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  store ptr %storemerge.i, ptr %i.bv, align 8, !tbaa !251
  br i1 %.not.not155, label %.loopexit142, label %.lr.ph

_ZNSt6vectorIiSaIiEED2Ev.exit.thread:             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.lr.ph:                                           ; preds = %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9pop_frontEv.exit, %_ZN10duckdb_re23DFA7ByteMapEi.exit
  %.sroa.0114.0156 = phi ptr [ %i.fs, %_ZN10duckdb_re23DFA7ByteMapEi.exit ], [ %.sroa.0124.0, %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE9pop_frontEv.exit ] ; 2 uses
  %i.cp = load i32, ptr %.sroa.0114.0156, align 4, !tbaa !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.bz, ptr %2, align 8, !tbaa !152
  %i.cq = call i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bz) #19
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.cr = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull @.str.18)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc79 unwind label %.loopexit.split-lp

.noexc79:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cr) #19
  br label %.body

_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit.i:   ; preds = %.lr.ph
  %i.ct = invoke noundef ptr @_ZN10duckdb_re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.cf, i32 noundef %i.cp)
          to label %bb.aa unwind label %bb.af     ; 8 uses

bb.aa:                                            ; preds = %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit.i
  %i.cu = call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bz) #19
  %.not.i.i4.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i4.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull @.str.18)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc.i.i unwind label %bb.ae

.noexc.i.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cv) #19
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cx, %bb.ae ], [ %i.cw, %bb.ad ]
  %i.cy = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  call void @__clang_call_terminate(ptr %i.cy) #23
  unreachable

bb.af:                                            ; preds = %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10duckdb_re29MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !98
  %magicptr66 = ptrtoint ptr %i.ct to i64         ; 2 uses
  switch i64 %magicptr66, label %bb.ak [
    i64 0, label %bb.ay
    i64 1, label %bb.ah
  ]

.loopexit143:                                     ; preds = %bb.ar, %.loopexit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ag
  %i.da = icmp eq i32 %i.cp, 256
  %i.db = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 168
  %i.df = sext i32 %i.cp to i64
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !105
  %i.di = zext i8 %i.dh to i32
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dj = load i64, ptr %i.ac, align 8, !tbaa !233 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.am

.preheader:                                       ; preds = %bb.ak, %bb.al
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.al ], [ %i.z, %bb.ak ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !95 ; 3 uses
  %.not.i.i81 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i81, label %.loopexit139, label %bb.al

bb.al:                                            ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !98
  %i.dm = icmp eq ptr %i.ct, %i.dl
  br i1 %i.dm, label %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE4findERS9_.exit, label %.preheader, !llvm.loop !252

bb.am:                                            ; preds = %bb.ak
  %i.dn = load i64, ptr %i.y, align 8, !tbaa !232 ; 2 uses
  %i.do = urem i64 %magicptr66, %i.dn             ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !230
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i80, label %.loopexit139, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !98
  %i.dv = icmp eq ptr %i.ct, %i.du
  br i1 %i.dv, label %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.ao:                                            ; preds = %bb.ap
  %i.dw = icmp eq ptr %i.ct, %i.dz
  br i1 %i.dw, label %_ZNSt13unordered_mapIPN10duckdb_re23DFA5StateEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !254
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_:bb.a
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !272
  %i.ag = load ptr, ptr %0, align 8, !tbaa !263
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !248
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.aq = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !98
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !247
  store ptr %i.am, ptr %i.o, align 8, !tbaa !249
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !250
  store ptr %i.am, ptr %i.a, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN10duckdb_re23DFA5StateESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !272  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !263
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !281

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !248
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !248
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !281

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !248
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !248
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPN10duckdb_re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit, !prof !84

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIPN10duckdb_re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !281

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIPN10duckdb_re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIPN10duckdb_re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !248
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !248
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !263
  tail call void @_ZdlPv(ptr noundef %i.bc) #22
  store ptr %i.aq, ptr %0, align 8, !tbaa !263
  store i64 %i.am, ptr %i.k, align 8, !tbaa !272
  br label %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPN10duckdb_re23DFA5StateES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !247
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !248  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !249
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !250
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !247
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !248 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !249
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !250
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN10duckdb_re23DFAE", !11, i64 0, !13, i64 8, !8, i64 12, !14, i64 16, !15, i64 72, !15, i64 80, !16, i64 88, !14, i64 104, !27, i64 160, !27, i64 168, !28, i64 176, !5, i64 232}
!11 = !{!"p1 _ZTSN10duckdb_re24ProgE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSN10duckdb_re24Prog9MatchKindE", !5, i64 0}
!14 = !{!"_ZTSN10duckdb_re25MutexE", !5, i64 0}
!15 = !{!"p1 _ZTSN10duckdb_re23DFA5WorkqE", !12, i64 0}
!16 = !{!"_ZTSN10duckdb_re28PODArrayIiEE", !17, i64 0}
!17 = !{!"_ZTSSt10unique_ptrIA_iN10duckdb_re28PODArrayIiE7DeleterEE", !18, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_dataIiN10duckdb_re28PODArrayIiE7DeleterELb1ELb1EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_implIiN10duckdb_re28PODArrayIiE7DeleterEE", !20, i64 0}
!20 = !{!"_ZTSSt5tupleIJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !21, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !22, i64 0, !25, i64 8}
!22 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIiE7DeleterEEE", !23, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIiE7DeleterELb0EE", !24, i64 0}
!24 = !{!"_ZTSN10duckdb_re28PODArrayIiE7DeleterE", !4, i64 0}
!25 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !26, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!"_ZTSSt13unordered_setIPN10duckdb_re23DFA5StateENS1_9StateHashENS1_10StateEqualESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !30, i64 0, !27, i64 8, !32, i64 16, !27, i64 24, !34, i64 32, !33, i64 48}
!30 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!33 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!34 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !35, i64 0, !27, i64 8}
!35 = !{!"float", !5, i64 0}
!36 = !{!10, !13, i64 8}
!37 = !{!10, !8, i64 12}
!38 = !{!10, !27, i64 160}
!39 = !{!29, !30, i64 0}
!40 = !{!29, !27, i64 8}
!41 = !{!34, !35, i64 0}
!42 = !{!43, !4, i64 16}
!43 = !{!"_ZTSN10duckdb_re24ProgE", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !8, i64 24, !27, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !44, i64 88, !27, i64 104, !55, i64 112, !66, i64 128, !27, i64 144, !77, i64 152, !77, i64 160, !5, i64 168, !78, i64 424, !78, i64 428}
!44 = !{!"_ZTSN10duckdb_re28PODArrayItEE", !45, i64 0}
!45 = !{!"_ZTSSt10unique_ptrIA_tN10duckdb_re28PODArrayItE7DeleterEE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataItN10duckdb_re28PODArrayItE7DeleterELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implItN10duckdb_re28PODArrayItE7DeleterEE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJPtN10duckdb_re28PODArrayItE7DeleterEEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPtN10duckdb_re28PODArrayItE7DeleterEEE", !50, i64 0, !53, i64 8}
!50 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayItE7DeleterEEE", !51, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayItE7DeleterELb0EE", !52, i64 0}
!52 = !{!"_ZTSN10duckdb_re28PODArrayItE7DeleterE", !4, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !54, i64 0}
!54 = !{!"p1 short", !12, i64 0}
!55 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEEE", !56, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIA_N10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !59, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !60, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !61, i64 0, !64, i64 8}
!61 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !62, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !63, i64 0}
!63 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN10duckdb_re24Prog4InstELb0EE", !65, i64 0}
!65 = !{!"p1 _ZTSN10duckdb_re24Prog4InstE", !12, i64 0}
!66 = !{!"_ZTSN10duckdb_re28PODArrayIhEE", !67, i64 0}
!67 = !{!"_ZTSSt10unique_ptrIA_hN10duckdb_re28PODArrayIhE7DeleterEE", !68, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIhN10duckdb_re28PODArrayIhE7DeleterELb1ELb1EE", !69, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIhN10duckdb_re28PODArrayIhE7DeleterEE", !70, i64 0}
!70 = !{!"_ZTSSt5tupleIJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !71, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !72, i64 0, !75, i64 8}
!72 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIhE7DeleterEEE", !73, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIhE7DeleterELb0EE", !74, i64 0}
!74 = !{!"_ZTSN10duckdb_re28PODArrayIhE7DeleterE", !4, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !76, i64 0}
!76 = !{!"p1 omnipotent char", !12, i64 0}
!77 = !{!"p1 _ZTSN10duckdb_re23DFAE", !12, i64 0}
!78 = !{!"_ZTSSt9once_flag", !4, i64 0}
!79 = !{!10, !27, i64 168}
!80 = !{!43, !4, i64 20}
!81 = !{!43, !4, i64 48}
!82 = !{!83, !4, i64 0}
!83 = !{!"_ZTSN10duckdb_re210SparseSetTIvEE", !4, i64 0, !16, i64 8, !16, i64 24}
!84 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!85 = !{!25, !26, i64 0}
!86 = !{!87, !4, i64 40}
!87 = !{!"_ZTSN10duckdb_re23DFA5WorkqE", !83, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !8, i64 52}
!88 = !{!87, !4, i64 44}
!89 = !{!87, !4, i64 48}
!90 = !{!87, !8, i64 52}
!91 = !{!10, !15, i64 72}
!92 = !{!10, !15, i64 80}
!93 = !{!26, !26, i64 0}
!94 = !{!29, !33, i64 16}
!95 = !{!32, !33, i64 0}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTSN10duckdb_re23DFA5StateE", !12, i64 0}
!100 = distinct !{!100, !97}
!101 = !{!102, !76, i64 0}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !76, i64 0}
!103 = !{!104, !27, i64 8}
!104 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !102, i64 0, !27, i64 8, !5, i64 16}
!105 = !{!5, !5, i64 0}
!106 = !{!104, !76, i64 0}
!107 = distinct !{!107, !97}
!108 = !{!109, !4, i64 8}
!109 = !{!"_ZTSN10duckdb_re23DFA5StateE", !26, i64 0, !4, i64 8, !4, i64 12, !110, i64 16}
!110 = !{!"p1 _ZTSSt6atomicIPN10duckdb_re23DFA5StateEE", !12, i64 0}
!111 = !{!109, !4, i64 12}
!112 = !{!109, !26, i64 0}
!113 = distinct !{!113, !97}
!114 = !{!65, !65, i64 0}
!115 = !{!116, !4, i64 0}
!116 = !{!"_ZTSN10duckdb_re24Prog4InstE", !4, i64 0, !5, i64 4}
!117 = !{!43, !8, i64 1}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = distinct !{!120, !97, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = distinct !{!122, !97}
!123 = distinct !{!123, !97}
!124 = distinct !{!124, !97}
!125 = !{!109, !110, i64 16}
!126 = !{!127, !99, i64 0}
!127 = !{!"_ZTSSt13__atomic_baseIPN10duckdb_re23DFA5StateEE", !99, i64 0}
!128 = distinct !{!128, !97, !129, !130}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!132, !132, i64 0}
!132 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN10duckdb_re23DFA5StateELb1EEEEEE", !12, i64 0}
!133 = distinct !{!133, !97, !130, !129}
!134 = distinct !{!134, !97}
!135 = distinct !{!135, !97}
!136 = !{!137, !8, i64 0}
!137 = !{!"_ZTS10LogMessage", !8, i64 0, !138, i64 8}
!138 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !139, i64 0, !140, i64 8}
!139 = !{!"_ZTSSo"}
!140 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !141, i64 0, !144, i64 64, !104, i64 72}
!141 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !142, i64 56}
!142 = !{!"_ZTSSt6locale", !143, i64 0}
!143 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!144 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"vtable pointer", !6, i64 0}
!147 = !{!43, !4, i64 12}
!148 = !{!43, !4, i64 8}
!149 = distinct !{!149, !97}
!150 = distinct !{!150, !97}
!151 = distinct !{!151, !97}
!152 = !{!153, !154, i64 0}
!153 = !{!"_ZTSN10duckdb_re29MutexLockE", !154, i64 0}
!154 = !{!"p1 _ZTSN10duckdb_re25MutexE", !12, i64 0}
!155 = !{!15, !15, i64 0}
!156 = !{!157, !154, i64 0}
!157 = !{!"_ZTSN10duckdb_re23DFA8RWLockerE", !154, i64 0, !8, i64 8}
!158 = !{!157, !8, i64 8}
!159 = !{!160, !27, i64 0}
!160 = !{!"_ZTSN10duckdb_re25hooks18DFAStateCacheResetE", !27, i64 0, !27, i64 8}
!161 = !{!29, !27, i64 24}
!162 = !{!160, !27, i64 8}
!163 = !{!164, !77, i64 0}
!164 = !{!"_ZTSN10duckdb_re23DFA10StateSaverE", !77, i64 0, !26, i64 8, !4, i64 16, !4, i64 20, !8, i64 24, !99, i64 32}
!165 = !{!164, !8, i64 24}
!166 = !{!164, !99, i64 32}
!167 = !{!164, !26, i64 8}
!168 = !{!164, !4, i64 16}
!169 = !{!164, !4, i64 20}
end_hunk_1
