Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Unicode?download=true
inline.NumInlined: 152
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5folly15codePointToUtf8B5cxx11EDi:bb.a
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i32 0, 1114112) i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 10 uses
  %.not = icmp ult ptr %i.d, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %0, align 8, !tbaa !26
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #13
  br label %bb.bi

bb.g:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.d, align 1, !tbaa !19    ; 5 uses
  %.not64 = icmp sgt i8 %i.h, -1
  br i1 %.not64, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.i, ptr %0, align 8, !tbaa !26
  %i.j = load i8, ptr %i.d, align 1, !tbaa !19
  %i.k = zext i8 %i.j to i32
  br label %bb.bh

bb.i:                                             ; preds = %bb.g
  %i.l = zext i8 %i.h to i32                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %i.l, ptr %i.a, align 4, !tbaa !22
  %i.m = and i32 %i.l, 192
  %.not65 = icmp eq i32 %i.m, 192
  br i1 %.not65, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.n, ptr %0, align 8, !tbaa !26
  br label %bb.bf

bb.l:                                             ; preds = %bb.j
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA30_cjETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(30) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
          to label %bb.bj unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.039 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.u = load i64, ptr %i.s, align 8, !tbaa !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %.039, label %bb.p, label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %.039, label %bb.p, label %bb.bg

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7598 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #13
  br label %bb.bg

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 1, ptr %i.b, align 4, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.x = icmp ult ptr %i.w, %1
  br i1 %i.x, label %bb.r, label %bb.ba

bb.r:                                             ; preds = %bb.q
  %i.y = load i8, ptr %i.w, align 1, !tbaa !19
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = and i32 %i.z, 192
  %.not67 = icmp eq i32 %i.aa, 128
  br i1 %.not67, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.ax, %bb.au, %bb.r
  %.lcssa = phi i32 [ %i.z, %bb.r ], [ %i.bu, %bb.au ], [ %i.cc, %bb.ax ]
  br i1 %2, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 %.lcssa, ptr %i.c, align 4, !tbaa !22
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA26_cjA6_cjETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(26) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
          to label %bb.bj unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread: ; preds = %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %.037 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.w
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %.037, label %bb.x, label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %.037, label %bb.x, label %bb.az

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn72101 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ]
  call void @__cxa_free_exception(ptr %i.ab) #13
  br label %bb.az

bb.y:                                             ; preds = %bb.r
  %i.aj = shl nuw nsw i32 %i.l, 6
  %i.ak = and i32 %i.z, 63
  %i.al = or disjoint i32 %i.aj, %i.ak            ; 3 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !22
  %.mask = and i8 %i.h, 32
  %.not68 = icmp eq i8 %.mask, 0
  br i1 %.not68, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.ay, %bb.av, %bb.y
  %i.am = phi i1 [ false, %bb.y ], [ true, %bb.av ], [ false, %bb.ay ]
  %storemerge121.lcssa129.wide = phi i64 [ 1, %bb.y ], [ 2, %bb.av ], [ 3, %bb.ay ] ; 3 uses
  %.lcssa124 = phi i32 [ %i.al, %bb.y ], [ %i.by, %bb.av ], [ %i.cg, %bb.ay ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5folly15utf8ToCodePointERPKhS1_bE7bitMask, i64 %storemerge121.lcssa129.wide
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = and i32 %i.ao, %.lcssa124               ; 5 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !22
  %7 = getelementptr [4 x i8], ptr @_ZZN5folly15utf8ToCodePointERPKhS1_bE7bitMask, i64 %storemerge121.lcssa129.wide
  %i.aq = getelementptr i8, ptr %7, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.as = xor i32 %i.ar, -1
  %i.at = and i32 %i.ap, %i.as
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  br i1 %2, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA26_cjA4_cjETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(4) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
          to label %bb.bj unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.035 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ae
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %.035, label %bb.af, label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %.035, label %bb.af, label %bb.az

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn70104 = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  call void @__cxa_free_exception(ptr %i.av) #13
  br label %bb.az

bb.ag:                                            ; preds = %bb.z
  %i.bd = and i32 %i.ap, -2048
  %or.cond = icmp eq i32 %i.bd, 55296
  %or.cond80 = and i1 %i.am, %or.cond
  br i1 %or.cond80, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  br i1 %2, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.be = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA26_cjA4_cjETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(4) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
          to label %bb.bj unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.ai
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0 = phi i1 [ false, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.al
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br i1 %.0, label %bb.am, label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br i1 %.0, label %bb.am, label %bb.az

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pn107 = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ]
  call void @__cxa_free_exception(ptr %i.be) #13
  br label %bb.az

bb.an:                                            ; preds = %bb.ag
  %i.bm = icmp samesign ugt i32 %i.ap, 1114111
  br i1 %i.bm, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  br i1 %2, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.7)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bn) #13
  br label %bb.az

bb.as:                                            ; preds = %bb.an
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge121.lcssa129.wide
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %.critedge

bb.at:                                            ; preds = %bb.y
  store i32 2, ptr %i.b, align 4, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.bs = icmp ult ptr %i.br, %1
  br i1 %i.bs, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = and i32 %i.bu, 192
  %.not67.1 = icmp eq i32 %i.bv, 128
  br i1 %.not67.1, label %bb.av, label %bb.s

bb.av:                                            ; preds = %bb.au
  %i.bw = shl nuw nsw i32 %i.al, 6
  %i.bx = and i32 %i.bu, 63
  %i.by = or disjoint i32 %i.bw, %i.bx            ; 3 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !22
  %.mask147 = and i8 %i.h, 16
  %.not68.1 = icmp eq i8 %.mask147, 0
  br i1 %.not68.1, label %bb.z, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 3, ptr %i.b, align 4, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %1
  br i1 %i.ca, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cc = zext i8 %i.cb to i32                    ; 3 uses
  %i.cd = and i32 %i.cc, 192
  %.not67.2 = icmp eq i32 %i.cd, 128
  br i1 %.not67.2, label %bb.ay, label %bb.s

bb.ay:                                            ; preds = %bb.ax
  %i.ce = shl nuw nsw i32 %i.by, 6
  %i.cf = and i32 %i.cc, 63
  %i.cg = or disjoint i32 %i.ce, %i.cf            ; 2 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !22
  %.mask148 = and i8 %i.h, 8
  %.not68.2 = icmp eq i8 %.mask148, 0
  br i1 %.not68.2, label %bb.z, label %bb.ba

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.x, %bb.ar
  %.pn72.pn = phi { ptr, i32 } [ %.pn72101, %bb.x ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn70104, %bb.af ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn107, %bb.am ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.bo, %bb.ar ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bg

.critedge:                                        ; preds = %bb.ao, %bb.ah, %bb.aa, %bb.s, %bb.as
  %.sink = phi ptr [ %i.w, %bb.ah ], [ %i.bq, %bb.as ], [ %i.w, %bb.s ], [ %i.w, %bb.aa ], [ %i.w, %bb.ao ]
  %.155.ph = phi i32 [ 65533, %bb.ah ], [ %i.ap, %bb.as ], [ 65533, %bb.s ], [ 65533, %bb.aa ], [ 65533, %bb.ao ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay, %bb.aw, %bb.at, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %2, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.w, ptr %0, align 8, !tbaa !26
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
end_hunk_0
