Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FileLine?download=true
inline.NumInlined: 1804
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8FileLine13lineDirectiveEPKcRi:bb.a
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
  %i.ak = and i32 %i.aj, -2
  %i.al = add i32 %i.ak, 2
  %i.am = and i32 %i.aj, 1
  %i.an = or disjoint i32 %i.al, %i.am
  store i32 %i.an, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN8FileLine9linenoIncEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ao = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.b
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.m
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #26
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
  %10 = add i8 %i.m, -48
  %i.w = icmp ult i8 %10, 10
  br label %.critedge6

.critedge6:                                       ; preds = %bb.b, %bb.c, %bb.d, %.critedge6.loopexit, %bb.a
  %.273.lcssa236 = phi ptr [ %.273175, %.critedge6.loopexit ], [ %1, %bb.a ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %isdigittmp = phi i1 [ %i.w, %.critedge6.loopexit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ]
  %i.x = phi i8 [ %.ph, %.critedge6.loopexit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  %.374.lcssa = phi ptr [ %.374.lcssa.ph, %.critedge6.loopexit ], [ %1, %bb.a ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %i.y = ptrtoint ptr %.374.lcssa to i64
  %i.z = ptrtoint ptr %.273.lcssa236 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull %.273.lcssa236, ptr noundef nonnull @.str.28, i64 noundef %i.aa) #27
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !160
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %i.ae, 1
  %i.aj = add i32 %i.ai, %i.ah
  br label %bb.i

bb.g:                                             ; preds = %.critedge6
  br i1 %isdigittmp, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.273.lcssa236, ptr noundef null, i32 noundef 10) #24, !inline_history !331
  %i.al = trunc i64 %i.ak to i32
  %.pre = load i8, ptr %.374.lcssa, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.am = phi i8 [ %i.x, %bb.f ], [ %.pre, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.aj, %bb.f ], [ %i.al, %bb.h ]
  %.not92188 = icmp eq i8 %i.am, 0
  br i1 %.not92188, label %.thread, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.i, %bb.j
  %i.an = phi i8 [ %i.ar, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %.475189 = phi ptr [ %i.aq, %bb.j ], [ %.374.lcssa, %bb.i ] ; 2 uses
  %i.ao = sext i8 %i.an to i32
  %i.ap = tail call i32 @isspace(i32 noundef %i.ao) #27
  %.not93 = icmp eq i32 %i.ap, 0
  br i1 %.not93, label %.critedge8, label %bb.j

bb.j:                                             ; preds = %.lr.ph190
  %i.aq = getelementptr inbounds nuw i8, ptr %.475189, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15  ; 2 uses
  %.not92 = icmp eq i8 %i.ar, 0
  br i1 %.not92, label %.thread, label %.lr.ph190, !llvm.loop !332

.critedge8:                                       ; preds = %.lr.ph190
  %.not94 = icmp eq i8 %i.an, 34
  br i1 %.not94, label %bb.k, label %.thread

bb.k:                                             ; preds = %.critedge8
  %i.as = getelementptr inbounds nuw i8, ptr %.475189, i64 1 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.576 = phi ptr [ %i.as, %bb.k ], [ %i.au, %bb.m ] ; 4 uses
  %i.at = load i8, ptr %.576, align 1, !tbaa !15
  switch i8 %i.at, label %bb.m [
    i8 34, label %bb.n
    i8 0, label %.thread
  ]

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.576, i64 1
  br label %bb.l, !llvm.loop !333

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.av, ptr %5, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !25
  store i8 0, ptr %i.av, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.az = ptrtoint ptr %.576 to i64
  %i.ba = ptrtoint ptr %i.as to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !22
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.n
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ac    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bd, ptr %7, align 8, !tbaa !24
  %i.be = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.be, ptr %i.ax, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.n
  %i.bf = phi ptr [ %i.bd, %.noexc ], [ %i.ax, %bb.n ] ; 2 uses
  switch i64 %i.bb, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bg = load i8, ptr %i.as, align 1, !tbaa !15
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !15
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.as, i64 %i.bb, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !25
  %i.bi = load ptr, ptr %7, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN7VString15unquoteSVStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ax
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bm = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.af

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.t unwind label %bb.aj      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.br = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.u, label %bb.y, !prof !47

bb.u:                                             ; preds = %bb.t
  %i.bt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %.body

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.t
  %i.bw = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.13, ptr nonnull @.str.46, i32 481, ptr null) ; 4 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !24    ; 3 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !335
  %i.ce = or i32 %i.cd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #24
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.bx, i64 noundef %i.cf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ch, ptr %8, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !25
  store i8 0, ptr %i.ch, align 8, !tbaa !15
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cj = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ch
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ab
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.preheader

bb.ac:                                            ; preds = %.noexc.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.ad:                                            ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ax
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ad
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.ac ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.co, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ak

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ch
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.ae
  %i.cw = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

bb.af:                                            ; preds = %.preheader, %bb.ag
  %.576.pn = phi ptr [ %.6, %bb.ag ], [ %.576, %.preheader ]
  %.6 = getelementptr inbounds nuw i8, ptr %.576.pn, i64 1 ; 3 uses
  %i.cy = load i8, ptr %.6, align 1, !tbaa !15    ; 3 uses
  %.not101 = icmp eq i8 %i.cy, 0
  br i1 %.not101, label %.critedge12.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = sext i8 %i.cy to i32
  %i.da = call i32 @isspace(i32 noundef %i.cz) #27
  %.not102 = icmp eq i32 %i.da, 0
  br i1 %.not102, label %.critedge12, label %bb.af, !llvm.loop !334

.critedge12:                                      ; preds = %bb.ag
  %11 = add i8 %i.cy, -48
  %isdigit104 = icmp ult i8 %11, 10
  br i1 %isdigit104, label %bb.ah, label %.critedge12.thread

bb.ah:                                            ; preds = %.critedge12
  %i.db = call i64 @__isoc23_strtol(ptr noundef nonnull %.6, ptr noundef null, i32 noundef 10) #24, !inline_history !331
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %or.cond = icmp ugt i32 %i.dc, 2
  br i1 %or.cond, label %.critedge12.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %.070, ptr %3, align 4, !tbaa !26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ai
  store i32 %i.dc, ptr %4, align 4, !tbaa !26
  br label %.critedge12.thread

bb.aj:                                            ; preds = %bb.ai, %bb.aa, %bb.z, %bb.s
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge12.thread:                               ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ah, %.critedge12
  %i.de = phi i1 [ true, %.critedge12 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ true, %bb.ah ], [ true, %bb.af ]
  %i.df = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.critedge12.thread
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !15
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.critedge12.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dk = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.av
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.dm = load i64, ptr %i.av, align 8, !tbaa !15
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130

.body:                                            ; preds = %bb.aj, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %.pn105 = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.dd, %bb.aj ], [ %i.bv, %bb.x ]
  %i.do = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %.body
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ]
  %i.dt = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.av
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.ak
  %i.dv = load i64, ptr %i.av, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.de, label %.thread, label %bb.aq

.thread:                                          ; preds = %bb.j, %bb.l, %bb.i, %.critedge8, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130
  %i.dx = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.dy = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.al, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit139, !prof !47

bb.al:                                            ; preds = %.thread
  %i.ea = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i138 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i138, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit139, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eb = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit139

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.ao
  %common.resume.op = phi { ptr, i32 } [ %i.ec, %bb.ao ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn105.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit139:         ; preds = %.thread, %bb.al, %bb.an
  %i.ed = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.13, ptr nonnull @.str.46, i32 481, ptr null) ; 2 uses
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull @.str.29, i64 noundef 67) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ef, ptr %9, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.eg, align 8, !tbaa !25
  store i8 0, ptr %i.ef, align 8, !tbaa !15
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit139
  %i.eh = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ef
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.ap
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  store i32 -1, ptr %4, align 4, !tbaa !26
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  ret void

bb.ar:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit139
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ef
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.ar
  %i.eo = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine6linenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !160
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e
  ret i32 %i.f
}

declare void @_ZN7VString15unquoteSVStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
