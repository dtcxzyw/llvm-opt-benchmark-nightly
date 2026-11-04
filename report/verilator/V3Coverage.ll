Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Coverage?download=true
inline.NumInlined: 4522
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN15CoverageVisitor15exprUnsupportedEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZN15CoverageVisitor9lineTrackEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull %1)
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !153
  br label %bb.t

bb.t:                                             ; preds = %_ZN15CoverageVisitor17abortExprCoverageEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11AstGenBlock4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !118
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !30
  %i.i = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.i, ptr %i.c, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !32
  store i8 %i.k, ptr %i.j, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = load ptr, ptr %0, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5AstIf6thenspEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI5AstIfS_EEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !186
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 481
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5AstIf6elsespEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5nextpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI5AstIfS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !186
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 481
  br i1 %.not6, label %.critedge, label %bb.c, !prof !128

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.75)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !186
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !397
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.76)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #27
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5AstIf5condpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !197
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !34
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI5AstIfS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user1uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !34
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15CoverageVisitor7xorExprEP11AstNodeBiop(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.182", align 16 ; 5 uses
  %3 = alloca %"struct.std::_Deque_iterator.182", align 16 ; 5 uses
  %4 = alloca %"struct.std::_Deque_iterator.182", align 16 ; 5 uses
  %5 = alloca %"struct.std::_Deque_iterator.182", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15CoverageVisitor10coverExprsEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, %bb.c
  %.not = phi i1 [ false, %bb.c ], [ true, %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit ]
  %.0.idx30.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.c ], [ 1, %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.n = trunc nuw i8 %.0.idx30.sroa.phi.sroa.speculated to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %6, ptr %i.d, align 8, !tbaa !100
  store ptr %6, ptr %6, align 8, !tbaa !101
  store i64 0, ptr %i.e, align 8, !tbaa !229
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  %i.o = load i64, ptr %i.e, align 8, !tbaa !227
  %i.p = load i64, ptr %i.g, align 8, !tbaa !227
  store i64 %i.p, ptr %i.e, align 8, !tbaa !227
  store i64 %i.o, ptr %i.g, align 8, !tbaa !227
  %i.q = load i8, ptr %i.h, align 1, !tbaa !154, !range !80, !noundef !81
  %i.r = icmp ne i8 %.0.idx30.sroa.phi.sroa.speculated, %i.q
  invoke void @_ZN15CoverageVisitor8exprBothEP11AstNodeBiopbbb(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext %i.n, i1 noundef zeroext %i.r)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %6, align 8, !tbaa !101    ; 2 uses
  %i.t = icmp eq ptr %i.s, %6
  br i1 %i.t, label %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  %i.u = load i64, ptr %i.e, align 8, !tbaa !227
  %i.v = load i64, ptr %i.g, align 8, !tbaa !227
  %i.w = add i64 %i.v, %i.u
  store i64 %i.w, ptr %i.g, align 8, !tbaa !227
  store i64 0, ptr %i.e, align 8, !tbaa !227
  br label %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit

_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit: ; preds = %bb.e, %bb.f
  %i.x = load i8, ptr %i.a, align 8, !tbaa !153   ; 2 uses
  %.not.i = icmp eq i8 %i.x, 2
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit
  %i.y = load i64, ptr %i.g, align 8, !tbaa !227
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1056), align 8, !tbaa !228
  %.not2.i = icmp slt i32 %i.aa, %i.z
  br i1 %.not2.i, label %bb.h, label %_ZN15CoverageVisitor13checkMaxExprsEm.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit
  store i8 2, ptr %i.a, align 8, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not8.i.i.i.i, label %_ZN15CoverageVisitor17abortExprCoverageEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit
  %.09.i.i.i.i = phi ptr [ %i.ac, %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit ], [ %i.ab, %bb.i ] ; 10 uses
  %i.ac = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ak = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !223, !noalias !1069
  store <2 x ptr> %i.ak, ptr %4, align 16, !tbaa !223
  %i.al = load <2 x ptr>, ptr %i.af, align 8, !tbaa !224, !noalias !1069
  store <2 x ptr> %i.al, ptr %i.i, align 16, !tbaa !224
  %i.am = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !223, !noalias !1070
  store <2 x ptr> %i.am, ptr %5, align 16, !tbaa !223
  %i.an = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !224, !noalias !1070
  store <2 x ptr> %i.an, ptr %i.j, align 16, !tbaa !224
  invoke void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !222 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i19, label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !267 ; 2 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !268 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.ap, %bb.k ] ; 3 uses
  %i.at = load ptr, ptr %.06.i.i.i, align 8, !tbaa !223
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef 480) #24
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.av = icmp ult ptr %.06.i.i.i, %i.aq
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !222
  br label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i

_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i, %bb.k
  %i.aw = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i ], [ %i.ao, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #26
  unreachable

_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 96) #24
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.f
  br i1 %.not.i.i.i.i, label %_ZN15CoverageVisitor17abortExprCoverageEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN15CoverageVisitor17abortExprCoverageEv.exit.i: ; preds = %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit, %bb.i
  store ptr %i.f, ptr %i.k, align 8, !tbaa !100
  store ptr %i.f, ptr %i.f, align 8, !tbaa !101
  store i64 0, ptr %i.g, align 8, !tbaa !229
  br label %_ZN15CoverageVisitor13checkMaxExprsEm.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %i.bc

_ZN15CoverageVisitor13checkMaxExprsEm.exit:       ; preds = %_ZN15CoverageVisitor17abortExprCoverageEv.exit.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN15CoverageVisitor17abortExprCoverageEv.exit.i ], [ %.not, %bb.g ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bd, %6
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN15CoverageVisitor13checkMaxExprsEm.exit, %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26
  %.09.i.i = phi ptr [ %i.be, %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26 ], [ %i.bd, %_ZN15CoverageVisitor13checkMaxExprsEm.exit ] ; 10 uses
  %i.be = load ptr, ptr %.09.i.i, align 8, !tbaa !101 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bm = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !223, !noalias !1071
  store <2 x ptr> %i.bm, ptr %2, align 16, !tbaa !223
  %i.bn = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !224, !noalias !1071
  store <2 x ptr> %i.bn, ptr %i.l, align 16, !tbaa !224
  %i.bo = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !223, !noalias !1072
  store <2 x ptr> %i.bo, ptr %3, align 16, !tbaa !223
  %i.bp = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !224, !noalias !1072
  store <2 x ptr> %i.bp, ptr %i.m, align 16, !tbaa !224
  invoke void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !222 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i20, label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !267 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !268 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i22, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i21

.lr.ph.i.i.i22:                                   ; preds = %bb.o, %.lr.ph.i.i.i22
  %.06.i.i.i23 = phi ptr [ %i.bw, %.lr.ph.i.i.i22 ], [ %i.br, %bb.o ] ; 3 uses
  %i.bv = load ptr, ptr %.06.i.i.i23, align 8, !tbaa !223
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef 480) #24
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 8
  %i.bx = icmp ult ptr %.06.i.i.i23, %i.bs
  br i1 %i.bx, label %.lr.ph.i.i.i22, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i24, !llvm.loop !8

_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i24: ; preds = %.lr.ph.i.i.i22
  %.pre.i.i25 = load ptr, ptr %i.bf, align 8, !tbaa !222
  br label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i21

_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i21: ; preds = %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i24, %bb.o
  %i.by = phi ptr [ %.pre.i.i25, %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i24 ], [ %i.bq, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !269
  %i.cb = shl i64 %i.ca, 3
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26: ; preds = %bb.n, %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i21
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 96) #24
  %.not.i.i18 = icmp eq ptr %i.be, %6
  br i1 %.not.i.i18, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev.exit26, %_ZN15CoverageVisitor13checkMaxExprsEm.exit
end_hunk_0
