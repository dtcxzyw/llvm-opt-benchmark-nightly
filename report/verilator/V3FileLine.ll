Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FileLine?download=true
inline.NumInlined: 1804
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10lastLinenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !160
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine9singletonEv.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8FileLine9singletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %_ZN8FileLine9singletonEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  resume { ptr, i32 } %i.e

_ZN8FileLine9singletonEv.exit:                    ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !161
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 104), align 8, !tbaa !32, !noalias !326 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 112), align 8, !tbaa !33, !noalias !326
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 128), align 8, !tbaa !31, !noalias !326
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 5
  %i.p = add nsw i64 %i.o, %i.h                   ; 5 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.r = icmp samesign ult i64 %i.p, 16
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

bb.h:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.p, 4
  br label %bb.j

bb.i:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.u = ashr i64 %i.p, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i64 [ %i.t, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !108, !noalias !326
  %i.y = shl nsw i64 %i.v, 4
  %i.z = sub nsw i64 %i.p, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.z
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit: ; preds = %bb.g, %bb.j
  %storemerge.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %i.s, %bb.g ]
  ret ptr %storemerge.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8FileLine13lineDirectiveEPKcRi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !25
  store i8 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !26
  invoke void @_ZN8FileLine18lineDirectiveParseEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !26
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN8FileLine9singletonEv.exit.i, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN8FileLine9singletonEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %_ZN8FileLine9singletonEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %.body

_ZN8FileLine9singletonEv.exit.i:                  ; preds = %bb.f, %bb.d, %bb.c
  %i.j = invoke noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN8FileLine9singletonEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.j, ptr %i.k, align 2, !tbaa !161
  %i.l = load i32, ptr %i.a, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.n, align 8, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, -72057589759737856
  %i.r = or disjoint i64 %i.q, 4294967297
  store i64 %i.r, ptr %i.o, align 8
  br label %bb.m

bb.i:                                             ; preds = %_ZN8FileLine9singletonEv.exit.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.t = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.v = load i64, ptr %i.b, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !160  ; 2 uses
  %i.z = icmp eq i16 %i.y, -1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !159
  %i.ac = add nsw i32 %i.ab, 65536
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !159
  br label %_ZN8FileLine9linenoIncEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = add nuw i16 %i.y, 1
  br label %_ZN8FileLine9linenoIncEv.exit

_ZN8FileLine9linenoIncEv.exit:                    ; preds = %bb.k, %bb.l
  %storemerge.i = phi i16 [ %i.ad, %bb.l ], [ 0, %bb.k ]
  store i16 %storemerge.i, ptr %i.x, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -72057589742960641
  %i.ah = or disjoint i64 %i.ag, 4294967296
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %4 = and i32 %i.aj, -2
  %i.ak = add i32 %4, 2
  %5 = and i32 %i.aj, 1
  %6 = or disjoint i32 %i.ak, %5
  store i32 %6, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN8FileLine9linenoIncEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.al = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.m
  %i.an = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8FileLine18lineDirectiveParseEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !15      ; 2 uses
  %.not164 = icmp eq i8 %i.b, 0
  br i1 %.not164, label %.critedge6, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %i.g, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.071165 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isspace(i32 noundef %i.d) #27
  %.not85 = icmp eq i32 %i.e, 0
  br i1 %.not85, label %.lr.ph170, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.071165, i64 1 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge6, label %.lr.ph, !llvm.loop !327

.lr.ph170:                                        ; preds = %.lr.ph, %bb.c
  %i.h = phi i8 [ %i.l, %bb.c ], [ %i.c, %.lr.ph ] ; 2 uses
  %.172169 = phi ptr [ %i.k, %bb.c ], [ %.071165, %.lr.ph ] ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @isspace(i32 noundef %i.i) #27
  %.not87 = icmp eq i32 %i.j, 0
  br i1 %.not87, label %bb.c, label %.lr.ph176

bb.c:                                             ; preds = %.lr.ph170
  %i.k = getelementptr inbounds nuw i8, ptr %.172169, i64 1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 2 uses
  %.not86 = icmp eq i8 %i.l, 0
  br i1 %.not86, label %.critedge6, label %.lr.ph170, !llvm.loop !328

.lr.ph176:                                        ; preds = %.lr.ph170, %bb.d
  %i.m = phi i8 [ %i.q, %bb.d ], [ %i.h, %.lr.ph170 ] ; 3 uses
  %.273175 = phi ptr [ %i.p, %bb.d ], [ %.172169, %.lr.ph170 ] ; 3 uses
  %i.n = sext i8 %i.m to i32
  %i.o = tail call i32 @isspace(i32 noundef %i.n) #27
  %.not89 = icmp eq i32 %i.o, 0
  br i1 %.not89, label %.lr.ph184, label %bb.d

bb.d:                                             ; preds = %.lr.ph176
  %i.p = getelementptr inbounds nuw i8, ptr %.273175, i64 1 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15    ; 2 uses
  %.not88 = icmp eq i8 %i.q, 0
  br i1 %.not88, label %.critedge6, label %.lr.ph176, !llvm.loop !329

.lr.ph184:                                        ; preds = %.lr.ph176, %bb.e
  %i.r = phi i8 [ %i.v, %bb.e ], [ %i.m, %.lr.ph176 ] ; 2 uses
  %.374183 = phi ptr [ %i.u, %bb.e ], [ %.273175, %.lr.ph176 ] ; 2 uses
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @isspace(i32 noundef %i.s) #27
  %.not91 = icmp eq i32 %i.t, 0
  br i1 %.not91, label %bb.e, label %.critedge6.loopexit

bb.e:                                             ; preds = %.lr.ph184
  %i.u = getelementptr inbounds nuw i8, ptr %.374183, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15    ; 2 uses
  %.not90 = icmp eq i8 %i.v, 0
  br i1 %.not90, label %.critedge6.loopexit, label %.lr.ph184, !llvm.loop !330

.critedge6.loopexit:                              ; preds = %bb.e, %.lr.ph184
  %.ph = phi i8 [ 0, %bb.e ], [ %i.r, %.lr.ph184 ]
  %.374.lcssa.ph = phi ptr [ %i.u, %bb.e ], [ %.374183, %.lr.ph184 ]
  %i.w = sext i8 %i.m to i32
  %i.x = add nsw i32 %i.w, -48
  %i.y = icmp ult i32 %i.x, 10
  br label %.critedge6

.critedge6:                                       ; preds = %bb.b, %bb.c, %bb.d, %.critedge6.loopexit, %bb.a
  %.273.lcssa236 = phi ptr [ %.273175, %.critedge6.loopexit ], [ %1, %bb.a ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %isdigittmp = phi i1 [ %i.y, %.critedge6.loopexit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ]
  %i.z = phi i8 [ %.ph, %.critedge6.loopexit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  %.374.lcssa = phi ptr [ %.374.lcssa.ph, %.critedge6.loopexit ], [ %1, %bb.a ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %i.aa = ptrtoint ptr %.374.lcssa to i64
  %i.ab = ptrtoint ptr %.273.lcssa236 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull %.273.lcssa236, ptr noundef nonnull @.str.28, i64 noundef %i.ac) #27
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !160
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add i32 %i.ag, 1
  %i.al = add i32 %i.ak, %i.aj
  br label %bb.i

bb.g:                                             ; preds = %.critedge6
  br i1 %isdigittmp, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.am = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.273.lcssa236, ptr noundef null, i32 noundef 10) #24, !inline_history !331
  %i.an = trunc i64 %i.am to i32
  %.pre = load i8, ptr %.374.lcssa, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ao = phi i8 [ %i.z, %bb.f ], [ %.pre, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.al, %bb.f ], [ %i.an, %bb.h ]
  %.not92188 = icmp eq i8 %i.ao, 0
  br i1 %.not92188, label %.thread, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.i, %bb.j
  %i.ap = phi i8 [ %i.at, %bb.j ], [ %i.ao, %bb.i ] ; 2 uses
  %.475189 = phi ptr [ %i.as, %bb.j ], [ %.374.lcssa, %bb.i ] ; 2 uses
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #27
  %.not93 = icmp eq i32 %i.ar, 0
  br i1 %.not93, label %.critedge8, label %bb.j

bb.j:                                             ; preds = %.lr.ph190
  %i.as = getelementptr inbounds nuw i8, ptr %.475189, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15  ; 2 uses
  %.not92 = icmp eq i8 %i.at, 0
  br i1 %.not92, label %.thread, label %.lr.ph190, !llvm.loop !332

.critedge8:                                       ; preds = %.lr.ph190
  %.not94 = icmp eq i8 %i.ap, 34
  br i1 %.not94, label %bb.k, label %.thread

bb.k:                                             ; preds = %.critedge8
  %i.au = getelementptr inbounds nuw i8, ptr %.475189, i64 1 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.576 = phi ptr [ %i.au, %bb.k ], [ %i.aw, %bb.m ] ; 4 uses
  %i.av = load i8, ptr %.576, align 1, !tbaa !15
  switch i8 %i.av, label %bb.m [
    i8 34, label %bb.n
    i8 0, label %.thread
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.576, i64 1
  br label %bb.l, !llvm.loop !333

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !25
  store i8 0, ptr %i.ax, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bb = ptrtoint ptr %.576 to i64
  %i.bc = ptrtoint ptr %i.au to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !22
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.n
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ac    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bf, ptr %7, align 8, !tbaa !24
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.n
  %i.bh = phi ptr [ %i.bf, %.noexc ], [ %i.az, %bb.n ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE:bb.a
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !51, !noalias !375 ; 3 uses
  %.not.i.not.i.i176 = icmp eq ptr %i.jf, null
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !375 ; 2 uses
  %i.ji = icmp ugt ptr %i.jf, %i.jh
  %.08.i.i.i177 = select i1 %i.ji, ptr %i.jf, ptr %i.jh ; 2 uses
  %.not5.i.i178 = icmp eq ptr %.08.i.i.i177, null
  %.not.i.i179 = select i1 %.not.i.not.i.i176, i1 true, i1 %.not5.i.i178
  br i1 %.not.i.i179, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !52, !noalias !375 ; 2 uses
  %i.jl = ptrtoint ptr %.08.i.i.i177 to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.jk, i64 noundef %i.jn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit185 unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %16, align 8, !tbaa !24, !alias.scope !375 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.jc
  br i1 %i.jr, label %.body183, label %.body183.sink.split

bb.ci:                                            ; preds = %bb.cf
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.js)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit185 unwind label %bb.ch

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit185: ; preds = %bb.ci, %bb.cg
  invoke void @_ZN7V3Error10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EEP8FileLine(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %0)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit185
  %i.jt = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.jc
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.cj
  %i.jv = load i64, ptr %i.jc, align 8, !tbaa !15
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.jx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.jx, ptr %9, align 8, !tbaa !54
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.jz = getelementptr i8, ptr %i.jx, i64 -24    ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds i8, ptr %9, i64 %i.ka
  store ptr %i.jy, ptr %i.kb, align 8, !tbaa !54
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kc, align 8, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !24 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !15
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kc, align 8, !tbaa !54
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kj) #24
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  store ptr %i.jx, ptr %4, align 8, !tbaa !54
  %i.kl = load i64, ptr %i.jz, align 8
  %i.km = getelementptr inbounds i8, ptr %4, i64 %i.kl
  store ptr %i.jy, ptr %i.km, align 8, !tbaa !54
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kn, align 8, !tbaa !54
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !24 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !15
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit191

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit191: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kn, align 8, !tbaa !54
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ku) #24
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr %i.jx, ptr %3, align 8, !tbaa !54
  %i.kw = load i64, ptr %i.jz, align 8
  %i.kx = getelementptr inbounds i8, ptr %3, i64 %i.kw
  store ptr %i.jy, ptr %i.kx, align 8, !tbaa !54
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ky, align 8, !tbaa !54
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !24 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit191
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !15
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit194: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ky, align 8, !tbaa !54
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lf) #24
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.ck:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit185
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.jc
  br i1 %i.lj, label %.body183, label %.body183.sink.split

.body183.sink.split:                              ; preds = %bb.ck, %bb.ch
  %.sink261 = phi ptr [ %i.jq, %bb.ch ], [ %i.li, %bb.ck ]
  %.pn46.ph = phi { ptr, i32 } [ %i.jp, %bb.ch ], [ %i.lh, %bb.ck ]
  %i.lk = load i64, ptr %i.jc, align 8, !tbaa !15
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %.sink261, i64 noundef %i.ll) #26
  br label %.body183

.body183:                                         ; preds = %.body183.sink.split, %bb.ck, %bb.ch
  %.pn46 = phi { ptr, i32 } [ %i.jp, %bb.ch ], [ %i.lh, %bb.ck ], [ %.pn46.ph, %.body183.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %.body120

.body120:                                         ; preds = %bb.an, %bb.av, %bb.ba, %bb.au, %.body183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %.body183 ], [ %.pn34.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.fn, %bb.an ], [ %i.fu, %bb.au ], [ %i.fv, %bb.av ], [ %i.fy, %bb.ba ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #24
  br label %bb.cl

bb.cl:                                            ; preds = %.body120, %bb.ac
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %.body120 ], [ %i.er, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.body73, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.f
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.cl ], [ %i.aa, %bb.f ], [ %.pn32, %.body73 ], [ %.pn30, %.body ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #24
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.e
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn, %bb.cm ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8FileLine12forwardTokenEPKcmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZZN8FileLine12forwardTokenEPKcmbE10s_tokenNum, align 4, !tbaa !26 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @_ZZN8FileLine12forwardTokenEPKcmbE10s_tokenNum, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.c, align 8, !tbaa !183
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted20 = load i64, ptr %i.f, align 8      ; 2 uses
  br i1 %3, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.promoted21 = load i32, ptr %i.g, align 4
  %.promoted19 = load i32, ptr %i.e, align 4
  %.promoted = load i16, ptr %i.d, align 8
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.f
  %i.h = phi i32 [ %i.w, %bb.f ], [ %.promoted21, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.i = phi i64 [ %i.x, %bb.f ], [ %.promoted20, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.j = phi i32 [ %i.y, %bb.f ], [ %.promoted19, %.lr.ph.split.us.preheader ] ; 4 uses
  %storemerge.i18.us = phi i16 [ %storemerge.i16.us, %bb.f ], [ %.promoted, %.lr.ph.split.us.preheader ] ; 4 uses
  %.014.us = phi ptr [ %i.z, %bb.f ], [ %1, %.lr.ph.split.us.preheader ] ; 2 uses
  %.0813.us = phi i64 [ %i.aa, %bb.f ], [ %2, %.lr.ph.split.us.preheader ]
  %i.k = load i8, ptr %.014.us, align 1, !tbaa !15
  switch i8 %i.k, label %bb.e [
    i8 0, label %.critedge
    i8 10, label %bb.b
    i8 13, label %bb.f
  ], !prof !377

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.l = icmp eq i16 %storemerge.i18.us, -1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i16 %storemerge.i18.us, 1
  br label %_ZN8FileLine9linenoIncEv.exit.us

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.j, 65536                  ; 2 uses
  store i32 %i.n, ptr %i.e, align 4, !tbaa !159
  br label %_ZN8FileLine9linenoIncEv.exit.us

_ZN8FileLine9linenoIncEv.exit.us:                 ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  %storemerge.i.us = phi i16 [ %i.m, %bb.c ], [ 0, %bb.d ] ; 2 uses
  store i16 %storemerge.i.us, ptr %i.d, align 8, !tbaa !160
  %i.p = and i64 %i.i, -72057589742960641
  %i.q = or disjoint i64 %i.p, 4294967296
  %4 = and i32 %i.h, -2
  %i.r = add i32 %4, 2
  %5 = and i32 %i.h, 1
  %6 = or disjoint i32 %i.r, %5                   ; 2 uses
  store i32 %6, ptr %i.g, align 4
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.s = add i64 %i.i, 4294967296
  %i.t = and i64 %i.s, 72057589742960640
  %i.u = and i64 %i.i, -72057589742960641
  %i.v = or disjoint i64 %i.t, %i.u
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8FileLine9linenoIncEv.exit.us, %bb.e
  %.sink = phi i64 [ %i.v, %bb.e ], [ %i.q, %_ZN8FileLine9linenoIncEv.exit.us ] ; 2 uses
  %.ph = phi i32 [ %i.h, %bb.e ], [ %6, %_ZN8FileLine9linenoIncEv.exit.us ]
  %.ph27 = phi i32 [ %i.j, %bb.e ], [ %i.o, %_ZN8FileLine9linenoIncEv.exit.us ]
  %storemerge.i16.us.ph = phi i16 [ %storemerge.i18.us, %bb.e ], [ %storemerge.i.us, %_ZN8FileLine9linenoIncEv.exit.us ]
  store i64 %.sink, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.lr.ph.split.us
  %i.w = phi i32 [ %i.h, %.lr.ph.split.us ], [ %.ph, %.sink.split ]
  %i.x = phi i64 [ %i.i, %.lr.ph.split.us ], [ %.sink, %.sink.split ]
  %i.y = phi i32 [ %i.j, %.lr.ph.split.us ], [ %.ph27, %.sink.split ]
  %storemerge.i16.us = phi i16 [ %storemerge.i18.us, %.lr.ph.split.us ], [ %storemerge.i16.us.ph, %.sink.split ]
  %i.z = getelementptr inbounds nuw i8, ptr %.014.us, i64 1
  %i.aa = add i64 %.0813.us, -1                   ; 2 uses
  %.not.us = icmp eq i64 %i.aa, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !376

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.ab = phi i64 [ %i.aj, %bb.i ], [ %.promoted20, %.lr.ph ] ; 4 uses
  %.014 = phi ptr [ %i.ak, %bb.i ], [ %1, %.lr.ph ] ; 2 uses
  %.0813 = phi i64 [ %i.al, %bb.i ], [ %2, %.lr.ph ]
  %i.ac = load i8, ptr %.014, align 1, !tbaa !15
  switch i8 %i.ac, label %bb.h [
    i8 0, label %.critedge
    i8 10, label %bb.g
    i8 13, label %bb.i
  ], !prof !377

.critedge:                                        ; preds = %bb.i, %.lr.ph.split, %bb.f, %.lr.ph.split.us, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph.split
  %i.ad = and i64 %i.ab, -72057589742960641
  %i.ae = or disjoint i64 %i.ad, 4294967296
  br label %.sink.split28

bb.h:                                             ; preds = %.lr.ph.split
  %i.af = add i64 %i.ab, 4294967296
  %i.ag = and i64 %i.af, 72057589742960640
  %i.ah = and i64 %i.ab, -72057589742960641
  %i.ai = or disjoint i64 %i.ag, %i.ah
  br label %.sink.split28

.sink.split28:                                    ; preds = %bb.h, %bb.g
  %.sink30 = phi i64 [ %i.ae, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  store i64 %.sink30, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split28, %.lr.ph.split
  %i.aj = phi i64 [ %i.ab, %.lr.ph.split ], [ %.sink30, %.sink.split28 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.al = add i64 %.0813, -1                      ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !376
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8FileLine12applyIgnoresEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN9V3Control12applyIgnoresEP8FileLine(ptr noundef nonnull %0)
  ret void
}

declare void @_ZN9V3Control12applyIgnoresEP8FileLine(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8FileLine25copyOrSameFileLineAppliedEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN9V3Control12applyIgnoresEP8FileLine(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.a = tail call noundef ptr @_ZN8FileLine18copyOrSameFileLineEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8FileLine18copyOrSameFileLineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN8FileLine18copyOrSameFileLineEvE10s_lastNewp, align 8, !tbaa !184 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK8FileLineeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZNK8FileLineeqERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZNK8FileLineeqERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = xor i64 %i.o, %i.m                       ; 2 uses
  %i.q = and i64 %i.p, 16777215
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZNK8FileLineeqERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load i16, ptr %i.s, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i16, ptr %i.u, align 8, !tbaa !160
  %i.w = icmp eq i16 %i.t, %i.v
  %i.x = and i64 %i.p, 72057589742960640
  %i.y = icmp eq i64 %i.x, 0
  %or.cond.i = and i1 %i.y, %i.w
  br i1 %or.cond.i, label %bb.f, label %_ZNK8FileLineeqERKS_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !161
  %i.ad = icmp eq i16 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK8FileLineeqERKS_.exit, label %_ZNK8FileLineeqERKS_.exit.thread

_ZNK8FileLineeqERKS_.exit:                        ; preds = %bb.f
  %i.ae = load i16, ptr %i.a, align 8, !tbaa !185
  %i.af = load i16, ptr %0, align 8, !tbaa !185
  %i.ag = icmp eq i16 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNK8FileLineeqERKS_.exit.thread

_ZNK8FileLineeqERKS_.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZNK8FileLineeqERKS_.exit, %bb.a
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 8 uses
  %i.ai = load <2 x i16>, ptr %0, align 8, !tbaa !37
  store <2 x i16> %i.ai, ptr %i.ah, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load <2 x i32>, ptr %i.ak, align 4
  store <2 x i32> %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !159
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 72057589759737855
  store i64 %i.as, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i16, ptr %i.au, align 8, !tbaa !160
  store i16 %i.av, ptr %i.at, align 8, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !100
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !158 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN8FileLineC2EPS_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK8FileLineeqERKS_.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2EPS_.exit

_ZN8FileLineC2EPS_.exit:                          ; preds = %_ZNK8FileLineeqERKS_.exit.thread, %bb.g
  store ptr %i.ah, ptr @_ZZN8FileLine18copyOrSameFileLineEvE10s_lastNewp, align 8, !tbaa !184
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8FileLineeqERKS_.exit, %_ZN8FileLineC2EPS_.exit
  %.0 = phi ptr [ %i.ah, %_ZN8FileLineC2EPS_.exit ], [ %i.a, %_ZNK8FileLineeqERKS_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8FileLine12filebasenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

declare void @_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8FileLine17filebasenameNoExtB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN4V3Os17filenameNonDirExtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

declare void @_ZN4V3Os17filenameNonDirExtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8FileLine18firstColumnLettersB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
end_hunk_1
