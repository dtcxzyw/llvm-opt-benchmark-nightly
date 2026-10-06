Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-vocab?download=true
inline.NumInlined: 5573
inline.NumDeleted: 1989
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK11llama_vocab14get_bpe_mergesB5cxx11Ev:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !39
  store i8 %i.bz, ptr %i.bs, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bv, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ca = load i64, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !40
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !39
  %.pre.i18 = load ptr, ptr %2, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !38
  %i.cf = load i64, ptr %i.ag, align 8, !tbaa !40
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !40
  %i.cg = load i64, ptr %i.af, align 8, !tbaa !39
  store i64 %i.cg, ptr %i.bt, align 8, !tbaa !39
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ch = load i64, ptr %i.bt, align 8, !tbaa !39
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !38
  %i.ci = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !40
  %i.ck = load i64, ptr %i.af, align 8, !tbaa !39
  store i64 %i.ck, ptr %i.bt, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bs, ptr %2, align 8, !tbaa !38
  store i64 %i.ch, ptr %i.af, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %2, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.cl = phi ptr [ %i.bs, %bb.l ], [ %i.af, %bb.m ], [ %i.bv, %bb.h ], [ %.pre.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ag, align 8, !tbaa !40
  store i8 0, ptr %i.cl, align 1, !tbaa !39
  %i.cm = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.af
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.co = load i64, ptr %i.af, align 8, !tbaa !39
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.cq = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ad
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %.sroa.026.0 = load ptr, ptr %.sroa.026.058, align 8, !tbaa !137 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.026.0, null
  br i1 %.not37, label %._crit_edge61, label %bb.b

.loopexit38:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp39:                             ; preds = %bb.e
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp39, %.loopexit38
  %lpad.phi42 = phi { ptr, i32 } [ %lpad.loopexit40, %.loopexit38 ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp39 ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ad
  br i1 %i.cv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.d
  %.sink = phi ptr [ %i.at, %bb.d ], [ %i.cu, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.d ], [ %lpad.phi42, %bb.n ]
  %i.cw = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cx) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.d ], [ %lpad.phi42, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !34, !alias.scope !567
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !40, !alias.scope !567
  store i8 0, ptr %i.e, align 8, !tbaa !39, !alias.scope !567
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40, !alias.scope !567
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !40, !alias.scope !567
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.275) #33
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !567 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !39, !alias.scope !567
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11llama_vocab24get_precompiled_charsmapEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.106") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !103  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.c, !prof !117

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #37 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !252
  %i.m = icmp samesign ugt i64 %i.h, 1
  br i1 %i.m, label %bb.d, label %bb.f, !prof !253

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr null, i64 %i.h ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !252
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.e, align 1, !tbaa !39
  store i8 %i.p, ptr %i.j, align 1, !tbaa !39
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.d, %bb.f
  %i.q = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.k, %bb.f ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %2, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK11llama_vocab8tokenizeEPKciPiibb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !34
  %i.e = icmp eq ptr %1, null
  %i.f = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.286) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.c, ptr %i.b, align 8, !tbaa !36
  %i.g = icmp ugt i32 %2, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.h   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %8, align 8, !tbaa !38
  %i.i = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.i, ptr %i.d, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc20, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc20 ], [ %i.d, %bb.c ] ; 2 uses
  switch i32 %2, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.k, ptr %i.j, align 1, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = load ptr, ptr %8, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.p = load ptr, ptr %0, align 8, !tbaa !166, !noalias !573
  invoke void @_ZNK11llama_vocab4impl8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.64") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %5, i1 noundef zeroext %6)
          to label %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit unwind label %bb.i

_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %8, align 8, !tbaa !38     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136  ; 2 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !132    ; 13 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 9 uses
  %.not = icmp ult i64 %i.aa, 2147483647
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.266, ptr noundef nonnull @__FUNCTION__._ZNK11llama_vocab4impl8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb, i64 noundef %i.aa)
          to label %..loopexit_crit_edge unwind label %bb.j

..loopexit_crit_edge:                             ; preds = %bb.g
  %.pre = load ptr, ptr %7, align 8, !tbaa !132
  br label %.loopexit

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = trunc nuw nsw i64 %i.aa to i32          ; 6 uses
  %i.ap = icmp slt i32 %4, %i.ao
  br i1 %i.ap, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not28 = icmp eq ptr %i.v, %i.w
  br i1 %.not28, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.aq = sub i64 %i.y, %i.a
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aa, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !97
  %wide.load43 = load <4 x i32>, ptr %i.as, align 4, !tbaa !97
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load, ptr %i.at, align 4, !tbaa !97
  store <4 x i32> %wide.load43, ptr %i.au, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %.lr.ph.preheader44

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader44, %.lr.ph.prol
  %.027.prol = phi i64 [ %i.az, %.lr.ph.prol ], [ %.027.ph, %.lr.ph.preheader44 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader44 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.027.prol
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.027.prol
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !97
  %i.az = add nuw nsw i64 %.027.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !571

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader44
  %.027.unr = phi i64 [ %.027.ph, %.lr.ph.preheader44 ], [ %i.az, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %.027.ph, %i.aa
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #36
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !164
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !137
  store ptr %i.w, ptr %3, align 8, !tbaa !137
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !211
  store ptr %3, ptr %i.x, align 8, !tbaa !137
  br label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !316
  store ptr %i.z, ptr %3, align 8, !tbaa !137
  store ptr %3, ptr %i.y, align 8, !tbaa !316
  %i.aa = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !164
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !211
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !211
  br label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !294
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !294
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !750
  br label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKliELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !117

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKliELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKliELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKliELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !316  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !316
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !137 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !211  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !316
  store ptr %i.o, ptr %.02530, align 8, !tbaa !137
  store ptr %.02530, ptr %i.g, align 8, !tbaa !316
  store ptr %i.g, ptr %i.m, align 8, !tbaa !211
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !137
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !211
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !137
  store ptr %i.r, ptr %.02530, align 8, !tbaa !137
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !211
  store ptr %.02530, ptr %i.s, align 8, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !749

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !164
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #35
  br label %_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !164
  store ptr %.0.i, ptr %0, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::vector<std::vector<int>>::_Temporary_value", align 8 ; 9 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293  ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %0, ptr %4, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136  ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !132    ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !133
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i, label %.noexc4.i, !prof !117

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc4.i:                                        ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 5 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !136
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !133
  %i.x = icmp samesign ugt i64 %i.o, 4
  br i1 %i.x, label %bb.e, label %bb.f, !prof !253

bb.e:                                             ; preds = %.noexc4.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

bb.f:                                             ; preds = %.noexc4.i
  %i.y = icmp eq i64 %i.o, 4
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.l, align 4, !tbaa !97
  store i32 %i.z, ptr %i.t, align 4, !tbaa !97
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit: ; preds = %.thread, %bb.e, %bb.f, %bb.g
  %i.aa = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %i.r, %.thread ] ; 2 uses
  %i.ab = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.e ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.p, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !136
  %i.ad = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ae = sub i64 %i.f, %i.ad                     ; 3 uses
  %i.af = sdiv exact i64 %i.ae, 24                ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %2
  br i1 %i.ag, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit
  %.idx = mul i64 %2, -24                         ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.h ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.h ] ; 4 uses
  %i.ai = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !131
  store <2 x ptr> %i.ai, ptr %.013.i.i.i.i.i, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !133
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i69 = icmp eq ptr %i.am, %i.d
  br i1 %.not.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !751

_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !293
  br label %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.h
  %i.ao = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.h ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %2
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !293
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = sub i64 %i.aq, %i.ad                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.at = udiv exact i64 %i.ar, 24
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !132 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !133
  %i.az = load <2 x ptr>, ptr %i.au, align 8, !tbaa !131
  store <2 x ptr> %i.az, ptr %i.av, align 8, !tbaa !131
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !133
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !133
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i70
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.be) #35
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i:       ; preds = %bb.i, %.lr.ph.i.i.i.i.i70
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i70, label %_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_.exit, !llvm.loop !752

_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_.exit: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.idx118 = mul nuw nsw i64 %2, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx118
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_.exit, %.noexc
  %.06.i.i.i = phi ptr [ %i.bj, %.noexc ], [ %1, %_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.bi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !753

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i80
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.k
  %lpad.loopexit.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit119, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp120, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !133
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #35
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev.exit: ; preds = %.loopexit.split-lp, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.v

bb.k:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit
  %i.bp = sub nuw i64 %2, %i.af
  %i.bq = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.d, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !293
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i72, label %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78.thread, label %.lr.ph.i.i.i.i.i73

_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ae
  store ptr %i.br, ptr %i.c, align 8, !tbaa !293
  br label %_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i73:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i73 ], [ %i.bq, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i73 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %i.bs = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !131
  store <2 x ptr> %i.bs, ptr %.013.i.i.i.i.i74, align 8, !tbaa !131
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i75, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 24
  %.not.i.i.i.i.i76 = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i.i.i.i76, label %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !751

_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !293
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ae
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !293
  br label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78, %.noexc83
  %.06.i.i.i81 = phi ptr [ %i.cb, %.noexc83 ], [ %1, %_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_.exit78 ] ; 2 uses
end_hunk_1
