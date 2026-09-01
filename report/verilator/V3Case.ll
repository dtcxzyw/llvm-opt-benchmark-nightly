Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Case?download=true
inline.NumInlined: 2330
inline.NumDeleted: 882
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12VNUser1InUseD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !162
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -371
  %spec.select.i = icmp ult i16 %i.b, -269
  br i1 %spec.select.i, label %bb.c, label %.critedge, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !162
  %i.f = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.13)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstConstS_EEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !162
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItem(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.VNUser1InUse, align 1        ; 4 uses
  %3 = alloca %class.anon.141, align 1            ; 4 uses
  %4 = alloca %class.VNRef, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.02540 = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %.not41 = icmp eq ptr %.02540, null
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.02542 = phi ptr [ %.02540, %.lr.ph ], [ %.025, %bb.j ] ; 2 uses
  %i.c = invoke noundef ptr @_ZN11CaseVisitor18checkDecoderAssignEP7AstNode(ptr noundef nonnull %.02542)
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.g = invoke noundef zeroext i1 @_ZN7AstNode13predicateImplI9AstVarRefLb0EZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
          to label %_ZN7AstNode6existsIZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlP9AstVarRefE_EEbOT_.exit unwind label %bb.f

_ZN7AstNode6existsIZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlP9AstVarRefE_EEbOT_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.g, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

bb.g:                                             ; preds = %_ZN7AstNode6existsIZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlP9AstVarRefE_EEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !154
  store ptr %i.i, ptr %4, align 8, !tbaa !155
  %i.j = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8__detail9_Map_baseI5VNRefI11AstNodeExprESt4pairIKS3_N11CaseVisitor9LhsRecordEESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit unwind label %bb.i ; 3 uses

_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !154
  store ptr %i.l, ptr %i.j, align 8, !tbaa !158
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.n, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = insertelement <2 x i16> poison, i16 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.q = shufflevector <2 x i16> %i.p, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.r = icmp eq <2 x i16> %i.q, <i16 466, i16 469>
  %i.s = zext <2 x i1> %i.r to <2 x i64>
  %i.t = load <2 x i64>, ptr %i.o, align 8, !tbaa !95
  %i.u = add <2 x i64> %i.t, %i.s
  store <2 x i64> %i.u, ptr %i.o, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %.02542, i64 8
  %.025 = load ptr, ptr %i.v, align 8, !tbaa !113 ; 2 uses
  %.not = icmp eq ptr %.025, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !253

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.m, %bb.i ], [ %i.h, %bb.f ]
  call void @_ZN12VNUser1InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %bb.c, %bb.j, %_ZN7AstNode6existsIZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlP9AstVarRefE_EEbOT_.exit, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZN7AstNode6existsIZN11CaseVisitor22analyzeDecoderCaseItemEP11AstCaseItemEUlP9AstVarRefE_EEbOT_.exit ], [ true, %bb.j ], [ false, %bb.c ]
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
          to label %_ZN12VNUser1InUseD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN12VNUser1InUseD2Ev.exit:                       ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.not.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode5widthEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11CaseVisitor18analyzeCaseDetailsEP7AstCase(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.std::pair.144", align 8    ; 29 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.lr.ph, label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i32, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = shl nuw i64 1, %i.i
  %11 = trunc i64 %i.j to i32                     ; 2 uses
  %.not580 = icmp ugt i32 %i.h, 31
  br i1 %.not580, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK7AstNode5widthEv.exit
  %12 = phi i32 [ %11, %_ZNK7AstNode5widthEv.exit ], [ 1, %bb.a ]
  %i.k = phi i64 [ %i.i, %_ZNK7AstNode5widthEv.exit ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %13 = shl nuw nsw i64 24, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %13, i1 false), !tbaa !254
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK7AstNode5widthEv.exit
  %.not580680 = phi i1 [ false, %.lr.ph ], [ true, %_ZNK7AstNode5widthEv.exit ] ; 2 uses
  %14 = phi i32 [ %12, %.lr.ph ], [ %11, %_ZNK7AstNode5widthEv.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 242 ; 2 uses
  store i8 1, ptr %i.n, align 2, !tbaa !140
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154  ; 2 uses
  %.not118570 = icmp eq ptr %i.p, null
  br i1 %.not118570, label %._crit_edge576.thread, label %.lr.ph575

._crit_edge576.thread:                            ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !255
  store i8 0, ptr %i.m, align 8, !tbaa !139
  br label %bb.dd

.lr.ph575:                                        ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 93 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %umax617 = tail call i32 @llvm.umax.i32(i32 %14, i32 1) ; 2 uses
  %wide.trip.count = zext i32 %umax617 to i64     ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %15 = icmp ult i32 %14, 2
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod826 = trunc i32 %umax617 to i1
  br label %_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit

._crit_edge576:                                   ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  store i8 0, ptr %i.bg, align 1, !tbaa !255
  %i.bh = trunc nuw i8 %.1107 to i1
  store i8 %.1107, ptr %i.m, align 8, !tbaa !139
  br i1 %i.bh, label %bb.di, label %bb.dd

_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit:     ; preds = %bb.db, %.lr.ph575
  %.0105573 = phi ptr [ %i.p, %.lr.ph575 ], [ %i.oc, %bb.db ] ; 9 uses
  %.0106572 = phi i8 [ 0, %.lr.ph575 ], [ %.1107, %bb.db ]
  %.0108571 = phi i1 [ false, %.lr.ph575 ], [ %.5113, %bb.db ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0105573, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !127 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.preheader272, label %bb.f

.preheader272:                                    ; preds = %_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit
  br i1 %.not580680, label %.loopexit, label %.lr.ph567

.lr.ph567:                                        ; preds = %.preheader272
  %i.bl = getelementptr inbounds nuw i8, ptr %.0105573, i64 32 ; 3 uses
  br i1 %15, label %.epil.preheader, label %.lr.ph567.new

.lr.ph567.new:                                    ; preds = %.lr.ph567, %bb.e
  %indvars.iv618 = phi i64 [ %indvars.iv.next619.1, %bb.e ], [ 0, %.lr.ph567 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph567 ]
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv618 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !256
  %.not142 = icmp eq ptr %i.bn, null
  br i1 %.not142, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph567.new
  store ptr %.0105573, ptr %i.bm, align 8, !tbaa !256
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !154
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !260
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph567.new
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv618 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !256
  %.not142.1 = icmp eq ptr %i.bs, null
  br i1 %.not142.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.0105573, ptr %i.br, align 8, !tbaa !256
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !154
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !260
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next619.1 = add nuw nsw i64 %indvars.iv618, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph567.new, !llvm.loop !261

bb.f:                                             ; preds = %_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bv, align 8, !tbaa !162
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit.preheader, label %bb.g, !prof !135

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit.preheader: ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %.0105573, i64 32
  br label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.by = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.bx, align 8, !tbaa !162
  %i.cb = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !163
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cd)
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.13)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bj, ptr noundef nonnull align 8 dereferenceable(112) %i.cf) #26
  unreachable

_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i: ; preds = %bb.cy, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit.preheader
  %.0103565 = phi ptr [ %i.bj, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit.preheader ], [ %i.nm, %bb.cy ] ; 9 uses
  %.1109564 = phi i1 [ %.0108571, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit.preheader ], [ %.4112, %bb.cy ] ; 5 uses
  %i.cg = load i8, ptr %i.r, align 8, !tbaa !164
  switch i8 %i.cg, label %.split [
    i8 1, label %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread
    i8 3, label %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread
    i8 2, label %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit
  ]

.split:                                           ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0103565, i64 152
  %i.ci = call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  br i1 %i.ci, label %bb.cx, label %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread

_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit: ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.0103565, i64 152
  %i.ck = call noundef zeroext i1 @_ZNK8V3Number6isAnyXEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cj)
  br i1 %i.ck, label %bb.cx, label %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread

_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread: ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i, %.split, %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %.0103565, i64 88 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !179, !noalias !262 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0103565, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !147, !noalias !262 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.co, null
  br i1 %.not.i.i144, label %_ZNK7AstNode5widthEv.exit9.i, label %bb.h

bb.h:                                             ; preds = %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !170, !noalias !262
  br label %_ZNK7AstNode5widthEv.exit9.i

_ZNK7AstNode5widthEv.exit9.i:                     ; preds = %bb.h, %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread
  %i.cr = phi i32 [ %i.cq, %bb.h ], [ 0, %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit.thread ] ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !265
  store i8 0, ptr %i.t, align 4, !tbaa !268
  %i.cs = load i8, ptr %i.u, align 1
  %i.ct = and i8 %i.cs, -128
  store i8 %i.ct, ptr %i.u, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef null, i32 noundef %i.cr, i1 noundef zeroext true)
          to label %bb.i unwind label %.loopexit274

bb.i:                                             ; preds = %_ZNK7AstNode5widthEv.exit9.i
  store ptr %i.cm, ptr %i.w, align 8, !tbaa !269
  %i.cu = load i8, ptr %i.t, align 4, !tbaa !268
  %i.cv = add i8 %i.cu, -1
  %spec.select.i.i.i246 = icmp ult i8 %i.cv, 2
  br i1 %spec.select.i.i.i246, label %bb.o, label %bb.j, !prof !135

bb.j:                                             ; preds = %bb.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.520, i32 noundef 242)
          to label %.noexc.i247 unwind label %.loopexit.split-lp ; 0 uses

.noexc.i247:                                      ; preds = %bb.j
  %i.cx = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.k, label %.noexc6.i248, !prof !143

bb.k:                                             ; preds = %.noexc.i247
  %i.cz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  %.not.i.i264 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i264, label %.noexc6.i248, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.noexc6.i248

bb.n:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.body265

.noexc6.i248:                                     ; preds = %bb.m, %bb.k, %.noexc.i247
  %i.dc = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.7, ptr nonnull @.str.8, i32 481, ptr null) ; 2 uses
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.521, i64 noundef 40)
          to label %.noexc7.i249 unwind label %.loopexit.split-lp ; 0 uses

.noexc7.i249:                                     ; preds = %.noexc6.i248
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %i.t)
          to label %.noexc8.i250 unwind label %.loopexit.split-lp

.noexc8.i250:                                     ; preds = %.noexc7.i249
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.de) #26
          to label %.noexc9.i251 unwind label %.loopexit.split-lp

.noexc9.i251:                                     ; preds = %.noexc8.i250
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.df = load i32, ptr %i.s, align 8, !tbaa !265
  %i.dg = icmp slt i32 %i.df, 129
  %i.dh = load ptr, ptr %2, align 8
  %spec.select.i.i252 = select i1 %i.dg, ptr %2, ptr %i.dh
  store i32 0, ptr %spec.select.i.i252, align 4, !tbaa !271
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(112) %2, i1 noundef zeroext false)
          to label %_ZN8V3NumberC2EP8FileLineijb.exit253 unwind label %.loopexit274

.loopexit274:                                     ; preds = %_ZNK7AstNode5widthEv.exit9.i, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body265

.loopexit.split-lp:                               ; preds = %bb.j, %.noexc6.i248, %.noexc7.i249, %.noexc8.i250
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body265

.body265:                                         ; preds = %.loopexit274, %.loopexit.split-lp, %bb.n
  %eh.lpad-body266 = phi { ptr, i32 } [ %i.db, %bb.n ], [ %lpad.loopexit, %.loopexit274 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 5 uses
  %i.di = load i8, ptr %i.t, align 4, !tbaa !268  ; 2 uses
  %i.dj = icmp eq i8 %i.di, 3
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.body265
  %i.dk = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bf
  br i1 %i.dl, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261: ; preds = %bb.p
  %i.dm = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %common.resume

bb.q:                                             ; preds = %.body265
  %i.do = load i32, ptr %i.s, align 8, !tbaa !265
  %i.dp = icmp sgt i32 %i.do, 128
  %i.dq = icmp eq i8 %i.di, 1
  %i.dr = and i1 %i.dq, %i.dp
  br i1 %i.dr, label %bb.r, label %common.resume

end_hunk_0
begin_hunk_1_@_ZN11CaseVisitor18analyzeCaseDetailsEP7AstCase:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef null, i32 noundef %i.cr, i1 noundef zeroext true)
          to label %bb.t unwind label %.loopexit275

bb.t:                                             ; preds = %_ZN8V3NumberC2EP8FileLineijb.exit253
  store ptr %i.cm, ptr %i.ac, align 8, !tbaa !269
  %i.dz = load i8, ptr %i.z, align 4, !tbaa !268
  %i.ea = add i8 %i.dz, -1
  %spec.select.i.i.i = icmp ult i8 %i.ea, 2
  br i1 %spec.select.i.i.i, label %bb.z, label %bb.u, !prof !135

bb.u:                                             ; preds = %bb.t
  %i.eb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.520, i32 noundef 242)
          to label %.noexc.i unwind label %.loopexit.split-lp276 ; 0 uses

.noexc.i:                                         ; preds = %bb.u
  %i.ec = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.v, label %.noexc6.i, !prof !143

bb.v:                                             ; preds = %.noexc.i
  %i.ee = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  %.not.i.i256 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i256, label %.noexc6.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.noexc6.i

bb.y:                                             ; preds = %bb.w
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.body257

.noexc6.i:                                        ; preds = %bb.x, %bb.v, %.noexc.i
  %i.eh = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.7, ptr nonnull @.str.8, i32 481, ptr null) ; 2 uses
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.521, i64 noundef 40)
          to label %.noexc7.i unwind label %.loopexit.split-lp276 ; 0 uses

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %i.z)
          to label %.noexc8.i unwind label %.loopexit.split-lp276

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ej) #26
          to label %.noexc9.i unwind label %.loopexit.split-lp276

.noexc9.i:                                        ; preds = %.noexc8.i
  unreachable

bb.z:                                             ; preds = %bb.t
  %i.ek = load i32, ptr %i.y, align 8, !tbaa !265
  %i.el = icmp slt i32 %i.ek, 129
  %i.em = load ptr, ptr %i.x, align 8
  %spec.select.i.i = select i1 %i.el, ptr %i.x, ptr %i.em
  store i32 0, ptr %spec.select.i.i, align 4, !tbaa !271
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %i.x, i1 noundef zeroext false)
          to label %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit.i unwind label %.loopexit275

.loopexit275:                                     ; preds = %_ZN8V3NumberC2EP8FileLineijb.exit253, %bb.z
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.body257

.loopexit.split-lp276:                            ; preds = %bb.u, %.noexc6.i, %.noexc7.i, %.noexc8.i
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.body257

.body257:                                         ; preds = %.loopexit275, %.loopexit.split-lp276, %bb.y
  %eh.lpad-body258 = phi { ptr, i32 } [ %i.eg, %bb.y ], [ %lpad.loopexit277, %.loopexit275 ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp276 ]
  %i.en = load i8, ptr %i.z, align 4, !tbaa !268  ; 2 uses
  %i.eo = icmp eq i8 %i.en, 3
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.body257
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !10  ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.be
  br i1 %i.eq, label %.body244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254: ; preds = %bb.aa
  %i.er = load i64, ptr %i.be, align 8, !tbaa !17
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #23
  br label %.body244

bb.ab:                                            ; preds = %.body257
  %i.et = load i32, ptr %i.y, align 8, !tbaa !265
  %i.eu = icmp sgt i32 %i.et, 128
  %i.ev = icmp eq i8 %i.en, 1
  %i.ew = and i1 %i.ev, %i.eu
  br i1 %i.ew, label %bb.ac, label %.body244

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.x, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i, label %.body244, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.be, align 8, !tbaa !276
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #23
  br label %.body244

.body244:                                         ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %2) #22
  br label %common.resume

_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit.i: ; preds = %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %.0103565, i64 152 ; 3 uses
  %i.fd = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11opBitsNonXZERKS_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.fc)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit.i
  %i.fe = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opBitsOneERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.fc)
          to label %_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst.exit unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae, %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #22
  br label %common.resume

_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst.exit: ; preds = %bb.ae
  %i.fg = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst.exit
  %i.fh = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %.preheader unwind label %bb.ai

.preheader:                                       ; preds = %bb.ag
  br i1 %.not580680, label %._crit_edge560.thread, label %.lr.ph559

._crit_edge560:                                   ; preds = %bb.an
  %i.fi = zext i32 %.3 to i64
  %i.fj = icmp eq ptr %.378, null
  %or.cond.not = select i1 %.1109564, i1 true, i1 %i.fj
  br i1 %or.cond.not, label %._crit_edge560.thread, label %bb.ao

bb.ah:                                            ; preds = %_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.ag
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph559:                                        ; preds = %.preheader, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %.preheader ] ; 3 uses
  %.074557 = phi i32 [ %.3, %bb.an ], [ 0, %.preheader ] ; 3 uses
  %.075556 = phi ptr [ %.378, %bb.an ], [ null, %.preheader ] ; 4 uses
  %.079555 = phi i1 [ %.281, %bb.an ], [ false, %.preheader ] ; 3 uses
  %i.fm = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.fn = and i32 %i.fg, %i.fm
  %.not = icmp eq i32 %i.fn, %i.fh
  br i1 %.not, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %.lr.ph559
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv ; 5 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !256 ; 2 uses
  %.not140 = icmp eq ptr %i.fp, null
  br i1 %.not140, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %.0105573, ptr %i.fo, align 8, !tbaa !256
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.0103565, ptr %i.fq, align 8, !tbaa !277
  %i.fr = load ptr, ptr %i.bw, align 8, !tbaa !154
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !260
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ft = icmp ne ptr %i.fp, %.0105573
  %.not141 = icmp eq ptr %.075556, null
  %or.cond = select i1 %i.ft, i1 %.not141, i1 false
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !277
  store i8 0, ptr %i.n, align 2, !tbaa !140
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am, %.lr.ph559
  %.281 = phi i1 [ %.079555, %.lr.ph559 ], [ true, %bb.ak ], [ %.079555, %bb.al ], [ %.079555, %bb.am ] ; 2 uses
  %.378 = phi ptr [ %.075556, %.lr.ph559 ], [ %.075556, %bb.ak ], [ %.075556, %bb.al ], [ %i.fv, %bb.am ] ; 4 uses
  %.3 = phi i32 [ %.074557, %.lr.ph559 ], [ %.074557, %bb.ak ], [ %.074557, %bb.al ], [ %i.fm, %bb.am ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge560, label %.lr.ph559, !llvm.loop !278

bb.ao:                                            ; preds = %._crit_edge560
  %i.fw = load i8, ptr %i.ae, align 1, !tbaa !279, !range !93, !noundef !94
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ap, label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  br i1 %.281, label %._crit_edge560.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 36)
          to label %bb.ar unwind label %bb.bb     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fz = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.as, label %bb.aw, !prof !143

bb.as:                                            ; preds = %bb.ar
  %i.gb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  %.not.i.i145 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i145, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gc = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.body

bb.aw:                                            ; preds = %bb.au, %bb.as, %bb.ar
  %i.ge = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.7, ptr nonnull @.str.8, i32 481, ptr null) ; 2 uses
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.511, i64 noundef 75)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.gg = load ptr, ptr %i.cl, align 8, !tbaa !179, !noalias !282
  invoke void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.gg)
          to label %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit unwind label %bb.bc

_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gh = load ptr, ptr %3, align 8, !tbaa !10
  %i.gi = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef %i.gh, i64 noundef %i.gi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bd ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !17
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !18
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !285
  %.not.i146 = icmp eq i64 %i.gp, 0
  br i1 %.not.i146, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.az unwind label %bb.bd

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, i8 noundef signext 10)
          to label %bb.az unwind label %bb.bd     ; 0 uses

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0.i147 = phi ptr [ %i.gq, %bb.ax ], [ %i.gj, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.gs = getelementptr inbounds nuw i8, ptr %.378, i64 88 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !179, !noalias !292
  invoke void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.gt)
          to label %_ZNK7AstNode9warnOtherB5cxx11Ev.exit unwind label %bb.be

_ZNK7AstNode9warnOtherB5cxx11Ev.exit:             ; preds = %bb.az
  %i.gu = load ptr, ptr %4, align 8, !tbaa !10
  %i.gv = load i64, ptr %i.az, align 8, !tbaa !16
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i147, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151 unwind label %bb.bf ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151: ; preds = %_ZNK7AstNode9warnOtherB5cxx11Ev.exit
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.512, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !179, !noalias !295
  invoke void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.gy)
          to label %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit155 unwind label %bb.bg

_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.gz = load ptr, ptr %5, align 8, !tbaa !10
  %i.ha = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gz, i64 noundef %i.ha)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157 unwind label %bb.bh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157: ; preds = %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit155
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.0103565, ptr noundef nonnull align 8 dereferenceable(112) %i.hb)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157
  %i.hc = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.bb
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ba
  %i.he = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.hg = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.bc
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hi = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.hk = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.bd
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.hm = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %._crit_edge560.thread

bb.bb:                                            ; preds = %bb.aw, %bb.aq
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.bd:                                            ; preds = %bb.ay, %bb.ax, %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.be:                                            ; preds = %bb.az
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.bf:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151, %_ZNK7AstNode9warnOtherB5cxx11Ev.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bh:                                            ; preds = %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit155, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.bb
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bh
  %i.hx = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bg
  %.pn131 = phi { ptr, i32 } [ %i.ht, %bb.bg ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.hu, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.bf
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.hs, %bb.bf ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !170
  br label %_ZNK7AstNode5widthEv.exit9

_ZNK7AstNode5widthEv.exit9:                       ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  tail call void @_ZN8V3NumberC2EP8FileLineijb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.b, i32 noundef %i.g, i32 noundef 0, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN8V3NumberC2EP8FileLineijb(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef %i.b, i32 noundef %i.g, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZNK7AstNode5widthEv.exit9
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %0) #22
  br label %common.resume

_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit: ; preds = %_ZNK7AstNode5widthEv.exit9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11opBitsNonXZERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opBitsOneERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d, %_ZNSt4pairI8V3NumberS0_EC2IJOP8FileLineOiS6_EJS5_S6_S6_EEESt21piecewise_construct_tSt5tupleIJDpT_EES8_IJDpT0_EE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  ret void
}

declare noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7AstNode18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179
  tail call void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7AstNode9warnOtherB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179
  tail call void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  ret void
}

declare noundef zeroext i1 @_ZNK8V3Number7isAnyXZEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load i8, ptr %i.b, align 4, !tbaa !268   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZN8V3NumberD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !265
  %i.l = icmp sgt i32 %i.k, 128
  %i.m = icmp eq i8 %i.c, 1
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %_ZN8V3NumberD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i8, ptr %i.u, align 4, !tbaa !268   ; 2 uses
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8V3NumberD2Ev.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN8V3NumberD2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZN8V3NumberD2Ev.exit4

bb.g:                                             ; preds = %_ZN8V3NumberD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !265
  %i.ae = icmp sgt i32 %i.ad, 128
  %i.af = icmp eq i8 %i.v, 1
  %i.ag = and i1 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %_ZN8V3NumberD2Ev.exit4

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i.i.i.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i1, label %_ZN8V3NumberD2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !276
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #23
  br label %_ZN8V3NumberD2Ev.exit4

_ZN8V3NumberD2Ev.exit4:                           ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI8AstConstS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !162
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !135

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !162
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.13)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11CaseVisitor19checkExhaustiveEnumEPK7AstCasePK12AstEnumDType(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.144", align 8    ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK7AstNode5widthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !170
  %i.g = zext nneg i32 %i.f to i64
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154  ; 2 uses
  %.not124 = icmp eq ptr %i.l, null
  br i1 %.not124, label %._crit_edge.thread, label %.lr.ph127

.lr.ph127:                                        ; preds = %_ZNK7AstNode5widthEv.exit
  %7 = shl nuw i64 1, %i.h
  %8 = trunc i64 %7 to i32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %.not128 = icmp samesign ugt i64 %i.h, 31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit

._crit_edge:                                      ; preds = %_ZNSt4pairI8V3NumberS0_ED2Ev.exit
  %.pre = load i64, ptr %i.j, align 8, !tbaa !16
  %i.x = icmp eq i64 %.pre, 0
  br i1 %i.x, label %._crit_edge.thread, label %bb.ae

bb.c:                                             ; preds = %.noexc61, %.noexc63, %.noexc64, %.noexc62, %.noexc60, %bb.ac
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body66

_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit:     ; preds = %bb.ab, %.lr.ph127
  %.029126 = phi ptr [ %i.l, %.lr.ph127 ], [ %i.de, %bb.ab ] ; 4 uses
  %.030125 = phi i1 [ true, %.lr.ph127 ], [ %.131, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.z = getelementptr inbounds nuw i8, ptr %.029126, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !154 ; 5 uses
  %.not.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i42, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ab, align 8, !tbaa !162
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.e, !prof !135

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ad = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.ae = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc43 unwind label %.loopexit.split-lp ; 2 uses

.noexc43:                                         ; preds = %.noexc
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.12, i64 noundef 55)
          to label %.noexc44 unwind label %.loopexit.split-lp ; 0 uses

.noexc44:                                         ; preds = %.noexc43
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.ac, align 8, !tbaa !162
  %i.ag = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !163
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ai)
          to label %.noexc45 unwind label %.loopexit.split-lp ; 2 uses

.noexc45:                                         ; preds = %.noexc44
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %.noexc46 unwind label %.loopexit.split-lp ; 0 uses

.noexc46:                                         ; preds = %.noexc45
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.aj) #26
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %.noexc46
  unreachable

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.d, %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit
  invoke void @_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.144") align 8 %5, ptr noundef nonnull %1, ptr noundef %i.aa)
          to label %bb.f unwind label %.loopexit84

bb.f:                                             ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.al = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.g
  br i1 %.not128, label %.loopexit, label %.lr.ph

.loopexit84:                                      ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.loopexit.split-lp:                               ; preds = %bb.e, %.noexc, %.noexc44, %.noexc46, %.noexc45, %.noexc43
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.h:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %.preheader, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.preheader ] ; 3 uses
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = and i32 %i.al, %i.ap
  %.not32 = icmp eq i32 %i.aq, %i.am
  br i1 %.not32, label %bb.j, label %bb.s

bb.j:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !256
  %.not33 = icmp eq ptr %i.as, null
  br i1 %.not33, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = and i64 %i.at, -2
  %i.aw = icmp eq i64 %i.av, 4611686018427387902
  br i1 %i.aw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #26
          to label %.noexc48 unwind label %.loopexit.split-lp86

.noexc48:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.526, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit85 ; 0 uses

.loopexit85:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp86:                             ; preds = %bb.m
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !389
  %i.ay = load ptr, ptr %.029126, align 8, !tbaa !18, !noalias !389
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !389
  invoke void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %.029126)
          to label %.noexc50 unwind label %bb.q, !inline_history !392

.noexc50:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc50
  %i.bb = load ptr, ptr %3, align 8, !tbaa !10, !noalias !389 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.o
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !389
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.o:                                             ; preds = %.noexc50
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %3, align 8, !tbaa !10, !noalias !389 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.o
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !389
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !389
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !389
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !16
  %i.bm = sub i64 4611686018427387903, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #26
          to label %.noexc51 unwind label %.loopexit.split-lp91

.noexc51:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bo = load ptr, ptr %6, align 8, !tbaa !10
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bo, i64 noundef %i.bk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit90 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bq = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.q
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bs = load i64, ptr %i.q, align 8, !tbaa !17
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit90:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp91:                             ; preds = %bb.p
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp91, %.loopexit90
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ] ; 2 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.q
  br i1 %i.bw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.r
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #23
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.bu, %bb.q ], [ %lpad.phi94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %lpad.phi94, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ad

bb.s:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !393

.loopexit:                                        ; preds = %bb.s, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.131 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.030125, %.preheader ], [ %.030125, %bb.s ] ; 4 uses
  %i.bz = load i8, ptr %i.r, align 4, !tbaa !268  ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 3
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !10  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.t
  br i1 %i.cc, label %_ZN8V3NumberD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #23
  br label %_ZN8V3NumberD2Ev.exit.i

bb.u:                                             ; preds = %.loopexit
  %i.cf = load i32, ptr %i.s, align 8, !tbaa !265
  %i.cg = icmp sgt i32 %i.cf, 128
  %i.ch = icmp eq i8 %i.bz, 1
  %i.ci = and i1 %i.ch, %i.cg
  br i1 %i.ci, label %bb.v, label %_ZN8V3NumberD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.t, align 8, !tbaa !276
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #23
  br label %_ZN8V3NumberD2Ev.exit.i

_ZN8V3NumberD2Ev.exit.i:                          ; preds = %bb.t, %bb.w, %bb.v, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.co = load i8, ptr %i.u, align 4, !tbaa !268  ; 2 uses
  %i.cp = icmp eq i8 %i.co, 3
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN8V3NumberD2Ev.exit.i
  %i.cq = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.w
  br i1 %i.cr, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i: ; preds = %bb.x
  %i.cs = load i64, ptr %i.w, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

bb.y:                                             ; preds = %_ZN8V3NumberD2Ev.exit.i
  %i.cu = load i32, ptr %i.v, align 8, !tbaa !265
  %i.cv = icmp sgt i32 %i.cu, 128
  %i.cw = icmp eq i8 %i.co, 1
  %i.cx = and i1 %i.cw, %i.cv
  br i1 %i.cx, label %bb.z, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %5, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i.i.i.i.i1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i1.i, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !276
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #23
  br label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

_ZNSt4pairI8V3NumberS0_ED2Ev.exit:                ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %.029126, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !153 ; 5 uses
  %cond = icmp eq ptr %i.de, null
  br i1 %cond, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt4pairI8V3NumberS0_ED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %.sroa.0.0.copyload.i.i.i57 = load i16, ptr %i.df, align 8, !tbaa !162
  %.not6.i58 = icmp eq i16 %.sroa.0.0.copyload.i.i.i57, 34
  br i1 %.not6.i58, label %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit, label %bb.ac, !prof !135

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063)
          to label %.noexc60 unwind label %bb.c   ; 0 uses

.noexc60:                                         ; preds = %bb.ac
  %i.di = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc61 unwind label %bb.c   ; 2 uses

.noexc61:                                         ; preds = %.noexc60
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.12, i64 noundef 55)
          to label %.noexc62 unwind label %bb.c   ; 0 uses

.noexc62:                                         ; preds = %.noexc61
  %.sroa.0.0.copyload.i.i5.i59 = load i16, ptr %i.dg, align 8, !tbaa !162
  %i.dk = zext i16 %.sroa.0.0.copyload.i.i5.i59 to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !163
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dm)
          to label %.noexc63 unwind label %bb.c   ; 2 uses

.noexc63:                                         ; preds = %.noexc62
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %.noexc64 unwind label %bb.c   ; 0 uses

.noexc64:                                         ; preds = %.noexc63
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.de, ptr noundef nonnull align 8 dereferenceable(112) %i.dn) #26
          to label %.noexc65 unwind label %bb.c

.noexc65:                                         ; preds = %.noexc64
  unreachable

bb.ad:                                            ; preds = %.loopexit85, %.loopexit.split-lp86, %bb.i, %.body, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %.pn, %.body ], [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ]
  call void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body66

bb.ae:                                            ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !319, !range !93, !noundef !94
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._crit_edge.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 35)
          to label %bb.ag unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dt = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.ah, label %bb.al, !prof !143

bb.ah:                                            ; preds = %bb.ag
  %i.dv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  %.not.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dw = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #22
  br label %.body66

bb.al:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %i.dy = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.7, ptr nonnull @.str.8, i32 481, ptr null) ; 2 uses
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.527, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.al
  %i.ea = load ptr, ptr %4, align 8, !tbaa !10
  %i.eb = load i64, ptr %i.j, align 8, !tbaa !16
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.ea, i64 noundef %i.eb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ec)
          to label %._crit_edge.thread unwind label %bb.am

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.al, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body66

._crit_edge.thread:                               ; preds = %_ZNK7AstNode5widthEv.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ae, %._crit_edge
  %.030.lcssa168 = phi i1 [ %.131, %._crit_edge ], [ %.131, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.131, %bb.ae ], [ true, %_ZNK7AstNode5widthEv.exit ]
  %i.ee = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.i
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %._crit_edge.thread
  %i.eg = load i64, ptr %i.i, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.030.lcssa168

.body66:                                          ; preds = %.loopexit84, %.loopexit.split-lp, %bb.am, %bb.ak, %bb.c, %bb.ad
  %.pn39.pn = phi { ptr, i32 } [ %i.dx, %bb.ak ], [ %i.y, %bb.c ], [ %.pn.pn.pn.pn, %bb.ad ], [ %i.ed, %bb.am ], [ %lpad.loopexit, %.loopexit84 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ei = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
end_hunk_2
