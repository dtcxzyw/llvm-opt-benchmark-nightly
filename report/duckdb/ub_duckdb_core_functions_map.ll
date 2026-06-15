inline.NumInlined: 2508
inline.NumDeleted: 1151
begin_hunk_0_@_ZN6duckdb6MapFun12GetFunctionsEv:bb.a
  br label %bb.di

bb.cn:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.n
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.hx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.dh

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.s
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.co
  call void @_ZdlPv(ptr noundef %i.ia) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.dg

.loopexit.loopexit131:                            ; preds = %bb.l
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  br label %.loopexit

bb.cp:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cq:                                            ; preds = %bb.r
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cr:                                            ; preds = %bb.s
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cs:                                            ; preds = %bb.t
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.u
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #20
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn33 = phi { ptr, i32 } [ %i.ih, %bb.ct ], [ %i.ig, %bb.cs ]
  %i.ii = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %.not.i119 = icmp eq ptr %i.ii, null
  br i1 %.not.i119, label %_ZNSt14_Function_baseD2Ev.exit120, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ij = invoke noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit120 unwind label %bb.cw ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit120:                ; preds = %bb.cu, %bb.cv
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #20
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit120, %bb.cr
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt14_Function_baseD2Ev.exit120 ], [ %i.if, %bb.cr ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #20
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cq
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.cx ], [ %i.ie, %bb.cq ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #20
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cp
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %bb.cy ], [ %i.id, %bb.cp ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #20
  br label %.body

.body:                                            ; preds = %.body124.thread, %bb.q, %.body124, %bb.cz
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %bb.cz ], [ %i.al, %.body124 ], [ %i.al, %bb.q ], [ %i.ao, %.body124.thread ]
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.im) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit131, %.body, %.thread
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %.body ], [ %i.x, %.thread ], [ %i.ic, %.loopexit.loopexit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.df

bb.da:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit64
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.z
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.dc:                                            ; preds = %bb.ak, %bb.ai
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %20) #20
  br label %.body67

bb.dd:                                            ; preds = %bb.bd, %bb.bb
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #20
  br label %.body67

.body67:                                          ; preds = %.body.i, %.body.i76, %bb.db, %bb.dd, %bb.dc
  %.pn40 = phi { ptr, i32 } [ %i.iq, %bb.dd ], [ %i.ip, %bb.dc ], [ %i.bl, %.body.i ], [ %i.io, %bb.db ], [ %i.dw, %.body.i76 ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  br label %bb.de

bb.de:                                            ; preds = %.body67, %bb.da
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body67 ], [ %i.in, %bb.da ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %12) #20
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.loopexit
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.de ], [ %.pn33.pn.pn.pn.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.df ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.dg ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.cm
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.dh ], [ %.pn.pn.pn.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL11MapFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %5 = alloca %"class.duckdb::Vector", align 8    ; 9 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %13 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245.thread, label %bb.b

_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 0)
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1)
  %15 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %16 = load i8, ptr %15, align 8, !tbaa !114
  %17 = icmp eq i8 %16, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8
  %i.k = icmp eq i8 %i.j, 1
  %or.cond = select i1 %17, i1 true, i1 %i.k
  br i1 %or.cond, label %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread, label %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245

_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread: ; preds = %bb.b
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.c:                                             ; preds = %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.o)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !99
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread, %bb.c
  %i.p = phi ptr [ %.pre.i, %bb.c ], [ %i.m, %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread ] ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !100
  %i.r = and i64 %i.q, -2
  store i64 %i.r, ptr %i.p, align 8, !tbaa !100
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  br label %bb.fh

_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !125
  %.pre313 = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.s = icmp eq ptr %.pre, %.pre313
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58   ; 25 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245.thread, %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245
  %i.v = phi i64 [ %i.f, %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245.thread ], [ %i.u, %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245 ]
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 0)
  %i.w = load i8, ptr %2, align 8, !tbaa !88
  %i.x = icmp eq i8 %i.w, 3
  br i1 %i.x, label %tailrecurse.i.i, label %_ZN6duckdbL21MapFunctionEmptyInputERNS_6VectorEm.exit

tailrecurse.i.i:                                  ; preds = %bb.d, %tailrecurse.i.i
  %.tr5.i.i = phi ptr [ %i.aa, %tailrecurse.i.i ], [ %2, %bb.d ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i), !inline_history !95
  %i.y = getelementptr inbounds nuw i8, ptr %.tr5.i.i, i64 88
  %i.z = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y), !inline_history !95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !88
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %tailrecurse.i.i, label %_ZN6duckdbL21MapFunctionEmptyInputERNS_6VectorEm.exit

_ZN6duckdbL21MapFunctionEmptyInputERNS_6VectorEm.exit: ; preds = %tailrecurse.i.i, %bb.d
  %.tr.lcssa.i.i = phi ptr [ %2, %bb.d ], [ %i.aa, %tailrecurse.i.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i), !inline_history !95
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.v)
  br label %bb.fh

bb.e:                                             ; preds = %_ZN6duckdbL9MapIsNullERNS_9DataChunkE.exit.thread245
  %i.af = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 3 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.af, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aj = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
          to label %bb.h unwind label %bb.ah

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %i.aj)
          to label %bb.i unwind label %bb.ah

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  %i.ak = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.l unwind label %bb.aj

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.al

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.o unwind label %bb.am

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.an = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag)
          to label %bb.p unwind label %bb.an

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.q unwind label %bb.an

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.r unwind label %bb.ao

bb.r:                                             ; preds = %bb.q
  %i.ao = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag)
          to label %bb.s unwind label %bb.ap

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.w unwind label %bb.as

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit unwind label %bb.at

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit: ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not298 = icmp eq i64 %i.u, 0                  ; 2 uses
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %i.as = load ptr, ptr %4, align 8, !tbaa !97
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !98 ; 9 uses
  %.not.i162 = icmp eq ptr %i.at, null            ; 3 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !97
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !98 ; 3 uses
  %.not.i163 = icmp eq ptr %i.av, null            ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !99 ; 12 uses
  %.not.i165 = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %.fr = freeze ptr %i.az                         ; 3 uses
  %.not.i166 = icmp eq ptr %.fr, null             ; 2 uses
  br i1 %.not.i165, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.z
  %.0122264.us = phi i64 [ %.1123.us, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  %.0124263.us = phi i64 [ %i.bq, %bb.z ], [ 0, %.lr.ph ] ; 5 uses
  br i1 %.not.i162, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.us
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.0124263.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.x, %.lr.ph.split.us
  %i.bd = phi i64 [ %i.bc, %bb.x ], [ %.0124263.us, %.lr.ph.split.us ]
  br i1 %.not.i163, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit164.us, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0124263.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit164.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit164.us: ; preds = %bb.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.bh = phi i64 [ %i.bg, %bb.y ], [ %.0124263.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  br i1 %.not.i166, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.thread.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit164.us
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = and i64 %i.bh, 63
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !100
  %i.bm = shl nuw i64 1, %i.bj
  %i.bn = and i64 %i.bl, %i.bm
  %.not256.us = icmp eq i64 %i.bn, 0
  br i1 %.not256.us, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit164.us
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.bd
  %.sroa.3.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.3.0.copyload.us = load i64, ptr %.sroa.3.0..sroa_idx.us, align 8, !tbaa !100
  %i.bp = add i64 %.sroa.3.0.copyload.us, %.0122264.us
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.us
  %.1123.us = phi i64 [ %i.bp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.thread.us ], [ %.0122264.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit168.us ] ; 2 uses
  %i.bq = add nuw i64 %.0124263.us, 1             ; 2 uses
  %exitcond310.not = icmp eq i64 %i.bq, %i.u
  br i1 %exitcond310.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i166, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not.i162, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split
end_hunk_0
