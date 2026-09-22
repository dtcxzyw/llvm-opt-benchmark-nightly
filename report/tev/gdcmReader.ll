Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmReader?download=true
inline.NumInlined: 6700
inline.NumDeleted: 985
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4gdcm12SmartPointerINS_4FileEED2Ev:bb.a
  br label %.body

bb.f:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN4gdcm12SmartPointerINS_4FileEE10UnRegisterEv.exit

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !190
  br label %_ZN4gdcm12SmartPointerINS_4FileEE10UnRegisterEv.exit

_ZN4gdcm12SmartPointerINS_4FileEE10UnRegisterEv.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.e ]
  %i.l = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm6ReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm6ReaderE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4gdcm6ReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = invoke noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv(ptr noundef nonnull align 8 dereferenceable(163) %i.c)
          to label %.noexc.i unwind label %bb.f, !inline_history !191

.noexc.i:                                         ; preds = %bb.b
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv.exit.i

bb.c:                                             ; preds = %.noexc.i
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %i.l = or i32 %i.k, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.i, i32 noundef %i.l)
          to label %_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv.exit.i unwind label %bb.f, !inline_history !191

_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv.exit.i: ; preds = %bb.c, %.noexc.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv.exit.i
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(184) %i.m) #26, !inline_history !191
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZN4gdcm6ReaderD2Ev.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29, !inline_history !191
  unreachable

_ZN4gdcm6ReaderD2Ev.exit:                         ; preds = %bb.a, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4gdcm12SmartPointerINS_4FileEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26, !inline_history !191
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm6Reader12ReadPreambleEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm6Reader19ReadMetaInformationEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm6Reader11ReadDataSetEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 21) i32 @_ZN4gdcm6Reader19GuessTransferSyntaxEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gdcm::Tag", align 4         ; 8 uses
  %i.a = alloca [3 x i8], align 1                 ; 8 uses
  %2 = alloca %"class.gdcm::VL", align 4          ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 0, ptr %1, align 4, !tbaa !41
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.g = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1, i64 noundef 4) ; 0 uses
  %i.h = load i16, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.i = and i16 %i.h, 1
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  switch i16 %i.h, label %bb.d [
    i16 8, label %bb.g
    i16 2048, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 106, ptr noundef nonnull @.str.2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.j) #26
  br label %bb.ah

bb.g:                                             ; preds = %bb.b, %bb.c
  %.sroa.025.0 = phi i32 [ 4321, %bb.c ], [ 1234, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.n, align 1, !tbaa !41
  %i.o = call noundef i64 @_ZN4gdcm2VR9GetVRTypeEPKc(ptr noundef nonnull %i.a)
  %.not10 = icmp eq i64 %i.o, 8589934593
  br i1 %.not10, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef zeroext i1 @_ZN4gdcm2VR6IsSwapEPKc(ptr noundef nonnull %i.a)
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #26
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef -2, i32 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !41
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4, !tbaa !43
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4) ; 0 uses
  %i.z = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split, label %bb.n

.split:                                           ; preds = %bb.m
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true) ; 2 uses
  %switch.tableidx = add nsw i32 %i.ac, -2        ; 2 uses
  %i.ad = icmp ult i32 %switch.tableidx, 25
  %switch.shifted = lshr i32 67372036, %i.ac
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.ad, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %.split, %bb.m
  %i.ae = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.q

switch.lookup:                                    ; preds = %.split
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4gdcm6Reader19GuessTransferSyntaxEv, i64 %i.ag
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

bb.q:                                             ; preds = %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.af, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ah

bb.r:                                             ; preds = %bb.a
  %i.ah = icmp ugt i16 %i.h, 2
  br i1 %i.ah, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 152, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #26
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !41
  %cond = icmp eq i16 %i.al, 16
  br i1 %cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.ao, align 1, !tbaa !41
  %i.ap = call noundef i64 @_ZN4gdcm2VR9GetVRTypeEPKc(ptr noundef nonnull %i.b)
  %.not12 = icmp eq i64 %i.ap, 8589934593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %.not12, label %.thread43, label %.thread34

bb.x:                                             ; preds = %bb.v
  %i.aq = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef nonnull @.str.2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aq) #26
  br label %bb.ah

bb.aa:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread34

bb.ab:                                            ; preds = %switch.lookup, %bb.l
  %.sroa.025.2.ph = phi i32 [ %.sroa.025.0, %bb.l ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  switch i32 %.sroa.025.2.ph, label %bb.ac [
    i32 4321, label %.thread43
    i32 1234, label %.thread43.fold.split
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.as = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 194, ptr noundef nonnull @.str.2)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #26
  br label %bb.ah

.thread34:                                        ; preds = %bb.w, %bb.aa
  %i.au = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @.str.2)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.thread34
  call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.ag:                                            ; preds = %.thread34
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.au) #26
  br label %bb.ah

.thread43.fold.split:                             ; preds = %bb.ab
  br label %.thread43

.thread43:                                        ; preds = %bb.ab, %.thread43.fold.split, %bb.w
  %.sroa.029.0 = phi i32 [ 20, %bb.ab ], [ 0, %bb.w ], [ 0, %.thread43.fold.split ]
  %i.aw = extractvalue { i64, i64 } %i.e, 1
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef %i.aw, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i32 %.sroa.029.0

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.z, %bb.u, %bb.q, %bb.f
  %.pn15 = phi { ptr, i32 } [ %i.aj, %bb.u ], [ %i.at, %bb.ae ], [ %i.av, %bb.ag ], [ %i.k, %bb.f ], [ %.pn, %bb.q ], [ %i.ar, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::logic_error") align 8 %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  resume { ptr, i32 } %.pn
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #26
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
end_hunk_0
