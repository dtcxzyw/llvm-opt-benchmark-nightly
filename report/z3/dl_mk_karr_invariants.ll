Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_karr_invariants?download=true
inline.NumInlined: 622
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7datalog6matrix11display_rowERSoRK6vectorI8rationalLb1EjERKS3_b:bb.a
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.aj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249, !noalias !378
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i11, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i11 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_ZngRK8rational.exit
  %i.am = load ptr, ptr %5, align 8, !tbaa !253
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !254
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.aq = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !255
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !255
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.body

bb.h:                                             ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(728) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  %i.bd = load ptr, ptr %4, align 8, !tbaa !253
  %i.be = load i64, ptr %i.c, align 8, !tbaa !254
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bd, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i13 unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i13: ; preds = %bb.h
  %i.bg = load ptr, ptr %4, align 8, !tbaa !253   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZlsRSoRK8rational.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i13
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !255
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #18
  br label %_ZlsRSoRK8rational.exit16

bb.i:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %4, align 8, !tbaa !253   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.d
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i10: ; preds = %bb.i
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !255
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i11: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

_ZlsRSoRK8rational.exit16:                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bq = load ptr, ptr %1, align 8, !tbaa !243   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.critedge, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, !llvm.loop !377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #17
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZngRK8rational.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog6matrix12display_ineqERSoRK6vectorI8rationalLb1EjERKS3_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %class.rational, align 8            ; 14 uses
  %7 = alloca %class.rational, align 8            ; 14 uses
  %8 = alloca %class.rational, align 8            ; 16 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge61, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph, %bb.ah
  %i.o = phi ptr [ %i.a, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph ], [ %i.fv, %bb.ah ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 9 uses
  %.03562 = phi i1 [ true, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.lr.ph ], [ %.136, %bb.ah ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !234
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %i.s, label %bb.h, label %.critedge61

.critedge61:                                      ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, %bb.ah, %bb.a
  %i.t = select i1 %3, ptr @.str.13, ptr @.str.14
  %i.u = select i1 %3, i64 2, i64 3
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef %i.u) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  store i32 0, ptr %8, align 8, !tbaa !246, !alias.scope !382
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4, !alias.scope !382
  %i.y = and i8 %i.x, -4                          ; 2 uses
  store i8 %i.y, ptr %i.w, align 4, !alias.scope !382
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !247, !alias.scope !382
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !246, !alias.scope !382
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 4, !alias.scope !382
  %i.ad = and i8 %i.ac, -4
  store i8 %i.ad, ptr %i.ab, align 4, !alias.scope !382
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !247, !alias.scope !382
  %i.af = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249, !noalias !382 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !noalias !382
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge61
  %i.ak = load i32, ptr %2, align 8, !tbaa !246, !noalias !382
  store i32 %i.ak, ptr %8, align 8, !tbaa !246, !alias.scope !382
  store i8 %i.y, ptr %i.w, align 4, !alias.scope !382
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %.critedge61
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = load i8, ptr %i.am, align 4, !noalias !382
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !246, !noalias !382
  store i32 %i.aq, ptr %i.aa, align 8, !tbaa !246, !alias.scope !382
  %i.ar = load i8, ptr %i.ab, align 4, !alias.scope !382
  %i.as = and i8 %i.ar, -2
  store i8 %i.as, ptr %i.ab, align 4, !alias.scope !382
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.at = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249, !noalias !382
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.af, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i48, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.f ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i48 ], [ %.pn.pn, %bb.af ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #16
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.av = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(728) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %_ZngRK8rational.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !253
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !254
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aw, i64 noundef %i.ay)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.ba = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !255
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !255
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.body

bb.h:                                             ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !246 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %bb.i

bb.i:                                             ; preds = %bb.h
  %9 = icmp slt i32 %i.bm, 1
  %or.cond.not = or i1 %.03562, %9
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !243   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv
  %.pre64.a = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = phi i32 [ %.pre64.a, %bb.j ], [ %i.bm, %bb.i ]
  %i.bq = phi ptr [ %.pre, %bb.j ], [ %i.o, %bb.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = icmp eq i32 %i.bp, -1
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, 1
  %i.cc = icmp eq i8 %i.cb, 0
  %i.cd = load i32, ptr %i.by, align 8
  %i.ce = icmp eq i32 %i.cd, 1
  %i.cf = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.l, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.l:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %.pre65.a = load ptr, ptr %1, align 8, !tbaa !243
  br label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit.thread:        ; preds = %bb.k, %_ZNK8rational12is_minus_oneEv.exit, %bb.l
  %i.ch = phi ptr [ %i.bq, %bb.k ], [ %i.bq, %_ZNK8rational12is_minus_oneEv.exit ], [ %.pre65.a, %bb.l ]
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %indvars.iv ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cj = load i8, ptr %i.c, align 4
  %i.ck = and i8 %i.cj, -4
  store ptr null, ptr %i.d, align 8, !tbaa !247
  store i32 1, ptr %i.e, align 8, !tbaa !246
  %i.cl = load i8, ptr %i.f, align 4
  %i.cm = and i8 %i.cl, -4
  store i8 %i.cm, ptr %i.f, align 4
  store ptr null, ptr %i.g, align 8, !tbaa !247
  %i.cn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  store i32 1, ptr %6, align 8, !tbaa !246
  store i8 %i.ck, ptr %i.c, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !246
  %i.co = load i8, ptr %i.f, align 4
  %i.cp = and i8 %i.co, -2
  store i8 %i.cp, ptr %i.f, align 4
  %i.cq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = and i8 %i.ct, 1
  %i.cv = icmp eq i8 %i.cu, 0
  %i.cw = load i32, ptr %i.cr, align 8
  %i.cx = icmp eq i32 %i.cw, 1
  %i.cy = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %i.cy, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit.thread
  %i.cz = load i8, ptr %i.c, align 4
  %i.da = and i8 %i.cz, 1
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, 1
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %.split, label %bb.o

.split:                                           ; preds = %bb.n
  %i.dg = load i32, ptr %6, align 8, !tbaa !246
  %i.dh = load i32, ptr %i.ci, align 8, !tbaa !246
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %.critedge, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dj = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %.noexc40 unwind label %bb.ab

.noexc40:                                         ; preds = %bb.o
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.critedge, label %bb.q

bb.p:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit.thread
  %i.dl = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_ZgtRK8rationalS1_.exit unwind label %bb.ab

_ZgtRK8rationalS1_.exit:                          ; preds = %bb.p
  br i1 %i.dl, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.split, %.noexc40, %_ZgtRK8rationalS1_.exit
  %i.dm = load ptr, ptr %1, align 8, !tbaa !243
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %indvars.iv ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.do = load i8, ptr %i.h, align 4
  %i.dp = and i8 %i.do, -4
  store ptr null, ptr %i.i, align 8, !tbaa !247
  store i32 1, ptr %i.j, align 8, !tbaa !246
  %i.dq = load i8, ptr %i.k, align 4
  %i.dr = and i8 %i.dq, -4
  store i8 %i.dr, ptr %i.k, align 4
  store ptr null, ptr %i.l, align 8, !tbaa !247
  %i.ds = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  store i32 -1, ptr %7, align 8, !tbaa !246
  store i8 %i.dp, ptr %i.h, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.j, align 8, !tbaa !246
  %i.dt = load i8, ptr %i.k, align 4
  %i.du = and i8 %i.dt, -2
  store i8 %i.du, ptr %i.k, align 4
  %i.dv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.dy = load i8, ptr %i.dx, align 4
  %i.dz = and i8 %i.dy, 1
  %i.ea = icmp eq i8 %i.dz, 0
  %i.eb = load i32, ptr %i.dw, align 8
  %i.ec = icmp eq i32 %i.eb, 1
  %i.ed = select i1 %i.ea, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = and i8 %i.ef, 1
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ei = load i8, ptr %i.h, align 4
  %i.ej = and i8 %i.ei, 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.el = load i32, ptr %i.dn, align 8, !tbaa !246
  %i.em = load i32, ptr %7, align 8, !tbaa !246
  %i.en = icmp slt i32 %i.el, %i.em
  br label %_ZltRK8rationalS1_.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.eo = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc43 unwind label %bb.ad

.noexc43:                                         ; preds = %bb.v
  %i.ep = icmp slt i32 %i.eo, 0
  br label %_ZltRK8rationalS1_.exit

bb.w:                                             ; preds = %bb.r
  %i.eq = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZltRK8rationalS1_.exit unwind label %bb.ad

_ZltRK8rationalS1_.exit:                          ; preds = %bb.w, %bb.u, %.noexc43
  %i.er = phi i1 [ %i.ep, %.noexc43 ], [ %i.en, %bb.u ], [ %i.eq, %bb.w ]
  %i.es = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %_ZltRK8rationalS1_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.noexc.i, %_ZltRK8rationalS1_.exit
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #17
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.critedge

.critedge:                                        ; preds = %.noexc40, %.split, %_ZgtRK8rationalS1_.exit, %_ZN8rationalD2Ev.exit
  %i.ev = phi i1 [ %i.er, %_ZN8rationalD2Ev.exit ], [ true, %_ZgtRK8rationalS1_.exit ], [ true, %.split ], [ true, %.noexc40 ]
  %i.ew = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i45 unwind label %bb.y

.noexc.i45:                                       ; preds = %.critedge
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit46 unwind label %bb.y

bb.y:                                             ; preds = %.noexc.i45, %.critedge
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #17
  unreachable

_ZN8rationalD2Ev.exit46:                          ; preds = %.noexc.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.ev, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %_ZN8rationalD2Ev.exit46
  %i.ez = load ptr, ptr %1, align 8, !tbaa !243
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.fb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(728) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
  %i.fc = load ptr, ptr %4, align 8, !tbaa !253
  %i.fd = load i64, ptr %i.m, align 8, !tbaa !254
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fc, i64 noundef %i.fd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i50 unwind label %bb.aa

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i50: ; preds = %bb.z
  %i.ff = load ptr, ptr %4, align 8, !tbaa !253   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.n
  br i1 %i.fg, label %_ZlsRSoRK8rational.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i50
  %i.fh = load i64, ptr %i.n, align 8, !tbaa !255
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #18
  br label %_ZlsRSoRK8rational.exit53

bb.aa:                                            ; preds = %bb.z
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %4, align 8, !tbaa !253   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.n
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i47: ; preds = %bb.aa
  %i.fm = load i64, ptr %i.n, align 8, !tbaa !255
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i48: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

_ZlsRSoRK8rational.exit53:                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.fo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.ag

bb.ab:                                            ; preds = %bb.p, %bb.o
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.q
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w, %bb.v
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.ad ], [ %i.fq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.fp, %bb.ab ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %common.resume

bb.ag:                                            ; preds = %_ZlsRSoRK8rational.exit53, %_ZN8rationalD2Ev.exit46
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.ft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %indvars.iv)
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !243
  br label %bb.ah

bb.ah:                                            ; preds = %bb.h, %bb.ag
  %i.fv = phi ptr [ %i.o, %bb.h ], [ %.pre66, %bb.ag ] ; 2 uses
  %.136 = phi i1 [ %.03562, %bb.h ], [ false, %bb.ag ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.critedge61, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, !llvm.loop !381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fy = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !249 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i55 unwind label %bb.ai

.noexc.i55:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN8rationalD2Ev.exit56 unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc.i55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #17
  unreachable

_ZN8rationalD2Ev.exit56:                          ; preds = %.noexc.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZngRK8rational.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.gb, %bb.aj ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7datalog6matrix7displayERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !386    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.e = phi ptr [ %i.a, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !234
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.i, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !387
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !388, !range !256, !noundef !218
  %i.p = trunc nuw i8 %i.o to i1
  tail call void @_ZN7datalog6matrix11display_rowERSoRK6vectorI8rationalLb1EjERKS3_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i1 noundef zeroext %i.p)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.q = load ptr, ptr %0, align 8, !tbaa !386    ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit, !llvm.loop !383
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog18mk_karr_invariantsclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(3136) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.datalog::mk_loop_counter", align 8 ; 8 uses
  %3 = alloca %"class.datalog::mk_backwards", align 8 ; 5 uses
  %4 = alloca %class.scoped_ptr.135, align 8      ; 5 uses
  %5 = alloca %class.scoped_ptr.135, align 8      ; 5 uses
  %6 = alloca %class.scoped_ptr.135, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !218, !align !219
  %i.c = tail call noundef zeroext i1 @_ZNK7datalog7context4karrEv(ptr noundef nonnull align 8 dereferenceable(3028) %i.b)
  br i1 %i.c, label %bb.b, label %.loopexit44

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK7datalog8rule_set3endEv.exit

_ZNK7datalog8rule_set3endEv.exit:                 ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !234  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.02546, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7datalog8rule_set3endEv.exit, %bb.c
  %.02546 = phi ptr [ %i.l, %bb.c ], [ %i.e, %_ZNK7datalog8rule_set3endEv.exit ] ; 2 uses
  %i.m = load ptr, ptr %.02546, align 8, !tbaa !259
  %i.n = tail call noundef zeroext i1 @_ZNK7datalog4rule12has_negationEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m)
  br i1 %i.n, label %.loopexit44, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b, %_ZNK7datalog8rule_set3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !218, !align !219
  call void @_ZN7datalog15mk_loop_counterC1ERNS_7contextEj(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(3028) %i.o, i32 noundef 33000)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !218, !align !219
  invoke void @_ZN7datalog12mk_backwardsC1ERNS_7contextEj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(3028) %i.p, i32 noundef 33000)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.q = invoke noundef ptr @_ZN7datalog15mk_loop_counterclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.e unwind label %bb.h       ; 6 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %4, align 8, !tbaa !262
  invoke void @_ZN7datalog18mk_karr_invariants14get_invariantsERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(3136) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.q)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226, !nonnull !218, !align !219
  %i.t = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.s)
          to label %_ZN11ast_manager3incEv.exit unwind label %bb.i

_ZN11ast_manager3incEv.exit:                      ; preds = %bb.f
  br i1 %i.t, label %bb.j, label %bb.ak

bb.g:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.j:                                             ; preds = %_ZN11ast_manager3incEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.x = invoke noundef ptr @_ZN7datalog12mk_backwardsclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(248) %i.q)
          to label %bb.k unwind label %bb.ae      ; 4 uses

bb.k:                                             ; preds = %bb.j
  store ptr %i.x, ptr %5, align 8, !tbaa !262
  invoke void @_ZN7datalog18mk_karr_invariants14get_invariantsERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(3136) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.x)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.y = invoke noundef ptr @_ZN7datalog18mk_karr_invariants12update_rulesERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(3136) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.q)
          to label %bb.m unwind label %bb.ag      ; 4 uses

bb.m:                                             ; preds = %bb.l
  store ptr %i.y, ptr %6, align 8, !tbaa !262
  %i.z = invoke noundef ptr @_ZN7datalog15mk_loop_counter6revertERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(248) %i.y)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.z, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !233 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP3astLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3astLb0EjE4sizeEv.exit.i:            ; preds = %bb.o
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !234 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %.not.i = icmp eq i32 %i.af, 0
end_hunk_0
