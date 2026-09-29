Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Width?download=true
inline.NumInlined: 18720
inline.NumDeleted: 2434
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12WidthVisitor14fixWidthExtendEP11AstNodeExprP12AstNodeDTypeNS_10ExtendRuleE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.not94, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %bb.ci unwind label %bb.cd     ; 0 uses

bb.cd:                                            ; preds = %bb.bx, %bb.cc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.cf:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152, %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %13, align 8, !tbaa !54   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.cf
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !32
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.ce
  %.pn90 = phi { ptr, i32 } [ %i.js, %bb.ce ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.jt, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.cm

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ch:                                            ; preds = %bb.ca
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.kb = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.ch
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !32
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.cg
  %.pn92 = phi { ptr, i32 } [ %i.jz, %bb.cg ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.ka, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cm

bb.ci:                                            ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.kg = load ptr, ptr %16, align 8, !tbaa !54
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !55
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.kg, i64 noundef %i.ki)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit171 unwind label %bb.cl ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit171: ; preds = %bb.cj
  %i.kk = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit171
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.cl:                                            ; preds = %bb.cj
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cl
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !32
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ck
  %.pn95 = phi { ptr, i32 } [ %i.kp, %bb.ck ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.kq, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.cd
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %i.jr, %bb.cd ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

bb.cn:                                            ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number10autoExtendEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 32
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opReplERKS_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7AstNode10prettyNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(152) %1)
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !32
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.i
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opExtendXZERKS_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number7bitIsXZEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !369
  %i.c = add i8 %i.b, -3
  %spec.select.i = icmp ult i8 %i.c, -2
  %i.d = icmp slt i32 %1, 0
  %or.cond10 = or i1 %i.d, %spec.select.i
  br i1 %or.cond10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !328
  %.fr = freeze i32 %i.f                          ; 3 uses
  %i.g = icmp slt i32 %.fr, 1
  br i1 %i.g, label %.loopexit, label %tailrecurse.preheader

tailrecurse.preheader:                            ; preds = %.lr.ph
  %i.h = add nsw i32 %.fr, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.h) ; 2 uses
  %i.i = icmp samesign ult i32 %.fr, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i7 = select i1 %i.i, ptr %0, ptr %i.j
  %i.k = lshr i32 %spec.select, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7, i64 %i.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !131
  %i.n = zext i32 %.sroa.3.0.copyload to i64
  %i.o = and i32 %spec.select, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = and i64 %i.q, %i.n
  %i.s = icmp ne i64 %i.r, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %tailrecurse.preheader
  %.0 = phi i1 [ %i.s, %tailrecurse.preheader ], [ false, %bb.a ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !369
  %i.c = add i8 %i.b, -1
  %spec.select = icmp ult i8 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12V3NumberData3numEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !369
  %i.c = add i8 %i.b, -1
  %spec.select.i = icmp ult i8 %i.c, 2
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.532, i32 noundef 246) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.533)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !328
  %i.j = icmp slt i32 %i.i, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.j, ptr %0, ptr %i.k
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConst11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI8AstConstS_EEPKT_PKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !195
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.44, i32 noundef 1075) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.45)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !195
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.27)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK8V3Number7isEqOneEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConstS_EEPKT_PKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number10isNegativeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !369   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK8V3Number6bitIs1Ei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !328  ; 3 uses
  %i.f = add i8 %i.b, -3
  %spec.select.i.i = icmp ult i8 %i.f, -2
  %i.g = icmp slt i32 %i.e, 1
  %or.cond.i = or i1 %spec.select.i.i, %i.g
  br i1 %or.cond.i, label %_ZNK8V3Number6bitIs1Ei.exit, label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %bb.b
  %i.h = add nsw i32 %i.e, -1                     ; 2 uses
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i10.i = select i1 %i.i, ptr %0, ptr %i.j
  %i.k = lshr i32 %i.h, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !131
  %i.n = zext i32 %.sroa.0.0.copyload.i to i64
  %i.o = and i32 %i.h, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 1, %i.p                  ; 2 uses
  %i.r = and i64 %i.q, %i.n
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !131
  %i.s = zext i32 %.sroa.4.0.copyload.i to i64
  %i.t = and i64 %i.q, %i.s
  %.not8.i = icmp eq i64 %i.t, 0
  br label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %bb.c, %_ZNK12V3NumberData3numEv.exit.i, %bb.b, %bb.a
  %i.u = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not8.i, %bb.c ], [ false, %_ZNK12V3NumberData3numEv.exit.i ]
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6AstSelC2EP8FileLineP11AstNodeExprii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #30 ; 9 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i16 121, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef 32, i32 noundef %3, i1 noundef zeroext true)
          to label %.noexc10 unwind label %bb.e

.noexc10:                                         ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !328
  %i.e = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef %i.d, i32 noundef 0, i8 0)
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %.noexc10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !259
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !259
  %i.h = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.c:                                             ; preds = %.noexc10
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #25
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.b, %.noexc.i
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %0, i16 246, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.k, align 8
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2)
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.a)
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSel, i64 16), ptr %0, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, i8 0, i64 9, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 1, ptr %i.m, align 4, !tbaa !484
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %4, ptr %i.n, align 8, !tbaa !483
  %i.o = tail call noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %4, i32 noundef %4, i8 0) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL17dumpTreeJsonLevelv:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL17dumpTreeJsonLevelvE7s_level, align 4, !tbaa !131
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13dumpTreeLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !131 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1365, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !32
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !169, !range !170, !noundef !171
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !131
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

declare noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

declare noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{!0, !190}
!1 = distinct !{!1, !190}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !190}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !190}
!8 = distinct !{null, ptr @_ZNK7AstNode8isStringEv}
!9 = distinct !{!9, !190}
!10 = distinct !{!10, !190}
!11 = distinct !{!11, !190}
!12 = distinct !{!12, !190}
!13 = distinct !{!13, !190}
!14 = distinct !{null}
!15 = distinct !{!15, !190}
!16 = distinct !{!16, !190}
!17 = distinct !{!17, !190}
!18 = distinct !{!18, !190}
!19 = distinct !{!19, !190}
!20 = distinct !{!20, !190}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"_ZTS5Stage", !26, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!26, !26, i64 0}
!33 = !{!"vtable pointer", !25, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"long", !26, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !26, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !26, i64 0}
!38 = !{!"any pointer", !26, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !38, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !38, i64 0, !35, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !38, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !38, i64 0}
!43 = !{!"_ZTSSt6locale", !42, i64 0}
!44 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !39, i64 40, !40, i64 48, !26, i64 64, !27, i64 192, !41, i64 200, !43, i64 208}
!45 = !{!44, !35, i64 16}
!46 = !{!"p1 omnipotent char", !38, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 _ZTS12AstNodeDType", !38, i64 0}
!49 = !{!"_ZTS7WidthVP", !48, i64 0, !30, i64 8}
!50 = !{!49, !48, i64 0}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !35, i64 8, !26, i64 16}
!54 = !{!53, !46, i64 0}
!55 = !{!53, !35, i64 8}
!56 = !{!49, !30, i64 8}
!57 = !{!"p1 _ZTS7WidthVP", !38, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTS14VNVisitorConst"}
!60 = !{!"any p2 pointer", !38, i64 0}
!61 = !{!"p2 _ZTS7AstNode", !60, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIP7AstNodeSaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIP7AstNodeSaIS1_EE", !64, i64 0}
!66 = !{!"_ZTS9VNDeleter", !65, i64 0}
!67 = !{!"_ZTS9VNVisitor", !59, i64 0, !66, i64 8}
!68 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!69 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !68, i64 0}
!70 = !{!"_ZTSSt14_Rb_tree_color", !26, i64 0}
!71 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !38, i64 0}
!72 = !{!"_ZTSSt18_Rb_tree_node_base", !70, i64 0, !71, i64 8, !71, i64 16, !71, i64 24}
!73 = !{!"_ZTSSt15_Rb_tree_header", !72, i64 0, !35, i64 32}
!74 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !69, i64 0, !73, i64 8}
!75 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !74, i64 0}
!76 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE", !75, i64 0}
!77 = !{!"bool", !26, i64 0}
!78 = !{!"_ZTS13V3UniqueNames", !53, i64 0, !76, i64 32, !77, i64 80}
!79 = !{!"_ZTSSt4lessIPK7AstNodeE"}
!80 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPK7AstNodeEE", !79, i64 0}
!81 = !{!"_ZTSNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE13_Rb_tree_implISM_Lb1EEE", !80, i64 0, !73, i64 8}
!82 = !{!"_ZTSSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE", !81, i64 0}
!83 = !{!"_ZTSSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE", !82, i64 0}
!84 = !{!"_ZTS10VMemberMap", !83, i64 0}
!85 = !{!"_ZTSSt4lessISt4pairIP12AstNodeFTaskNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE"}
!86 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIP12AstNodeFTaskNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !85, i64 0}
!87 = !{!"_ZTSNSt8_Rb_treeISt4pairIP12AstNodeFTaskNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS9_S2_ESt10_Select1stISB_ESt4lessIS9_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !86, i64 0, !73, i64 8}
!88 = !{!"_ZTSSt8_Rb_treeISt4pairIP12AstNodeFTaskNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS9_S2_ESt10_Select1stISB_ESt4lessIS9_ESaISB_EE", !87, i64 0}
!89 = !{!"_ZTSSt3mapISt4pairIP12AstNodeFTaskNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES2_St4lessIS9_ESaIS0_IKS9_S2_EEE", !88, i64 0}
!90 = !{!"_ZTS18V3TaskConnectState", !66, i64 0, !77, i64 24, !89, i64 32}
!91 = !{!"p1 _ZTS7AstNode", !38, i64 0}
!92 = !{!"p1 _ZTS7AstCell", !38, i64 0}
!93 = !{!"p1 _ZTS11AstEnumItem", !38, i64 0}
!94 = !{!"p1 _ZTS12AstNodeFTask", !38, i64 0}
!95 = !{!"p1 _ZTS8AstClass", !38, i64 0}
!96 = !{!"p1 _ZTS13AstNodeModule", !38, i64 0}
!97 = !{!"p1 _ZTS13AstConstraint", !38, i64 0}
!98 = !{!"p1 _ZTS16AstNodeProcedure", !38, i64 0}
!99 = !{!"p1 _ZTS7AstWith", !38, i64 0}
!100 = !{!"p1 _ZTS7AstFunc", !38, i64 0}
!101 = !{!"p1 _ZTS9AstAttrOf", !38, i64 0}
!102 = !{!"p1 _ZTS11AstNodeExpr", !38, i64 0}
!103 = !{!"_ZTSSt4lessISt4pairIPK12AstNodeDType9VAttrTypeEE"}
!104 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPK12AstNodeDType9VAttrTypeEEE", !103, i64 0}
!105 = !{!"_ZTSNSt8_Rb_treeISt4pairIPK12AstNodeDType9VAttrTypeES0_IKS5_P6AstVarESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !104, i64 0, !73, i64 8}
!106 = !{!"_ZTSSt8_Rb_treeISt4pairIPK12AstNodeDType9VAttrTypeES0_IKS5_P6AstVarESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !105, i64 0}
!107 = !{!"_ZTSSt3mapISt4pairIPK12AstNodeDType9VAttrTypeEP6AstVarSt4lessIS5_ESaIS0_IKS5_S7_EEE", !106, i64 0}
!108 = !{!"_ZTSSt4lessIPK12AstNodeDTypeE"}
!109 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPK12AstNodeDTypeEE", !108, i64 0}
!110 = !{!"_ZTSNSt8_Rb_treeIPK12AstNodeDTypeSt4pairIKS2_P13AstQueueDTypeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !109, i64 0, !73, i64 8}
!111 = !{!"_ZTSSt8_Rb_treeIPK12AstNodeDTypeSt4pairIKS2_P13AstQueueDTypeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !110, i64 0}
!112 = !{!"_ZTSSt3mapIPK12AstNodeDTypeP13AstQueueDTypeSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !111, i64 0}
!113 = !{!"_ZTSNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_PK8AstClassESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !80, i64 0, !73, i64 8}
!114 = !{!"_ZTSSt8_Rb_treeIPK7AstNodeSt4pairIKS2_PK8AstClassESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE", !113, i64 0}
!115 = !{!"_ZTSSt3mapIPK7AstNodePK8AstClassSt4lessIS2_ESaISt4pairIKS2_S5_EEE", !114, i64 0}
!116 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !60, i64 0}
!117 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!118 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !117, i64 0}
!119 = !{!"float", !26, i64 0}
!120 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !119, i64 0, !35, i64 8}
!121 = !{!"_ZTSSt10_HashtableIP6AstVarS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE", !116, i64 0, !35, i64 8, !118, i64 16, !35, i64 24, !120, i64 32, !117, i64 48}
!122 = !{!"_ZTSSt13unordered_setIP6AstVarSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE", !121, i64 0}
!123 = !{!"_ZTSSt10_HashtableIPK6AstVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE", !116, i64 0, !35, i64 8, !118, i64 16, !35, i64 24, !120, i64 32, !117, i64 48}
!124 = !{!"_ZTSSt13unordered_setIPK6AstVarSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !123, i64 0}
!125 = !{!"_ZTS12WidthVisitor", !67, i64 0, !78, i64 32, !84, i64 120, !90, i64 168, !57, i64 248, !77, i64 256, !77, i64 257, !77, i64 258, !77, i64 259, !77, i64 260, !91, i64 264, !77, i64 272, !92, i64 280, !93, i64 288, !94, i64 296, !95, i64 304, !96, i64 312, !97, i64 320, !98, i64 328, !99, i64 336, !100, i64 344, !101, i64 352, !102, i64 360, !77, i64 368, !77, i64 369, !77, i64 370, !27, i64 372, !107, i64 376, !112, i64 424, !115, i64 472, !122, i64 520, !124, i64 576}
!126 = !{!125, !57, i64 248}
!127 = !{ptr @_ZN9VNVisitorD2Ev}
!128 = !{!62, !61, i64 0}
!129 = !{!62, !61, i64 16}
!130 = !{!52, !46, i64 0}
!131 = !{!27, !27, i64 0}
!132 = !{!"p1 _ZTS12V3OptionsImp", !38, i64 0}
!133 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !69, i64 0, !73, i64 8}
!134 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !133, i64 0}
!135 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !134, i64 0}
!136 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!138 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !137, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !138, i64 0}
!140 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !139, i64 0}
!141 = !{!"_ZTSSt4lessI12VFileLibNameE"}
!142 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI12VFileLibNameEE", !141, i64 0}
!143 = !{!"_ZTSNSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE13_Rb_tree_implIS4_Lb1EEE", !142, i64 0, !73, i64 8}
!144 = !{!"_ZTSSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE", !143, i64 0}
!145 = !{!"_ZTSSt3setI12VFileLibNameSt4lessIS0_ESaIS0_EE", !144, i64 0}
!146 = !{!"p1 _ZTS12VFileLibName", !38, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!148 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE12_Vector_implE", !147, i64 0}
!149 = !{!"_ZTSSt12_Vector_baseI12VFileLibNameSaIS0_EE", !148, i64 0}
!150 = !{!"_ZTSSt6vectorI12VFileLibNameSaIS0_EE", !149, i64 0}
!151 = !{!"_ZTSSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!152 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !151, i64 0}
end_hunk_1
