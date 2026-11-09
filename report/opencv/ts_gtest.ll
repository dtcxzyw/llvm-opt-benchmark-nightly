Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_gtest?download=true
inline.NumInlined: 7033
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7testing8internal15CodePointToUtf8B5cxx11Ej:bb.a

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %i.bz, align 1, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.bp, ptr %i.ca, align 1, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bt, ptr %i.cb, align 1, !tbaa !56
  %i.cc = lshr i32 %1, 18
  %i.cd = trunc i32 %i.bq to i8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.ce, -128
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !56
  %i.ch = trunc nuw nsw i32 %i.cc to i8
  %i.ci = or disjoint i8 %i.ch, -16
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n, %bb.j
  %.sink = phi i8 [ %i.bk, %bb.l ], [ %i.ci, %bb.o ], [ %i.by, %bb.n ], [ %i.bb, %bb.j ] ; 2 uses
  store i8 %.sink, ptr %i.b, align 1, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !57
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !75
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.cm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !55
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.p
  %i.co = phi ptr [ %i.cm, %.noexc.i ], [ %i.cj, %bb.p ] ; 2 uses
  switch i64 %i.ck, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  store i8 %.sink, ptr %i.co, align 1, !tbaa !56
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.b, i64 %i.ck, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !58
  %i.cr = load ptr, ptr %0, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !287
  %i.h = and i32 %i.g, -75
  %i.i = or disjoint i32 %i.h, 8
  store i32 %i.i, ptr %i.f, align 8, !tbaa !288
  %i.j = load i64, ptr %i.c, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !287
  %i.n = or i32 %i.m, 16384
  store i32 %i.n, ptr %i.l, align 8, !tbaa !288
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !57, !alias.scope !759
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !58, !alias.scope !759
  store i8 0, ptr %i.p, align 8, !tbaa !56, !alias.scope !759
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !235, !noalias !759 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !759 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236, !noalias !759 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !55, !alias.scope !759 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.p, align 8, !tbaa !56, !alias.scope !759
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #55
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !65
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !65
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.an, ptr %i.a, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !56
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #55
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #54
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !65
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !283
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #60
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.d = icmp sgt i32 %.029, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %.029 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !232  ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  invoke void @_ZN7testing8internal15CodePointToUtf8B5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %4, align 8, !tbaa !55
  %i.k = load i64, ptr %i.f, align 8, !tbaa !58
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.j, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.m = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load i64, ptr %i.g, align 8, !tbaa !56
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !760

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.h
  %i.u = load i64, ptr %i.g, align 8, !tbaa !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.k

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.d, %bb.c
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !65
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !65
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #55
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #54
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !65
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !283
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  ret void

bb.j:                                             ; preds = %.critedge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn34 = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN7testing8internal6String17WideCStringEqualsEPKwS3_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #60
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.mux, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_PKwS4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !286
  store ptr %4, ptr %i.b, align 8, !tbaa !286
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.d
  br i1 %brmerge.i, label %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.e = tail call i32 @wcscmp(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4) #60
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.c, %i.d
  br i1 %.mux.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  store i8 1, ptr %0, align 8, !tbaa !183, !alias.scope !763
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !184, !alias.scope !763
  br label %bb.h

bb.c:                                             ; preds = %.split, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  invoke void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZN7testing8internal18PrintCharAndCodeToIwwEEvT0_PSo:bb.a
  br i1 %or.cond15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.510, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %0)
  %i.i = load ptr, ptr %2, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !56
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !56
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKcmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.517, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKwmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !232
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2)
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.517, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEPKcPSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.362, i64 noundef 4) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.363, i64 noundef 13) ; 0 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #60
  %i.f = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull %0, i64 noundef %i.e, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  ret i32 %.013.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread
  %.017 = phi i64 [ %i.o, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %.01316 = phi i32 [ %i.n, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.01415 = phi i1 [ %.0.i.i21, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ false, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  %i.d = load i8, ptr %i.c, align 1, !tbaa !56    ; 3 uses
  br i1 %.01415, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i32 @isxdigit(i32 noundef %i.e) #60
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.518, i64 noundef 2) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  switch i8 %i.d, label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit [
    i8 39, label %bb.e
    i8 34, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.519, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread

_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit: ; preds = %bb.d
  %i.k = zext i8 %i.d to i32
  %i.l = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintAsCharLiteralToIwwEENS0_10CharFormatET0_PSo(i32 noundef signext %i.k, ptr noundef nonnull %2)
  %i.m = icmp eq i32 %i.l, 1                      ; 2 uses
  %spec.select22 = select i1 %i.m, i32 1, i32 %.01316
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread

_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread: ; preds = %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit, %bb.f, %bb.e
  %.0.i.i21 = phi i1 [ false, %bb.f ], [ %i.m, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit ], [ false, %bb.e ]
  %i.n = phi i32 [ %.01316, %bb.f ], [ %spec.select22, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit ], [ %.01316, %bb.e ] ; 2 uses
  %i.o = add nuw i64 %.017, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1841
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEPKwPSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.362, i64 noundef 4) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.363, i64 noundef 13) ; 0 uses
  %i.e = tail call i64 @wcslen(ptr noundef nonnull %0) #60
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull %0, i64 noundef %i.e, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.488, i64 noundef 2) ; 0 uses
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread, %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread
  %.017 = phi i64 [ %i.n, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %.01316 = phi i32 [ %i.m, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.01415 = phi i1 [ %.0.i22, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread ], [ false, %bb.a ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017
  %i.d = load i32, ptr %i.c, align 4, !tbaa !232  ; 4 uses
  %i.e = icmp ult i32 %i.d, 256
  %or.cond = select i1 %.01415, i1 %i.e, i1 false
  br i1 %or.cond, label %_ZN7testing8internal8IsXDigitEw.exit, label %_ZN7testing8internal8IsXDigitEw.exit.thread

_ZN7testing8internal8IsXDigitEw.exit:             ; preds = %.lr.ph
  %i.f = tail call i32 @isxdigit(i32 noundef %i.d) #60
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN7testing8internal8IsXDigitEw.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal8IsXDigitEw.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.518, i64 noundef 2) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.488, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internal8IsXDigitEw.exit.thread

_ZN7testing8internal8IsXDigitEw.exit.thread:      ; preds = %bb.b, %_ZN7testing8internal8IsXDigitEw.exit, %.lr.ph
  switch i32 %i.d, label %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit [
    i32 39, label %bb.c
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN7testing8internal8IsXDigitEw.exit.thread
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread

bb.d:                                             ; preds = %_ZN7testing8internal8IsXDigitEw.exit.thread
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.519, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread

_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit: ; preds = %_ZN7testing8internal8IsXDigitEw.exit.thread
  %i.k = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintAsCharLiteralToIwwEENS0_10CharFormatET0_PSo(i32 noundef signext %i.d, ptr noundef nonnull %2)
  %i.l = icmp eq i32 %i.k, 1                      ; 2 uses
  %spec.select23 = select i1 %i.l, i32 1, i32 %.01316
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread

_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit.thread: ; preds = %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit, %bb.d, %bb.c
  %.0.i22 = phi i1 [ false, %bb.d ], [ %i.l, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit ], [ false, %bb.c ]
  %i.m = phi i32 [ %.01316, %bb.d ], [ %spec.select23, %_ZN7testing8internalL22PrintAsStringLiteralToEwPSo.exit ], [ %.01316, %bb.c ]
  %i.n = add nuw i64 %.017, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1842
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  %i.d = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef %i.a, i64 noundef %i.c, ptr noundef %1)
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i8, ptr @_ZN7testing22FLAGS_gtest_print_utf8E, align 1, !range !103
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !55     ; 8 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !58   ; 6 uses
  %.not1417.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not1417.not.i.i, label %_ZN7testing8internal12_GLOBAL__N_111IsValidUTF8EPKcm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01019.i.i = phi i64 [ %i.n, %.critedge.i.i ], [ 0, %bb.b ]
  %.01118.i.i = phi ptr [ %i.j, %.critedge.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01118.i.i, i64 1
  %i.k = load i8, ptr %.01118.i.i, align 1, !tbaa !56 ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @iscntrl(i32 noundef %i.l) #60
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.k, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit [
    i8 9, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 13, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %bb.c, %bb.c, %bb.c, %.lr.ph.i.i
  %i.n = add nuw i64 %.01019.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i5.i, label %.lr.ph.i.i, !llvm.loop !1843

.lr.ph.i5.i:                                      ; preds = %.critedge.i.i, %select.unfold.i.i
  %.05276.i.i = phi i64 [ %.2.i.i, %select.unfold.i.i ], [ 0, %.critedge.i.i ] ; 5 uses
  %i.o = add nuw i64 %.05276.i.i, 1               ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.05276.i.i ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !56    ; 7 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %select.unfold.i.i, label %bb.d, !llvm.loop !1844

bb.d:                                             ; preds = %.lr.ph.i5.i
  %i.s = icmp samesign ult i8 %i.q, -62
  br i1 %i.s, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i8 %i.q, -32
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.05276.i.i, 2                   ; 2 uses
  %.not.i7.i = icmp ugt i64 %i.u, %i.i
  br i1 %.not.i7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56
  %i.x = icmp slt i8 %i.w, -64
  br i1 %i.x, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.y = and i8 %i.q, -16
  %or.cond.i.i = icmp eq i8 %i.y, -32
  br i1 %or.cond.i.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %.05276.i.i, 3                   ; 4 uses
  %.not62.i.i = icmp ugt i64 %i.z, %i.i
  br i1 %.not62.i.i, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !56  ; 3 uses
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %bb.k, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %i.p, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %bb.l, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.l:                                             ; preds = %bb.k
  switch i8 %i.q, label %select.unfold.i.i [
    i8 -32, label %bb.m
    i8 -19, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp samesign ugt i8 %i.ab, -97
  br i1 %i.ag, label %select.unfold.i.i, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = icmp samesign ult i8 %i.ab, -96
  br i1 %i.ah, label %select.unfold.i.i, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.o:                                             ; preds = %bb.h
  %i.ai = add nsw i8 %i.q, 16
  %or.cond5.i.i = icmp ult i8 %i.ai, 5
  br i1 %or.cond5.i.i, label %bb.p, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.p:                                             ; preds = %bb.o
  %i.aj = add i64 %.05276.i.i, 4                  ; 4 uses
  %.not65.i.i = icmp ugt i64 %i.aj, %i.i
  br i1 %.not65.i.i, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !56  ; 3 uses
  %i.am = icmp slt i8 %i.al, -64
  br i1 %i.am, label %bb.r, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %i.p, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56
  %i.ap = icmp slt i8 %i.ao, -64
  br i1 %i.ap, label %bb.s, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %i.p, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = icmp slt i8 %i.ar, -64
  br i1 %i.as, label %bb.t, label %_ZN7testing8internal12_GLOBAL__N_122ConditionalPrintAsTextEPKcmPSo.exit

bb.t:                                             ; preds = %bb.s
  switch i8 %i.q, label %select.unfold.i.i [
end_hunk_1
begin_hunk_2_@_ZN7testing8internal19GetPrefixUntilCommaB5cxx11EPKc:bb.a
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %1, i64 %i.n, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i29, %bb.f, %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !tbaa !58
  %i.u = load ptr, ptr %0, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %.critedge24

.critedge27:                                      ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !58
  %i.y = load ptr, ptr %0, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  br label %.critedge24

.critedge24:                                      ; preds = %.critedge, %.critedge27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #24

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !448
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !449  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #55
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #55
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2064

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #39

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #39

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal21UniversalTersePrinterIPKcE5PrintES3_PSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.362, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !57
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.e, ptr %i.a, align 8, !tbaa !75
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !55
  %i.h = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.h, ptr %i.d, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !56
  store i8 %i.j, ptr %i.i, align 1, !tbaa !56
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %2, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  invoke void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit: ; preds = %bb.f
  %i.o = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !56
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.v = load i64, ptr %i.d, align 8, !tbaa !56
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string.39", align 8 ; 11 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.362, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !2065
  %i.e = call noundef i64 @wcslen(ptr noundef nonnull %0) #60 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.e, ptr %i.a, align 8, !tbaa !75
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !229
  %i.h = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.i = phi i64 [ %i.h, %.noexc.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.c ] ; 4 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %0, align 4, !tbaa !232
  store i32 %i.k, ptr %i.j, align 4, !tbaa !232
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef %i.j, ptr noundef nonnull %0, i64 noundef %i.e) #54 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !75
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !229
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.d ], [ %.pre7.i.i, %bb.e ] ; 2 uses
  %i.n = phi i64 [ %i.i, %._crit_edge.i.i ], [ %i.i, %bb.d ], [ %.pre6.i.i, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !230
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 0, ptr %i.p, align 4, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  invoke fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !229    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !56
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #55
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !229    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.y = load i64, ptr %i.d, align 8, !tbaa !56
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #55
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #25

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #39

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !57
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !55 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.e, ptr %i.a, align 8, !tbaa !75
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !55
  %i.h = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.h, ptr %i.b, align 8, !tbaa !56
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !56
  store i8 %i.j, ptr %i.i, align 1, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %.014, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2066

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #54 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #56
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #59
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !386
  %i.b = tail call ptr @pthread_getspecific(i32 noundef %i.a) #54 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
