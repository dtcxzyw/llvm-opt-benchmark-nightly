inline.NumInlined: 2278
inline.NumDeleted: 956
begin_hunk_0_@_ZN6Assimp11COBImporter22UnsupportedChunk_AsciiERNS_12LineSplitterERKNS_3COB9ChunkInfoEPKc:bb.a
bb.o:                                             ; preds = %bb.l, %bb.p, %bb.i, %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.m, %bb.o
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.bq, %bb.m ] ; 2 uses
  %i.by = load ptr, ptr %4, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.w
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %.body17
  %i.ca = load i64, ptr %i.w, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.p:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6Assimp11COBImporter14ThrowExceptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %.body17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %eh.lpad-body18, %.body17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !alias.scope !145
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !alias.scope !145
  store i8 0, ptr %i.f, align 8, !alias.scope !145
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !145 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !145 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !145 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !145 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.f, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.aq, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.at) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %1 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.109)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #26
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(212) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 20 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !34, !align !35 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = and i64 %i.k, 4294967295
  %.not39 = icmp eq i64 %i.l, 0
  br i1 %.not39, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %.not21.i = icmp eq ptr %4, %i.r
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit
  %i.u = load i64, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.u, 4
  br i1 %.not.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit:   ; preds = %bb.b
  %i.v = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.w = load i32, ptr %i.v, align 1
  %i.x = icmp ne i32 1701667150, %i.w
  %i.y = zext i1 %i.x to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread34

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %scevgep.i.i.i = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %.0.i.i.i = phi ptr [ %i.v, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread ], [ %i.ae, %bb.e ] ; 4 uses
  %i.ad = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.ad, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.d, %bb.c
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %bb.d ], [ %.0.i.i.i, %bb.c ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.c
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.z
  br i1 %.not.i.i.i, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.c, !llvm.loop !79

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.ai, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ] ; 5 uses
  %i.af = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.af, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.107)
          to label %bb.g unwind label %common.resume

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #26
  resume { ptr, i32 } %i.ah

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !80

bb.h:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.aj = ptrtoint ptr %.1.i to i64
  %i.ak = sub i64 %i.ab, %i.aj
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.ak
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.al = phi i8 [ %i.af, %bb.h ], [ %.pre.i, %bb.k ]
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.h ], [ %i.am, %bb.k ] ; 3 uses
  switch i8 %i.al, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread: ; preds = %bb.i
  store ptr %i.p, ptr %4, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.z
  br i1 %.not.i.i7.i, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.am, align 1
  br label %bb.i, !llvm.loop !79

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.j
  store ptr %i.p, ptr %4, align 8
  %i.an = icmp eq ptr %i.z, null
  br i1 %i.an, label %.noexc, label %bb.l

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.103) #27
  unreachable

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  %.0.lcssa.i.i9.i61 = phi ptr [ %.0.i.i6.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread ], [ %scevgep.i.i5.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ] ; 3 uses
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i9.i61) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ao, ptr %i.b, align 8
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %4, align 8
  %i.ar = load i64, ptr %i.b, align 8
  store i64 %i.ar, ptr %i.p, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.l
  %i.as = phi ptr [ %i.aq, %.noexc.i ], [ %i.p, %bb.l ] ; 2 uses
  switch i64 %i.ao, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %.0.lcssa.i.i9.i61, align 1
  store i8 %i.at, ptr %i.as, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %.0.lcssa.i.i9.i61, i64 %i.ao, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.au = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.au, ptr %i.q, align 8
  %i.av = load ptr, ptr %4, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ax = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  %i.az = load ptr, ptr %4, align 8               ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.p                 ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %5, !prof !16

5:                                                ; preds = %bb.p
  switch i64 %i.bb, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %5
  %i.bd = load i8, ptr %i.az, align 1
  store i8 %i.bd, ptr %i.ax, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %5
  %i.be = load i64, ptr %i.q, align 8             ; 2 uses
  store i64 %i.be, ptr %i.t, align 8
  %i.bf = load ptr, ptr %i.r, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1
  %.pre.i24 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.az, ptr %i.r, align 8
  %i.bh = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bh, ptr %i.t, align 8
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.s, align 8
  store ptr %i.az, ptr %i.r, align 8
  %i.bj = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bj, ptr %i.t, align 8
  %.not.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ax, ptr %4, align 8
  store i64 %i.bi, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %6 = phi ptr [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ax, %bb.s ], [ %i.p, %bb.t ], [ %i.az, %bb.p ]
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %6, align 1
  %i.bk = load ptr, ptr %4, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.p
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bm = load i64, ptr %i.p, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bo = load ptr, ptr %i.r, align 8             ; 44 uses
  %i.bp = load i64, ptr %i.t, align 8             ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %.not6.i = icmp samesign eq i64 %i.bp, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %min.iters.check = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.bp, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 24
  %n.vec = and i64 %i.bp, -32                     ; 4 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue172, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue172 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %index ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep79.a = getelementptr i8, ptr %i.bs, i64 1
  %i.bt = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep80.a = getelementptr i8, ptr %i.bt, i64 2
  %i.bu = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep81.a = getelementptr i8, ptr %i.bu, i64 3
  %i.bv = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep82.a = getelementptr i8, ptr %i.bv, i64 4
  %i.bw = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep83.a = getelementptr i8, ptr %i.bw, i64 5
  %i.bx = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep84.a = getelementptr i8, ptr %i.bx, i64 6
  %i.by = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep85.a = getelementptr i8, ptr %i.by, i64 7
  %i.bz = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep86.a = getelementptr i8, ptr %i.bz, i64 8
  %i.ca = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep87.a = getelementptr i8, ptr %i.ca, i64 9
  %i.cb = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep88.a = getelementptr i8, ptr %i.cb, i64 10
  %i.cc = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep89.a = getelementptr i8, ptr %i.cc, i64 11
  %i.cd = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep90.a = getelementptr i8, ptr %i.cd, i64 12
  %i.ce = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep91.a = getelementptr i8, ptr %i.ce, i64 13
  %i.cf = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep92.a = getelementptr i8, ptr %i.cf, i64 14
  %i.cg = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep93.a = getelementptr i8, ptr %i.cg, i64 15
  %i.ch = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep94.a = getelementptr i8, ptr %i.ch, i64 16
  %i.ci = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep95.a = getelementptr i8, ptr %i.ci, i64 17
  %i.cj = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep96.a = getelementptr i8, ptr %i.cj, i64 18
  %i.ck = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep97.a = getelementptr i8, ptr %i.ck, i64 19
  %i.cl = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep98.a = getelementptr i8, ptr %i.cl, i64 20
  %i.cm = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep99.a = getelementptr i8, ptr %i.cm, i64 21
  %i.cn = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep100.a = getelementptr i8, ptr %i.cn, i64 22
  %i.co = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep101.a = getelementptr i8, ptr %i.co, i64 23
  %i.cp = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep102.a = getelementptr i8, ptr %i.cp, i64 24
  %i.cq = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep103.a = getelementptr i8, ptr %i.cq, i64 25
  %i.cr = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep104.a = getelementptr i8, ptr %i.cr, i64 26
  %i.cs = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep105.a = getelementptr i8, ptr %i.cs, i64 27
  %i.ct = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep106.a = getelementptr i8, ptr %i.ct, i64 28
  %i.cu = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep107.a = getelementptr i8, ptr %i.cu, i64 29
  %i.cv = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep108 = getelementptr i8, ptr %i.cv, i64 30
  %i.cw = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep109 = getelementptr i8, ptr %i.cw, i64 31
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load110 = load <16 x i8>, ptr %i.cx, align 1
  %i.cy = icmp eq <16 x i8> %wide.load, splat (i8 44) ; 16 uses
  %i.cz = icmp eq <16 x i8> %wide.load110, splat (i8 44) ; 16 uses
  %i.da = extractelement <16 x i1> %i.cy, i64 0
  br i1 %i.da, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.db = extractelement <16 x i1> %i.cy, i64 1
  br i1 %i.db, label %pred.store.if111.a, label %pred.store.continue112.a

pred.store.if111.a:                               ; preds = %pred.store.continue
  store i8 95, ptr %next.gep79.a, align 1
  br label %pred.store.continue112.a

pred.store.continue112.a:                         ; preds = %pred.store.if111.a, %pred.store.continue
  %i.dc = extractelement <16 x i1> %i.cy, i64 2
  br i1 %i.dc, label %pred.store.if113.a, label %pred.store.continue114.a

pred.store.if113.a:                               ; preds = %pred.store.continue112.a
  store i8 95, ptr %next.gep80.a, align 1
  br label %pred.store.continue114.a

pred.store.continue114.a:                         ; preds = %pred.store.if113.a, %pred.store.continue112.a
  %i.dd = extractelement <16 x i1> %i.cy, i64 3
  br i1 %i.dd, label %pred.store.if115.a, label %pred.store.continue116.a

pred.store.if115.a:                               ; preds = %pred.store.continue114.a
  store i8 95, ptr %next.gep81.a, align 1
  br label %pred.store.continue116.a

pred.store.continue116.a:                         ; preds = %pred.store.if115.a, %pred.store.continue114.a
  %i.de = extractelement <16 x i1> %i.cy, i64 4
  br i1 %i.de, label %pred.store.if117.a, label %pred.store.continue118.a

pred.store.if117.a:                               ; preds = %pred.store.continue116.a
  store i8 95, ptr %next.gep82.a, align 1
  br label %pred.store.continue118.a

pred.store.continue118.a:                         ; preds = %pred.store.if117.a, %pred.store.continue116.a
  %i.df = extractelement <16 x i1> %i.cy, i64 5
  br i1 %i.df, label %pred.store.if119.a, label %pred.store.continue120.a

pred.store.if119.a:                               ; preds = %pred.store.continue118.a
  store i8 95, ptr %next.gep83.a, align 1
  br label %pred.store.continue120.a

pred.store.continue120.a:                         ; preds = %pred.store.if119.a, %pred.store.continue118.a
  %i.dg = extractelement <16 x i1> %i.cy, i64 6
  br i1 %i.dg, label %pred.store.if121.a, label %pred.store.continue122.a

pred.store.if121.a:                               ; preds = %pred.store.continue120.a
  store i8 95, ptr %next.gep84.a, align 1
  br label %pred.store.continue122.a

pred.store.continue122.a:                         ; preds = %pred.store.if121.a, %pred.store.continue120.a
  %i.dh = extractelement <16 x i1> %i.cy, i64 7
  br i1 %i.dh, label %pred.store.if123.a, label %pred.store.continue124.a

pred.store.if123.a:                               ; preds = %pred.store.continue122.a
  store i8 95, ptr %next.gep85.a, align 1
  br label %pred.store.continue124.a

pred.store.continue124.a:                         ; preds = %pred.store.if123.a, %pred.store.continue122.a
  %i.di = extractelement <16 x i1> %i.cy, i64 8
  br i1 %i.di, label %pred.store.if125.a, label %pred.store.continue126.a

pred.store.if125.a:                               ; preds = %pred.store.continue124.a
  store i8 95, ptr %next.gep86.a, align 1
  br label %pred.store.continue126.a

pred.store.continue126.a:                         ; preds = %pred.store.if125.a, %pred.store.continue124.a
  %i.dj = extractelement <16 x i1> %i.cy, i64 9
  br i1 %i.dj, label %pred.store.if127.a, label %pred.store.continue128.a

pred.store.if127.a:                               ; preds = %pred.store.continue126.a
  store i8 95, ptr %next.gep87.a, align 1
  br label %pred.store.continue128.a

pred.store.continue128.a:                         ; preds = %pred.store.if127.a, %pred.store.continue126.a
  %i.dk = extractelement <16 x i1> %i.cy, i64 10
  br i1 %i.dk, label %pred.store.if129.a, label %pred.store.continue130.a

pred.store.if129.a:                               ; preds = %pred.store.continue128.a
  store i8 95, ptr %next.gep88.a, align 1
  br label %pred.store.continue130.a

pred.store.continue130.a:                         ; preds = %pred.store.if129.a, %pred.store.continue128.a
  %i.dl = extractelement <16 x i1> %i.cy, i64 11
  br i1 %i.dl, label %pred.store.if131.a, label %pred.store.continue132.a

pred.store.if131.a:                               ; preds = %pred.store.continue130.a
  store i8 95, ptr %next.gep89.a, align 1
  br label %pred.store.continue132.a

pred.store.continue132.a:                         ; preds = %pred.store.if131.a, %pred.store.continue130.a
  %i.dm = extractelement <16 x i1> %i.cy, i64 12
  br i1 %i.dm, label %pred.store.if133.a, label %pred.store.continue134.a
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.128) #27
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = add i64 %i.d, -8
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 56
  %i.ae = sub i64 %i.z, %i.e
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !158, !noalias !155
  %wide.load13 = load <2 x i64>, ptr %i.aj, align 4, !alias.scope !158, !noalias !155
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !155, !noalias !158
  store <2 x i64> %wide.load13, ptr %i.ak, align 4, !alias.scope !155, !noalias !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !158, !noalias !155
  store i64 %i.am, ptr %.012.i.i.i.i, align 4, !alias.scope !155, !noalias !158
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !161

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #28
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter17ReadString_BinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12StreamReaderILb0ELb0EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.108)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.s, %bb.g ], [ %i.g, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.h, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #26
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.a
  %i.i = load i16, ptr %i.b, align 1
  store ptr %i.c, ptr %i.a, align 8
  %i.j = sext i16 %i.i to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, i8 noundef signext 0)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %.not10 = icmp samesign eq i64 %i.m, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  ret void

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  %.sroa.07.011 = phi ptr [ %i.v, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit ], [ %i.k, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = icmp ugt ptr %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.108)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit:  ; preds = %.lr.ph
  %i.u = load i8, ptr %i.o, align 1
  store ptr %i.p, ptr %i.a, align 8
  store i8 %i.u, ptr %.sroa.07.011, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter24ReadBasicNodeInfo_BinaryERNS_3COB4NodeERNS_12StreamReaderILb0ELb0EEERKNS1_9ChunkInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(212) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 28 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp ugt ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.108)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.v, %.body, %bb.s, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.q, %bb.e ], [ %i.cf, %bb.s ], [ %eh.lpad-body, %.body ], [ %i.fc, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #26
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.a
  %i.j = load i16, ptr %i.c, align 1
  store ptr %i.d, ptr %i.b, align 8
  %i.k = sext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  tail call void @_ZN6Assimp11COBImporter17ReadString_BinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12StreamReaderILb0ELb0EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 95, ptr %i.a, align 1
  %i.r = load ptr, ptr %5, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %5, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 noundef signext 95)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = and i64 %i.k, 4294967295
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %5, i64 noundef %i.z)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.t ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ab, ptr %4, align 8, !alias.scope !171
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.ac, align 8, !alias.scope !171
  store i8 0, ptr %i.ab, align 8, !alias.scope !171
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !171 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !171 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !171 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !alias.scope !171 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ab, align 8, !alias.scope !171
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %.body

bb.k:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.j

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.k, %bb.i
  %i.au = load ptr, ptr %i.l, align 8             ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %4, align 8               ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  br i1 %i.ay, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  br i1 %i.ay, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %.not21.i = icmp eq ptr %4, %i.l
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !16

6:                                                ; preds = %bb.l
  switch i64 %i.az, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %6
  %i.bb = load i8, ptr %i.ax, align 1
  store i8 %i.bb, ptr %i.au, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %6
  %i.bc = load i64, ptr %i.ac, align 8            ; 2 uses
  store i64 %i.bc, ptr %i.n, align 8
  %i.bd = load ptr, ptr %i.l, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ax, ptr %i.l, align 8
  %i.bf = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.bf, ptr %i.n, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bg = load i64, ptr %i.av, align 8
  store ptr %i.ax, ptr %i.l, align 8
  %i.bh = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.bh, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %4, align 8
  store i64 %i.bg, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %7 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.o ], [ %i.ab, %bb.p ], [ %i.ax, %bb.l ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %7, align 1
  %i.bi = load ptr, ptr %4, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ab
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.ab, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bm, ptr %5, align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bo = getelementptr i8, ptr %i.bm, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %5, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.br, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.b, align 8
  %i.cc = load ptr, ptr %i.e, align 8
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %.preheader.split.us.preheader

bb.q:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.109)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #26
  br label %common.resume

.preheader.split.us.preheader:                    ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store float 1.000000e+00, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load ptr, ptr %i.e, align 8
  %i.cm = icmp ugt ptr %i.ck, %i.cl
  br i1 %i.cm, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us: ; preds = %.preheader.split.us.preheader
  %i.cn = load float, ptr %i.cj, align 1
  store ptr %i.ck, ptr %i.b, align 8
  store float %i.cn, ptr %i.cg, align 8
  %i.co = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = icmp ugt ptr %i.cp, %i.cq
  br i1 %i.cr, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us
  %i.cs = load float, ptr %i.co, align 1
  store ptr %i.cp, ptr %i.b, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.cs, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8
  %i.cx = icmp ugt ptr %i.cv, %i.cw
  br i1 %i.cx, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1
  %i.cy = load float, ptr %i.cu, align 1
  store ptr %i.cv, ptr %i.b, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load ptr, ptr %i.e, align 8
  %i.dd = icmp ugt ptr %i.db, %i.dc
  br i1 %i.dd, label %.split.us, label %.preheader.split.us24.preheader.1

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ao, %bb.j ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.preheader.split.us24.preheader.1:                ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2
  %i.df = load float, ptr %i.da, align 1
  store ptr %i.db, ptr %i.b, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.df, ptr %i.dg, align 4
  %i.dh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load ptr, ptr %i.e, align 8
  %i.dk = icmp ugt ptr %i.di, %i.dj
  br i1 %i.dk, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152: ; preds = %.preheader.split.us24.preheader.1
  %i.dl = load float, ptr %i.dh, align 1
  store ptr %i.di, ptr %i.b, align 8
  store float %i.dl, ptr %i.ci, align 8
  %i.dm = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.do = load ptr, ptr %i.e, align 8
  %i.dp = icmp ugt ptr %i.dn, %i.do
  br i1 %i.dp, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152
  %i.dq = load float, ptr %i.dm, align 1
  store ptr %i.dn, ptr %i.b, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.dq, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load ptr, ptr %i.e, align 8
  %i.dv = icmp ugt ptr %i.dt, %i.du
  br i1 %i.dv, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1
  %i.dw = load float, ptr %i.ds, align 1
  store ptr %i.dt, ptr %i.b, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.dw, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = icmp ugt ptr %i.dz, %i.ea
  br i1 %i.eb, label %.split.us, label %.preheader.split.us29.preheader.2

.preheader.split.us29.preheader.2:                ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1
  %i.ec = load float, ptr %i.dy, align 1
  store ptr %i.dz, ptr %i.b, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.ec, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load ptr, ptr %i.e, align 8
  %i.eh = icmp ugt ptr %i.ef, %i.eg
  br i1 %i.eh, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255: ; preds = %.preheader.split.us29.preheader.2
  %i.ei = load float, ptr %i.ee, align 1
  store ptr %i.ef, ptr %i.b, align 8
  store float %i.ei, ptr %i.ch, align 8
  %i.ej = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load ptr, ptr %i.e, align 8
  %i.em = icmp ugt ptr %i.ek, %i.el
  br i1 %i.em, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255
  %i.en = load float, ptr %i.ej, align 1
  store ptr %i.ek, ptr %i.b, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.en, ptr %i.eo, align 4
  %i.ep = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
end_hunk_1
