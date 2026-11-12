Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseGrammar?download=true
inline.NumInlined: 7220
inline.NumDeleted: 1267
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN10AstReleaseC2EP8FileLineP11AstNodeExpr:_ZN10AstRelease4lhspEP11AstNodeExpr.exit
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10V3ParseImp8newBlockEP8FileLineP7AstNode(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #34 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !82
  store i8 0, ptr %i.c, align 8, !tbaa !83
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.b, i16 472, ptr noundef %1)
          to label %.noexc10 unwind label %bb.e

.noexc10:                                         ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV12AstNodeBlock, i64 16), ptr %i.b, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !81
  %i.g = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.h, ptr %i.a, align 8, !tbaa !85
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc10
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.e   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !84
  %i.k = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.k, ptr %i.f, align 8, !tbaa !83
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %.noexc10
  %i.l = phi ptr [ %i.j, %.noexc11 ], [ %i.f, %.noexc10 ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.g, align 1, !tbaa !83
  store i8 %i.m, ptr %i.l, align 1, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.g, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.r = load i64, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %spec.select.i.i = zext i1 %i.s to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 %spec.select.i.i, ptr %i.t, align 8, !tbaa !349
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstBegin, i64 16), ptr %i.b, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 185 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, -4
  %i.x = or disjoint i8 %i.w, 2
  store i8 %i.x, ptr %i.u, align 1
  %i.y = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.c
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.aa = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !83
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i.i.i, %._crit_edge.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !83
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #30
  resume { ptr, i32 } %i.ad

bb.f:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %bb.a ]
  ret ptr %.07
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(154) %0, i16 481, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.a, align 8, !tbaa !350
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(154) %0, ptr noundef %2)
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZN9AstNodeIf9addThenspEP7AstNode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(154) %0, ptr noundef nonnull %3)
  br label %_ZN9AstNodeIf9addThenspEP7AstNode.exit.i

_ZN9AstNodeIf9addThenspEP7AstNode.exit.i:         ; preds = %bb.b, %bb.a
  %.not.i.i7.i = icmp eq ptr %4, null
  br i1 %.not.i.i7.i, label %_ZN9AstNodeIfC2E6VNTypeP8FileLineP11AstNodeExprP7AstNodeS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9AstNodeIf9addThenspEP7AstNode.exit.i
  tail call void @_ZN7AstNode7addOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(154) %0, ptr noundef nonnull %4)
  br label %_ZN9AstNodeIfC2E6VNTypeP8FileLineP11AstNodeExprP7AstNodeS6_.exit

_ZN9AstNodeIfC2E6VNTypeP8FileLineP11AstNodeExprP7AstNodeS6_.exit: ; preds = %_ZN9AstNodeIf9addThenspEP7AstNode.exit.i, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %0, align 8, !tbaa !71
  store <4 x i8> zeroinitializer, ptr %i.b, align 1, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI6AstDotS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !209
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 129
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstDot4rhspEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLineC2EPS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load <2 x i16>, ptr %1, align 8, !tbaa !90
  store <2 x i16> %i.a, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = load i32, ptr %i.b, align 4
  %i.g = and i32 %i.f, -2
  %i.h = or disjoint i32 %i.g, %i.e
  store i32 %i.h, ptr %i.b, align 4
  %i.i = load i32, ptr %i.c, align 4
  %i.j = and i32 %i.i, -2
  %i.k = or disjoint i32 %i.j, %i.e
  store i32 %i.k, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 8, !tbaa !86
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 16777215
  %i.s = load i64, ptr %i.o, align 8
  %i.t = and i64 %i.s, -16777216
  %i.u = or disjoint i64 %i.t, %i.r               ; 2 uses
  store i64 %i.u, ptr %i.o, align 8
  %2 = load i64, ptr %i.p, align 8
  %3 = and i64 %2, 72057589742960640
  %i.v = and i64 %i.u, -72057589742960641
  %i.w = or disjoint i64 %i.v, %3
  store i64 %i.w, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !638
  store i16 %i.z, ptr %i.x, align 8, !tbaa !638
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !336
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !639 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !336
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLine7warnOffE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine6warnOnE11V3ErrorCodeb.exit, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #29
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN8FileLine6warnOnE11V3ErrorCodeb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #29
  br label %_ZN8FileLine6warnOnE11V3ErrorCodeb.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #29
  resume { ptr, i32 } %i.e

_ZN8FileLine6warnOnE11V3ErrorCodeb.exit:          ; preds = %bb.a, %bb.b, %bb.d
  %i.f = xor i1 %2, true
  %i.g = load i16, ptr %0, align 8, !tbaa !351
  %i.h = tail call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.g, i8 noundef zeroext 0, i8 %1, i1 noundef zeroext %i.f)
  store i16 %i.h, ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11AstNodeExpr8makeStmtEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #34 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i16 455, ptr noundef %i.c)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV11AstStmtExpr, i64 16), ptr %i.a, align 8, !tbaa !71
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull %0)
          to label %_ZN11AstStmtExprC2EP8FileLineP11AstNodeExpr.exit unwind label %bb.b

_ZN11AstStmtExprC2EP8FileLineP11AstNodeExpr.exit: ; preds = %.noexc
  ret ptr %i.a

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #30
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13AstStmtPragmaC2EP8FileLineP9AstPragma(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN13AstStmtPragma5pragpEP9AstPragma.exit:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 456, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV13AstStmtPragma, i64 16), ptr %0, align 8, !tbaa !71
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10AstDisableC2EP8FileLineP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 420, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstDisable, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.a, align 8, !tbaa !641
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN10AstDisable10targetRefpEP11AstNodeExpr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %2)
  br label %_ZN10AstDisable10targetRefpEP11AstNodeExpr.exit

_ZN10AstDisable10targetRefpEP11AstNodeExpr.exit:  ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN10V3ParseImp13importIfInStdEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12AstFireEventC2EP8FileLineP11AstNodeExprb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12AstFireEvent8operandpEP11AstNodeExpr.exit:
  %i.a = zext i1 %3 to i8
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 430, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV12AstFireEvent, i64 16), ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.a, ptr %i.b, align 8, !tbaa !643
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7AstLoopC2EP8FileLineP7AstNode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 435, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV7AstLoop, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.a, align 8, !tbaa !229
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN7AstLoop9addStmtspEP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %2)
  br label %_ZN7AstLoop9addStmtspEP7AstNode.exit

_ZN7AstLoop9addStmtspEP7AstNode.exit:             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11AstLoopTestC2EP8FileLineP7AstLoopP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN11AstLoopTest5condpEP11AstNodeExpr.exit:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 436, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV11AstLoopTest, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.a, align 8, !tbaa !646
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9AstRepeatC2EP8FileLineP11AstNodeExprP7AstNode(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN9AstRepeat6countpEP11AstNodeExpr.exit:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 449, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstRepeat, i64 16), ptr %0, align 8, !tbaa !71
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %2)
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN9AstRepeat9addStmtspEP7AstNode.exit, label %bb.a

bb.a:                                             ; preds = %_ZN9AstRepeat6countpEP11AstNodeExpr.exit
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %3)
  br label %_ZN9AstRepeat9addStmtspEP7AstNode.exit

_ZN9AstRepeat9addStmtspEP7AstNode.exit:           ; preds = %bb.a, %_ZN9AstRepeat6countpEP11AstNodeExpr.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10AstForeachC2EP8FileLineP16AstForeachHeaderP7AstNode(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 479, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV14AstNodeForeach, i64 16), ptr %0, align 8, !tbaa !71
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %2)
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZN14AstNodeForeachC2E6VNTypeP8FileLineP16AstForeachHeaderP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %3)
  br label %_ZN14AstNodeForeachC2E6VNTypeP8FileLineP16AstForeachHeaderP7AstNode.exit

_ZN14AstNodeForeachC2E6VNTypeP8FileLineP16AstForeachHeaderP7AstNode.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstForeach, i64 16), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9AstReturnC2EP8FileLineP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 450, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstReturn, i64 16), ptr %0, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN9AstReturn4lhspEP11AstNodeExpr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %2)
  br label %_ZN9AstReturn4lhspEP11AstNodeExpr.exit

_ZN9AstReturn4lhspEP11AstNodeExpr.exit:           ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
