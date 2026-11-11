Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Case?download=true
inline.NumInlined: 2331
inline.NumDeleted: 883
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7AstNode9warnOtherB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  ret void
}

declare noundef zeroext i1 @_ZNK8V3Number7isAnyXZEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load i8, ptr %i.b, align 4, !tbaa !223   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZN8V3NumberD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !222
  %i.l = icmp sgt i32 %i.k, 128
  %i.m = icmp eq i8 %i.c, 1
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %_ZN8V3NumberD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i8, ptr %i.u, align 4, !tbaa !223   ; 2 uses
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8V3NumberD2Ev.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN8V3NumberD2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZN8V3NumberD2Ev.exit4

bb.g:                                             ; preds = %_ZN8V3NumberD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !222
  %i.ae = icmp sgt i32 %i.ad, 128
  %i.af = icmp eq i8 %i.v, 1
  %i.ag = and i1 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %_ZN8V3NumberD2Ev.exit4

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !230   ; 3 uses
  %.not.i.i.i.i.i.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i1, label %_ZN8V3NumberD2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !231
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
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !158
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !134

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !158
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK7AstNode5widthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !168
  %i.g = zext nneg i32 %i.f to i64
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !22
  store i8 0, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !150  ; 2 uses
  %.not120 = icmp eq ptr %i.l, null
  br i1 %.not120, label %._crit_edge.thread, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZNK7AstNode5widthEv.exit
  %i.m = shl nuw nsw i64 1, %i.h
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %.not124 = icmp samesign ugt i64 %i.h, 31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit

._crit_edge:                                      ; preds = %_ZNSt4pairI8V3NumberS0_ED2Ev.exit
  %.pre = load i64, ptr %i.j, align 8, !tbaa !22
  %i.z = icmp eq i64 %.pre, 0
  br i1 %i.z, label %._crit_edge.thread, label %bb.z

_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit:     ; preds = %bb.x, %.lr.ph123
  %.029122 = phi ptr [ %i.l, %.lr.ph123 ], [ %i.dd, %bb.x ] ; 4 uses
  %.030121 = phi i1 [ true, %.lr.ph123 ], [ %.131, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %.029122, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !150 ; 5 uses
  %.not.i42 = icmp eq ptr %i.ab, null
  br i1 %.not.i42, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ac, align 8, !tbaa !158
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ae = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.d
  %i.af = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc43:                                         ; preds = %.noexc
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.12, i64 noundef 55)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc44:                                         ; preds = %.noexc43
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.ad, align 8, !tbaa !158
  %i.ah = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !159
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.aj)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc45:                                         ; preds = %.noexc44
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %.noexc64.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.c, %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit
  invoke void @_ZN11CaseVisitor12matchPatternEPK7AstCasePK8AstConst(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.144") align 8 %5, ptr noundef nonnull %1, ptr noundef %i.ab)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.am = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.f unwind label %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.an = invoke noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %.preheader unwind label %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.f
  br i1 %.not124, label %.loopexit, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, %.noexc64.invoke, %.noexc61, %.noexc63, %.noexc43, %.noexc45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ag, %.noexc62, %.noexc60, %bb.y, %.noexc44, %.noexc, %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.aa
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader ] ; 3 uses
  %i.ao = trunc nuw i64 %indvars.iv to i32
  %i.ap = and i32 %i.am, %i.ao
  %.not32 = icmp eq i32 %i.ap, %i.an
  br i1 %.not32, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218
  %.not33 = icmp eq ptr %i.ar, null
  br i1 %.not33, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = and i64 %i.as, -2
  %i.av = icmp eq i64 %i.au, 4611686018427387902
  br i1 %i.av, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #26
          to label %.noexc48 unwind label %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.526, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f, %bb.e, %bb.j
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !478
  %i.ax = load ptr, ptr %.029122, align 8, !tbaa !25, !noalias !478
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !478
  invoke void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %.029122)
          to label %.noexc50 unwind label %bb.n, !inline_history !476

.noexc50:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc50
  %i.ba = load ptr, ptr %3, align 8, !tbaa !21, !noalias !478 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.q
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !23, !noalias !478
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.l:                                             ; preds = %.noexc50
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !21, !noalias !478 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !23, !noalias !478
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !478
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !478
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %i.bk = load i64, ptr %i.j, align 8, !tbaa !22
  %i.bl = sub i64 4611686018427387903, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #26
          to label %.noexc51 unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bn = load ptr, ptr %6, align 8, !tbaa !21
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bn, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bp = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.s
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.br = load i64, ptr %i.s, align 8, !tbaa !23
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
end_hunk_0
