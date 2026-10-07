Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i62, %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dy
  br i1 %i.ey, label %.body60, label %.body60.sink.split

.body60.sink.split:                               ; preds = %bb.aa, %bb.y
  %.sink114 = phi ptr [ %i.ej, %bb.y ], [ %i.ex, %bb.aa ]
  %.pn.ph = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %i.ew, %bb.aa ]
  %i.ez = load i64, ptr %i.dy, align 8, !tbaa !46
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.sink114, i64 noundef %i.fa) #38
  br label %.body60

.body60:                                          ; preds = %.body60.sink.split, %bb.aa, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %i.ew, %bb.aa ], [ %.pn.ph, %.body60.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ad

.invoke:                                          ; preds = %bb.a, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80
  %i.fb = phi i32 [ 257, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80 ], [ 266, %bb.v ], [ 229, %bb.a ]
  %i.fc = phi ptr [ @.str.242, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80 ], [ @.str.243, %bb.v ], [ @.str.241, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.240, i32 noundef %i.fb, ptr noundef nonnull %i.fc) #39
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !195
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fd)
          to label %bb.ac unwind label %bb.b

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !46
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.ad:                                            ; preds = %.body60, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.b
  %.pn29 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn22.pn.pn.pn, %bb.u ], [ %.pn, %.body60 ]
  %i.fj = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ad
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !46
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ10falsecolorSt6vectorIS5_SaIS5_EEE3$_0E9_M_invokeERKSt9_Any_dataOS5_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #8 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !48
  tail call void (ptr, ptr, ...) @_ZL5usagePKcS0_z(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.236, ptr noundef %.val)
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ10falsecolorSt6vectorIS5_SaIS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZ10falsecolorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4pbrt7initArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !42, !alias.scope !2774
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45, !alias.scope !2774
  store i8 0, ptr %i.a, align 8, !tbaa !46, !alias.scope !2774
  %i.c = load ptr, ptr %0, align 8, !tbaa !48, !noalias !2774 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !2774 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not13.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread, label %.lr.ph.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.h

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.010.014.i = phi ptr [ %i.ab, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %.sroa.010.014.i, align 1, !tbaa !46 ; 2 uses
  switch i8 %i.g, label %bb.b [
    i8 95, label %bb.e
    i8 45, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = zext i8 %i.g to i32
  %i.i = call i32 @tolower(i32 noundef %i.h) #43
  %i.j = trunc i32 %i.i to i8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !45, !alias.scope !2774 ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !48, !alias.scope !2774 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.o = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.a, align 8, !tbaa !46, !alias.scope !2774
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !48, !alias.scope !2774
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.s = phi ptr [ %.pre.i.i.i, %.noexc.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 %i.j, ptr %i.t, align 1, !tbaa !46
  store i64 %i.l, ptr %i.b, align 8, !tbaa !45, !alias.scope !2774
  %i.u = load ptr, ptr %2, align 8, !tbaa !48, !alias.scope !2774
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !48, !alias.scope !2774 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.a, align 8, !tbaa !46, !alias.scope !2774
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  %.sink44 = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %.sink = phi ptr [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aa = add i64 %.sink44, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aa) #38
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.bm, %bb.k ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %.lr.ph.i, %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i, label %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !tbaa !45
  %.pre24.pre = load ptr, ptr %2, align 8, !tbaa !48 ; 4 uses
  %i.ac = icmp eq i64 %.pre, 5
  br i1 %i.ac, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = load i32, ptr %.pre24.pre, align 1
  %i.ae = xor i32 %i.ad, 1936482662
  %i.af = getelementptr i8, ptr %.pre24.pre, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = xor i32 %i.ah, 101
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.f
  %i.an = phi i1 [ false, %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.am, %bb.f ] ; 2 uses
  %i.ao = icmp eq ptr %.pre24.pre, %i.a
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %i.an, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre24.pre, i64 noundef %i.aq) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 0, ptr %1, align 1, !tbaa !283
  br label %bb.o

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !42, !alias.scope !2775
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !45, !alias.scope !2775
  store i8 0, ptr %i.ar, align 8, !tbaa !46, !alias.scope !2775
  %i.at = load ptr, ptr %0, align 8, !tbaa !48, !noalias !2775 ; 2 uses
  %i.au = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !2775 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %.not13.i5 = icmp samesign eq i64 %i.au, 0
  br i1 %.not13.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.thread, label %.lr.ph.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.o

.lr.ph.i6:                                        ; preds = %bb.h, %bb.l
  %.sroa.010.014.i7 = phi ptr [ %i.bq, %bb.l ], [ %i.at, %bb.h ] ; 2 uses
  %i.aw = load i8, ptr %.sroa.010.014.i7, align 1, !tbaa !46 ; 2 uses
  switch i8 %i.aw, label %bb.i [
    i8 95, label %bb.l
    i8 45, label %bb.l
  ]

bb.i:                                             ; preds = %.lr.ph.i6
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call i32 @tolower(i32 noundef %i.ax) #43
  %i.az = trunc i32 %i.ay to i8
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !45, !alias.scope !2775 ; 4 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !2775 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i17: ; preds = %bb.i
  %i.be = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.i
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !46, !alias.scope !2775
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i17
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i17 ]
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i11

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ba, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i15 unwind label %bb.k

.noexc.i15:                                       ; preds = %bb.j
  %.pre.i.i.i16 = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !2775
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i11: ; preds = %.noexc.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10
  %i.bi = phi ptr [ %.pre.i.i.i16, %.noexc.i15 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 %i.az, ptr %i.bj, align 1, !tbaa !46
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !45, !alias.scope !2775
  %i.bk = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !2775
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bb
  store i8 0, ptr %i.bl, align 1, !tbaa !46
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !2775 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ar
  br i1 %i.bo, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.k
  %i.bp = load i64, ptr %i.ar, align 8, !tbaa !46, !alias.scope !2775
  br label %common.resume.sink.split

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i11, %.lr.ph.i6, %.lr.ph.i6
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i7, i64 1 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bq, %i.av
  br i1 %.not.i8, label %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit18, label %.lr.ph.i6

_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit18: ; preds = %bb.l
  %.pre25 = load i64, ptr %i.as, align 8, !tbaa !45
  %.pre26.pre = load ptr, ptr %3, align 8, !tbaa !48 ; 3 uses
  %i.br = icmp eq i64 %.pre25, 4
  br i1 %i.br, label %bb.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

bb.m:                                             ; preds = %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit18
  %i.bs = load i32, ptr %.pre26.pre, align 1
  %i.bt = icmp ne i32 %i.bs, 1702195828
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit18, %bb.m
  %i.bw = phi i1 [ false, %_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit18 ], [ %i.bv, %bb.m ] ; 2 uses
  %i.bx = icmp eq ptr %.pre26.pre, %i.ar
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %i.bw, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.by = load i64, ptr %i.ar, align 8, !tbaa !46
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %.pre26.pre, i64 noundef %i.bz) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  store i8 1, ptr %1, align 1, !tbaa !283
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.n, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ true, %bb.n ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ5bloomSt6vectorIS5_SaIS5_EEE3$_0E9_M_invokeERKSt9_Any_dataOS5_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #8 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !48
  tail call void (ptr, ptr, ...) @_ZL5usagePKcS0_z(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.236, ptr noundef %.val)
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ5bloomSt6vectorIS5_SaIS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZ5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt6vectorIN4pbrt5ImageESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !153
  store i64 %i.g, ptr %i.e, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !47
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139
  store ptr %i.m, ptr %i.h, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !75
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !46
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !47
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  store ptr %i.v, ptr %i.q, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load i64, ptr %i.x, align 8, !tbaa !153
  store i64 %i.y, ptr %i.w, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !47
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !127
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !153
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !153
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !tbaa !47
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !118
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !182
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4pbrt5ImageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = phi ptr [ %.pre, %bb.c ], [ %i.ap, %bb.b ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -152
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt5ImageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !184    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4pbrt5ImageESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #39
  unreachable

_ZNKSt6vectorIN4pbrt5ImageESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 60680079189834051)
  %i.l = select i1 %i.j, i64 60680079189834051, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 152                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #44 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.q, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !153
  store i64 %i.t, ptr %i.r, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  store i64 %i.y, ptr %i.w, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !140
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !140
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !46
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !tbaa !47
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !133
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !153
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !153
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
end_hunk_0
