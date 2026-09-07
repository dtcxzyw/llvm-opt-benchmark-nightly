Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Width?download=true
inline.NumInlined: 18720
inline.NumDeleted: 2434
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12WidthVisitor18iterateCheckAssignEP7AstNodePKcS1_5StageP12AstNodeDType:bb.a
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.not81, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %bb.cd unwind label %bb.by     ; 0 uses

bb.by:                                            ; preds = %bb.bs, %bb.bx
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.ca:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit172, %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %13, align 8, !tbaa !54   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ca
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !32
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.bz
  %.pn77 = phi { ptr, i32 } [ %i.jf, %bb.bz ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.jg, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ch

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.cc:                                            ; preds = %bb.bv
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.jo = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.cc
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !32
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.cb
  %.pn79 = phi { ptr, i32 } [ %i.jm, %bb.cb ], [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.jn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ch

bb.cd:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jt = load ptr, ptr %16, align 8, !tbaa !54
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !55
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.jt, i64 noundef %i.jv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191 unwind label %bb.cg ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191: ; preds = %bb.ce
  %i.jx = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !32
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

bb.cg:                                            ; preds = %bb.ce
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.cg
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !32
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.cf
  %.pn82 = phi { ptr, i32 } [ %i.kc, %bb.cf ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %i.kd, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %bb.by
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.je, %bb.by ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

bb.ci:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull %i.x)
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !343 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !129
  %.not.i.i207 = icmp eq ptr %i.kl, %i.kn
  br i1 %.not.i.i207, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %3, ptr %i.kl, align 8, !tbaa !344
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.ko, ptr %i.kk, align 8, !tbaa !343
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ck:                                            ; preds = %bb.ci
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !128 ; 4 uses
  %i.kq = ptrtoint ptr %i.kl to i64
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr                    ; 5 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775800
  br i1 %i.kt, label %bb.cl, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.542) #26
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ck
  %i.ku = ashr exact i64 %i.ks, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ku, i64 1)
  %i.kv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ku ; 2 uses
  %i.kw = icmp ult i64 %i.kv, %i.ku
  %i.kx = call i64 @llvm.umin.i64(i64 %i.kv, i64 1152921504606846975)
  %i.ky = select i1 %i.kw, i64 1152921504606846975, i64 %i.kx ; 3 uses
  %.not.i.i.i.i208 = icmp ne i64 %i.ky, 0
  call void @llvm.assume(i1 %.not.i.i.i.i208)
  %i.kz = shl nuw nsw i64 %i.ky, 3
  %i.la = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #30 ; 4 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %i.ks ; 2 uses
  store ptr %3, ptr %i.lb, align 8, !tbaa !344
  %i.lc = icmp sgt i64 %i.ks, 0
  br i1 %i.lc, label %bb.cm, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.cm:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.la, ptr align 8 %i.kp, i64 %i.ks, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.cm, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.le = load ptr, ptr %i.km, align 8, !tbaa !129
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = sub i64 %i.lf, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.lg) #27
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.cn, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.la, ptr %i.kj, align 8, !tbaa !128
  store ptr %i.ld, ptr %i.kk, align 8, !tbaa !343
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.ky
  store ptr %i.lh, ptr %i.km, align 8, !tbaa !129
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %bb.f, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit, %bb.e, %_ZN7AstNode4castI8AstConstS_EEPT_PT0_.exit, %bb.d, %bb.c, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.cj, %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPT_PT0_.exit, %bb.g
  %.2 = phi ptr [ %i.x, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.g ], [ %3, %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPT_PT0_.exit ], [ %i.x, %bb.cj ], [ null, %bb.c ], [ %3, %_ZN7AstNode4castI8AstConstS_EEPT_PT0_.exit ], [ %3, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit ], [ %3, %bb.f ] ; 2 uses
  call void @_ZN12WidthVisitor16checkClassAssignEPK7AstNodePKcPS0_P12AstNodeDTypeb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef %2, ptr noundef %.2, ptr noundef %5, i1 noundef zeroext false)
  %.not.i198 = icmp eq ptr %1, null
  br i1 %.not.i198, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit

_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit:    ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i199 = load i16, ptr %i.li, align 8, !tbaa !195 ; 2 uses
  %i.lj = add i16 %.sroa.0.0.copyload.i.i.i199, -466
  %spec.select.i.i = icmp ult i16 %i.lj, 6
  br i1 %spec.select.i.i, label %17, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread

17:                                               ; preds = %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit
  %18 = or disjoint i16 %.sroa.0.0.copyload.i.i.i199, -472
  %spec.select.i.i202 = icmp samesign ult i16 %18, -6
  br i1 %spec.select.i.i202, label %19, label %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit, !prof !51

19:                                               ; preds = %17
  %20 = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.44, i32 noundef 1063) ; 0 uses
  %21 = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.45)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.li, align 8, !tbaa !195
  %23 = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %25)
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @.str.27)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %27) #26
  unreachable

_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit:   ; preds = %17
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !202 ; 2 uses
  %.not.i203 = icmp eq ptr %i.ll, null
  br i1 %.not.i203, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread, label %_ZN7AstNode2isI13AstNodeStream11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI13AstNodeStream11AstNodeExprEEbPKT0_.exit: ; preds = %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %.sroa.0.0.copyload.i.i.i204 = load i16, ptr %i.lm, align 8, !tbaa !195
  %.sroa.0.0.copyload.i.i.i204.fr = freeze i16 %.sroa.0.0.copyload.i.i.i204
  %i.ln = add i16 %.sroa.0.0.copyload.i.i.i204.fr, -283
  %spec.select.i.i205 = icmp ult i16 %i.ln, 2
  %spec.select = select i1 %spec.select.i.i205, i8 3, i8 2
  br label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread

_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread: ; preds = %_ZN7AstNode2isI13AstNodeStream11AstNodeExprEEbPKT0_.exit, %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit
  %i.lo = phi i8 [ 2, %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit ], [ 2, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit ], [ 2, %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit ], [ %spec.select, %_ZN7AstNode2isI13AstNodeStream11AstNodeExprEEbPKT0_.exit ]
  %i.lp = call noundef ptr @_ZN12WidthVisitor12iterateCheckEP7AstNodePKcS1_6Determ5StageP12AstNodeDTypeNS_10ExtendRuleEb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef %2, ptr noundef %.2, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef %5, i8 noundef zeroext %i.lo, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14AstMemberDType11childDTypepEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opSelERKS_jj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK8V3Number5asciiB5cxx11Ebb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !55
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %i.d

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.j
}

declare noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12WidthVisitor16checkClassAssignEPK7AstNodePKcPS0_P12AstNodeDTypeb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %class.VNRelinker, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 8921) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.30)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 6 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.h = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.g, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 10 uses
  %.not.i = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.i, align 8, !tbaa !195
  %i.j = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 77
  br i1 %i.j, label %_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit, label %bb.s

_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %bb.d
  %.not.i64 = icmp eq ptr %i.h, null
  br i1 %.not.i64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.0.0.copyload.i.i.i65 = load i16, ptr %i.k, align 8, !tbaa !195
  %i.l = icmp eq i16 %.sroa.0.0.copyload.i.i.i65, 77
  br i1 %i.l, label %_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit67, label %bb.f

_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit67: ; preds = %bb.e
  %. = select i1 %5, ptr %i.h, ptr %i.f
  %.130 = select i1 %5, ptr %i.f, ptr %i.h
  %.in127 = getelementptr inbounds nuw i8, ptr %.130, i64 168
  %i.m = load ptr, ptr %.in127, align 8, !tbaa !441
  %.in = getelementptr inbounds nuw i8, ptr %., i64 168
  %i.n = load ptr, ptr %.in, align 8, !tbaa !441
  %i.o = tail call noundef zeroext i1 @_ZN12WidthVisitor18isBaseClassRecurseEPK8AstClassS2_(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %i.n, ptr noundef %i.m)
  br i1 %i.o, label %.critedge63, label %.critedge

bb.f:                                             ; preds = %_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.p, align 8, !tbaa !195
  %i.q = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  br i1 %i.q, label %_ZNK7AstNode6isNullEv.exit, label %.critedge

_ZNK7AstNode6isNullEv.exit:                       ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 189
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, 8
  %.not129 = icmp eq i8 %i.t, 0
  br i1 %.not129, label %.critedge, label %.critedge63

.critedge:                                        ; preds = %bb.f, %_ZNK7AstNode6isNullEv.exit, %_ZN7AstNode4castI16AstClassRefDType12AstNodeDTypeEEPKT_PKT0_.exit67
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.v = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !222

bb.g:                                             ; preds = %.critedge
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.x, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.by, %bb.x ], [ %.pn59, %bb.an ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %.critedge, %bb.g, %bb.i
  %i.aa = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.13, ptr nonnull @.str.14, i32 481, ptr null) ; 5 uses
  %.not.i68 = icmp eq ptr %2, null
  br i1 %.not.i68, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !496
  %i.ah = or i32 %i.ag, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, i32 noundef %i.ah)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %2, i64 noundef %i.ai) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k, %bb.l
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.876, i64 noundef 11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK7AstNode14prettyTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(152) %i.f)
end_hunk_0
