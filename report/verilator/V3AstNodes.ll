Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK18AstCellInlineScope8dumpJsonERSo:._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204, !noalias !1343 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !70, !alias.scope !1345
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !75, !noalias !1344 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73, !noalias !1344 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !1345
  store i64 %i.k, ptr %i.a, align 8, !tbaa !89, !noalias !1345
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.e    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !75, !alias.scope !1345
  %i.n = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !1345
  store i64 %i.n, ptr %i.h, align 8, !tbaa !74, !alias.scope !1345
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %._crit_edge.i.i
  %i.o = phi ptr [ %i.m, %.noexc8 ], [ %i.h, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !74
  store i8 %i.p, ptr %i.o, align 1, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !1345 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !73, !alias.scope !1345
  %i.s = load ptr, ptr %3, align 8, !tbaa !75, !alias.scope !1345
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !1345
  invoke void @_ZN7AstNode11dumpJsonStrERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !74
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.y = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !74
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @_ZNK18AstCellInlineScope11dumpJsonGenERSo(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.f:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ai = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !74
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8AstCExpr4dumpERSo(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNK7AstNode4dumpERSo(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !647, !range !149, !noundef !150
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1320, i64 noundef 7) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8AstCExpr8dumpJsonERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  store i32 1701999984, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 4, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !647, !range !149, !noundef !150
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1088, i64 noundef 2)
          to label %.noexc6 unwind label %bb.b    ; 0 uses

.noexc6:                                          ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !75
  %i.i = load i64, ptr %i.b, align 8, !tbaa !73
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.h, i64 noundef %i.i)
          to label %.noexc7 unwind label %bb.b    ; 2 uses

.noexc7:                                          ; preds = %.noexc6
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1089, i64 noundef 2)
          to label %.noexc8 unwind label %bb.b    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1090, i64 noundef 4)
          to label %_ZN7AstNode14dumpJsonBoolIfERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.b ; 0 uses

_ZN7AstNode14dumpJsonBoolIfERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %.noexc8
  %.pre = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.m = icmp eq ptr %.pre, %i.a
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7AstNode14dumpJsonBoolIfERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !74
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7AstNode14dumpJsonBoolIfERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.b:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.b
  %i.s = load i64, ptr %i.a, align 8, !tbaa !74
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8AstClass16isCacheableChildEPK7AstNode(ptr noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit

_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit:            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !62 ; 4 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit [
    i16 68, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit
    i16 63, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit
    i16 21, label %_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_.exit
    i16 131, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit
  ]

_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_.exit: ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 187
  %i.c = load i8, ptr %i.b, align 1, !tbaa !512, !range !149, !noundef !150
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit

_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit:     ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  %i.e = add i16 %.sroa.0.0.copyload.i.i.i, -371
  %spec.select.i.i = icmp ult i16 %i.e, 5
  br i1 %spec.select.i.i, label %1, label %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread

1:                                                ; preds = %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit
  %2 = or disjoint i16 %.sroa.0.0.copyload.i.i.i, -376
  %spec.select.i.i20 = icmp samesign ult i16 %2, -5
  br i1 %spec.select.i.i20, label %3, label %_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_.exit, !prof !63

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1075) ; 0 uses
  %5 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5.i21 = load i16, ptr %i.a, align 8, !tbaa !62
  %7 = zext i16 %.sroa.0.0.copyload.i.i5.i21 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %11) #35
  unreachable

_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_.exit:  ; preds = %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 1024
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit, label %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread

_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread: ; preds = %_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_.exit, %_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_.exit, %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit
  %i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 5
  br label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit

_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit:          ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit, %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread, %bb.a, %_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_.exit, %_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_.exit
  %i.j = phi i1 [ true, %_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_.exit ], [ true, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit ], [ true, %_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_.exit ], [ true, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit ], [ true, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit ], [ %i.i, %_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI6AstVarS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI10AstTypedefS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI13AstConstraintS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI13AstConstraintS_EEPKT_PKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 21
  br i1 %.not6, label %.critedge, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1075) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI14AstEnumItemRefS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI12AstNodeFTaskS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -371
  %spec.select.i = icmp ult i16 %i.b, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI12AstNodeFTaskS_EEPKT_PKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -376
  %spec.select.i = icmp ult i16 %i.b, -5
  br i1 %spec.select.i, label %bb.c, label %.critedge, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1075) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.f = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstCFuncS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8AstClass14baseMostClasspEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %_ZNK15AstClassExtends6classpEv.exit15

_ZNK15AstClassExtends6classpEv.exit15:            ; preds = %_ZNK15AstClassExtends12classOrNullpEv.exit.i12, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.y, %_ZNK15AstClassExtends12classOrNullpEv.exit.i12 ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK15AstClassExtends6classpEv.exit15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK15AstClassExtends12classOrNullpEv.exit.thread.i, label %.thread.i.i
end_hunk_0
