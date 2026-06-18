inline.NumInlined: 2838
inline.NumDeleted: 1070
begin_hunk_0_@_ZN6duckdb14ListExtractFun12GetFunctionsEv:._crit_edge.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit139, %bb.cn
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %_ZNSt14_Function_baseD2Ev.exit139 ], [ %i.jf, %bb.cn ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #20
  br label %.body67

.body67:                                          ; preds = %.body157.thread, %bb.t, %.body157, %bb.ct
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %bb.ct ], [ %i.bg, %.body157 ], [ %i.bg, %bb.t ], [ %i.bj, %.body157.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jm) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit177, %.body67, %.thread
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %.body67 ], [ %i.as, %.thread ], [ %i.je, %.loopexit.loopexit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cx

bb.cu:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit80
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.cv:                                            ; preds = %bb.ak, %bb.ai
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %17) #20
  br label %.body83

bb.cw:                                            ; preds = %bb.bd, %bb.bb
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %18) #20
  br label %.body83

.body83:                                          ; preds = %.body.i, %.body.i92, %bb.cu, %bb.cw, %bb.cv
  %.pn46 = phi { ptr, i32 } [ %i.jp, %bb.cw ], [ %i.jo, %bb.cv ], [ %i.cg, %.body.i ], [ %i.jn, %bb.cu ], [ %i.er, %.body.i92 ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %11) #20
  br label %bb.cx

bb.cx:                                            ; preds = %.body83, %.loopexit
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %.body83 ], [ %.pn41.pn.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %2) #20
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.loopexit172
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.cx ], [ %.pn33.pn.pn.pn.pn.pn, %.loopexit172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.cy
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.cy ], [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ii, %bb.cc ]
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

declare void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL19ListExtractFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %9 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %10 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 32 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 29 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !28
  switch i8 %i.f, label %bb.gy [
    i8 101, label %bb.b
    i8 25, label %bb.db
    i8 1, label %bb.gx
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %bb.i unwind label %bb.r       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.b)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.m) #20
  br label %.body.i

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i64 -1, ptr %10, align 8, !tbaa !99
  %.not182.i = icmp eq i64 %i.b, 0
  br i1 %.not182.i, label %._crit_edge181.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.u

._crit_edge.i:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %.pre.i = load i64, ptr %10, align 8, !tbaa !99
  %i.q = icmp eq i64 %.pre.i, -1
  br i1 %i.q, label %bb.ay, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not137173.i = icmp eq ptr %.sroa.0124.2.i, %.sroa.12.2.i
  br i1 %.not137173.i, label %._crit_edge176.i, label %.lr.ph175.i

bb.m:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.n:                                             ; preds = %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.o:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.p:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.q:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.r:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.t:                                             ; preds = %bb.bc, %bb.bb, %._crit_edge176.i
  %.sroa.0124.0.lcssa215.i = phi ptr [ %.sroa.0124.0.lcssa213219221.i, %bb.bc ], [ %.sroa.0124.0.lcssa214220223.i, %bb.bb ], [ %.sroa.0124.2.i, %._crit_edge176.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, %.lr.ph.i
  %storemerge168.i = phi i64 [ 0, %.lr.ph.i ], [ %i.df, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 10 uses
  %.sroa.0124.0167.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0124.2.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 15 uses
  %.sroa.12.0165.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.12.2.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 10 uses
  %.sroa.20.0164.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.20.2.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 6 uses
  %i.z = load ptr, ptr %6, align 8, !tbaa !101
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %storemerge168.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.v, %bb.u
  %i.ae = phi i64 [ %i.ad, %bb.v ], [ %storemerge168.i, %bb.u ] ; 3 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !101
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.ag, null
  br i1 %.not.i64.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit65.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %storemerge168.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit65.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit65.i: ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ak = phi i64 [ %i.aj, %bb.w ], [ %storemerge168.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 3 uses
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !103 ; 2 uses
  %.not.i66.i = icmp eq ptr %i.al, null
  br i1 %.not.i66.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit65.i
  %i.am = lshr i64 %i.ae, 6
  %i.an = and i64 %i.ae, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !104
  %i.aq = shl nuw i64 1, %i.an
  %i.ar = and i64 %i.ap, %i.aq
  %.not139.i.a = icmp eq i64 %i.ar, 0
  br i1 %.not139.i.a, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit65.i
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !103 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.as, null
  br i1 %.not.i67.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.at = lshr i64 %i.ak, 6
  %i.au = and i64 %i.ak, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !104
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = and i64 %i.aw, %i.ax
  %.not140.i.a = icmp eq i64 %i.ay, 0
  br i1 %.not140.i.a, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.thread.i

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.not.i70.i = icmp eq ptr %.sroa.12.0165.i, %.sroa.20.0164.i
  br i1 %.not.i70.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %storemerge168.i, ptr %.sroa.12.0165.i, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.12.0165.i, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ba = ptrtoint ptr %.sroa.12.0165.i to i64
  %i.bb = ptrtoint ptr %.sroa.0124.0167.i to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.aa, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #21
          to label %.noexc71.i unwind label %.loopexit.i ; 4 uses

.noexc71.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %storemerge168.i, ptr %i.bl, align 8, !tbaa !104
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.ab, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ab:                                            ; preds = %.noexc71.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %.sroa.0124.0167.i, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ab, %.noexc71.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0124.0167.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0124.0167.i) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp.i:                             ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !104 ; 3 uses
  %.val.i = load i64, ptr %i.bp, align 8
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val63.i = load i64, ptr %i.bs, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.thread.i
  %i.bu = icmp sgt i64 %i.br, 0
  %i.bv = sext i1 %i.bu to i64
  %i.bw = add nsw i64 %i.br, %i.bv                ; 4 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.by = add nsw i64 %i.bw, %.val63.i            ; 2 uses
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %.thread.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.af, %bb.ae
  %.sink.i = phi i64 [ %i.bw, %bb.af ], [ %i.by, %bb.ae ]
  %i.ca = add i64 %.sink.i, %.val.i
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.ca)
          to label %bb.ag unwind label %.loopexit143.i

bb.af:                                            ; preds = %bb.ad
  %.not.i72.i = icmp ult i64 %i.bw, %.val63.i
  br i1 %.not.i72.i, label %.invoke.i, label %.thread.i

.thread.i:                                        ; preds = %bb.af, %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit69.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 -1, ptr %11, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.invoke.i
  %.pr.i = load i64, ptr %5, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.pr.i, ptr %11, align 8
  %.not141.i.a = icmp eq i64 %.pr.i, -1
  br i1 %.not141.i.a, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag, %.thread.i
  %.not.i75.i = icmp eq ptr %.sroa.12.0165.i, %.sroa.20.0164.i
  br i1 %.not.i75.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 %storemerge168.i, ptr %.sroa.12.0165.i, align 8, !tbaa !104
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.12.0165.i, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i

bb.aj:                                            ; preds = %bb.ah
  %i.cc = ptrtoint ptr %.sroa.12.0165.i to i64
  %i.cd = ptrtoint ptr %.sroa.0124.0167.i to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i76.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
          to label %.noexc82.i unwind label %.loopexit.split-lp144.i

.noexc82.i:                                       ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i76.i: ; preds = %bb.aj
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i77.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i77.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i78.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i78.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc83.i unwind label %.loopexit143.i ; 4 uses

.noexc83.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i76.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i64 %storemerge168.i, ptr %i.cn, align 8, !tbaa !104
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i79.i

bb.al:                                            ; preds = %.noexc83.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.0124.0167.i, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i79.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i79.i: ; preds = %bb.al, %.noexc83.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i17.i.i80.i = icmp eq ptr %.sroa.0124.0167.i, null
  br i1 %.not.i17.i.i80.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i79.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0124.0167.i) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i79.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i

.loopexit143.i:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i76.i, %.invoke.i
  %lpad.loopexit145.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp144.i:                          ; preds = %bb.ak
  %lpad.loopexit.split-lp146.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.an:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr %8, align 8, !tbaa !101
  %i.cs = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ao unwind label %bb.at     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %.not.i85.i = icmp eq ptr %i.ct, null
  br i1 %.not.i85.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cx = phi i64 [ %i.cw, %bb.ap ], [ %i.cs, %bb.ao ] ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = load ptr, ptr %9, align 8, !tbaa !102
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %storemerge168.i
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !3
  %i.db = load i64, ptr %10, align 8, !tbaa !99
  %.not142.i = icmp eq i64 %i.db, -1
  br i1 %.not142.i, label %bb.ar, label %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.cx)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dc = load i64, ptr %12, align 8, !tbaa !104
  store i64 %i.dc, ptr %10, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i

bb.at:                                            ; preds = %bb.an
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.av

_ZNSt6vectorImSaImEE9push_backERKm.exit84.i:      ; preds = %bb.as, %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i, %bb.ai
  %.sroa.20.1.i = phi ptr [ %.sroa.20.0164.i, %bb.aq ], [ %.sroa.20.0164.i, %bb.as ], [ %i.cq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i ], [ %.sroa.20.0164.i, %bb.ai ]
  %.sroa.12.1.i = phi ptr [ %.sroa.12.0165.i, %bb.aq ], [ %.sroa.12.0165.i, %bb.as ], [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i ], [ %i.cb, %bb.ai ]
  %.sroa.0124.1.i = phi ptr [ %.sroa.0124.0167.i, %bb.aq ], [ %.sroa.0124.0167.i, %bb.as ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i81.i ], [ %.sroa.0124.0167.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.y
  %.sroa.20.2.i = phi ptr [ %.sroa.20.1.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i ], [ %i.bo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.20.0164.i, %bb.y ]
  %.sroa.12.2.i = phi ptr [ %.sroa.12.1.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i ], [ %i.bn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.az, %bb.y ] ; 5 uses
  %.sroa.0124.2.i = phi ptr [ %.sroa.0124.1.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit84.i ], [ %i.bk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0124.0167.i, %bb.y ] ; 10 uses
  %i.df = add nuw i64 %storemerge168.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.df, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.u, !llvm.loop !105

bb.av:                                            ; preds = %bb.au, %bb.at, %.loopexit.split-lp144.i, %.loopexit143.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.dd, %bb.at ], [ %i.de, %bb.au ], [ %lpad.loopexit145.i, %.loopexit143.i ], [ %lpad.loopexit.split-lp146.i, %.loopexit.split-lp144.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.cv

._crit_edge176.i:                                 ; preds = %bb.aw, %.preheader.i
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.b, i64 noundef 0, i64 noundef 0)
          to label %bb.ay unwind label %bb.t

.lr.ph175.i:                                      ; preds = %.preheader.i, %bb.aw
  %.sroa.0115.0174.i = phi ptr [ %i.dl, %bb.aw ], [ %.sroa.0124.2.i, %.preheader.i ] ; 2 uses
  %i.dg = load i64, ptr %.sroa.0115.0174.i, align 8, !tbaa !104
  %i.dh = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.lr.ph175.i
  %i.di = trunc i64 %i.dh to i32
  %i.dj = load ptr, ptr %9, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0115.0174.i, i64 8 ; 2 uses
  %.not137.i.a = icmp eq ptr %i.dl, %.sroa.12.2.i
  br i1 %.not137.i.a, label %._crit_edge176.i, label %.lr.ph175.i

bb.ax:                                            ; preds = %.lr.ph175.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ay:                                            ; preds = %._crit_edge176.i, %._crit_edge.i
  %.not138177.i = icmp eq ptr %.sroa.0124.2.i, %.sroa.12.2.i
  br i1 %.not138177.i, label %._crit_edge181.i, label %.lr.ph180.i

._crit_edge181.i:                                 ; preds = %bb.az, %bb.ay
  %i.dn = icmp eq i64 %i.b, 1
  br i1 %i.dn, label %bb.bb, label %._crit_edge181.thread.i

.lr.ph180.i:                                      ; preds = %bb.ay, %bb.az
  %.sroa.0111.0178.i = phi ptr [ %i.dp, %bb.az ], [ %.sroa.0124.2.i, %bb.ay ] ; 2 uses
  %i.do = load i64, ptr %.sroa.0111.0178.i, align 8, !tbaa !104
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.do, i1 noundef zeroext true)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.lr.ph180.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0111.0178.i, i64 8 ; 2 uses
  %.not138.i = icmp eq ptr %i.dp, %.sroa.12.2.i
  br i1 %.not138.i, label %._crit_edge181.i, label %.lr.ph180.i

bb.ba:                                            ; preds = %.lr.ph180.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

._crit_edge181.thread.i:                          ; preds = %._crit_edge181.i, %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %.sroa.0124.0.lcssa214220224.i = phi ptr [ %.sroa.0124.2.i, %._crit_edge181.i ], [ null, %_ZN6duckdb15SelectionVectorC2Em.exit.i ] ; 3 uses
  %i.dr = load i8, ptr %i.c, align 8, !tbaa !106
  %i.ds = icmp eq i8 %i.dr, 2
  br i1 %i.ds, label %15, label %bb.bc

15:                                               ; preds = %._crit_edge181.thread.i
  %16 = load i8, ptr %i.d, align 8, !tbaa !106
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %15, %._crit_edge181.i
  %.sroa.0124.0.lcssa214220223.i = phi ptr [ %.sroa.0124.0.lcssa214220224.i, %15 ], [ %.sroa.0124.2.i, %._crit_edge181.i ] ; 2 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.bc unwind label %bb.t

bb.bc:                                            ; preds = %bb.bb, %15, %._crit_edge181.thread.i
  %.sroa.0124.0.lcssa213219221.i = phi ptr [ %.sroa.0124.0.lcssa214220223.i, %bb.bb ], [ %.sroa.0124.0.lcssa214220224.i, %15 ], [ %.sroa.0124.0.lcssa214220224.i, %._crit_edge181.thread.i ] ; 3 uses
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.b)
          to label %bb.bd unwind label %bb.t

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.not.i.i.i87.i = icmp eq ptr %.sroa.0124.0.lcssa213219221.i, null
  br i1 %.not.i.i.i87.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0124.0.lcssa213219221.i) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.be, %bb.bd
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.dv, align 8, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !69
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #20, !inline_history !113
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #20, !inline_history !113
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.bi ], [ %i.ei, %bb.bj ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.bk, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !71

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bg, %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i.i88.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i88.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.em, align 8, !tbaa !67
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !69
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #20, !inline_history !114
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #20, !inline_history !114
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.bo ], [ %i.ez, %bb.bp ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.bq, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !71

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bm, %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.fd, align 8, !tbaa !67
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !69
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #20, !inline_history !115
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #20, !inline_history !115
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.fg, %bb.bu ], [ %i.fq, %bb.bv ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.fr, label %bb.bw, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !71

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.bs, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i.i89.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i89.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i93.i, label %bb.bx

bb.bx:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.fu, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !69
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #20, !inline_history !114
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #20, !inline_history !114
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i93.i

bb.bz:                                            ; preds = %bb.bx
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i90.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i90.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i

bb.cb:                                            ; preds = %bb.bz
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i92.i = phi i32 [ %i.fx, %bb.ca ], [ %i.gh, %bb.cb ]
  %i.gi = icmp eq i32 %.0.i.i.i.i.i.i.i92.i, 1
  br i1 %i.gi, label %bb.cc, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i93.i, !prof !71

end_hunk_0
