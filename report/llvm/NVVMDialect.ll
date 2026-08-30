Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVVMDialect?download=true
inline.NumInlined: 172219
inline.NumDeleted: 48928
loop-unroll.NumCompletelyUnrolled: 271
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 275
begin_hunk_0_@_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckIiZNS0_20parseOptionalIntegerIiEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit8, %_ZNK4llvm5APIntneERKS0_.exit, %.split, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.4.0 = phi i16 [ 257, %_ZN4llvm5APIntD2Ev.exit8 ], [ 256, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 257, %.split ], [ 257, %_ZNK4llvm5APIntneERKS0_.exit ], [ %i.j, %bb.a ]
  %i.av = load i32, ptr %i.e, align 8, !tbaa !95
  %i.aw = icmp ugt i32 %i.av, 64
  br i1 %i.aw, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit9

bb.j:                                             ; preds = %.critedge
  %i.ax = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4llvm5APIntD2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #34
  br label %_ZN4llvm5APIntD2Ev.exit9

_ZN4llvm5APIntD2Ev.exit9:                         ; preds = %.critedge, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i16 %.sroa.4.0
}

declare void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir11FieldParserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_E5parseERNS_9AsmParserE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.7361") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !366
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !368
  store i8 0, ptr %i.a, align 8, !tbaa !78
  %i.c = load ptr, ptr %1, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1) #32, !inline_history !6603
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4) #32, !inline_history !6603
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !75
  store ptr @.str.1675, ptr %3, align 8, !tbaa !78
  store i8 3, ptr %i.l, align 8, !tbaa !79
  %i.n = load ptr, ptr %1, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(34) %3) #32, !inline_history !6603
  %i.q = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #32
  %i.r = load ptr, ptr %2, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !88, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !88
  br i1 %i.u, label %bb.e, label %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.v) #32
  br label %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.w = trunc nuw i8 %i.q to i1
  br i1 %i.w, label %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.g

_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !366
  %i.y = load ptr, ptr %4, align 8, !tbaa !405    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !368 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ac, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  store ptr %i.y, ptr %0, align 8, !tbaa !405
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !78
  %.pre = load i64, ptr %i.b, align 8, !tbaa !368
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.ae = phi i64 [ %i.aa, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !368
  store i64 0, ptr %i.b, align 8, !tbaa !368
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ag, align 8, !tbaa !6118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZN4mlir9AsmParser11parseStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ah, align 8, !tbaa !6118
  %.pre2 = load ptr, ptr %4, align 8, !tbaa !405  ; 2 uses
  %i.ai = icmp eq ptr %.pre2, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !78
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre2, i64 noundef %i.ak) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4mlir11FieldParserIbbE5parseERNS_9AsmParserE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.7718, align 8           ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1, !tbaa !155
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #32, !inline_history !6604
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8, !tbaa !6605
  %i.f = call i16 @_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckIbZNS0_20parseOptionalIntegerIbEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.f to i8
  %i.g = and i16 %i.f, 256
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN4mlir9AsmParser12parseIntegerIbEEN4llvm11ParseResultERT_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !75
  store ptr @.str.1631, ptr %3, align 8, !tbaa !78
  store i8 3, ptr %i.h, align 8, !tbaa !79
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(34) %3) #32, !inline_history !6604
  %i.m = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #32
  %i.n = load ptr, ptr %2, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !88
  br i1 %i.q, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZN4mlir9AsmParser12parseIntegerIbEEN4llvm11ParseResultERT_.exit

_ZN4mlir9AsmParser12parseIntegerIbEEN4llvm11ParseResultERT_.exit: ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.03.0.i = phi i8 [ %i.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ %.sroa.0.0.extract.trunc.i, %bb.a ] ; 2 uses
  %i.s = trunc nuw i8 %.sroa.03.0.i to i1
  %i.t = load i8, ptr %i.a, align 1, !range !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.sroa.2.0.insert.ext = zext nneg i8 %.sroa.03.0.i to i16
  %.sroa.2.0.insert.shift = shl nuw nsw i16 %.sroa.2.0.insert.ext, 8
  %i.u = zext nneg i8 %i.t to i16
  %.sroa.01.0.insert.ext = select i1 %i.s, i16 %i.u, i16 0
  %.sroa.01.0.insert.insert = or disjoint i16 %.sroa.01.0.insert.ext, %.sroa.2.0.insert.shift
  ret i16 %.sroa.01.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !6118, !range !89, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !89
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !405    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !405    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !368  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !78
  store i8 %i.p, ptr %i.g, align 1, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !368  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !368
  %i.s = load ptr, ptr %0, align 8, !tbaa !405
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !78
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !405
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !368
  store i64 %i.w, ptr %i.u, align 8, !tbaa !368
  %i.x = load i64, ptr %i.k, align 8, !tbaa !78
  store i64 %i.x, ptr %i.h, align 8, !tbaa !78
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !78
  store ptr %i.j, ptr %0, align 8, !tbaa !405
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !368
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !368
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !78
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !405
  store i64 %i.y, ptr %i.k, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !368
  store i8 0, ptr %i.ad, align 1, !tbaa !78
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !366
  %i.ag = load ptr, ptr %1, align 8, !tbaa !405   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !368 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !405
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !78
  store i64 %i.an, ptr %i.af, align 8, !tbaa !78
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !368
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !368
  store ptr %i.ah, ptr %1, align 8, !tbaa !405
  store i64 0, ptr %i.ao, align 8, !tbaa !368
  store i8 0, ptr %i.ah, align 8, !tbaa !78
  store i8 1, ptr %i.a, align 8, !tbaa !6118
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !6118
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !405   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !78
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #34
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9AsmParser14parseAttributeINS_14DictionaryAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::Attribute", align 8   ; 5 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr null, ptr %3, align 8, !tbaa !60
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i8 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %2) #32
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !91 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1212
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.l, ptr %.sroa.0.0.copyload.i, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %1, align 8
  %i.m = icmp eq ptr %spec.select.i.i, null
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !75
  store ptr @.str.1678, ptr %5, align 8, !tbaa !78
  store i8 3, ptr %i.n, align 8, !tbaa !79
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
end_hunk_0
