Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/base-test?download=true
inline.NumInlined: 14280
inline.NumDeleted: 4340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN35buffer_test_try_resize_partial_Test8TestBodyEv:bb.a
bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit51
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn22 = phi { ptr, i32 } [ %i.eh, %bb.bh ], [ %i.eg, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ei = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.bi
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #28, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56, %bb.bi, %bb.bf
  %.pn22.pn = phi { ptr, i32 } [ %i.ef, %bb.bf ], [ %.pn22, %bb.bi ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  br label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49, %_ZN7testing7MessageD2Ev.exit54
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !43 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.en, null
  br i1 %.not.i.i58, label %_ZN7testing15AssertionResultD2Ev.exit62, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !44 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59: ; preds = %bb.bk
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit62

_ZN7testing15AssertionResultD2Ev.exit62:          ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN7testing8internal14FunctionMockerIFmmEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit57, %bb.az
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit57 ], [ %i.dw, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ay, %bb.aj, %bb.ai
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.bl ], [ %.pn18.pn.pn, %bb.ay ], [ %i.cu, %bb.aj ], [ %.pn.pn.pn.pn, %bb.ai ]
  call void @_ZN7testing8internal14FunctionMockerIFmmEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(320) ptr @_ZN7testing8internal16TypedExpectationIFmmEE8WillOnceERKNS_6ActionIS2_EE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::Cardinality", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 76, ptr %i.a, align 8, !tbaa !92
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ac    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %2, align 8, !tbaa !44
  %i.f = load i64, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.e, ptr noundef nonnull align 1 dereferenceable(76) @.str.352, i64 76, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.i = icmp slt i32 %i.c, 6
  br i1 %i.i, label %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !236
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.n = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc8 unwind label %bb.ad   ; 2 uses

.noexc8:                                          ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0, ptr noundef %i.m, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ad, !inline_history !238

_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc, %.noexc8
  %i.r = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !10
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store i32 5, ptr %i.b, align 4, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.w = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i, label %_ZN7testing6ActionIFmmEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !114
  store <2 x ptr> %i.ab, ptr %i.x, align 8, !tbaa !114
  br label %_ZN7testing6ActionIFmmEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

_ZN7testing6ActionIFmmEEC2ERKS2_.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !239 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN7testing6ActionIFmmEEC2ERKS2_.exit
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !114
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZN7testing6ActionIFmmEEC2ERKS2_.exit
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !241 ; 4 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.i, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %i.w, ptr %i.az, align 8, !tbaa !114
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.j, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !240
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ay, ptr %i.v, align 8, !tbaa !241
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !239
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bf, ptr %i.aj, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.g, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.g ], [ %i.bb, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !242, !range !41, !noundef !42
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !241
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = trunc i64 %i.bo to i32
  call void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %3, i32 noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %3, align 8, !tbaa !243
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !243
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !202 ; 5 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not7.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !93
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !93
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !202
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.cb = phi ptr [ %i.bv, %bb.m ], [ %i.bv, %bb.o ], [ %.pr.pre.i.i.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cc, align 8, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !199
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28, !inline_history !244
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28, !inline_history !244
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.t ], [ %i.cp, %bb.u ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !211

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !202
  %.pr = load ptr, ptr %i.bt, align 8, !tbaa !202
  br label %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit

_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit: ; preds = %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i
  %i.cr = phi ptr [ %i.bu, %bb.l ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i ] ; 8 uses
  %.not.i.i.i10 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i10, label %_ZN7testing11CardinalityD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cs, align 8, !tbaa !197
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !199
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !245
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !245
  br label %_ZN7testing11CardinalityD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i11 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i11, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.cv, %bb.z ], [ %i.df, %bb.aa ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ab, label %_ZN7testing11CardinalityD2Ev.exit, !prof !211

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28
  br label %_ZN7testing11CardinalityD2Ev.exit

_ZN7testing11CardinalityD2Ev.exit:                ; preds = %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.ad:                                            ; preds = %.noexc8, %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.d
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.ad
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !10
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
end_hunk_0
begin_hunk_1_@_ZN7testing8internal8MockSpecIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEE18InternalExpectedAtEPKciSC_SC_:._crit_edge.i.i
  %.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 2 uses
  %i.dr = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.g
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !10
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %i.dv = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.a
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !10
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cg
  br i1 %i.eb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.u, %bb.n
  %.sink = phi ptr [ %i.cs, %bb.n ], [ %i.ea, %bb.u ]
  %.pn19.ph = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dz, %bb.u ]
  %i.ec = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ed) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u, %bb.n
  %.pn19 = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dz, %bb.u ], [ %.pn19.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body
  %.pn21 = phi { ptr, i32 } [ %i.ee, %bb.v ], [ %.pn19, %.body ] ; 2 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bc
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.w
  %i.eh = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn21.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn21, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(320) ptr @_ZN7testing8internal16TypedExpectationIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEE8WillOnceERKNS_6ActionIS9_EE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::Cardinality", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 76, ptr %i.a, align 8, !tbaa !92
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ac    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %2, align 8, !tbaa !44
  %i.f = load i64, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.e, ptr noundef nonnull align 1 dereferenceable(76) @.str.352, i64 76, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.i = icmp slt i32 %i.c, 6
  br i1 %i.i, label %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !236
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.n = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc8 unwind label %bb.ad   ; 2 uses

.noexc8:                                          ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0, ptr noundef %i.m, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ad, !inline_history !238

_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc, %.noexc8
  %i.r = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !10
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal15ExpectationBase18ExpectSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store i32 5, ptr %i.b, align 4, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.w = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i, label %_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !114
  store <2 x ptr> %i.ab, ptr %i.x, align 8, !tbaa !114
  br label %_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2ERKS9_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !239 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2ERKS9_.exit
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !114
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2ERKS9_.exit
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !241 ; 4 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.i, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %i.w, ptr %i.az, align 8, !tbaa !114
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.j, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !240
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ay, ptr %i.v, align 8, !tbaa !241
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !239
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bf, ptr %i.aj, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.g, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.g ], [ %i.bb, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !242, !range !41, !noundef !42
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !241
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = trunc i64 %i.bo to i32
  call void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %3, i32 noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %3, align 8, !tbaa !243
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !243
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !202 ; 5 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not7.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !93
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !93
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !202
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.cb = phi ptr [ %i.bv, %bb.m ], [ %i.bv, %bb.o ], [ %.pr.pre.i.i.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cc, align 8, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !199
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28, !inline_history !244
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28, !inline_history !244
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.t ], [ %i.cp, %bb.u ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !211

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !202
  %.pr = load ptr, ptr %i.bt, align 8, !tbaa !202
  br label %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit

_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit: ; preds = %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i
  %i.cr = phi ptr [ %i.bu, %bb.l ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i ] ; 8 uses
  %.not.i.i.i10 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i10, label %_ZN7testing11CardinalityD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cs, align 8, !tbaa !197
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !199
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !245
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !245
  br label %_ZN7testing11CardinalityD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i11 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i11, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.cv, %bb.z ], [ %i.df, %bb.aa ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ab, label %_ZN7testing11CardinalityD2Ev.exit, !prof !211

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28
  br label %_ZN7testing11CardinalityD2Ev.exit

_ZN7testing11CardinalityD2Ev.exit:                ; preds = %_ZN7testing8internal15ExpectationBase15set_cardinalityERKNS_11CardinalityE.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.ad:                                            ; preds = %.noexc8, %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.d
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.ad
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !10
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal16TypedExpectationIFmmEE16GetCurrentActionEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJmEE:.noexc.i
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

declare void @_ZN7testing8internal3LogENS0_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseImE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKmPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseImE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseImE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

declare void @_ZN7testing8internal15LogWithLocationENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIFmmEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherImEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherImEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !926
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !668, !alias.scope !926
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJmEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !926
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

declare void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJmEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJmEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !668
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit unwind label %bb.d, !inline_history !673

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !674
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt17_Function_handlerIFmmEZN11mock_bufferIiEC1EPimEUlmE_E9_M_invokeERKSt9_Any_dataOm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !92
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFmmEZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN11mock_bufferIiEC1EPimEUlmE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !114
  br label %_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN11mock_bufferIiEC1EPimEUlmE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIPiDnEENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7testing13PrintToStringIPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7testing13PrintToStringIDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIDnPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !10
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.f = load ptr, ptr %5, align 8, !tbaa !44     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !10
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
end_hunk_2
begin_hunk_3_@_ZN7testing8internal16TypedExpectationIFmmEED2Ev:bb.a

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherImEELb0EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !10
  invoke void %i.ak(ptr noundef %i.al)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherImEELb0EED2Ev.exit unwind label %bb.j, !inline_history !119

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #31, !inline_history !120
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherImEELb0EED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJmEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i, %bb.h, %bb.i
  tail call void @_ZN7testing8internal15ExpectationBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #28
  ret void

.lr.ph:                                           ; preds = %bb.b, %bb.n
  %i.ao = phi ptr [ %i.aw, %bb.n ], [ %i.d, %bb.b ]
  %.sroa.06.010 = phi ptr [ %i.ax, %bb.n ], [ %i.b, %bb.b ] ; 2 uses
  %i.ap = load ptr, ptr %.sroa.06.010, align 8, !tbaa !114 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.as, null
  br i1 %.not.i.i3, label %_ZN7testing6ActionIFmmEED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZN7testing6ActionIFmmEED2Ev.exit4 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #31
  unreachable

_ZN7testing6ActionIFmmEED2Ev.exit4:               ; preds = %bb.k, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 32) #29
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !845
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN7testing6ActionIFmmEED2Ev.exit4
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %.pre, %_ZN7testing6ActionIFmmEED2Ev.exit4 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.aw
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !969

bb.o:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFmmEED0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal16TypedExpectationIFmmEED2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFmmEE27MaybeDescribeExtraMatcherToEPSo(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !970, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.316, i64 noundef 19) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !668
  %i.h = icmp ne ptr %i.g, null
  %i.i = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.h)
  br i1 %i.i, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE10DescribeToEPSo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.259, i32 noundef 6368)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.265, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE10DescribeToEPSo.exit

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.k

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE10DescribeToEPSo.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !668
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !679
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !884
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.302, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJmEEE10DescribeToEPSo.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFmmEE9GetHandleEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !950
  tail call void @_ZN7testing8internal25UntypedFunctionMockerBase11GetHandleOfEPNS0_15ExpectationBaseE(ptr dead_on_unwind writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN7testing8internal25UntypedFunctionMockerBase11GetHandleOfEPNS0_15ExpectationBaseE(ptr dead_on_unwind writable sret(%"class.testing::Expectation") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFmmEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFmmEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !961  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(320) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFmmEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFmmEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !879  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !881    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !202  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !114
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !114
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !93
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !93
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !114, !alias.scope !974, !noalias !971
  store ptr null, ptr %i.z, align 8, !tbaa !202, !alias.scope !974, !noalias !971
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !114, !alias.scope !971, !noalias !974
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !838, !alias.scope !974, !noalias !971
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !976

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !114, !alias.scope !980, !noalias !977
  store ptr null, ptr %i.ae, align 8, !tbaa !202, !alias.scope !980, !noalias !977
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !114, !alias.scope !977, !noalias !980
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !838, !alias.scope !980, !noalias !977
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !976

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !964
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !881
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !879
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !964
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !982
  %i.b = tail call ptr @pthread_getspecific(i32 noundef %i.a) #28 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_(ptr noundef nonnull %i.b)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !991  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !982
  %i.k = tail call i32 @pthread_setspecific(i32 noundef %i.j, ptr noundef %i.i) #28 ; 2 uses
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.259, i32 noundef 2060)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.350, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.261, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.pn = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.c ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !635  ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN7testing8internal11ThreadLocalIPNS_8SequenceEE11ValueHolderE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(62) @_ZTSN7testing8internal11ThreadLocalIPNS_8SequenceEE11ValueHolderE) #28
  %i.j = icmp eq i32 %i.i, 0
  br label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ %i.j, %bb.e ]
  %i.k = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.0.i)
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.259, i32 noundef 1367)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.351, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.m

end_hunk_3
begin_hunk_4_@_ZNK7testing8internal16TypedExpectationIFvvEE16GetCurrentActionEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIcE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKcPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIcE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIcE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultcEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIcEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !304
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIcE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIcE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !321
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIcE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIcE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIcEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1184
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !698, !alias.scope !1184
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJcEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1184
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJcEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !701
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !698
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !701
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEED2Ev.exit unwind label %bb.d, !inline_history !703

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !704
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJcEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP11test_resultLN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP11test_resultLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1047 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP11test_resultLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIP11test_resultLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultcEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (char)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1187
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultcEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultcEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultcEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1191
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK7testing8internal16TypedExpectationIF11test_resultPKcEE16GetCurrentActionEPKNS0_14FunctionMockerIS5_EERKSt5tupleIJS4_EE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIPKcE19MatchAndExplainImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS4_RKS3_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIPKcE12DescribeImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIPKcE16GetDescriberImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultPKcEE16AddNewOnCallSpecES4_iRKSt5tupleIJNS_7MatcherIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !343  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !343
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIPKcE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIPKcE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIPKcE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIPKcE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIPKcEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1302
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE9GetVTableINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS8_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !712, !alias.scope !1302
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJPKcEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1302
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJPKcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !715
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !712
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !715
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEED2Ev.exit unwind label %bb.d, !inline_history !717

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !718
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE19MatchAndExplainImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS8_S7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE12DescribeImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS8_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKcEEE16GetDescriberImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultPKcEEC2EPNS_15ActionInterfaceIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (const char *)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1305
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKcEEEEC2IS6_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1308
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKcEEEEC2IS6_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultPKcEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1309
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultPKcEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKcEEEEC2IS6_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultPKcEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKcEEEEC2IS6_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !1305
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !1311
  store ptr @_ZNSt17_Function_handlerIF11test_resultPKcEN7testing6ActionIS3_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOS2_, ptr %i.w, align 8, !tbaa !1235
  store ptr @_ZNSt17_Function_handlerIF11test_resultPKcEN7testing6ActionIS3_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultPKcEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_5
begin_hunk_6_@_ZNK7testing8internal16TypedExpectationIF11test_resultN3fmt3v1217basic_string_viewIcEEEE16GetCurrentActionEPKNS0_14FunctionMockerIS7_EERKSt5tupleIJS6_EE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_RKS5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultN3fmt3v1217basic_string_viewIcEEEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !364  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !364
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !369
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIN3fmt3v1217basic_string_viewIcEEE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN3fmt3v1217basic_string_viewIcEEEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1420
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE9GetVTableINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNSA_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !724, !alias.scope !1420
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1420
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !724  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !727
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !724
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !727
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED2Ev.exit unwind label %bb.d, !inline_history !729

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !730
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE19MatchAndExplainImplINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKSA_S9_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE12DescribeImplINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKSA_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1217basic_string_viewIcEEEEE16GetDescriberImplINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultN3fmt3v1217basic_string_viewIcEEEEC2EPNS_15ActionInterfaceIS6_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (fmt::v12::basic_string_view<char>)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1423
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1217basic_string_viewIcEEEEEEC2IS8_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1426
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1217basic_string_viewIcEEEEEEC2IS8_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultN3fmt3v1217basic_string_viewIcEEEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1427
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultN3fmt3v1217basic_string_viewIcEEEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1217basic_string_viewIcEEEEEEC2IS8_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultN3fmt3v1217basic_string_viewIcEEEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1217basic_string_viewIcEEEEEEC2IS8_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !1423
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !1429
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v1217basic_string_viewIcEEEN7testing6ActionIS5_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOS4_, ptr %i.w, align 8, !tbaa !1353
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v1217basic_string_viewIcEEEN7testing6ActionIS5_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultN3fmt3v1217basic_string_viewIcEEEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_6
begin_hunk_7_@_ZNK7testing8internal16TypedExpectationIF11test_resultPKvEE16GetCurrentActionEPKNS0_14FunctionMockerIS5_EERKSt5tupleIJS4_EE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIPKvE19MatchAndExplainImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS4_RKS3_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIPKvE12DescribeImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIPKvE16GetDescriberImplINS4_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultPKvEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !426  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !426
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIPKvE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIPKvE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !443
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIPKvE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIPKvE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIPKvEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1539
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE9GetVTableINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS8_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !738, !alias.scope !1539
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJPKvEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1539
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJPKvEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !738
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !741
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEED2Ev.exit unwind label %bb.d, !inline_history !743

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !744
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE19MatchAndExplainImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS8_S7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE12DescribeImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS8_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJPKvEEE16GetDescriberImplINS8_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultPKvEEC2EPNS_15ActionInterfaceIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (const void *)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1542
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKvEEEEC2IS6_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1545
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKvEEEEC2IS6_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultPKvEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1546
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultPKvEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKvEEEEC2IS6_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultPKvEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultPKvEEEEC2IS6_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !1542
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !1548
  store ptr @_ZNSt17_Function_handlerIF11test_resultPKvEN7testing6ActionIS3_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOS2_, ptr %i.w, align 8, !tbaa !1472
  store ptr @_ZNSt17_Function_handlerIF11test_resultPKvEN7testing6ActionIS3_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultPKvEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_7
begin_hunk_8_@_ZNK7testing8internal16TypedExpectationIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEE16GetCurrentActionEPKNS0_14FunctionMockerIS9_EERKSt5tupleIJS8_EE:.noexc.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.by = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.by, ptr %4, align 8, !tbaa !20
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %4, i64 %i.cb
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !20
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cd, ptr %i.af, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIS8_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !486  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !486
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIN3fmt3v1216basic_format_argINS3_7contextEE6handleEE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN3fmt3v1216basic_format_argINS3_7contextEE6handleEE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !503
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN3fmt3v1216basic_format_argINS3_7contextEE6handleEE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIN3fmt3v1216basic_format_argINS3_7contextEE6handleEE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN3fmt3v1216basic_format_argINS2_7contextEE6handleEEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1679
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE9GetVTableINSC_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNSC_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !750, !alias.scope !1679
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1679
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !750  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !753
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !750
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !753
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEED2Ev.exit unwind label %bb.d, !inline_history !755

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !756
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE19MatchAndExplainImplINSC_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKSC_SB_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE12DescribeImplINSC_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKSC_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEE16GetDescriberImplINSC_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEEC2EPNS_15ActionInterfaceIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (fmt::v12::basic_format_arg<fmt::v12::context>::handle)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1682
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEEEC2ISA_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1685
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEEEC2ISA_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1686
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEEEC2ISA_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v1216basic_format_argINS4_7contextEE6handleEEEEEC2ISA_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !1682
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !1688
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v1216basic_format_argINS2_7contextEE6handleEEN7testing6ActionIS7_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOS6_, ptr %i.w, align 8, !tbaa !1612
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v1216basic_format_argINS2_7contextEE6handleEEN7testing6ActionIS7_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultN3fmt3v1216basic_format_argINS3_7contextEE6handleEEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_8
begin_hunk_9_@_ZNK7testing8internal16TypedExpectationIF11test_resultN3fmt3v129monostateEEE16GetCurrentActionEPKNS0_14FunctionMockerIS6_EERKSt5tupleIJS5_EE:.noexc.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.by = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.by, ptr %4, align 8, !tbaa !20
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %4, i64 %i.cb
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !20
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cd, ptr %i.af, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultN3fmt3v129monostateEEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !525  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !525
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIN3fmt3v129monostateEE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN3fmt3v129monostateEE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !542
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN3fmt3v129monostateEE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIN3fmt3v129monostateEE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN3fmt3v129monostateEEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !1809
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE9GetVTableINS9_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !762, !alias.scope !1809
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJN3fmt3v129monostateEEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !1809
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJN3fmt3v129monostateEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !762  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !765
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEED2Ev.exit unwind label %bb.d, !inline_history !767

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !768
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE19MatchAndExplainImplINS9_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS9_S8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE12DescribeImplINS9_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS9_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN3fmt3v129monostateEEEE16GetDescriberImplINS9_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultN3fmt3v129monostateEEEC2EPNS_15ActionInterfaceIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (fmt::v12::monostate)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !1812
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v129monostateEEEEEC2IS7_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !1815
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v129monostateEEEEEC2IS7_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultN3fmt3v129monostateEEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !1816
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultN3fmt3v129monostateEEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v129monostateEEEEEC2IS7_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultN3fmt3v129monostateEEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultN3fmt3v129monostateEEEEEC2IS7_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !1812
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !1818
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v129monostateEEN7testing6ActionIS4_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOS3_, ptr %i.w, align 8, !tbaa !1742
  store ptr @_ZNSt17_Function_handlerIF11test_resultN3fmt3v129monostateEEN7testing6ActionIS4_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultN3fmt3v129monostateEEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_9
begin_hunk_10_@_ZNK7testing8internal16TypedExpectationIF11test_resultbEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJbEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIbE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKbPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIbE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIbE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultbEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIbEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1853 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !1853
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1870
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIbE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIbEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !2007
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !1929, !alias.scope !2007
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJbEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !2007
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJbEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJbEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1929 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJbEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJbEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1932
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJbEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1929
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1932
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEED2Ev.exit unwind label %bb.d, !inline_history !1934

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !1935
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJbEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJbEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultbEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (bool)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !2010
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultbEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !2013
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultbEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultbEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !2014
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultbEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultbEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultbEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultbEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !2010
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !2016
  store ptr @_ZNSt17_Function_handlerIF11test_resultbEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOb, ptr %i.w, align 8, !tbaa !1937
  store ptr @_ZNSt17_Function_handlerIF11test_resultbEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultbEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_10
begin_hunk_11_@_ZNK7testing8internal16TypedExpectationIF11test_resultiEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJiEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIiE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKiPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIiE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIiE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultiEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIiEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2053 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !2053
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2070
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIiE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIiEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !2207
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !2129, !alias.scope !2207
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJiEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !2207
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJiEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2129 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2132
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2129
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2132
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEED2Ev.exit unwind label %bb.d, !inline_history !2134

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !2135
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJiEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultiEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (int)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !2210
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultiEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !2213
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultiEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultiEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !2214
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultiEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultiEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultiEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultiEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !2210
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !2216
  store ptr @_ZNSt17_Function_handlerIF11test_resultiEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOi, ptr %i.w, align 8, !tbaa !2137
  store ptr @_ZNSt17_Function_handlerIF11test_resultiEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultiEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_11
begin_hunk_12_@_ZNK7testing8internal16TypedExpectationIF11test_resultjEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJjEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIjE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKjPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIjE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIjE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultjEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIjEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2253 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !2253
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIjE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIjE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2270
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIjE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIjE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIjEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !2407
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !2329, !alias.scope !2407
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJjEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !2407
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJjEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJjEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2329 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJjEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJjEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2332
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJjEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2329
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2332
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEED2Ev.exit unwind label %bb.d, !inline_history !2334

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !2335
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJjEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJjEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultjEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (unsigned int)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !2410
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultjEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !2413
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultjEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultjEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !2414
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultjEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultjEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultjEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultjEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !2410
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !2416
  store ptr @_ZNSt17_Function_handlerIF11test_resultjEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOj, ptr %i.w, align 8, !tbaa !2337
  store ptr @_ZNSt17_Function_handlerIF11test_resultjEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultjEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_12
begin_hunk_13_@_ZNK7testing8internal16TypedExpectationIF11test_resultxEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJxEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIxE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKxPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIxE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIxE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultxEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIxEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2597 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !2597
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIxE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIxE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2614
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIxE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIxE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIxEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !2753
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !2673, !alias.scope !2753
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJxEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !2753
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJxEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJxEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2673 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJxEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJxEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2676
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJxEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2673
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2676
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEED2Ev.exit unwind label %bb.d, !inline_history !2678

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !2679
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJxEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJxEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultxEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (long long)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !2756
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultxEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !2759
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultxEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultxEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !2760
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultxEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultxEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultxEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultxEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !2756
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !2762
  store ptr @_ZNSt17_Function_handlerIF11test_resultxEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOx, ptr %i.w, align 8, !tbaa !2683
  store ptr @_ZNSt17_Function_handlerIF11test_resultxEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultxEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_13
begin_hunk_14_@_ZNK7testing8internal16TypedExpectationIF11test_resultyEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJyEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIyE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKyPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIyE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIyE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultyEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIyEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2799 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !2799
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIyE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIyE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2816
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIyE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIyE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIyEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !2953
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !2875, !alias.scope !2953
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJyEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !2953
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJyEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJyEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2875 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJyEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJyEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2878
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJyEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2875
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2878
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEED2Ev.exit unwind label %bb.d, !inline_history !2880

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !2881
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJyEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJyEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultyEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (unsigned long long)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !2956
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultyEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !2959
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultyEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultyEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !2960
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultyEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultyEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultyEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultyEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !2956
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !2962
  store ptr @_ZNSt17_Function_handlerIF11test_resultyEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOy, ptr %i.w, align 8, !tbaa !2883
  store ptr @_ZNSt17_Function_handlerIF11test_resultyEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultyEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_14
begin_hunk_15_@_ZNK7testing8internal16TypedExpectationIF11test_resultfEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJfEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIfE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKfPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIfE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIfE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultfEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIfEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3071 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !3071
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIfE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIfE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3089
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIfE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIfE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIfEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !3230
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !3150, !alias.scope !3230
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJfEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !3230
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJfEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJfEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3150 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJfEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJfEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3153
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJfEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !3150
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3153
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEED2Ev.exit unwind label %bb.d, !inline_history !3155

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !3156
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJfEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJfEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultfEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (float)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !3233
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultfEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !3236
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultfEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultfEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !3237
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultfEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultfEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultfEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultfEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !3233
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !3239
  store ptr @_ZNSt17_Function_handlerIF11test_resultfEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOf, ptr %i.w, align 8, !tbaa !3160
  store ptr @_ZNSt17_Function_handlerIF11test_resultfEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultfEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_15
begin_hunk_16_@_ZNK7testing8internal16TypedExpectationIF11test_resultdEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJdEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIdE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKdPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIdE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIdE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resultdEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIdEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3276 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !3276
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIdE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIdE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3293
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIdE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIdE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIdEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !3432
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !3352, !alias.scope !3432
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJdEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !3432
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJdEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3352 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJdEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJdEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3355
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJdEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !3352
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3355
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEED2Ev.exit unwind label %bb.d, !inline_history !3357

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !3358
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJdEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJdEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resultdEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (double)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !3435
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultdEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !3438
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultdEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resultdEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !3439
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resultdEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultdEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resultdEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resultdEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !3435
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !3441
  store ptr @_ZNSt17_Function_handlerIF11test_resultdEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOd, ptr %i.w, align 8, !tbaa !3362
  store ptr @_ZNSt17_Function_handlerIF11test_resultdEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resultdEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_16
begin_hunk_17_@_ZNK7testing8internal16TypedExpectationIF11test_resulteEE16GetCurrentActionEPKNS0_14FunctionMockerIS3_EERKSt5tupleIJeEE:.noexc.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !782
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.o:                                             ; preds = %.noexc28, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !10
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.f, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bd
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.br, %bb.k ], [ %i.db, %bb.q ]
  %.pn23.ph = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ]
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.da, %bb.q ], [ %.pn23.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.cz, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp sgt i32 %i.c, %i.z
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.dg = sext i32 %i.c to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  ret ptr %i.dl

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIeE19MatchAndExplainImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKePNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIeE12DescribeImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS2_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIeE16GetDescriberImplINS2_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN7testing8internal14FunctionMockerIF11test_resulteEE16AddNewOnCallSpecEPKciRKSt5tupleIJNS_7MatcherIeEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef %i.a, ptr noundef %1, i32 noundef %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !817
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3463 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !3463
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.l = inttoptr i64 %i.k to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK7testing8internal11MatcherBaseIeE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIeE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3466
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIeE8IsSharedEv.exit.i.i.i.i.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIeE8IsSharedEv.exit.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIeEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.r, align 8, !alias.scope !3626
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEE9GetVTableINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.q, align 8, !tbaa !3546, !alias.scope !3626
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt5tupleIJeEEEE, i64 16), ptr %i.p, align 8, !tbaa !20, !alias.scope !3626
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !241 ; 4 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !114
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.g, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.al, ptr %i.t, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.w, align 8, !tbaa !240
  br label %_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKvSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPKvSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJeEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJeEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3546 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJeEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJeEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3549
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJeEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !3546
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3549
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEED2Ev.exit unwind label %bb.d, !inline_history !3551

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31, !inline_history !3552
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJeEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEE19MatchAndExplainImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEE12DescribeImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.338, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.339, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJeEEE16GetDescriberImplINS6_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ActionIF11test_resulteEEC2EPNS_15ActionInterfaceIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::Action<test_result (long double)>::ActionAdapter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !3629
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resulteEEEEC2IS4_vEEPT_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !3632
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resulteEEEEC2IS4_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing15ActionInterfaceIF11test_resulteEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !3633
  store ptr %i.a, ptr %i.l, align 8, !tbaa !202
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZN7testing6ActionIF11test_resulteEE13ActionAdapterD2Ev.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resulteEEEEC2IS4_vEEPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZN7testing6ActionIF11test_resulteEE13ActionAdapterD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7testing15ActionInterfaceIF11test_resulteEEEEC2IS4_vEEPT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8, !tbaa !3629
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !202
  store ptr %i.q, ptr %0, align 8, !tbaa !3635
  store ptr @_ZNSt17_Function_handlerIF11test_resulteEN7testing6ActionIS1_E13ActionAdapterEE9_M_invokeERKSt9_Any_dataOe, ptr %i.w, align 8, !tbaa !3556
  store ptr @_ZNSt17_Function_handlerIF11test_resulteEN7testing6ActionIS1_E13ActionAdapterEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.p, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN7testing6ActionIF11test_resulteEE13ActionAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
end_hunk_17
begin_hunk_18_@_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIbJahstijlmxyfdeEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEi:bb.a
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.g

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.f
  %.pre8 = load ptr, ptr %3, align 8, !tbaa !44   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %.pre8, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ai = add nsw i32 %1, 1
  call void @_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIaJhstijlmxyfdeEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEi(ptr noundef nonnull %0, i32 noundef %i.ai)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !10
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIaJhstijlmxyfdeEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3663
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !3663
  %i.a = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3663
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i unwind label %bb.c, !noalias !3663 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i:       ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3663 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal20DefaultNameGenerator7GetNameIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #28, !inline_history !3668
  br label %_ZN7testing8internal20DefaultNameGenerator7GetNameIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

bb.c:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3663 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN7testing7MessageD2Ev.exit4.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #28, !inline_history !3668
  br label %_ZN7testing7MessageD2Ev.exit4.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZN7testing7MessageD2Ev.exit4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZN7testing7MessageD2Ev.exit4.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit4.i.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3663
  br label %common.resume

_ZN7testing8internal20DefaultNameGenerator7GetNameIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %bb.b, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3663
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !584  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !586
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal20DefaultNameGenerator7GetNameIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !50
  %i.r = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.n, align 8, !tbaa !44
  %i.y = load i64, ptr %i.s, align 8, !tbaa !10
  store i64 %i.y, ptr %i.q, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.v, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !51
  store ptr %i.s, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.aa, align 8, !tbaa !51
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !584
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !584
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %_ZN7testing8internal20DefaultNameGenerator7GetNameIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.g

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.f
  %.pre8 = load ptr, ptr %3, align 8, !tbaa !44   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %.pre8, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ai = add nsw i32 %1, 1
  call void @_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIhJstijlmxyfdeEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEi(ptr noundef nonnull %0, i32 noundef %i.ai)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !10
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !573    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.342) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !50
  %i.s = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !44
  %i.z = load i64, ptr %i.t, align 8, !tbaa !10
  store i64 %i.z, ptr %i.r, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !51
  store ptr %i.t, ptr %2, align 8, !tbaa !44
  store i64 0, ptr %i.ab, align 8, !tbaa !51
  store i8 0, ptr %i.t, align 8, !tbaa !10
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !3669, !noalias !3672
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !44, !alias.scope !3672, !noalias !3669 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51, !alias.scope !3672, !noalias !3669 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !3674
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !44, !alias.scope !3669, !noalias !3672
  %i.al = load i64, ptr %i.af, align 8, !tbaa !10, !alias.scope !3672, !noalias !3669
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !10, !alias.scope !3669, !noalias !3672
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !3672, !noalias !3669
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !51, !alias.scope !3669, !noalias !3672
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !44, !alias.scope !3672, !noalias !3669
  store i64 0, ptr %i.an, align 8, !tbaa !51, !alias.scope !3672, !noalias !3669
  store i8 0, ptr %i.af, align 8, !tbaa !10, !alias.scope !3672, !noalias !3669
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3675

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !50, !alias.scope !3676, !noalias !3679
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !44, !alias.scope !3679, !noalias !3676 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51, !alias.scope !3679, !noalias !3676 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !3681
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !44, !alias.scope !3676, !noalias !3679
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !10, !alias.scope !3679, !noalias !3676
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !10, !alias.scope !3676, !noalias !3679
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !51, !alias.scope !3679, !noalias !3676
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !51, !alias.scope !3676, !noalias !3679
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !44, !alias.scope !3679, !noalias !3676
  store i64 0, ptr %i.bc, align 8, !tbaa !51, !alias.scope !3679, !noalias !3676
  store i8 0, ptr %i.au, align 8, !tbaa !10, !alias.scope !3679, !noalias !3676
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !3675

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !586
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !573
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !584
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !586
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesIhJstijlmxyfdeEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3682
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !3682
  %i.a = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3682
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i unwind label %bb.c, !noalias !3682 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i:       ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3682 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal20DefaultNameGenerator7GetNameIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #28, !inline_history !3687
  br label %_ZN7testing8internal20DefaultNameGenerator7GetNameIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

bb.c:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !47, !noalias !3682 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN7testing7MessageD2Ev.exit4.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #28, !inline_history !3687
  br label %_ZN7testing7MessageD2Ev.exit4.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZN7testing7MessageD2Ev.exit4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZN7testing7MessageD2Ev.exit4.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit4.i.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3682
  br label %common.resume

end_hunk_18
