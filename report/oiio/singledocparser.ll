inline.NumInlined: 683
inline.NumDeleted: 301
begin_hunk_0_@_ZN4YAML15SingleDocParser13HandleFlowMapERNS_12EventHandlerE:bb.a
  call void @_ZdlPv(ptr noundef %i.bu) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !75
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45 ; 3 uses
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !82
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 508
  br label %_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit

_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit: ; preds = %bb.af, %bb.ag
  %storemerge.i.i.i = phi ptr [ %i.bv, %bb.af ], [ %i.cc, %bb.ag ]
  store ptr %storemerge.i.i.i, ptr %i.br, align 8, !tbaa !78
  ret void

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %bb.i, %bb.ad
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn58, %bb.i ], [ %i.s, %bb.h ], [ %.pn39.pn.pn, %bb.ad ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn43.pn.pn

bb.ai:                                            ; preds = %bb.aa, %bb.t, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15SingleDocParser16HandleCompactMapERNS_12EventHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.YAML::Mark", align 4       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 5, ptr %i.a, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  %.not.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.e, align 4, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.i, ptr %i.d, align 8, !tbaa !78
  br label %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt5dequeIN4YAML14CollectionType5valueESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit

_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.l = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4YAML7Scanner4peekEv(ptr noundef nonnull align 8 dereferenceable(480) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !67
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  call void @_ZN4YAML7Scanner3popEv(ptr noundef nonnull align 8 dereferenceable(480) %i.n)
  call void @_ZN4YAML15SingleDocParser10HandleNodeERNS_12EventHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.p = call noundef zeroext i1 @_ZN4YAML7Scanner5emptyEv(ptr noundef nonnull align 8 dereferenceable(480) %i.o)
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.r = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4YAML7Scanner4peekEv(ptr noundef nonnull align 8 dereferenceable(480) %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %i.u = icmp eq i32 %i.t, 15
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  call void @_ZN4YAML7Scanner3popEv(ptr noundef nonnull align 8 dereferenceable(480) %i.v)
  call void @_ZN4YAML15SingleDocParser10HandleNodeERNS_12EventHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -4
  br label %_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ad) #23
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !75
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 3 uses
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 508
  br label %_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit

_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit: ; preds = %bb.h, %bb.i
  %storemerge.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %i.al, %bb.i ]
  store ptr %storemerge.i.i.i, ptr %i.aa, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15SingleDocParser25HandleCompactMapWithNoKeyERNS_12EventHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 5, ptr %i.a, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  %.not.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.e, align 4, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.i, ptr %i.d, align 8, !tbaa !78
  br label %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt5dequeIN4YAML14CollectionType5valueESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit

_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.l = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4YAML7Scanner4peekEv(ptr noundef nonnull align 8 dereferenceable(480) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %1, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 noundef 0)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !48, !nonnull !49, !align !50
  call void @_ZN4YAML7Scanner3popEv(ptr noundef nonnull align 8 dereferenceable(480) %i.q)
  call void @_ZN4YAML15SingleDocParser10HandleNodeERNS_12EventHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -4
  br label %_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit

bb.e:                                             ; preds = %_ZN4YAML15CollectionStack18PushCollectionTypeENS_14CollectionType5valueE.exit
  call void @_ZdlPv(ptr noundef %i.v) #23
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !75
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 3 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 508
  br label %_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit

_ZN4YAML15CollectionStack17PopCollectionTypeENS_14CollectionType5valueE.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.ad, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.s, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15SingleDocParser8ParseTagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"struct.YAML::Tag", align 8        ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.c = tail call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4YAML7Scanner4peekEv(ptr noundef nonnull align 8 dereferenceable(480) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.g, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #27
          to label %bb.s unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.f, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.f, label %bb.r

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #26
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4YAML3TagC1ERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(84) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  invoke void @_ZN4YAML3Tag9TranslateB5cxx11ERKNS_10DirectivesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 1 %i.o)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load ptr, ptr %5, align 8, !tbaa !7      ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t                   ; 2 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.u, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.u, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i = icmp eq ptr %5, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !92

6:                                                ; preds = %bb.i
  switch i64 %i.w, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %6
  %i.y = load i8, ptr %i.s, align 1, !tbaa !66
  store i8 %i.y, ptr %i.p, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %6
  %i.z = load i64, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !65
  %i.aa = load ptr, ptr %1, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !66
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %1, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !66
  store <2 x i64> %i.ad, ptr %i.d, align 8, !tbaa !66
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !66
  store <2 x i64> %i.ag, ptr %i.d, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %5, align 8, !tbaa !7
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %5, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %7 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.l ], [ %i.t, %bb.m ], [ %i.s, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !65
  store i8 0, ptr %7, align 1, !tbaa !66
  %i.ai = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN4YAML7Scanner3popEv(ptr noundef nonnull align 8 dereferenceable(480) %i.al)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4YAML3TagD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ar) #23
  br label %_ZN4YAML3TagD2Ev.exit

_ZN4YAML3TagD2Ev.exit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.o:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn13 = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.au, %bb.o ]
  call void @_ZN4YAML3TagD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.q
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.q ], [ %.pn21, %bb.f ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13.pn

bb.s:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15SingleDocParser11ParseAnchorERmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.c = tail call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4YAML7Scanner4peekEv(ptr noundef nonnull align 8 dereferenceable(480) %i.b) ; 3 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !68
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.e, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #27
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %.pn15, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn14

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !65
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN4YAML15SingleDocParser14RegisterAnchorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  store i64 %i.r, ptr %i.t, align 8, !tbaa !68
  br label %_ZN4YAML15SingleDocParser14RegisterAnchorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4YAML15SingleDocParser14RegisterAnchorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.r, %bb.i ], [ 0, %bb.h ]
  store i64 %.0.i, ptr %1, align 8, !tbaa !68
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  tail call void @_ZN4YAML7Scanner3popEv(ptr noundef nonnull align 8 dereferenceable(480) %i.u)
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN4YAML3TagC1ERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #8

declare void @_ZN4YAML3Tag9TranslateB5cxx11ERKNS_10DirectivesE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML3TagD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4YAML15SingleDocParser14RegisterAnchorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_0
