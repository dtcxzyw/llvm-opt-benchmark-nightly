inline.NumInlined: 9358
inline.NumDeleted: 4125
begin_hunk_0_@_ZN6duckdb6Binder27BindTableInTableOutFunctionERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_14BoundStatementE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ak = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb14BoundStatementaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %5) #24 ; 0 uses
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.al = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(472) %i.al)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %4, align 8, !tbaa !142   ; 3 uses
  %.not.i13 = icmp eq ptr %i.am, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %bb.m
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(240) %i.am) #24, !inline_history !201
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !411 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.as, align 8, !tbaa !412
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !414
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !172
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !428
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !172
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !428
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !148
  %.not.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.q ], [ %i.bf, %bb.r ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.s, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, !prof !205

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.t:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.l, %bb.k, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !172
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.s) #24, !inline_history !204
  br label %bb.x

bb.w:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit19, %bb.w, %bb.u
  %.pn8 = phi { ptr, i32 } [ %i.bi, %bb.u ], [ %i.bo, %bb.w ], [ %i.bk, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bj, %bb.v ] ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !142   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i20, label %.body, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i21: ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !172
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(240) %i.bp) #24, !inline_history !201
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i21, %bb.x, %bb.t, %bb.b
  %.pn8.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.bh, %bb.t ], [ %.pn8, %bb.x ], [ %.pn8, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb6Binder27BindTableFunctionParametersERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERNS3_INS_11LogicalTypeELb1ESaISC_EEERNS3_INS_5ValueELb1ESaISG_EEERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSQ_SG_EEERNS_14BoundStatementERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(128) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::TableFunction", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %19 = alloca %"class.duckdb::ErrorData", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.duckdb::shared_ptr.487", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::BoundStatement", align 8 ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %23 = alloca %"class.duckdb::TableFunctionBinder", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %27 = alloca %"class.duckdb::unique_ptr.539", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %30 = alloca %"class.duckdb::Value", align 8    ; 10 uses
  %31 = alloca %"class.duckdb::ErrorData", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !530   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val113 = load ptr, ptr %i.e, align 8, !tbaa !530 ; 2 uses
  %.not1724.i = icmp eq ptr %.val, %.val113
  br i1 %.not1724.i, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 8 ; 2 uses
  %.not17.i = icmp eq ptr %i.f, %.val113
  br i1 %.not17.i, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.05.025.i = phi ptr [ %i.f, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.025.i) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(56) %i.g), !inline_history !1782
  br i1 %i.k, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1783
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !1786
  %.not41.i = icmp eq ptr %i.n, %i.o
  br i1 %.not41.i, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %.lr.ph35.i

._crit_edge36.i:                                  ; preds = %bb.j
  br i1 %.151.lcssa.i, label %bb.k, label %bb.p

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.j
  %.04934.i = phi i64 [ %i.fg, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %.05033.i = phi i1 [ %.151.lcssa.i, %bb.j ], [ false, %.preheader.i ] ; 6 uses
  %.05332.i = phi i1 [ %.154.i, %bb.j ], [ false, %.preheader.i ]
  %.05531.i = phi i8 [ %.156.i, %bb.j ], [ 0, %.preheader.i ] ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(544) ptr @_ZN6duckdb6vectorINS_13TableFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.04934.i) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !314  ; 45 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !314  ; 3 uses
  %.not1827.i = icmp eq ptr %i.r, %i.t
  br i1 %.not1827.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph35.i
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = add i64 %i.u, -24
  %i.x = sub i64 %i.w, %i.v                       ; 3 uses
  %i.y = udiv i64 %i.x, 24
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 168
  br i1 %min.iters.check, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check415 = icmp ult i64 %i.x, 744
  br i1 %min.iters.check415, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 24
  %n.vec = and i64 %i.z, 2305843009213693920      ; 4 uses
  %i.aa = mul i64 %n.vec, 24
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dw, %vector.body ]
  %vec.phi416 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dx, %vector.body ]
  %i.ac = mul i64 %index, 24                      ; 32 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep417 = getelementptr i8, ptr %i.ad, i64 24
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep418 = getelementptr i8, ptr %i.ae, i64 48
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep419 = getelementptr i8, ptr %i.af, i64 72
  %i.ag = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep420 = getelementptr i8, ptr %i.ag, i64 96
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep421 = getelementptr i8, ptr %i.ah, i64 120
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep422 = getelementptr i8, ptr %i.ai, i64 144
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep423 = getelementptr i8, ptr %i.aj, i64 168
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep424 = getelementptr i8, ptr %i.ak, i64 192
  %i.al = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep425 = getelementptr i8, ptr %i.al, i64 216
  %i.am = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep426 = getelementptr i8, ptr %i.am, i64 240
  %i.an = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep427 = getelementptr i8, ptr %i.an, i64 264
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep428 = getelementptr i8, ptr %i.ao, i64 288
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep429 = getelementptr i8, ptr %i.ap, i64 312
  %i.aq = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep430 = getelementptr i8, ptr %i.aq, i64 336
  %i.ar = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep431 = getelementptr i8, ptr %i.ar, i64 360
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep432 = getelementptr i8, ptr %i.as, i64 384
  %i.at = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep433 = getelementptr i8, ptr %i.at, i64 408
  %i.au = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep434 = getelementptr i8, ptr %i.au, i64 432
  %i.av = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep435 = getelementptr i8, ptr %i.av, i64 456
  %i.aw = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep436 = getelementptr i8, ptr %i.aw, i64 480
  %i.ax = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep437 = getelementptr i8, ptr %i.ax, i64 504
  %i.ay = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep438 = getelementptr i8, ptr %i.ay, i64 528
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep439 = getelementptr i8, ptr %i.az, i64 552
  %i.ba = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep440 = getelementptr i8, ptr %i.ba, i64 576
  %i.bb = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep441 = getelementptr i8, ptr %i.bb, i64 600
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep442 = getelementptr i8, ptr %i.bc, i64 624
  %i.bd = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep443 = getelementptr i8, ptr %i.bd, i64 648
  %i.be = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep444 = getelementptr i8, ptr %i.be, i64 672
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep445 = getelementptr i8, ptr %i.bf, i64 696
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep446 = getelementptr i8, ptr %i.bg, i64 720
  %i.bh = getelementptr i8, ptr %i.r, i64 %i.ac
  %next.gep447 = getelementptr i8, ptr %i.bh, i64 744
  %i.bi = load i8, ptr %next.gep, align 8, !tbaa !547
  %i.bj = load i8, ptr %next.gep417, align 8, !tbaa !547
  %i.bk = load i8, ptr %next.gep418, align 8, !tbaa !547
  %i.bl = load i8, ptr %next.gep419, align 8, !tbaa !547
  %i.bm = load i8, ptr %next.gep420, align 8, !tbaa !547
  %i.bn = load i8, ptr %next.gep421, align 8, !tbaa !547
  %i.bo = load i8, ptr %next.gep422, align 8, !tbaa !547
  %i.bp = load i8, ptr %next.gep423, align 8, !tbaa !547
  %i.bq = load i8, ptr %next.gep424, align 8, !tbaa !547
  %i.br = load i8, ptr %next.gep425, align 8, !tbaa !547
  %i.bs = load i8, ptr %next.gep426, align 8, !tbaa !547
  %i.bt = load i8, ptr %next.gep427, align 8, !tbaa !547
  %i.bu = load i8, ptr %next.gep428, align 8, !tbaa !547
  %i.bv = load i8, ptr %next.gep429, align 8, !tbaa !547
  %i.bw = load i8, ptr %next.gep430, align 8, !tbaa !547
  %i.bx = load i8, ptr %next.gep431, align 8, !tbaa !547
  %i.by = insertelement <16 x i8> poison, i8 %i.bi, i64 0
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 1
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 2
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 3
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 4
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 5
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 6
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 7
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 8
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 9
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 10
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 11
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 12
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 13
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 14
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 15
  %i.co = load i8, ptr %next.gep432, align 8, !tbaa !547
  %i.cp = load i8, ptr %next.gep433, align 8, !tbaa !547
  %i.cq = load i8, ptr %next.gep434, align 8, !tbaa !547
  %i.cr = load i8, ptr %next.gep435, align 8, !tbaa !547
  %i.cs = load i8, ptr %next.gep436, align 8, !tbaa !547
  %i.ct = load i8, ptr %next.gep437, align 8, !tbaa !547
  %i.cu = load i8, ptr %next.gep438, align 8, !tbaa !547
  %i.cv = load i8, ptr %next.gep439, align 8, !tbaa !547
  %i.cw = load i8, ptr %next.gep440, align 8, !tbaa !547
  %i.cx = load i8, ptr %next.gep441, align 8, !tbaa !547
  %i.cy = load i8, ptr %next.gep442, align 8, !tbaa !547
  %i.cz = load i8, ptr %next.gep443, align 8, !tbaa !547
  %i.da = load i8, ptr %next.gep444, align 8, !tbaa !547
  %i.db = load i8, ptr %next.gep445, align 8, !tbaa !547
  %i.dc = load i8, ptr %next.gep446, align 8, !tbaa !547
  %i.dd = load i8, ptr %next.gep447, align 8, !tbaa !547
  %i.de = insertelement <16 x i8> poison, i8 %i.co, i64 0
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 1
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 2
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 3
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 4
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 5
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 6
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 7
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 8
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 9
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 10
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 11
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 12
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 13
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 14
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 15
  %i.du = icmp eq <16 x i8> %i.cn, splat (i8 103)
  %i.dv = icmp eq <16 x i8> %i.dt, splat (i8 103)
  %i.dw = or <16 x i1> %vec.phi, %i.du            ; 2 uses
  %i.dx = or <16 x i1> %vec.phi416, %i.dv         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !1787

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dx, %i.dw
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dz = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.ea = icmp ne i16 %i.dz, 0
  %rdx.select = select i1 %i.ea, i1 true, i1 %.05033.i ; 3 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !1788

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %.05033.i, %vector.main.loop.iter.check ]
  %i.eb = xor i1 %bc.merge.rdx, %.05033.i
  %n.vec449 = and i64 %i.z, 2305843009213693944   ; 3 uses
  %i.ec = mul i64 %n.vec449, 24
  %i.ed = getelementptr i8, ptr %i.r, i64 %i.ec
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index450 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next456, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi451 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr465, %vec.epilog.vector.body ]
  %i.ee = mul i64 %index450, 24                   ; 8 uses
  %next.gep452 = getelementptr i8, ptr %i.r, i64 %i.ee
  %34 = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep453 = getelementptr i8, ptr %34, i64 24
  %35 = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep454 = getelementptr i8, ptr %35, i64 48
  %36 = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep455 = getelementptr i8, ptr %36, i64 72
  %37 = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep452.a = getelementptr i8, ptr %37, i64 96
  %i.ef = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep453.a = getelementptr i8, ptr %i.ef, i64 120
  %i.eg = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep454.a = getelementptr i8, ptr %i.eg, i64 144
  %i.eh = getelementptr i8, ptr %i.r, i64 %i.ee
  %next.gep455.a = getelementptr i8, ptr %i.eh, i64 168
  %38 = load i8, ptr %next.gep452, align 8, !tbaa !547
  %39 = load i8, ptr %next.gep453, align 8, !tbaa !547
  %40 = load i8, ptr %next.gep454, align 8, !tbaa !547
  %41 = load i8, ptr %next.gep455, align 8, !tbaa !547
  %i.ei = load i8, ptr %next.gep452.a, align 8, !tbaa !547
  %i.ej = load i8, ptr %next.gep453.a, align 8, !tbaa !547
  %i.ek = load i8, ptr %next.gep454.a, align 8, !tbaa !547
  %i.el = load i8, ptr %next.gep455.a, align 8, !tbaa !547
  %42 = insertelement <8 x i8> poison, i8 %38, i64 0
  %43 = insertelement <8 x i8> %42, i8 %39, i64 1
  %44 = insertelement <8 x i8> %43, i8 %40, i64 2
  %45 = insertelement <8 x i8> %44, i8 %41, i64 3
  %46 = insertelement <8 x i8> %45, i8 %i.ei, i64 4
  %47 = insertelement <8 x i8> %46, i8 %i.ej, i64 5
  %48 = insertelement <8 x i8> %47, i8 %i.ek, i64 6
  %49 = insertelement <8 x i8> %48, i8 %i.el, i64 7
  %50 = icmp eq <8 x i8> %49, splat (i8 103)
  %51 = or <8 x i1> %vec.phi451, %50
  %.fr465 = freeze <8 x i1> %51                   ; 2 uses
  %index.next456 = add nuw i64 %index450, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1789

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %52 = bitcast <8 x i1> %.fr465 to i8
  %i.en = icmp ne i8 %52, 0
  %rdx.select457 = select i1 %i.en, i1 true, i1 %.05033.i ; 2 uses
  %cmp.n458 = icmp eq i64 %i.z, %n.vec449
  br i1 %cmp.n458, label %._crit_edge.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15129.i.ph = phi i1 [ %.05033.i, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select457, %vec.epilog.middle.block ]
  %.sroa.01.028.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

._crit_edge.i:                                    ; preds = %.lr.ph30.i, %middle.block, %vec.epilog.middle.block, %.lr.ph35.i
  %.151.lcssa.i = phi i1 [ %.05033.i, %.lr.ph35.i ], [ %rdx.select457, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select.i, %.lr.ph30.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1790
  %.not60.i = icmp eq ptr %i.ep, null
  br i1 %.not60.i, label %bb.c, label %bb.j

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.15129.i = phi i1 [ %spec.select.i, %.lr.ph30.i ], [ %.15129.i.ph, %.lr.ph30.i.preheader ]
  %.sroa.01.028.i = phi ptr [ %i.es, %.lr.ph30.i ], [ %.sroa.01.028.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %i.eq = load i8, ptr %.sroa.01.028.i, align 8, !tbaa !547
  %i.er = icmp eq i8 %i.eq, 103
  %spec.select.i = select i1 %i.er, i1 true, i1 %.15129.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %i.es, %i.t
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph30.i, !llvm.loop !1791

bb.c:                                             ; preds = %._crit_edge.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1792
  %.not61.i = icmp eq ptr %i.eu, null
  br i1 %.not61.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1793
  %.not62.i = icmp eq ptr %i.ew, null
  br i1 %.not62.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1794
  %.not63.i = icmp eq ptr %i.ey, null
  br i1 %.not63.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fd = load ptr, ptr %9, align 8, !tbaa !149   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.fd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.156.i = phi i8 [ 1, %._crit_edge.i ], [ %.05531.i, %bb.e ], [ %.05531.i, %bb.d ], [ %.05531.i, %bb.c ] ; 3 uses
  %.154.i = phi i1 [ %.05332.i, %._crit_edge.i ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.fg = add nuw i64 %.04934.i, 1                ; 2 uses
  %i.fh = load ptr, ptr %i.m, align 8, !tbaa !1783
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !1786
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = sdiv exact i64 %i.fl, 544
  %i.fn = icmp ult i64 %i.fg, %i.fm
  br i1 %i.fn, label %.lr.ph35.i, label %._crit_edge36.i, !llvm.loop !1795

bb.k:                                             ; preds = %._crit_edge36.i
  %i.fo = icmp eq i64 %i.fl, 544
  br i1 %i.fo, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fp = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.128, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i

bb.m:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i: ; preds = %bb.l
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.033.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ft = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ft) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %.033.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %.033.i, label %.sink.split.i, label %common.resume

bb.p:                                             ; preds = %._crit_edge36.i
  %i.fw = trunc nuw i8 %.156.i to i1
  %or.cond.i = select i1 %i.fw, i1 %.154.i, i1 false
  br i1 %or.cond.i, label %bb.q, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit

bb.q:                                             ; preds = %bb.p
  %i.fx = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.129, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i

bb.r:                                             ; preds = %bb.q
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i: ; preds = %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gb = load ptr, ptr %13, align 8, !tbaa !149  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.gb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0.i, label %.sink.split.i, label %common.resume

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.sink.i = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ]
  %.pn64.pn.ph.i = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread.i ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #24
  br label %common.resume
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!1588 = distinct !{!1588, !1589, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1589 = distinct !{!1589, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1592 = !{!1591, !1593}
!1593 = distinct !{!1593, !1594}
!1594 = distinct !{!1594, !"LVerDomain"}
!1595 = !{!1588, !1596}
!1596 = distinct !{!1596, !1594}
!1597 = distinct !{!1597, !168, !169, !170}
!1598 = distinct !{!1598, !168, !169}
!1599 = !{!1600, !24, i64 208}
!1600 = !{!"_ZTSN6duckdb8PivotRefE", !119, i64 0, !677, i64 104, !522, i64 112, !134, i64 136, !1601, i64 160, !134, i64 184, !24, i64 208, !1605, i64 216, !134, i64 240, !134, i64 264}
!1601 = !{!"_ZTSN6duckdb6vectorINS_11PivotColumnELb1ESaIS1_EEE", !1602, i64 0}
!1602 = !{!"_ZTSSt6vectorIN6duckdb11PivotColumnESaIS1_EE", !1603, i64 0}
!1603 = !{!"_ZTSSt12_Vector_baseIN6duckdb11PivotColumnESaIS1_EE", !1604, i64 0}
!1604 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11PivotColumnESaIS1_EE12_Vector_implE", !1409, i64 0}
!1605 = !{!"_ZTSN6duckdb6vectorINS_17PivotValueElementELb1ESaIS1_EEE", !1606, i64 0}
!1606 = !{!"_ZTSSt6vectorIN6duckdb17PivotValueElementESaIS1_EE", !1607, i64 0}
!1607 = !{!"_ZTSSt12_Vector_baseIN6duckdb17PivotValueElementESaIS1_EE", !1608, i64 0}
!1608 = !{!"_ZTSNSt12_Vector_baseIN6duckdb17PivotValueElementESaIS1_EE12_Vector_implE", !1068, i64 0}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"_ZN6duckdb9make_uniqINS_18OperatorExpressionEJNS_14ExpressionTypeENS_10unique_ptrINS_19ColumnRefExpressionESt14default_deleteIS4_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1611 = distinct !{!1611, !"_ZN6duckdb9make_uniqINS_18OperatorExpressionEJNS_14ExpressionTypeENS_10unique_ptrINS_19ColumnRefExpressionESt14default_deleteIS4_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1612 = distinct !{null, null, null}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1615, !"_ZN6duckdb9make_uniqINS_21ConjunctionExpressionEJNS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEENS3_INS_18OperatorExpressionES5_IS8_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1615 = distinct !{!1615, !"_ZN6duckdb9make_uniqINS_21ConjunctionExpressionEJNS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEENS3_INS_18OperatorExpressionES5_IS8_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1616 = distinct !{null, null, null}
!1617 = distinct !{null, null}
!1618 = distinct !{!1618, !168}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1621, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!1621 = distinct !{!1621, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1624, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!1624 = distinct !{!1624, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!1627 = distinct !{!1627, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!1628 = !{!1629, !1630, i64 0}
!1629 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb13OrderModifierELb0EE", !1630, i64 0}
!1630 = !{!"p1 _ZTSN6duckdb13OrderModifierE", !14, i64 0}
!1631 = !{!1630, !1630, i64 0}
!1632 = distinct !{null, null}
!1633 = distinct !{null, null, null, ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev, null, null, null, null, null}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!1636 = distinct !{!1636, !"_ZNSt7__cxx119to_stringEm"}
!1637 = !{!1638}
!1638 = distinct !{!1638, !1639, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1639 = distinct !{!1639, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1640 = !{!1641}
!1641 = distinct !{!1641, !1642, !"_ZN6duckdb9make_uniqINS_14StarExpressionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1642 = distinct !{!1642, !"_ZN6duckdb9make_uniqINS_14StarExpressionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1643 = !{!1644, !190, i64 0}
!1644 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb15SelectStatementELb0EE", !190, i64 0}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1647 = distinct !{!1647, !"_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZN6duckdb9make_uniqINS_14StarExpressionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1650 = distinct !{!1650, !"_ZN6duckdb9make_uniqINS_14StarExpressionEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1653, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1653 = distinct !{!1653, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1653, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1656 = !{!1655, !1657}
!1657 = distinct !{!1657, !1658}
!1658 = distinct !{!1658, !"LVerDomain"}
!1659 = !{!1652, !1660}
!1660 = distinct !{!1660, !1658}
!1661 = distinct !{!1661, !168, !169, !170}
!1662 = distinct !{!1662, !168, !169}
!1663 = !{!1664, !42, i64 104}
!1664 = !{!"_ZTSN6duckdb10LogicalGetE", !292, i64 0, !42, i64 104, !390, i64 112, !1665, i64 656, !306, i64 664, !134, i64 688, !1671, i64 712, !845, i64 768, !1672, i64 792, !1682, i64 840, !63, i64 864, !306, i64 920, !134, i64 944, !845, i64 968, !1686, i64 992, !1687, i64 1048, !129, i64 1064, !1691, i64 1072, !1699, i64 1080}
!1665 = !{!"_ZTSN6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEE", !1666, i64 0}
!1666 = !{!"_ZTSSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EE", !1667, i64 0}
!1667 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12FunctionDataESt14default_deleteIS1_ELb1ELb1EE", !1668, i64 0}
!1668 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12FunctionDataESt14default_deleteIS1_EE", !1669, i64 0}
!1669 = !{!"_ZTSSt5tupleIJPN6duckdb12FunctionDataESt14default_deleteIS1_EEE", !1670, i64 0}
!1670 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12FunctionDataESt14default_deleteIS1_EEE", !372, i64 0}
!1671 = !{!"_ZTSSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !387, i64 0}
!1672 = !{!"_ZTSN6duckdb14TableFilterSetE", !1673, i64 0}
!1673 = !{!"_ZTSSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE", !1674, i64 0}
!1674 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE", !1675, i64 0}
!1675 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !1676, i64 0, !1678, i64 8}
!1676 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !1677, i64 0}
!1677 = !{!"_ZTSSt4lessImE"}
!1678 = !{!"_ZTSSt15_Rb_tree_header", !1679, i64 0, !42, i64 32}
!1679 = !{!"_ZTSSt18_Rb_tree_node_base", !1680, i64 0, !1681, i64 8, !1681, i64 16, !1681, i64 24}
!1680 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!1681 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!1682 = !{!"_ZTSN6duckdb6vectorINS_5ValueELb1ESaIS1_EEE", !1683, i64 0}
!1683 = !{!"_ZTSSt6vectorIN6duckdb5ValueESaIS1_EE", !1684, i64 0}
!1684 = !{!"_ZTSSt12_Vector_baseIN6duckdb5ValueESaIS1_EE", !1685, i64 0}
!1685 = !{!"_ZTSNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE12_Vector_implE", !1027, i64 0}
!1686 = !{!"_ZTSN6duckdb17ExtraOperatorInfoE", !39, i64 0, !129, i64 32, !129, i64 40, !121, i64 48}
!1687 = !{!"_ZTSN6duckdb10shared_ptrINS_21DynamicTableFilterSetELb1EEE", !1688, i64 0}
!1688 = !{!"_ZTSSt10shared_ptrIN6duckdb21DynamicTableFilterSetEE", !1689, i64 0}
!1689 = !{!"_ZTSSt12__shared_ptrIN6duckdb21DynamicTableFilterSetELN9__gnu_cxx12_Lock_policyE2EE", !1690, i64 0, !21, i64 8}
!1690 = !{!"p1 _ZTSN6duckdb21DynamicTableFilterSetE", !14, i64 0}
!1691 = !{!"_ZTSN6duckdb10unique_ptrINS_20RowGroupOrderOptionsESt14default_deleteIS1_ELb1EEE", !1692, i64 0}
!1692 = !{!"_ZTSSt10unique_ptrIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EE", !1693, i64 0}
!1693 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_ELb1ELb1EE", !1694, i64 0}
!1694 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EE", !1695, i64 0}
!1695 = !{!"_ZTSSt5tupleIJPN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EEE", !1696, i64 0}
!1696 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EEE", !1697, i64 0}
!1697 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb20RowGroupOrderOptionsELb0EE", !1698, i64 0}
!1698 = !{!"p1 _ZTSN6duckdb20RowGroupOrderOptionsE", !14, i64 0}
!1699 = !{!"_ZTSN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEE", !1700, i64 0}
!1700 = !{!"_ZTSSt6vectorIN6duckdb11ColumnIndexESaIS1_EE", !1701, i64 0}
!1701 = !{!"_ZTSSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE", !1702, i64 0}
!1702 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE12_Vector_implE", !1703, i64 0}
!1703 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE17_Vector_impl_dataE", !1704, i64 0, !1704, i64 8, !1704, i64 16}
!1704 = !{!"p1 _ZTSN6duckdb11ColumnIndexE", !14, i64 0}
!1705 = !{!377, !377, i64 0}
!1706 = !{!1707, !24, i64 0}
!1707 = !{!"_ZTSN6duckdb11ColumnIndexE", !24, i64 0, !42, i64 8, !39, i64 16, !330, i64 48, !1708, i64 72, !1699, i64 80}
!1708 = !{!"_ZTSN6duckdb15ColumnIndexTypeE", !5, i64 0}
!1709 = !{!1710, !42, i64 104}
!1710 = !{!"_ZTSN6duckdb17LogicalProjectionE", !292, i64 0, !42, i64 104}
!1711 = !{!1703, !1704, i64 8}
!1712 = !{!1703, !1704, i64 0}
!1713 = !{!1707, !1708, i64 72}
!1714 = distinct !{null, null}
!1715 = !{!1703, !1704, i64 16}
!1716 = !{!1704, !1704, i64 0}
!1717 = distinct !{null, null, null, null}
!1718 = !{!1707, !42, i64 8}
!1719 = distinct !{null, null, null}
!1720 = distinct !{!1720, !168}
!1721 = distinct !{null}
!1722 = !{!1723, !1724, i64 0}
!1723 = !{!"_ZTSNSt12_Vector_baseIN6duckdb13ColumnBindingESaIS1_EE17_Vector_impl_dataE", !1724, i64 0, !1724, i64 8, !1724, i64 16}
!1724 = !{!"p1 _ZTSN6duckdb13ColumnBindingE", !14, i64 0}
!1725 = !{!1723, !1724, i64 8}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1728, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1728 = distinct !{!1728, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1729 = !{!1730, !45, i64 0}
!1730 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !45, i64 0, !42, i64 8, !47, i64 16, !42, i64 24, !49, i64 32, !48, i64 48}
!1731 = !{!1730, !42, i64 8}
!1732 = !{ptr @_ZN6duckdb19FindBaseTableColumnERNS_15LogicalOperatorEm}
!1733 = !{!1734, !42, i64 24}
!1734 = !{!"_ZTSN6duckdb9DataChunkE", !1735, i64 0, !42, i64 24, !42, i64 32, !42, i64 40, !1741, i64 48}
!1735 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !1736, i64 0}
!1736 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !1737, i64 0}
!1737 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !1738, i64 0}
!1738 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !1739, i64 0}
!1739 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !1740, i64 0, !1740, i64 8, !1740, i64 16}
!1740 = !{!"p1 _ZTSN6duckdb6VectorE", !14, i64 0}
!1741 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !1742, i64 0}
!1742 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !1743, i64 0}
!1743 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !1744, i64 0}
!1744 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !1745, i64 0}
!1745 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !1746, i64 0, !1746, i64 8, !1746, i64 16}
!1746 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !14, i64 0}
!1747 = !{!1748, !384, i64 0}
!1748 = !{!"_ZTSN6duckdb12optional_ptrIKNS_16ColumnDefinitionELb1EEE", !384, i64 0}
!1749 = distinct !{!1749, !168}
!1750 = !{!1751, !1751, i64 0}
!1751 = !{!"p1 _ZTSN6duckdb20LogicalColumnDataGetE", !14, i64 0}
!1752 = distinct !{null, null}
!1753 = !{!1754, !1755, i64 0}
!1754 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EE17_Vector_impl_dataE", !1755, i64 0, !1755, i64 8, !1755, i64 16}
!1755 = !{!"p1 _ZTSN6duckdb19UnifiedVectorFormatE", !14, i64 0}
!1756 = !{!1754, !1755, i64 8}
!1757 = !{!1730, !48, i64 16}
!1758 = distinct !{!1758, !168}
!1759 = !{!1760, !1767, i64 208}
!1760 = !{!"_ZTSN6duckdb7ShowRefE", !119, i64 0, !39, i64 104, !39, i64 136, !39, i64 168, !1761, i64 200, !1767, i64 208}
!1761 = !{!"_ZTSN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEE", !1762, i64 0}
!1762 = !{!"_ZTSSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EE", !1763, i64 0}
!1763 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb9QueryNodeESt14default_deleteIS1_ELb1ELb1EE", !1764, i64 0}
!1764 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb9QueryNodeESt14default_deleteIS1_EE", !1765, i64 0}
!1765 = !{!"_ZTSSt5tupleIJPN6duckdb9QueryNodeESt14default_deleteIS1_EEE", !1766, i64 0}
!1766 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb9QueryNodeESt14default_deleteIS1_EEE", !187, i64 0}
!1767 = !{!"_ZTSN6duckdb8ShowTypeE", !5, i64 0}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1770, !"_ZN6duckdb9make_uniqINS_11SubqueryRefEJNS_10unique_ptrINS_15SelectStatementESt14default_deleteIS3_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1770 = distinct !{!1770, !"_ZN6duckdb9make_uniqINS_11SubqueryRefEJNS_10unique_ptrINS_15SelectStatementESt14default_deleteIS3_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!1773 = distinct !{!1773, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!1774 = !{!263, !263, i64 0}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1777, !"_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1777 = distinct !{!1777, !"_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1778 = distinct !{null, null, null, ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev, null, null, null, null, null}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN6duckdb9make_uniqINS_13EmptyTableRefEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1781 = distinct !{!1781, !"_ZN6duckdb9make_uniqINS_13EmptyTableRefEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1782 = distinct !{null}
!1783 = !{!1784, !1785, i64 8}
!1784 = !{!"_ZTSNSt12_Vector_baseIN6duckdb13TableFunctionESaIS1_EE17_Vector_impl_dataE", !1785, i64 0, !1785, i64 8, !1785, i64 16}
!1785 = !{!"p1 _ZTSN6duckdb13TableFunctionE", !14, i64 0}
!1786 = !{!1784, !1785, i64 0}
!1787 = distinct !{!1787, !169, !170}
!1788 = !{!"branch_weights", i32 8, i32 24}
!1789 = distinct !{!1789, !169, !170}
!1790 = !{!390, !14, i64 312}
!1791 = distinct !{!1791, !170, !169}
!1792 = !{!390, !14, i64 304}
!1793 = !{!390, !14, i64 272}
!1794 = !{!390, !14, i64 280}
!1795 = distinct !{!1795, !168}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"_ZN6duckdb11FunctionSetINS_13TableFunctionEE19GetFunctionByOffsetEm: argument 0"}
!1798 = distinct !{!1798, !"_ZN6duckdb11FunctionSetINS_13TableFunctionEE19GetFunctionByOffsetEm"}
!1799 = !{!51, !51, i64 0}
!1800 = !{!64, !42, i64 24}
!1801 = !{!329, !24, i64 24}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1804, !"_ZN6duckdbL8GetAliasB5cxx11ERKNS_16TableFunctionRefE: argument 0"}
!1804 = distinct !{!1804, !"_ZN6duckdbL8GetAliasB5cxx11ERKNS_16TableFunctionRefE"}
!1805 = !{!390, !14, i64 264}
!1806 = !{!398, !399, i64 0}
!1807 = !{!1808, !1808, i64 0}
!1808 = !{!"p1 _ZTSN6duckdb6vectorINS_5ValueELb1ESaIS1_EEE", !14, i64 0}
!1809 = !{!1810, !1810, i64 0}
!1810 = !{!"p1 _ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !14, i64 0}
!1811 = !{!1812, !1812, i64 0}
!1812 = !{!"p1 _ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !14, i64 0}
!1813 = !{!399, !399, i64 0}
!1814 = !{!1785, !1785, i64 0}
!1815 = !{!1816, !1816, i64 0}
!1816 = !{!"p1 _ZTSN6duckdb16TableFunctionRefE", !14, i64 0}
!1817 = !{!1724, !1724, i64 0}
!1818 = !{!725, !42, i64 0}
!1819 = distinct !{null, null, null, null, null, null}
!1820 = !{!1821, !1828, i64 120}
!1821 = !{!"_ZTSN6duckdb16TableFunctionRefE", !119, i64 0, !684, i64 104, !1822, i64 112, !1828, i64 120}
!1822 = !{!"_ZTSN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEE", !1823, i64 0}
!1823 = !{!"_ZTSSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EE", !1824, i64 0}
!1824 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb15SelectStatementESt14default_deleteIS1_ELb1ELb1EE", !1825, i64 0}
!1825 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb15SelectStatementESt14default_deleteIS1_EE", !1826, i64 0}
!1826 = !{!"_ZTSSt5tupleIJPN6duckdb15SelectStatementESt14default_deleteIS1_EEE", !1827, i64 0}
!1827 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb15SelectStatementESt14default_deleteIS1_EEE", !1644, i64 0}
!1828 = !{!"_ZTSN6duckdb14OrdinalityTypeE", !5, i64 0}
!1829 = !{!1830}
!1830 = distinct !{!1830, !1831, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!1831 = distinct !{!1831, !"_ZNSt7__cxx119to_stringEm"}
!1832 = !{!1833}
!1833 = distinct !{!1833, !1834, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1834 = distinct !{!1834, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1835 = distinct !{!1835, !168}
!1836 = distinct !{!1836, !168}
!1837 = !{!1838}
!1838 = distinct !{!1838, !1839, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!1839 = distinct !{!1839, !"_ZNSt7__cxx119to_stringEm"}
!1840 = !{!1841}
!1841 = distinct !{!1841, !1842, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1842 = distinct !{!1842, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1843 = distinct !{!1843, !168}
!1844 = distinct !{!1844, !168}
!1845 = !{!1846}
!1846 = distinct !{!1846, !1847, !"_ZN6duckdb9make_uniqINS_13LogicalWindowEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1847 = distinct !{!1847, !"_ZN6duckdb9make_uniqINS_13LogicalWindowEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1848 = !{!1849, !42, i64 104}
!1849 = !{!"_ZTSN6duckdb13LogicalWindowE", !292, i64 0, !42, i64 104}
!1850 = !{!1851, !1851, i64 0}
!1851 = !{!"p1 _ZTSN6duckdb13LogicalWindowE", !14, i64 0}
!1852 = !{!891, !891, i64 0}
!1853 = !{!1854, !1854, i64 0}
!1854 = !{!"std::nullptr_t", !5, i64 0}
!1855 = !{!1856, !1880, i64 210}
!1856 = !{!"_ZTSN6duckdb21BoundWindowExpressionE", !1857, i64 0, !1866, i64 88, !1665, i64 96, !300, i64 104, !300, i64 128, !849, i64 152, !1874, i64 176, !660, i64 200, !24, i64 208, !24, i64 209, !1880, i64 210, !1880, i64 211, !1881, i64 212, !660, i64 216, !660, i64 224, !660, i64 232, !660, i64 240, !1874, i64 248, !849, i64 272}
!1857 = !{!"_ZTSN6duckdb10ExpressionE", !890, i64 0, !330, i64 56, !1858, i64 80}
!1858 = !{!"_ZTSN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEE", !1859, i64 0}
!1859 = !{!"_ZTSSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EE", !1860, i64 0}
!1860 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14BaseStatisticsESt14default_deleteIS1_ELb1ELb1EE", !1861, i64 0}
!1861 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14BaseStatisticsESt14default_deleteIS1_EE", !1862, i64 0}
!1862 = !{!"_ZTSSt5tupleIJPN6duckdb14BaseStatisticsESt14default_deleteIS1_EEE", !1863, i64 0}
!1863 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14BaseStatisticsESt14default_deleteIS1_EEE", !1864, i64 0}
!1864 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14BaseStatisticsELb0EE", !1865, i64 0}
!1865 = !{!"p1 _ZTSN6duckdb14BaseStatisticsE", !14, i64 0}
!1866 = !{!"_ZTSN6duckdb10unique_ptrINS_17AggregateFunctionESt14default_deleteIS1_ELb1EEE", !1867, i64 0}
!1867 = !{!"_ZTSSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EE", !1868, i64 0}
!1868 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb17AggregateFunctionESt14default_deleteIS1_ELb1ELb1EE", !1869, i64 0}
!1869 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb17AggregateFunctionESt14default_deleteIS1_EE", !1870, i64 0}
!1870 = !{!"_ZTSSt5tupleIJPN6duckdb17AggregateFunctionESt14default_deleteIS1_EEE", !1871, i64 0}
!1871 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb17AggregateFunctionESt14default_deleteIS1_EEE", !1872, i64 0}
!1872 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17AggregateFunctionELb0EE", !1873, i64 0}
!1873 = !{!"p1 _ZTSN6duckdb17AggregateFunctionE", !14, i64 0}
!1874 = !{!"_ZTSN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEE", !1875, i64 0}
!1875 = !{!"_ZTSSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE", !1876, i64 0}
!1876 = !{!"_ZTSSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE", !1877, i64 0}
!1877 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE12_Vector_implE", !1878, i64 0}
!1878 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE17_Vector_impl_dataE", !1879, i64 0, !1879, i64 8, !1879, i64 16}
!1879 = !{!"p1 _ZTSN6duckdb16BoundOrderByNodeE", !14, i64 0}
!1880 = !{!"_ZTSN6duckdb14WindowBoundaryE", !5, i64 0}
!1881 = !{!"_ZTSN6duckdb17WindowExcludeModeE", !5, i64 0}
!1882 = !{!1856, !1880, i64 211}
!1883 = !{!1884, !1884, i64 0}
!1884 = !{!"p1 _ZTSN6duckdb21BoundWindowExpressionE", !14, i64 0}
!1885 = !{!1886}
!1886 = distinct !{!1886, !1887, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1887 = distinct !{!1887, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1888 = !{!1889}
!1889 = distinct !{!1889, !1887, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1890 = !{!1889, !1891}
!1891 = distinct !{!1891, !1892}
!1892 = distinct !{!1892, !"LVerDomain"}
!1893 = !{!1886, !1894}
!1894 = distinct !{!1894, !1892}
!1895 = distinct !{!1895, !168, !169, !170}
!1896 = distinct !{!1896, !168, !169}
!1897 = !{!298, !299, i64 16}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1900, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1900 = distinct !{!1900, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1900, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1903 = !{!1902, !1904}
!1904 = distinct !{!1904, !1905}
!1905 = distinct !{!1905, !"LVerDomain"}
!1906 = !{!1899, !1907}
!1907 = distinct !{!1907, !1905}
!1908 = distinct !{!1908, !168, !169, !170}
!1909 = distinct !{!1909, !168, !169}
!1910 = distinct !{null, null}
!1911 = distinct !{null, null}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1914, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!1914 = distinct !{!1914, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!1915 = !{!1916}
!1916 = distinct !{!1916, !1917, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!1917 = distinct !{!1917, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!1918 = !{!1919, !1919, i64 0}
!1919 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEEE", !14, i64 0}
!1920 = !{!1872, !1873, i64 0}
!1921 = !{!1873, !1873, i64 0}
!1922 = distinct !{null, null}
!1923 = !{!64, !45, i64 0}
!1924 = !{!64, !42, i64 8}
!1925 = !{!64, !48, i64 16}
!1926 = !{!64, !48, i64 48}
!1927 = distinct !{!1927, !168}
!1928 = distinct !{ptr @_ZN6duckdb16TableFunctionRefD2Ev, null, null}
!1929 = distinct !{ptr @_ZN6duckdb16TableFunctionRefD2Ev, null, null}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1932, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!1932 = distinct !{!1932, !"_ZNSt7__cxx119to_stringEm"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1935 = distinct !{!1935, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"_ZN6duckdb11FunctionSetINS_13TableFunctionEE19GetFunctionByOffsetEm: argument 0"}
!1938 = distinct !{!1938, !"_ZN6duckdb11FunctionSetINS_13TableFunctionEE19GetFunctionByOffsetEm"}
!1939 = distinct !{!1939, !168}
!1940 = distinct !{!1940, !168}
!1941 = distinct !{!1941, !168}
!1942 = !{!395, !42, i64 24}
!1943 = distinct !{!1943, !168}
!1944 = !{!395, !42, i64 8}
!1945 = !{!395, !45, i64 0}
!1946 = distinct !{!1946, !168}
!1947 = !{!1678, !1681, i64 16}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1950, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1950 = distinct !{!1950, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1951 = !{!395, !48, i64 16}
!1952 = !{!1678, !1681, i64 24}
!1953 = !{!1678, !42, i64 32}
!1954 = !{!1955, !1955, i64 0}
!1955 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !14, i64 0}
!1956 = distinct !{!1956, !168}
!1957 = !{!1958}
!1958 = distinct !{!1958, !1959, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!1959 = distinct !{!1959, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_"}
!1960 = !{!1678, !1681, i64 8}
!1961 = distinct !{null}
!1962 = !{!1963, !891, i64 16}
!1963 = !{!"_ZTSN6duckdb13JoinConditionE", !660, i64 0, !660, i64 8, !891, i64 16}
!1964 = distinct !{null, null, null}
!1965 = distinct !{null, null, null, null}
!1966 = !{!859, !860, i64 16}
!1967 = !{!1968}
!1968 = distinct !{!1968, !1969, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1969 = distinct !{!1969, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1969, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1972 = !{!1971, !1973}
!1973 = distinct !{!1973, !1974}
!1974 = distinct !{!1974, !"LVerDomain"}
!1975 = !{!1968, !1976}
!1976 = distinct !{!1976, !1974}
!1977 = distinct !{!1977, !168, !169, !170}
!1978 = distinct !{!1978, !168, !169}
!1979 = !{!1980}
!1980 = distinct !{!1980, !1981, !"_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1981 = distinct !{!1981, !"_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1982 = !{!1983}
!1983 = distinct !{!1983, !1984, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1984 = distinct !{!1984, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1984, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1987 = !{!1986, !1988}
!1988 = distinct !{!1988, !1989}
end_hunk_1
