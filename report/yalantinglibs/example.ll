Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZNKSt7__cxx1112regex_traitsIcE5valueEci:bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !299
  store i8 %1, ptr %i.b, align 8, !tbaa !295
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !304
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !295
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !303    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !295
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  switch i32 %2, label %bb.e [
    i32 8, label %.sink.split
    i32 16, label %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !303    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !295
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #45
  br label %bb.f

_ZNSirsEPFRSt8ios_baseS0_E.exit13:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  %.sink20 = phi i32 [ 8, %_ZNSirsEPFRSt8ios_baseS0_E.exit13 ], [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !279
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !9156
  %i.u = and i32 %i.t, -75
  %i.v = or disjoint i32 %i.u, %.sink20
  store i32 %i.v, ptr %i.s, align 8, !tbaa !9157
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSirsERl.exit unwind label %bb.d ; 0 uses

_ZNSirsERl.exit:                                  ; preds = %bb.e
  %i.x = load ptr, ptr %3, align 8, !tbaa !279
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !324
  %i.ad = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !279
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !279
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !279
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !303 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSirsERl.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !295
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #58
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSirsERl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.aq = and i32 %i.ac, 5
  %.not = icmp eq i32 %i.aq, 0
  %i.ar = trunc i64 %i.ad to i32
  %i.as = select i1 %.not, i32 %i.ar, i32 -1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !279
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #45
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !279
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !279
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !1454
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ba) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret i32 %i.as

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #31

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #9 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3651, !nonnull !469, !align !470
  %i.c = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.1398) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2544
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3614
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3652 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3619
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3652
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3652
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3622 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #60 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9164)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !9164, !noalias !9163
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !9164, !noalias !9163
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !9163, !noalias !9164
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !9163, !noalias !9164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !9161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9164)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !9164, !noalias !9163
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !9163, !noalias !9164
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9162

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #58
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3622
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3652
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3619
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.3728, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !593    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !593   ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !593 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !196

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !295 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !295
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !196

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !295 ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !295
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9165

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !295 ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !295
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !295 ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !295
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !295 ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !295
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !295 ; 3 uses
  %i.ax = icmp eq i8 %i.as, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.g

end_hunk_0
begin_hunk_1_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #45
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.du, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !1405  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !1406
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #58
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !299
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !303 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !304  ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !300

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #59
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #60
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !303
  store i64 %i.e, ptr %i.b, align 8, !tbaa !295
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !295
  store i8 %i.l, ptr %i.k, align 1, !tbaa !295
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !295
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !9185

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.r = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #45 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #59
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.t

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #57
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3659, !nonnull !469, !align !470
  %i.c = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.1398) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2544
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3614
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3652 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3619
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3652
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3652
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3622 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #60 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9192)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !9192, !noalias !9191
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !9192, !noalias !9191
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !9191, !noalias !9192
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !9191, !noalias !9192
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !9189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9192)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !9192, !noalias !9191
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !9191, !noalias !9192
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9190

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #58
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3622
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3652
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3619
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.3741, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !593    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !593   ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !593 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !196

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !295 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !295
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !196

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !295 ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !295
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9193

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !295 ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !295
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !295 ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !295
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !295 ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !295
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !295 ; 3 uses
  %i.ax = icmp eq i8 %i.as, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.g

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_:bb.a
_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !299
  %i.b = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !304  ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !300

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #60 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !303
  store i64 %i.d, ptr %i.a, align 8, !tbaa !295
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !295
  store i8 %i.k, ptr %i.j, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !299
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !303  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !304  ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i4

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc.i7, label %bb.g

.noexc.i7:                                        ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i7
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc6.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, !prof !300

.noexc6.i6:                                       ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #59
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %.noexc6.i6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #60
          to label %.noexc9 unwind label %bb.k    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5
  store ptr %i.x, ptr %i.n, align 8, !tbaa !303
  store i64 %i.s, ptr %i.p, align 8, !tbaa !295
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.x, %.noexc9 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.q, align 1, !tbaa !295
  store i8 %i.z, ptr %i.y, align 1, !tbaa !295
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !304
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !295
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, %.noexc6.i6, %.noexc.i7
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %0, align 8, !tbaa !303   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.a, align 8, !tbaa !295
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3665, !nonnull !469, !align !470
  %i.c = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.1398) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2544
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3614
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3652 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3619
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3652
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3652
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3622 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #60 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9210)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !9210, !noalias !9209
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !9210, !noalias !9209
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !9209, !noalias !9210
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !9209, !noalias !9210
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !9207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9210)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !9210, !noalias !9209
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !9209, !noalias !9210
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9208

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #58
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3622
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3652
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3619
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.3746, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !593    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !593   ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !593 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !196

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !295 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !295
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !196

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !295 ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !295
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9211

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !295 ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !295
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !295 ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !295
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !295 ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !295
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !295 ; 3 uses
  %i.ax = icmp eq i8 %i.as, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.g

end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !300

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #59
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #60
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cs = phi ptr [ null, %.loopexit28 ], [ %i.cr, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !3622
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !3652
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !3619
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !3618 ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !3618 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %.noexc25
  %i.cz = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.da = ptrtoaddr ptr %i.cs to i64
  %i.db = ptrtoaddr ptr %i.cx to i64
  %i.dc = add i64 %i.db, -4
  %i.dd = sub i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.dd, 44
  %i.dg = sub i64 %i.cz, %i.da
  %diff.check58 = icmp ugt i64 %i.dg, -32
  %or.cond72 = or i1 %min.iters.check59, %diff.check58
  br i1 %or.cond72, label %.lr.ph.i.i.i.i.i19.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %n.vec61 = and i64 %i.df, 9223372036854775800   ; 3 uses
  %i.dh = shl i64 %n.vec61, 2                     ; 2 uses
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.dh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dk = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.dk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cw, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 2
  %wide.load67 = load <4 x i32>, ptr %i.dl, align 2
  %i.dm = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 2
  store <4 x i32> %wide.load67, ptr %i.dm, align 2
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dn, label %middle.block69, label %vector.body62, !llvm.loop !9216

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.df, %n.vec61
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader73

.lr.ph.i.i.i.i.i19.preheader73:                   ; preds = %.lr.ph.i.i.i.i.i19.preheader, %middle.block69
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.di, %middle.block69 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dj, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader73, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.do, ptr %.08.i.i.i.i.i20, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.cx
  br i1 %i.dr, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !9217

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block69, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cs, %.noexc25 ], [ %i.di, %middle.block69 ], [ %i.dq, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.ct, align 8, !tbaa !3652
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.as, align 8, !tbaa !3615 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %i.bf, align 8, !tbaa !3617
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #58
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.n ], [ %i.dw, %bb.o ], [ %i.dw, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #45
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.du, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !1405  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !1406
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #58
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3669, !nonnull !469, !align !470
  %i.c = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.1398) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2544
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3614
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3652 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3619
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3652
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3652
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3622 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #60 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9224)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !9224, !noalias !9223
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !9224, !noalias !9223
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !9223, !noalias !9224
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !9223, !noalias !9224
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !9221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9224)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !9224, !noalias !9223
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !9223, !noalias !9224
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9222

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #58
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3622
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3652
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3619
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.3749, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !593    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !593   ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !593 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !196

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !295 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !295
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !196

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !295 ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !295
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9225

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !295 ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !295
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !295 ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !295
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !295 ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !295
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !295 ; 3 uses
  %i.ax = icmp eq i8 %i.as, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.g

end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 %i.x, ptr %i.g, align 8, !tbaa !304
  %i.y = load ptr, ptr %2, align 8, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !295
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.q, ptr %2, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !295
  store <2 x i64> %i.ab, ptr %i.g, align 8, !tbaa !295
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !295
  store ptr %i.q, ptr %2, align 8, !tbaa !303
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !295
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !295
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %3, align 8, !tbaa !303
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %3, align 8, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.j ], [ %i.r, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !304
  store i8 0, ptr %i.af, align 1, !tbaa !295
  %i.ah = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !295
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !522 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !524
  %.not.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i7, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !299
  %i.ar = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.as = load i64, ptr %i.g, align 8, !tbaa !304 ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !300

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #59
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #60
          to label %.noexc9 unwind label %bb.d    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !303
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !295
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.l
  %i.ay = phi ptr [ %i.ax, %.noexc9 ], [ %i.aq, %bb.l ] ; 3 uses
  switch i64 %i.as, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !295
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !295
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !295
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !522
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !522
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.q
  %i.bf = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !295
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bj, %bb.r ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !295
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.1528) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3616 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3617
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !3616
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !3616
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3615 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #60 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = add i64 %i.j, -2
  %i.w = sub i64 %i.v, %i.k                       ; 3 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.w, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.w, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 4 uses
  %i.aa = shl i64 %n.vec, 1                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9249)
  %i.ae = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !9249, !noalias !9248
  %wide.load12 = load <8 x i16>, ptr %i.ae, align 1, !alias.scope !9249, !noalias !9248
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !9248, !noalias !9249
  store <8 x i16> %wide.load12, ptr %i.af, align 1, !alias.scope !9248, !noalias !9249
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !9245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3658

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.y, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9249)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !9249, !noalias !9248
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !9248, !noalias !9249
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.y, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9249)
  %i.am = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !9249, !noalias !9248
  store i16 %i.am, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !9248, !noalias !9249
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9247

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #58
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !3615
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !3616
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !3617
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #45
  %i.b = load ptr, ptr %1, align 8, !tbaa !2530
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2534
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2536 ; 9 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #59
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !304
  store i8 0, ptr %i.g, align 8, !tbaa !295
  %.not45 = icmp eq ptr %2, %3
  br i1 %.not45, label %.preheader.split.us.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 313
  br label %bb.c

.preheader:                                       ; preds = %bb.n
  %.pre = load i64, ptr %i.h, align 8, !tbaa !304
  %.pre54 = load ptr, ptr %4, align 8             ; 4 uses
  %i.j = freeze i64 %.pre                         ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %.preheader
  %i.l = phi ptr [ %.pre54, %.preheader ], [ %i.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ] ; 5 uses
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.critedge.us.3, %.preheader.split.us.preheader
  %.017.idx47.us = phi i64 [ 0, %.preheader.split.us.preheader ], [ %.017.add.us.3, %.critedge.us.3 ] ; 6 uses
  %.017.ptr.us = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.idx47.us
  %i.m = load ptr, ptr %.017.ptr.us, align 16, !tbaa !593
  %char0 = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %char0, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.split.us
  %.017.add.us = or disjoint i64 %.017.idx47.us, 8 ; 2 uses
  %.017.ptr.us.1 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us
  %i.o = load ptr, ptr %.017.ptr.us.1, align 8, !tbaa !593
  %char0.1 = load i8, ptr %i.o, align 1
  %i.p = icmp eq i8 %char0.1, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %.critedge.us
  %.017.add.us.1 = or disjoint i64 %.017.idx47.us, 16 ; 2 uses
  %.017.ptr.us.2 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.1
  %i.q = load ptr, ptr %.017.ptr.us.2, align 16, !tbaa !593
  %char0.2 = load i8, ptr %i.q, align 1
  %i.r = icmp eq i8 %char0.2, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.2

.critedge.us.2:                                   ; preds = %.critedge.us.1
  %.017.add.us.2 = or disjoint i64 %.017.idx47.us, 24 ; 2 uses
  %.017.ptr.us.3 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.2
  %i.s = load ptr, ptr %.017.ptr.us.3, align 8, !tbaa !593
  %char0.3 = load i8, ptr %i.s, align 1
  %i.t = icmp eq i8 %char0.3, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.3

.critedge.us.3:                                   ; preds = %.critedge.us.2
  %.017.add.us.3 = add nuw nsw i64 %.017.idx47.us, 32 ; 2 uses
  %.not23.us.3 = icmp eq i64 %.017.add.us.3, 1024
  br i1 %.not23.us.3, label %.critedge28, label %.preheader.split.us

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.02246 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %bb.n ] ; 2 uses
  %i.u = load i8, ptr %.02246, align 1, !tbaa !295 ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !295   ; 2 uses
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !279
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.u, i8 noundef signext 0)
          to label %.noexc unwind label %.loopexit, !inline_history !149 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not11.i = icmp eq i8 %i.ab, 0
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.e

end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 %i.x, ptr %i.g, align 8, !tbaa !304
  %i.y = load ptr, ptr %2, align 8, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !295
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.q, ptr %2, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !295
  store <2 x i64> %i.ab, ptr %i.g, align 8, !tbaa !295
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !295
  store ptr %i.q, ptr %2, align 8, !tbaa !303
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !295
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !295
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %3, align 8, !tbaa !303
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %3, align 8, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.j ], [ %i.r, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !304
  store i8 0, ptr %i.af, align 1, !tbaa !295
  %i.ah = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !295
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !522 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !524
  %.not.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i7, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !299
  %i.ar = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.as = load i64, ptr %i.g, align 8, !tbaa !304 ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !300

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #59
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #60
          to label %.noexc9 unwind label %bb.d    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !303
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !295
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.l
  %i.ay = phi ptr [ %i.ax, %.noexc9 ], [ %i.aq, %bb.l ] ; 3 uses
  switch i64 %i.as, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !295
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !295
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !295
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !522
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !522
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.q
  %i.bf = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !295
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bj, %bb.r ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !303   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !295
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.1528) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3616 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3617
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !3616
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !3616
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3615 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1020) #59
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #60 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = add i64 %i.j, -2
  %i.w = sub i64 %i.v, %i.k                       ; 3 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.w, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.w, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 4 uses
  %i.aa = shl i64 %n.vec, 1                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9300)
  %i.ae = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !9300, !noalias !9299
  %wide.load12 = load <8 x i16>, ptr %i.ae, align 1, !alias.scope !9300, !noalias !9299
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !9299, !noalias !9300
  store <8 x i16> %wide.load12, ptr %i.af, align 1, !alias.scope !9299, !noalias !9300
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !9296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3658

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.y, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9300)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !9300, !noalias !9299
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !9299, !noalias !9300
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9297

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.y, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9300)
  %i.am = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !9300, !noalias !9299
  store i16 %i.am, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !9299, !noalias !9300
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9298

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #58
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !3615
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !3616
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !3617
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3546
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit28 [
    i32 11, label %bb.b
    i32 16, label %bb.h
    i32 17, label %bb.u
    i32 15, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3547
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3548
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !3546
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !3549
  switch i32 %i.l, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3547
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3548
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !3546
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3549
  switch i32 %i.u, label %bb.n [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_collate_elementERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !304
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %3, align 8, !tbaa !303
  %i.z = load i8, ptr %i.y, align 1, !tbaa !295
  %i.aa = load i8, ptr %1, align 1, !tbaa !3675
  %i.ab = icmp eq i8 %i.aa, 1
end_hunk_5
begin_hunk_6_@_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZNS0_9syncAwaitINS0_4LazyIvEEEEDaOT_EUlNS_3TryIvEEE_EEvS9_Q14isLazyCallbackIS8_TL0__EENKUlS3_SC_E_clES3_SC_.destroy:_ZN12async_simple3TryIvED2Ev.exit
!8962 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE16_Temporary_valueD2Ev, null, ptr @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8963 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE", !275, i64 0}
!8964 = !{!"_ZTSNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE16_Temporary_valueE", !8963, i64 0, !270, i64 8}
!8965 = !{!8964, !8963, i64 0}
!8966 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8967 = distinct !{!8967, !291}
!8968 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8969 = distinct !{!8969, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_"}
!8970 = distinct !{!8970, !8969, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!8971 = distinct !{!8971, !8969, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!8972 = distinct !{!8972, !291}
!8973 = distinct !{!8973, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_"}
!8974 = distinct !{!8974, !8973, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!8975 = distinct !{!8975, !8973, !"_ZSt19__relocate_object_aISt10shared_ptrIN7cinatra15radix_tree_nodeEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!8976 = !{!8970}
!8977 = !{!8971}
!8978 = !{!8974}
!8979 = !{!8975}
!8980 = distinct !{!8980, !291}
!8981 = distinct !{null, null, null, null, null, null, null, null, null}
!8982 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8983 = distinct !{!8983, i1 false, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_"}
!8984 = distinct !{!8984, !8983, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!8985 = distinct !{!8985, !8983, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!8986 = distinct !{!8986, !291}
!8987 = distinct !{!8987, i1 false, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_"}
!8988 = distinct !{!8988, !8987, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!8989 = distinct !{!8989, !8987, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNSB_18coro_http_responseEEEEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!8990 = !{!8984}
!8991 = !{!8985}
!8992 = !{!8984, !8985}
!8993 = !{!8988}
!8994 = !{!8989}
!8995 = !{!8988, !8989}
!8996 = distinct !{!8996, i1 false, !"_ZSt11make_sharedINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEESt10shared_ptrIT_EDpOT0_"}
!8997 = distinct !{!8997, !8996, !"_ZSt11make_sharedINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8998 = distinct !{!8998, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!8999 = distinct !{!8999, !8998, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9000 = distinct !{!9000, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9001 = distinct !{!9001, !9000, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9002 = distinct !{!9002, !291}
!9003 = distinct !{!9003, !291}
!9004 = !{!8997}
!9005 = !{!9001, !8999}
!9006 = !{!8999}
!9007 = !{!2493, !2493, i64 0}
!9008 = distinct !{ptr @_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9009 = !{!2533, !301, i64 16}
!9010 = distinct !{!9010, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9011 = distinct !{!9011, !9010, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9012 = distinct !{!9012, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9013 = distinct !{!9013, !9012, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9014 = distinct !{!9014, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9015 = distinct !{!9015, !9014, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9016 = distinct !{!9016, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9017 = distinct !{!9017, !9016, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9018 = distinct !{!9018, !291}
!9019 = !{!9013, !9011}
!9020 = !{!9011}
!9021 = !{!9017, !9015}
!9022 = !{!9015}
!9023 = !{!"_ZTSNSt15regex_constants10error_typeE", !270, i64 0}
!9024 = !{!"_ZTSSt11regex_error", !1754, i64 0, !9023, i64 16}
!9025 = !{!9024, !9023, i64 16}
!9026 = !{!3529, !297, i64 112}
!9027 = !{!3529, !297, i64 120}
!9028 = !{!3529, !297, i64 128}
!9029 = distinct !{!9029, !291}
!9030 = distinct !{!9030, !291}
!9031 = distinct !{!9031, !291}
!9032 = !{!"branch_weights", i32 2000, i32 2001, i32 2001, i32 2001, i32 2001, i32 1}
!9033 = distinct !{!9033, !291}
!9034 = distinct !{!9034, !291}
!9035 = distinct !{!9035, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!9036 = distinct !{!9036, !9035, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!9037 = distinct !{!9037, i1 false, !"_ZNSt7__cxx1112regex_traitsIcE5imbueESt6locale"}
!9038 = distinct !{!9038, !9037, !"_ZNSt7__cxx1112regex_traitsIcE5imbueESt6locale: argument 0"}
!9039 = !{!9036}
!9040 = !{!642, !642, i64 0}
!9041 = !{!9038}
!9042 = distinct !{!9042, !291}
!9043 = distinct !{!9043, !291}
!9044 = !{!3537, !3535, i64 16}
!9045 = distinct !{!9045, i1 false, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_"}
!9046 = distinct !{!9046, !9045, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!9047 = distinct !{!9047, !9045, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!9048 = distinct !{!9048, !291}
!9049 = distinct !{!9049, i1 false, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_"}
!9050 = distinct !{!9050, !9049, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!9051 = distinct !{!9051, !9049, !"_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!9052 = !{!9046}
!9053 = !{!9047}
!9054 = !{!9046, !9047}
!9055 = !{!9050}
!9056 = !{!9051}
!9057 = !{!9050, !9051}
!9058 = distinct !{null}
!9059 = distinct !{!9059, !291}
!9060 = distinct !{!9060, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9061 = distinct !{!9061, !9060, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9062 = distinct !{!9062, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9063 = distinct !{!9063, !9062, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9064 = distinct !{!9064, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9065 = distinct !{!9065, !9064, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9066 = distinct !{!9066, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9067 = distinct !{!9067, !9066, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9068 = !{!9063, !9061}
!9069 = !{!9061}
!9070 = !{!9067, !9065}
!9071 = !{!9065}
!9072 = distinct !{!9072, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9073 = distinct !{!9073, !9072, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9074 = distinct !{!9074, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9075 = distinct !{!9075, !9074, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9076 = !{!9075, !9073}
!9077 = !{!9073}
!9078 = distinct !{!9078, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9079 = distinct !{!9079, !9078, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9080 = distinct !{!9080, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9081 = distinct !{!9081, !9080, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9082 = distinct !{!9082, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9083 = distinct !{!9083, !9082, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9084 = distinct !{!9084, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9085 = distinct !{!9085, !9084, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9086 = !{!9081, !9079}
!9087 = !{!9079}
!9088 = !{!9085, !9083}
!9089 = !{!9083}
!9090 = distinct !{!9090, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9091 = distinct !{!9091, !9090, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9092 = distinct !{!9092, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9093 = distinct !{!9093, !9092, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9094 = distinct !{!9094, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9095 = distinct !{!9095, !9094, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9096 = distinct !{!9096, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9097 = distinct !{!9097, !9096, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9098 = distinct !{!9098, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9099 = distinct !{!9099, !9098, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9100 = distinct !{!9100, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9101 = distinct !{!9101, !9100, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9102 = distinct !{!9102, i1 false, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv"}
!9103 = distinct !{!9103, !9102, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv: argument 0"}
!9104 = distinct !{!9104, i1 false, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv"}
!9105 = distinct !{!9105, !9104, !"_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE3endEv: argument 0"}
!9106 = distinct !{!9106, !291}
!9107 = distinct !{!9107, i1 false, !"_ZNSt5dequeIlSaIlEE3endEv"}
!9108 = distinct !{!9108, !9107, !"_ZNSt5dequeIlSaIlEE3endEv: argument 0"}
!9109 = distinct !{!9109, !291}
!9110 = distinct !{!9110, !291}
!9111 = !{!9093, !9091}
!9112 = !{!9091}
!9113 = !{!9097, !9095}
!9114 = !{!9095}
!9115 = !{!9101, !9099}
!9116 = !{!9099}
!9117 = !{!9105, !9103}
!9118 = !{!9103}
!9119 = !{!9108}
!9120 = distinct !{null, ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc, null, null}
!9121 = distinct !{null, ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc, null, null}
!9122 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEE", !275, i64 0}
!9123 = !{!9122, !9122, i64 0}
!9124 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEE", !275, i64 0}
!9125 = !{!9124, !9124, i64 0}
!9126 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEE", !275, i64 0}
!9127 = !{!9126, !9126, i64 0}
!9128 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb1EEE", !275, i64 0}
!9129 = !{!9128, !9128, i64 0}
!9130 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb0EEE", !275, i64 0}
!9131 = !{!9130, !9130, i64 0}
!9132 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb1EEE", !275, i64 0}
!9133 = !{!9132, !9132, i64 0}
!9134 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb0EEE", !275, i64 0}
!9135 = !{!9134, !9134, i64 0}
!9136 = !{!"p1 _ZTSNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EEE", !275, i64 0}
!9137 = !{!9136, !9136, i64 0}
!9138 = !{!"_ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEE", !3609, i64 0, !270, i64 1}
!9139 = !{!9138, !270, i64 1}
!9140 = !{!"p1 _ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEE", !275, i64 0}
!9141 = !{!9140, !9140, i64 0}
!9142 = !{!"_ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !3629, i64 0, !270, i64 8}
!9143 = !{!9142, !270, i64 8}
!9144 = !{!"p1 _ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !275, i64 0}
!9145 = !{!9144, !9144, i64 0}
!9146 = distinct !{null, null, null, ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc, null, null}
!9147 = !{!"_ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !3638, i64 0, !270, i64 8}
!9148 = !{!9147, !270, i64 8}
!9149 = !{!"p1 _ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !275, i64 0}
!9150 = !{!9149, !9149, i64 0}
!9151 = distinct !{null, null, null, ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc, null, null}
!9152 = !{!"_ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !3644, i64 0, !270, i64 8}
!9153 = !{!9152, !270, i64 8}
!9154 = !{!"p1 _ZTSNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !275, i64 0}
!9155 = !{!9154, !9154, i64 0}
!9156 = !{!323, !316, i64 24}
!9157 = !{!316, !316, i64 0}
!9158 = distinct !{!9158, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_"}
!9159 = distinct !{!9159, !9158, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!9160 = distinct !{!9160, !9158, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!9161 = distinct !{!9161, !291, !790, !791}
!9162 = distinct !{!9162, !291, !791, !790}
!9163 = !{!9159}
!9164 = !{!9160}
!9165 = distinct !{!9165, !1104}
!9166 = distinct !{!9166, !291}
!9167 = distinct !{!9167, !291}
!9168 = distinct !{!9168, !291}
!9169 = distinct !{!9169, !291}
!9170 = distinct !{!9170, !291}
!9171 = distinct !{!9171, !291}
!9172 = distinct !{!9172, !291}
!9173 = distinct !{!9173, !291}
!9174 = distinct !{!9174, !291}
!9175 = distinct !{!9175, !291}
!9176 = distinct !{!9176, !291}
!9177 = distinct !{!9177, i1 false, !"_ZNKSt7__cxx117collateIcE9transformEPKcS3_"}
!9178 = distinct !{!9178, !9177, !"_ZNKSt7__cxx117collateIcE9transformEPKcS3_: argument 0"}
!9179 = !{!9178}
!9180 = distinct !{!9180, !291, !790, !791}
!9181 = distinct !{!9181, !291, !790, !791}
!9182 = distinct !{!9182, !291, !790}
!9183 = distinct !{!9183, !291, !790, !791}
!9184 = distinct !{!9184, !291, !790}
!9185 = distinct !{!9185, !291}
!9186 = distinct !{!9186, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_"}
!9187 = distinct !{!9187, !9186, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!9188 = distinct !{!9188, !9186, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!9189 = distinct !{!9189, !291, !790, !791}
!9190 = distinct !{!9190, !291, !791, !790}
!9191 = !{!9187}
!9192 = !{!9188}
!9193 = distinct !{!9193, !1104}
!9194 = distinct !{!9194, !291}
!9195 = distinct !{!9195, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc"}
!9196 = distinct !{!9196, !9195, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc: argument 0"}
!9197 = !{!9196}
!9198 = distinct !{!9198, i1 false, !"_ZNKSt7__cxx117collateIcE9transformEPKcS3_"}
!9199 = distinct !{!9199, !9198, !"_ZNKSt7__cxx117collateIcE9transformEPKcS3_: argument 0"}
!9200 = !{!9199}
!9201 = distinct !{!9201, !291, !790, !791}
!9202 = distinct !{!9202, !291, !790}
!9203 = distinct !{!9203, !291}
!9204 = distinct !{!9204, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_"}
!9205 = distinct !{!9205, !9204, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!9206 = distinct !{!9206, !9204, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!9207 = distinct !{!9207, !291, !790, !791}
!9208 = distinct !{!9208, !291, !791, !790}
!9209 = !{!9205}
!9210 = !{!9206}
!9211 = distinct !{!9211, !1104}
!9212 = distinct !{!9212, !291}
!9213 = distinct !{!9213, !291, !790, !791}
!9214 = distinct !{!9214, !291, !790, !791}
!9215 = distinct !{!9215, !291, !790}
!9216 = distinct !{!9216, !291, !790, !791}
!9217 = distinct !{!9217, !291, !790}
!9218 = distinct !{!9218, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_"}
!9219 = distinct !{!9219, !9218, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!9220 = distinct !{!9220, !9218, !"_ZSt19__relocate_object_aINSt7__cxx1112regex_traitsIcE10_RegexMaskES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!9221 = distinct !{!9221, !291, !790, !791}
!9222 = distinct !{!9222, !291, !791, !790}
!9223 = !{!9219}
!9224 = !{!9220}
!9225 = distinct !{!9225, !1104}
!9226 = distinct !{!9226, !291}
!9227 = distinct !{!9227, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc"}
!9228 = distinct !{!9228, !9227, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc: argument 0"}
!9229 = !{!9228}
!9230 = distinct !{!9230, !291, !790, !791}
!9231 = distinct !{!9231, !291, !790}
!9232 = distinct !{!9232, !291}
!9233 = distinct !{!9233, !291}
!9234 = distinct !{!9234, !291}
!9235 = distinct !{!9235, !291}
!9236 = !{!"_ZTSZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEEUlcE_", !3677, i64 0, !3620, i64 8}
!9237 = !{!9236, !3677, i64 0}
!9238 = !{!9236, !3620, i64 8}
!9239 = !{!"_ZTSZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEEUlvE_", !3677, i64 0, !3620, i64 8}
!9240 = !{!9239, !3677, i64 0}
!9241 = !{!9239, !3620, i64 8}
!9242 = distinct !{!9242, i1 false, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_"}
!9243 = distinct !{!9243, !9242, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!9244 = distinct !{!9244, !9242, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!9245 = distinct !{!9245, !291, !790, !791}
!9246 = distinct !{!9246, !291, !790, !791}
!9247 = distinct !{!9247, !291, !791, !790}
!9248 = !{!9243}
!9249 = !{!9244}
!9250 = distinct !{!9250, !291}
!9251 = distinct !{null}
!9252 = distinct !{!9252, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!9253 = distinct !{!9253, !9252, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!9254 = distinct !{!9254, !9252, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!9255 = distinct !{!9255, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!9256 = distinct !{!9256, !9255, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!9257 = distinct !{!9257, !9255, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!9258 = !{!9253}
!9259 = !{!9254}
!9260 = !{!9253, !9254}
!9261 = !{!9256}
!9262 = !{!9257}
!9263 = !{!9256, !9257}
!9264 = !{!"_ZTSZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEEUlcE_", !3677, i64 0, !3635, i64 8}
!9265 = !{!9264, !3677, i64 0}
!9266 = !{!9264, !3635, i64 8}
!9267 = !{!"_ZTSZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEEUlvE_", !3677, i64 0, !3635, i64 8}
!9268 = !{!9267, !3677, i64 0}
!9269 = !{!9267, !3635, i64 8}
!9270 = distinct !{!9270, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc"}
!9271 = distinct !{!9271, !9270, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc: argument 0"}
!9272 = distinct !{!9272, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc"}
!9273 = distinct !{!9273, !9272, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc: argument 0"}
!9274 = distinct !{!9274, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!9275 = distinct !{!9275, !9274, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!9276 = !{!9271}
!9277 = !{!9273}
!9278 = !{!9275}
!9279 = distinct !{!9279, i1 false, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!9280 = distinct !{!9280, !9279, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!9281 = distinct !{!9281, !9279, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!9282 = distinct !{!9282, !291}
!9283 = distinct !{!9283, i1 false, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!9284 = distinct !{!9284, !9283, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!9285 = distinct !{!9285, !9283, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!9286 = !{!9280}
!9287 = !{!9281}
!9288 = !{!9280, !9281}
!9289 = !{!9284}
!9290 = !{!9285}
!9291 = !{!9284, !9285}
!9292 = !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc}
!9293 = distinct !{!9293, i1 false, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_"}
!9294 = distinct !{!9294, !9293, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!9295 = distinct !{!9295, !9293, !"_ZSt19__relocate_object_aISt4pairIccES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!9296 = distinct !{!9296, !291, !790, !791}
!9297 = distinct !{!9297, !291, !790, !791}
!9298 = distinct !{!9298, !291, !791, !790}
!9299 = !{!9294}
!9300 = !{!9295}
!9301 = !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc}
!9302 = distinct !{!9302, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc"}
!9303 = distinct !{!9303, !9302, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc: argument 0"}
!9304 = distinct !{!9304, i1 false, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc"}
!9305 = distinct !{!9305, !9304, !"_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc: argument 0"}
!9306 = distinct !{!9306, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!9307 = distinct !{!9307, !9306, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!9308 = !{!9303}
!9309 = !{!9305}
!9310 = !{!9307}
!9311 = distinct !{!9311, i1 false, !"_ZNSt5dequeIlSaIlEE3endEv"}
!9312 = distinct !{!9312, !9311, !"_ZNSt5dequeIlSaIlEE3endEv: argument 0"}
!9313 = distinct !{!9313, !291}
!9314 = distinct !{!9314, !291}
!9315 = !{!9312}
!9316 = !{!3679, !301, i64 0}
!9317 = distinct !{!9317, !291}
!9318 = distinct !{!9318, !291}
!9319 = distinct !{!9319, !291}
!9320 = !{!3590, !2458, i64 16}
!9321 = !{!3681, !3681, i64 0}
!9322 = distinct !{!9322, !291}
!9323 = distinct !{!9323, !291}
!9324 = !{!3687, !3685, i64 0}
!9325 = distinct !{!9325, !291}
!9326 = !{!419, !383, i64 48}
!9327 = distinct !{!9327, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9328 = distinct !{!9328, !9327, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9329 = distinct !{!9329, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9330 = distinct !{!9330, !9329, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9331 = !{!9328}
!9332 = !{!9330}
!9333 = !{!3689, !2745, i64 0}
!9334 = distinct !{!9334, !291}
!9335 = distinct !{!9335, i1 false, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!9336 = distinct !{!9336, !9335, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!9337 = distinct !{!9337, i1 false, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_"}
!9338 = distinct !{!9338, !9337, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!9339 = distinct !{null}
!9340 = distinct !{!9340, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9341 = distinct !{!9341, !9340, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9342 = distinct !{!9342, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9343 = distinct !{!9343, !9342, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9344 = !{!9336}
!9345 = !{!9338}
!9346 = !{!9338, !9336}
!9347 = !{!9341, !9338, !9336}
!9348 = !{!9343, !9338, !9336}
!9349 = distinct !{!9349, i1 false, !"_ZN7coro_io10async_readIN4asio3ssl6streamIRNS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEEENS1_15basic_streambufISaIcEEEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_RT0_m"}
!9350 = distinct !{!9350, !9349, !"_ZN7coro_io10async_readIN4asio3ssl6streamIRNS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEEENS1_15basic_streambufISaIcEEEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_RT0_m: argument 0"}
!9351 = distinct !{!9351, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE17get_return_objectEv"}
!9352 = distinct !{!9352, !9351, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE17get_return_objectEv: argument 0"}
!9353 = distinct !{!9353, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE39get_return_object_on_allocation_failureEv"}
!9354 = distinct !{!9354, !9353, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE39get_return_object_on_allocation_failureEv: argument 0"}
!9355 = distinct !{!9355, i1 false, !"_ZN7coro_io10async_readIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEENS1_15basic_streambufISaIcEEEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_RT0_m"}
!9356 = distinct !{!9356, !9355, !"_ZN7coro_io10async_readIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEENS1_15basic_streambufISaIcEEEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_RT0_m: argument 0"}
!9357 = distinct !{!9357, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE17get_return_objectEv"}
!9358 = distinct !{!9358, !9357, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE17get_return_objectEv: argument 0"}
!9359 = distinct !{!9359, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE39get_return_object_on_allocation_failureEv"}
!9360 = distinct !{!9360, !9359, !"_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE39get_return_object_on_allocation_failureEv: argument 0"}
!9361 = !{!9350}
!9362 = !{!9352, !9350}
!9363 = !{!9354, !9350}
!9364 = !{!9356}
!9365 = !{!9358, !9356}
!9366 = !{!9360, !9356}
!9367 = distinct !{!9367, i1 false, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_1JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!9368 = distinct !{!9368, !9367, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_1JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!9369 = distinct !{!9369, i1 false, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_1JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_"}
!9370 = distinct !{!9370, !9369, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ23chunked_upload_downloadvE3$_1JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!9371 = distinct !{null}
!9372 = distinct !{!9372, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9373 = distinct !{!9373, !9372, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9374 = distinct !{!9374, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9375 = distinct !{!9375, !9374, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9376 = !{!9368}
!9377 = !{!9370}
!9378 = !{!9370, !9368}
!9379 = !{!9373, !9370, !9368}
!9380 = !{!9375, !9370, !9368}
!9381 = distinct !{!9381, !291}
!9382 = distinct !{null, null}
!9383 = distinct !{!9383, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9384 = distinct !{!9384, !9383, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9385 = distinct !{!9385, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9386 = distinct !{!9386, !9385, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9387 = !{!9384}
!9388 = !{!9386}
!9389 = distinct !{!9389, i1 false, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ13use_websocketvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!9390 = distinct !{!9390, !9389, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ13use_websocketvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!9391 = distinct !{!9391, i1 false, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ13use_websocketvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_"}
!9392 = distinct !{!9392, !9391, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ13use_websocketvE3$_0JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!9393 = distinct !{null}
!9394 = distinct !{!9394, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9395 = distinct !{!9395, !9394, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9396 = distinct !{!9396, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9397 = distinct !{!9397, !9396, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9398 = !{!9390}
!9399 = !{!9392}
!9400 = !{!9392, !9390}
!9401 = !{!9395, !9392, !9390}
!9402 = !{!9397, !9392, !9390}
!9403 = distinct !{!9403, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!9404 = distinct !{!9404, !9403, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!9405 = distinct !{!9405, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!9406 = distinct !{!9406, !9405, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!9407 = !{!9404}
!9408 = !{!9406}
!9409 = distinct !{!9409, !291}
!9410 = distinct !{!9410, !291}
!9411 = distinct !{!9411, i1 false, !"_ZN7cinatra15radix_tree_node9get_childEc"}
!9412 = distinct !{!9412, !9411, !"_ZN7cinatra15radix_tree_node9get_childEc: argument 0:thread"}
!9413 = distinct !{!9413, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9414 = distinct !{!9414, !9413, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9415 = distinct !{!9415, !9411, !"_ZN7cinatra15radix_tree_node9get_childEc: argument 0"}
!9416 = distinct !{!9416, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9417 = distinct !{!9417, !9416, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9418 = distinct !{!9418, i1 false, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!9419 = distinct !{!9419, !9418, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!9420 = distinct !{!9420, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9421 = distinct !{!9421, !9420, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9422 = distinct !{!9422, i1 false, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!9423 = distinct !{!9423, !9422, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!9424 = distinct !{!9424, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9425 = distinct !{!9425, !9424, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9426 = distinct !{!9426, i1 false, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!9427 = distinct !{!9427, !9426, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!9428 = distinct !{!9428, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9429 = distinct !{!9429, !9428, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9430 = distinct !{!9430, i1 false, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!9431 = distinct !{!9431, !9430, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!9432 = distinct !{!9432, !291}
!9433 = distinct !{!9433, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9434 = distinct !{!9434, !9433, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9435 = distinct !{!9435, i1 false, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!9436 = distinct !{!9436, !9435, !"_ZSt11make_sharedIN7cinatra15radix_tree_nodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!9437 = distinct !{!9437, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9438 = distinct !{!9438, !9437, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!9439 = !{!9412}
!9440 = !{!9414}
!9441 = !{!9415}
!9442 = !{!9417}
!9443 = !{!9419}
!9444 = !{!9421}
!9445 = !{!9423}
!9446 = !{!9425}
!9447 = !{!9427}
!9448 = !{!9429}
!9449 = !{!9431}
!9450 = !{!9434}
!9451 = !{!9436}
!9452 = !{!9438}
!9453 = distinct !{null, null, null, null, null, ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!9454 = !{i64 0, i64 8, !1403}
!9455 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!9456 = distinct !{!9456, i1 false, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_"}
!9457 = distinct !{!9457, !9456, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!9458 = distinct !{!9458, !9456, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!9459 = distinct !{!9459, !291}
!9460 = distinct !{!9460, i1 false, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_"}
!9461 = distinct !{!9461, !9460, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!9462 = distinct !{!9462, !9460, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1111basic_regexIcNS1_12regex_traitsIcEEEESt8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!9463 = !{!9457}
!9464 = !{!9458}
!9465 = !{!9457, !9458}
!9466 = !{!9461}
!9467 = !{!9462}
!9468 = !{!9461, !9462}
!9469 = distinct !{!9469, !291}
!9470 = !{!3704, !3702, i64 0}
!9471 = distinct !{!9471, !291}
!9472 = !{!417, !383, i64 48}
!9473 = distinct !{!9473, i1 false, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_4JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!9474 = distinct !{!9474, !9473, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_4JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!9475 = distinct !{!9475, i1 false, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_4JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_"}
!9476 = distinct !{!9476, !9475, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_4JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!9477 = distinct !{null}
!9478 = distinct !{!9478, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9479 = distinct !{!9479, !9478, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9480 = distinct !{!9480, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9481 = distinct !{!9481, !9480, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9482 = !{!9474}
!9483 = !{!9476}
!9484 = !{!9476, !9474}
!9485 = !{!9479, !9476, !9474}
!9486 = !{!9481, !9476, !9474}
!9487 = distinct !{!9487, i1 false, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_5JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!9488 = distinct !{!9488, !9487, !"_ZSt10__invoke_rIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_5JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!9489 = distinct !{!9489, i1 false, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_5JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_"}
!9490 = distinct !{!9490, !9489, !"_ZSt13__invoke_implIN12async_simple4coro4LazyIvEERZ11basic_usagevE3$_5JRN7cinatra17coro_http_requestERNS6_18coro_http_responseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!9491 = distinct !{null}
!9492 = distinct !{!9492, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!9493 = distinct !{!9493, !9492, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!9494 = distinct !{!9494, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!9495 = distinct !{!9495, !9494, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!9496 = !{!9488}
!9497 = !{!9490}
!9498 = !{!9490, !9488}
end_hunk_6
