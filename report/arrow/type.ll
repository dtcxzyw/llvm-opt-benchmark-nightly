inline.NumInlined: 11291
inline.NumDeleted: 4278
begin_hunk_0_@_ZNK5arrow12ListViewType8ToStringB5cxx11Eb:bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.g
  %.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.bd, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17LargeListViewType8ToStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.91, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !792
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !573
  invoke void @_ZNK5arrow5Field8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i1 noundef zeroext %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.88, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = load i64, ptr %i.l, align 8, !tbaa !43
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !38, !alias.scope !954
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !41, !alias.scope !954
  store i8 0, ptr %i.p, align 8, !tbaa !43, !alias.scope !954
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !641, !noalias !954 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !954 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !643, !noalias !954 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !954 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.p, align 8, !tbaa !43, !alias.scope !954
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #38
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !331
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !331
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.an, ptr %i.a, align 8, !tbaa !331
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !331
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !331
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #37
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !331
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %3, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !331
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !644
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bc) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.g
  %.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.bd, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7MapTypeC2ESt10shared_ptrINS_8DataTypeEES3_b(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.074 = alloca <32 x i8>, align 32         ; 4 uses
  %4 = alloca %"class.std::shared_ptr.27", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.27", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.92, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 3, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !43
  %i.d = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !336
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !355  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !355
  store ptr %i.g, ptr %i.e, align 8, !tbaa !355
  store ptr null, ptr %1, align 8, !tbaa !336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  store ptr null, ptr %4, align 8, !tbaa !573, !alias.scope !961
  %i.h = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %._crit_edge.i.i14 unwind label %bb.am ; 13 uses

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !484, !noalias !961
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !495, !noalias !961
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !331, !noalias !961
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !noalias !961
  store ptr %i.a, ptr %5, align 8, !tbaa !48, !noalias !961
  store i64 0, ptr %i.b, align 8, !tbaa !41, !noalias !961
  store i8 0, ptr %i.a, align 8, !tbaa !43, !noalias !961
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !noalias !961
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !noalias !961
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !961
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow5FieldE, i64 16), ptr %i.k, align 8, !tbaa !331, !noalias !961
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !38, !noalias !961
  store i32 %i.l, ptr %i.p, align 8, !noalias !961
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 3, ptr %i.r, align 8, !tbaa !41, !noalias !961
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.d, ptr %i.s, align 8, !tbaa !336, !noalias !961
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.g, ptr %i.t, align 8, !tbaa !355, !noalias !961
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i8 0, ptr %i.u, align 8, !tbaa !651, !noalias !961
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.q, align 8, !tbaa !355, !alias.scope !961
  store ptr %i.k, ptr %4, align 8, !tbaa !579, !alias.scope !961
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.93, i64 5, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 5, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.y, align 1, !tbaa !43
  %i.z = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !336
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !355 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !355
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !355
  store ptr null, ptr %2, align 8, !tbaa !336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  store ptr null, ptr %8, align 8, !tbaa !573, !alias.scope !968
  %i.ad = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %bb.a unwind label %bb.an      ; 13 uses

bb.a:                                             ; preds = %._crit_edge.i.i14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 1, ptr %i.ae, align 8, !tbaa !484, !noalias !968
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 1, ptr %i.af, align 4, !tbaa !495, !noalias !968
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ad, align 8, !tbaa !331, !noalias !968
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.074)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.074, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.ah, ptr noundef nonnull align 8 dereferenceable(6) %i.w, i64 6, i1 false), !noalias !968
  store ptr %i.w, ptr %9, align 8, !tbaa !48, !noalias !968
  store i64 0, ptr %i.x, align 8, !tbaa !41, !noalias !968
  store i8 0, ptr %i.w, align 8, !tbaa !43, !noalias !968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !noalias !968
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !968
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow5FieldE, i64 16), ptr %i.ag, align 8, !tbaa !331, !noalias !968
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !38, !noalias !968
  %.sroa.074.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.074, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.al, ptr noundef nonnull align 16 dereferenceable(6) %.sroa.074.16..sroa_idx, i64 6, i1 false), !noalias !968
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 5, ptr %i.an, align 8, !tbaa !41, !noalias !968
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store ptr %i.z, ptr %i.ao, align 8, !tbaa !336, !noalias !968
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store ptr %i.ac, ptr %i.ap, align 8, !tbaa !355, !noalias !968
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i8 1, ptr %i.aq, align 8, !tbaa !651, !noalias !968
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.074)
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !355, !alias.scope !968
  store ptr %i.ag, ptr %8, align 8, !tbaa !579, !alias.scope !968
  invoke void @_ZN5arrow7MapTypeC2ESt10shared_ptrINS_5FieldEES3_b(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %4, ptr noundef nonnull %8, i1 noundef zeroext %3)
          to label %bb.b unwind label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !355 ; 8 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.at, align 8, !tbaa !484
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !495
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !331
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #37, !inline_history !879
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !331
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #37, !inline_history !879
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.f ], [ %i.bg, %bb.g ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #37
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !355 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bj, align 8, !tbaa !484
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !495
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !331
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !565
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !331
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !565
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i30 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.m:                                             ; preds = %bb.k
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i32 = phi i32 [ %i.bm, %bb.l ], [ %i.bw, %bb.m ]
  %i.bx = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bx, label %bb.n, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.n
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !355 ; 8 uses
  %.not.i.i33 = icmp eq ptr %i.by, null
  br i1 %.not.i.i33, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bz, align 8, !tbaa !484
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !495
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !331
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #37, !inline_history !564
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !331
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #37, !inline_history !564
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i34 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i34, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

bb.s:                                             ; preds = %bb.q
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i36 = phi i32 [ %i.cc, %bb.r ], [ %i.cm, %bb.s ]
  %i.cn = icmp eq i32 %.0.i.i.i.i36, 1
  br i1 %i.cn, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35, %bb.t
  %i.co = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.w
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cq = load i64, ptr %i.w, align 8, !tbaa !43
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !355 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ct, align 8, !tbaa !484
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !495
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !331
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #37, !inline_history !879
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !331
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #37, !inline_history !879
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

bb.w:                                             ; preds = %bb.u
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i38 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.y:                                             ; preds = %bb.w
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i40 = phi i32 [ %i.cw, %bb.x ], [ %i.dg, %bb.y ]
  %i.dh = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.dh, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, !prof !335

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #37
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.z
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !355 ; 8 uses
  %.not.i.i42 = icmp eq ptr %i.di, null
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dj, align 8, !tbaa !484
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !495
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !331
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #37, !inline_history !565
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !331
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #37, !inline_history !565
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i43 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i43, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

bb.ae:                                            ; preds = %bb.ac
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i45 = phi i32 [ %i.dm, %bb.ad ], [ %i.dw, %bb.ae ]
  %i.dx = icmp eq i32 %.0.i.i.i.i45, 1
  br i1 %i.dx, label %bb.af, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, !prof !335

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #37
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44, %bb.af
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !355 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dz, align 8, !tbaa !484
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !495
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !331
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #37, !inline_history !564
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !331
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #37, !inline_history !564
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

bb.ai:                                            ; preds = %bb.ag
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i48 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i48, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ak:                                            ; preds = %bb.ai
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i50 = phi i32 [ %i.ec, %bb.aj ], [ %i.em, %bb.ak ]
  %i.en = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.en, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, !prof !335

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.al
  %i.eo = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.a
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !43
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  ret void

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %._crit_edge.i.i14
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ao ], [ %i.et, %bb.an ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  %i.ev = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.w
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ap
  %i.ex = load i64, ptr %i.w, align 8, !tbaa !43
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.es, %bb.am ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  %i.ez = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.a
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.aq
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !43
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7MapTypeC2ESt10shared_ptrINS_5FieldEES3_b(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::shared_ptr.27", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::shared_ptr.27", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %9 = alloca %"class.std::vector.12", align 8    ; 11 uses
  %10 = alloca [2 x %"class.std::shared_ptr.27"], align 8 ; 12 uses
  %11 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.94, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 7, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.d = load ptr, ptr %1, align 8, !tbaa !573    ; 2 uses
  store ptr %i.d, ptr %10, align 8, !tbaa !573
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !355  ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !355
  store ptr %i.g, ptr %i.e, align 8, !tbaa !355
  store ptr null, ptr %1, align 8, !tbaa !573
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !573    ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !573
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355  ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !355
  store ptr %i.l, ptr %i.j, align 8, !tbaa !355
  store ptr null, ptr %2, align 8, !tbaa !573
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.m = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc13 unwind label %bb.bl  ; 7 uses

.noexc13:                                         ; preds = %._crit_edge.i.i
  store ptr %i.m, ptr %9, align 8, !tbaa !792
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !875
  store ptr %i.d, ptr %i.m, align 8, !tbaa !573
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.p, align 8, !tbaa !355
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.noexc13
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !573
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !355
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.noexc13
  %i.v = phi ptr [ %.pre38, %bb.c ], [ %i.l, %bb.b ], [ %i.l, %.noexc13 ] ; 3 uses
  %i.w = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %.noexc13 ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !573
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.v, ptr %i.y, align 8, !tbaa !355
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.d

bb.d:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.f, %bb.e, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !874
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ag = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36
          to label %.noexc14 unwind label %bb.bm  ; 10 uses

.noexc14:                                         ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !484, !noalias !972
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 4 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !495, !noalias !972
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !331, !noalias !972
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  invoke void @_ZN5arrow10StructTypeC1ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.g unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !972

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc14
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 96) #38, !noalias !972
  br label %.body

bb.g:                                             ; preds = %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !497, !noalias !972 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 8, !noalias !972
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i, %bb.g
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !496, !noalias !972
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !972
  %.not.i.i3.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !972
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ai, align 4, !tbaa !3, !noalias !972
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !972 ; 0 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !497, !noalias !972
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.av = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.j ], [ %i.an, %bb.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !972
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3, !noalias !972 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3, !noalias !972
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4, !noalias !972
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.n, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !331, !noalias !972
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !972
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #37, !noalias !972, !inline_history !975
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.am, align 8, !tbaa !497, !noalias !972
  br label %bb.o
end_hunk_0
begin_hunk_1_@_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_:bb.a
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1511
  %i.he = load ptr, ptr %1, align 8, !tbaa !1511  ; 2 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.he, i64 %i.hh
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.hi, ptr %i.x, ptr %i.z)
          to label %._crit_edge58.thread unwind label %bb.az

bb.az:                                            ; preds = %.thread43
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge58.thread:                             ; preds = %._crit_edge, %.thread43, %_ZNSt6vectorIiSaIiEED2Ev.exit55, %._crit_edge58
  %i.hk = load ptr, ptr %6, align 8, !tbaa !1516  ; 3 uses
  %i.hl = load ptr, ptr %i.y, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge58.thread, %.lr.ph.i.i
  %.0.i3.i.i = phi ptr [ %i.hm, %.lr.ph.i.i ], [ %i.hk, %._crit_edge58.thread ] ; 2 uses
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i) #37, !inline_history !1520
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge58.thread
  %i.hn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hk, %._crit_edge58.thread ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1519
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit59, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i, %bb.az, %bb.d
  %.pn46 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit59 ], [ %i.ab, %bb.d ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i ], [ %i.hj, %bb.az ], [ %i.em, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEEaSIS8_IiSaIiEEEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S7_SB_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSC_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %1, align 8, !tbaa !1078   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1082 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1081 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 8, !tbaa !1509
  switch i8 %i.i, label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke [
    i8 0, label %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !1533

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.b
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.invoke:  ; preds = %bb.b, %_ZSt26__throw_bad_variant_accessb.exit.i
  %.str.225.sink = phi ptr [ @.str.224, %_ZSt26__throw_bad_variant_accessb.exit.i ], [ @.str.225, %bb.b ]
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !331
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.str.225.sink, ptr %i.k, align 8, !tbaa !1523
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.cont unwind label %bb.d

_ZSt26__throw_bad_variant_accessb.exit.i.cont:    ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  unreachable

_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !1078   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  store ptr %i.f, ptr %i.m, align 8, !tbaa !1082
  store ptr %i.h, ptr %i.n, align 8, !tbaa !1081
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit15 unwind label %bb.f

_ZNSt6vectorIiSaIiEED2Ev.exit15:                  ; preds = %bb.e
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.t, align 8, !tbaa !1082
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.u, align 8, !tbaa !1081
  store i8 0, ptr %i.a, align 8, !tbaa !1509
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit15
  ret ptr %0

_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split:       ; preds = %bb.f, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ]
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ], [ %.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1516   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i) #37, !inline_history !1534
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1519
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #38
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.302") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.4.i.sroa.0 = alloca <16 x i8>, align 16  ; 4 uses
  %4 = alloca %"class.arrow::FieldRef", align 8   ; 5 uses
  %5 = alloca %"class.std::vector.287", align 8   ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 28 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::FieldRef", align 16  ; 20 uses
  %10 = alloca %"class.std::vector.287", align 8  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit, label %bb.b

_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.g, align 8, !tbaa !1509
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.cd

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 23 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.br
  %.sroa.0.0149 = phi i64 [ %i.c, %bb.b ], [ %.sroa.0.1, %bb.br ]
  %.sroa.17.0148 = phi ptr [ %i.h, %bb.b ], [ %.sroa.17.1, %bb.br ] ; 2 uses
  %i.m = load i8, ptr %.sroa.17.0148, align 1, !tbaa !43
  %i.n = add i64 %.sroa.0.0149, -1                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.17.0148, i64 1 ; 5 uses
  switch i8 %i.m, label %bb.bl [
    i8 46, label %bb.d
    i8 91, label %bb.ax
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.k, ptr %6, align 8, !tbaa !38, !alias.scope !1535
  store i64 0, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  store i8 0, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  %.not533.i = icmp eq i64 %i.n, 0
  br i1 %.not533.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i: ; preds = %bb.d, %bb.as
  %.sroa.17.2 = phi ptr [ %i.cr, %bb.as ], [ %i.o, %bb.d ] ; 14 uses
  %.sroa.0.2 = phi i64 [ %i.cq, %bb.as ], [ %i.n, %bb.d ] ; 15 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i
  %.01116.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i ], [ %i.r, %bb.e ] ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 %.01116.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43    ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.r = add i64 %.01116.i.i.i, 1                 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.sroa.0.2
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !1538

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.s = icmp eq i64 %.01116.i.i.i, -1
  br i1 %i.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %bb.m

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit: ; preds = %bb.as
  %.pre = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i, %bb.e
  %i.t = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 2 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %i.v = icmp ult i64 %i.u, %.sroa.0.2
  br i1 %i.v, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.invoke.i:                                        ; preds = %bb.z, %bb.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #39
          to label %.cont.i unwind label %.loopexit.split-lp.i.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i
  %i.w = phi i64 [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 4 uses
  %i.x = phi i64 [ %.sroa.0.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 5 uses
  %i.y = phi ptr [ %.sroa.17.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ %i.o, %bb.d ], [ %i.cr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 3 uses
  %i.z = add i64 %i.x, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k                 ; 2 uses
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ac = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = load i64, ptr %i.k, align 8, !alias.scope !1535
  %i.ae = select i1 %i.ab, i64 15, i64 %i.ad
  %.not.i.i19.i = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i19.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !43
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !43
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.y, i64 %i.x, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.w, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.x)
          to label %bb.l unwind label %.loopexit.split-lp.i.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  store i64 %i.z, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.ah = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !43
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

.loopexit.i:                                      ; preds = %bb.ap, %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.k, %bb.t, %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  %.not.i = icmp eq i8 %i.q, 92
  br i1 %.not.i, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 %.01116.i.i.i
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %.01116.i.i.i
  br i1 %i.am, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i: ; preds = %bb.n
  %i.an = add i64 %i.ak, %.01116.i.i.i            ; 3 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k                 ; 2 uses
  br i1 %i.ap, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.ar = load i64, ptr %i.k, align 8, !alias.scope !1535
  %i.as = select i1 %i.ap, i64 15, i64 %i.ar
  %.not.i.i23.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i23.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.i
  %.not8.i.i24.i = icmp eq i64 %.01116.i.i.i, 0
  br i1 %.not8.i.i24.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i25.i = icmp eq i64 %.01116.i.i.i, 1
  br i1 %cond.i.i25.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = load i8, ptr %.sroa.17.2, align 1, !tbaa !43
end_hunk_1
begin_hunk_2_@_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.sroa.17.2, i64 noundef %.01116.i.i.i)
          to label %bb.u unwind label %.loopexit.split-lp.i.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  store i64 %i.an, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.av = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !43
  %i.ax = icmp ugt i64 %.01116.i.i.i, %.sroa.0.2
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %.01116.i.i.i, i64 noundef %.sroa.0.2) #39
          to label %.noexc29.i unwind label %bb.x

.noexc29.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ay = sub nuw i64 %.sroa.0.2, %.01116.i.i.i
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

bb.x:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.y:                                             ; preds = %bb.m
  %i.ba = add nuw i64 %.01116.i.i.i, 1            ; 2 uses
  %i.bb = icmp eq i64 %.sroa.0.2, %i.ba
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 9 uses
  %i.bd = sub i64 9223372036854775807, %i.bc      ; 2 uses
  br i1 %i.bb, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.be = icmp ult i64 %i.bd, %.sroa.0.2
  br i1 %i.be, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i30.i: ; preds = %bb.z
  %i.bf = add i64 %i.bc, %.sroa.0.2               ; 3 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k                 ; 2 uses
  br i1 %i.bh, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i30.i
  %i.bi = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i30.i
  %i.bj = load i64, ptr %i.k, align 8, !alias.scope !1535
  %i.bk = select i1 %i.bh, i64 15, i64 %i.bj
  %.not.i.i32.i = icmp ugt i64 %i.bf, %i.bk
  br i1 %.not.i.i32.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc ; 2 uses
  %cond.i.i34.i = icmp eq i64 %.sroa.0.2, 1
  br i1 %cond.i.i34.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i8, ptr %.sroa.17.2, align 1, !tbaa !43
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !43
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.17.2, i64 %.sroa.0.2, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull %.sroa.17.2, i64 noundef %.sroa.0.2)
          to label %bb.af unwind label %.loopexit.split-lp.i.loopexit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  store i64 %i.bf, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.bn = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i8 0, ptr %i.bo, align 1, !tbaa !43
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

bb.ag:                                            ; preds = %bb.y
  %i.bp = icmp ult i64 %i.bd, %.01116.i.i.i
  br i1 %i.bp, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38.i: ; preds = %bb.ag
  %i.bq = add i64 %i.bc, %.01116.i.i.i            ; 3 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.k                 ; 2 uses
  br i1 %i.bs, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38.i
  %i.bt = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38.i
  %i.bu = load i64, ptr %i.k, align 8, !alias.scope !1535
  %i.bv = select i1 %i.bs, i64 15, i64 %i.bu
  %.not.i.i40.i = icmp ugt i64 %i.bq, %i.bv
  br i1 %.not.i.i40.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39.i
  %.not8.i.i41.i = icmp eq i64 %.01116.i.i.i, 0
  br i1 %.not8.i.i41.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bc ; 2 uses
  %cond.i.i42.i = icmp eq i64 %.01116.i.i.i, 1
  br i1 %cond.i.i42.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bx = load i8, ptr %.sroa.17.2, align 1, !tbaa !43
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !43
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %.sroa.17.2, i64 %.01116.i.i.i, i1 false)
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull %.sroa.17.2, i64 noundef %.01116.i.i.i)
          to label %bb.an unwind label %.loopexit.i

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  store i64 %i.bq, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.by = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i8 0, ptr %i.bz, align 1, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 %i.ba
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43
  %i.cc = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 4 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.k                 ; 2 uses
  br i1 %i.cf, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.cg = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.ao, %bb.an
  %i.ch = load i64, ptr %i.k, align 8, !alias.scope !1535
  %i.ci = select i1 %i.cf, i64 15, i64 %i.ch
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc46.i unwind label %.loopexit.i

.noexc46.i:                                       ; preds = %bb.ap
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ck = phi ptr [ %.pre.i.i, %.noexc46.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store i8 %i.cb, ptr %i.cl, align 1, !tbaa !43
  store i64 %i.cd, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.cm = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cd
  store i8 0, ptr %i.cn, align 1, !tbaa !43
  %i.co = add i64 %.01116.i.i.i, 2                ; 4 uses
  %i.cp = icmp ugt i64 %i.co, %.sroa.0.2
  br i1 %i.cp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %i.co, i64 noundef %.sroa.0.2) #39
          to label %.noexc49.i unwind label %bb.at

.noexc49.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cq = sub nuw i64 %.sroa.0.2, %i.co           ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 %i.co ; 2 uses
  %.not5.i = icmp eq i64 %i.cq, 0
  br i1 %.not5.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %bb.at, %bb.x, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.cs, %bb.at ], [ %i.az, %bb.x ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.k
  br i1 %i.cu, label %.body, label %.body.sink.split

"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit": ; preds = %bb.af, %bb.w, %bb.l
  %.sroa.17.3 = phi ptr [ @.str.53, %bb.l ], [ @.str.53, %bb.af ], [ %i.aj, %bb.w ]
  %.sroa.0.3 = phi i64 [ 0, %bb.l ], [ 0, %bb.af ], [ %i.ay, %bb.w ]
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 8 uses
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i27 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i27, label %bb.av, label %bb.au

bb.au:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0)
  %i.cx = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.k
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %bb.au
  %i.cz = load i64, ptr %i.l, align 8, !tbaa !41  ; 3 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.sroa.4.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.da, i1 false)
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.dc = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.4.i.sroa.0, i64 %i.da, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %bb.au
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !43
  %.pre.i.i28 = load i64, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !43
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.df = phi i64 [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store ptr %i.k, ptr %6, align 8, !tbaa !48
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store ptr %.sink.i, ptr %i.cv, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i8 1, ptr %i.dh, align 8, !tbaa !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store ptr %i.di, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit

bb.av:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit unwind label %bb.aw

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit: ; preds = %bb.av, %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  %i.dj = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.k
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit
  %i.dl = load i64, ptr %i.k, align 8, !tbaa !43
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.br, !llvm.loop !1539

bb.aw:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.k
  br i1 %i.dp, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.aw, %.loopexit.split-lp.i
  %.sink = phi ptr [ %i.ct, %.loopexit.split-lp.i ], [ %i.do, %bb.aw ]
  %.pn20.ph = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp.i ], [ %i.dn, %bb.aw ]
  %i.dq = load i64, ptr %i.k, align 8, !tbaa !43
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dr) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.aw, %.loopexit.split-lp.i
  %.pn20 = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp.i ], [ %i.dn, %bb.aw ], [ %.pn20.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.cc

bb.ax:                                            ; preds = %bb.c
  %.not88 = icmp eq i64 %i.n, 0
  br i1 %.not88, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.ax, %bb.ay
  %.0710.i.i = phi i64 [ %i.dx, %bb.ay ], [ 0, %bb.ax ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0710.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !43  ; 3 uses
  %i.du = zext nneg i8 %i.dt to i64
  %memchr.bounds = icmp ugt i8 %i.dt, 63
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, 287948901175001088
  %memchr.bits = icmp eq i64 %i.dw, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.dx = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dx, %i.n
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1540

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.dy = icmp ne i64 %.0710.i.i, -1
  %.not = icmp eq i8 %i.dt, 93
  %or.cond = and i1 %i.dy, %.not
  br i1 %or.cond, label %bb.be, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.ax, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !1541
  invoke void @_ZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(11) @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(34) @.str.152)
          to label %.noexc33 unwind label %bb.bd

.noexc33:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc33
  %i.dz = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1541 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.az
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !43, !noalias !1541
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ba:                                            ; preds = %.noexc33
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1541 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.ba
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !43, !noalias !1541
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1541
  br label %.body34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1541
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  %i.ek = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %.not.i36 = icmp eq ptr %i.ek, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bb, !prof !47

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !50, !range !59, !noundef !60
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.critedge

bb.bd:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.bd
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.eo, %bb.bd ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.cc

bb.be:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ep = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #37, !inline_history !1546
  %i.eq = trunc i64 %i.ep to i32                  ; 2 uses
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !3
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 7 uses
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i37 = icmp eq ptr %i.er, %i.es
  br i1 %.not.i37, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.et = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #36
          to label %.noexc39 unwind label %bb.bj  ; 3 uses

.noexc39:                                         ; preds = %bb.bf
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  store i32 %i.eq, ptr %i.et, align 4, !tbaa !3
  store ptr %i.et, ptr %i.er, align 8, !tbaa !1078
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !1082
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !1081
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i8 0, ptr %i.ex, align 8, !tbaa !1509
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store ptr %i.ey, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.er, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit unwind label %bb.bj

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.bg, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ez = add nuw i64 %.0710.i.i, 1               ; 3 uses
  %.not89 = icmp ult i64 %.0710.i.i, %i.n
  br i1 %.not89, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %i.ez, i64 noundef %i.n) #39
          to label %.noexc43 unwind label %bb.bk

.noexc43:                                         ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.fa = sub nuw i64 %i.n, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ez
  br label %bb.br, !llvm.loop !1539

bb.bj:                                            ; preds = %bb.bg, %bb.bf
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.cc

bb.bk:                                            ; preds = %bb.bh
  %i.fd = landingpad { ptr, i32 }
          cleanup
end_hunk_2
