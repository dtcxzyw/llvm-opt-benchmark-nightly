inline.NumInlined: 915
inline.NumDeleted: 528
begin_hunk_0_@_ZN5arrow18TypedChunkLocationItEC2Ett:bb.a
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ExtensionType6layoutEv(ptr dead_on_unwind noalias writable sret(%"struct.arrow::DataTypeLayout") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"struct.arrow::DataTypeLayout") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ExtensionType8ToStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i1 zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = load ptr, ptr %1, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !41     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.n = load i64, ptr %i.l, align 8, !tbaa !46
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !53, !alias.scope !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !45, !alias.scope !54
  store i8 0, ptr %i.p, align 8, !tbaa !46, !alias.scope !54
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55, !noalias !54 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !54 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59, !noalias !54 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !54 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.p, align 8, !tbaa !46, !alias.scope !54
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !39
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !39
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.an, ptr %i.a, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !46
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #24
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !39
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %3, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !46
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn5 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %i.bd, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13ExtensionType9WrapArrayERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.15") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.18", align 8 ; 8 uses
  %4 = alloca %"class.std::shared_ptr.18", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load ptr, ptr %2, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26, !noalias !74 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !77, !noalias !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !80, !noalias !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !39, !noalias !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  tail call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.d) #24, !noalias !79
  store ptr %i.f, ptr %i.e, align 8, !tbaa !81, !alias.scope !79
  store ptr %i.i, ptr %3, align 8, !tbaa !82, !alias.scope !79
  %i.j = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %i.j, ptr %i.i, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.t = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !80
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24, !inline_history !83
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24, !inline_history !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !84

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !81
  %.pre = load ptr, ptr %3, align 8, !tbaa !65
  %.pre11 = load ptr, ptr %i.e, align 8, !tbaa !81
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.aj = phi ptr [ %i.f, %bb.a ], [ %.pre11, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.ak = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  store ptr %i.ak, ptr %4, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !81
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !81
  store ptr null, ptr %3, align 8, !tbaa !65
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %4)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !81 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !80
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #24, !inline_history !85
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #24, !inline_history !85
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i5 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i5, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !81  ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !80
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #24, !inline_history !85
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #24, !inline_history !85
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i7 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i9 = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.bu, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, !prof !84

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !86
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13ExtensionType9WrapArrayERKSt10shared_ptrINS_8DataTypeEERKS1_INS_12ChunkedArrayEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.36") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.39", align 8    ; 12 uses
  %4 = alloca %"class.std::shared_ptr.18", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.18", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load ptr, ptr %2, align 8, !tbaa !87     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %sext = shl i64 %i.h, 28
  %i.i = ashr i64 %sext, 32                       ; 4 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  store i64 0, ptr %3, align 8
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26 ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.k
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !94
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.n, align 8, !tbaa !90
  %i.p = lshr exact i64 %i.h, 4
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !95
  %i.w = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc19 unwind label %bb.ax  ; 6 uses

.noexc19:                                         ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.x, align 8, !tbaa !77, !noalias !95
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.y, align 4, !tbaa !80, !noalias !95
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8, !tbaa !39, !noalias !95
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEEvPT_DpOT0_(ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ap unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !95

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc19
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 104) #25, !noalias !95
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32
  %i.ab = phi ptr [ %i.e, %.lr.ph ], [ %i.eh, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ag = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26
          to label %bb.c unwind label %bb.am      ; 7 uses

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !77, !noalias !104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !80, !noalias !104
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !39, !noalias !104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull align 8 dereferenceable(120) %i.af) #24, !noalias !104
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !81, !alias.scope !104
  store ptr %i.aj, ptr %4, align 8, !tbaa !82, !alias.scope !104
  %i.ak = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !81  ; 4 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i21 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.at = phi ptr [ %i.an, %bb.d ], [ %i.an, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.au, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !80
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #24, !inline_history !83
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #24, !inline_history !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.k ], [ %i.bh, %bb.l ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !84

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.am, ptr %i.al, align 8, !tbaa !81
  %.pre = load ptr, ptr %4, align 8, !tbaa !65
  %.pre36 = load ptr, ptr %i.s, align 8, !tbaa !81
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bj = phi ptr [ %i.ag, %bb.c ], [ %.pre36, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.bk = phi ptr [ %i.aj, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.bk, ptr %6, align 8, !tbaa !65
  store ptr null, ptr %i.s, align 8, !tbaa !81
  store ptr %i.bj, ptr %i.u, align 8, !tbaa !81
  store ptr null, ptr %4, align 8, !tbaa !65
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %6)
          to label %bb.n unwind label %bb.an

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.bo = load ptr, ptr %3, align 8, !tbaa !93
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load <2 x ptr>, ptr %5, align 16, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !81 ; 8 uses
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !105
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bt, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !80
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24, !inline_history !106
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24, !inline_history !106
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.r ], [ %i.cg, %bb.s ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.t, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !84

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !81  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cj, align 8, !tbaa !77
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !80
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #24, !inline_history !107
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #24, !inline_history !107
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i23 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.cm, %bb.x ], [ %i.cw, %bb.y ]
  %i.cx = icmp eq i32 %.0.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN5arrow13ExtensionType9WrapArrayERKSt10shared_ptrINS_8DataTypeEERKS1_INS_12ChunkedArrayEE:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.an ], [ %i.en, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.ap:                                            ; preds = %.noexc19
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ep, align 8, !tbaa !81, !alias.scope !95
  store ptr %i.z, ptr %0, align 8, !tbaa !110, !alias.scope !95
  %i.eq = load ptr, ptr %3, align 8, !tbaa !93    ; 3 uses
  %i.er = load ptr, ptr %i.n, align 8, !tbaa !90  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fj, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.eq, %bb.ap ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 4294967297
  %i.ex = trunc i64 %i.ev to i32                  ; 2 uses
  br i1 %i.ew, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.eu, align 8, !tbaa !77
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 0, ptr %i.ey, align 4, !tbaa !80
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !39
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #24, !inline_history !111
  %i.fc = load ptr, ptr %i.et, align 8, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #24, !inline_history !111
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = add nsw i32 %i.ex, -1
  store i32 %i.fg, ptr %i.eu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fh = atomicrmw volatile add ptr %i.eu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.at ], [ %i.fh, %bb.au ]
  %i.fi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fi, label %bb.av, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !84

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ar, %.lr.ph.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.fj, %i.er
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !112

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.ap
  %i.fk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.eq, %bb.ap ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.ax:                                            ; preds = %._crit_edge
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ax, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ao ], [ %i.fp, %bb.ax ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !80
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !113
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !113
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !112

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ExtensionArrayC2ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow14ExtensionArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  tail call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ExtensionArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %.not = icmp eq i32 %i.d, 31
  br i1 %.not, label %.critedge14, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 3)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA56_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(56) @.str.5)
          to label %.critedge unwind label %bb.af ; 0 uses

.critedge:                                        ; preds = %bb.b
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.critedge14

.critedge14:                                      ; preds = %bb.a, %.critedge
  call void @_ZN5arrow5Array7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.f = load ptr, ptr %1, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26, !noalias !137 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !77, !noalias !140
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !80, !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !39, !noalias !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.f) #24, !noalias !140
  store ptr %i.h, ptr %i.g, align 8, !tbaa !81, !alias.scope !140
  store ptr %i.k, ptr %3, align 8, !tbaa !82, !alias.scope !140
  %i.l = load ptr, ptr %1, align 8, !tbaa !65
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  store ptr %i.o, ptr %i.k, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %.critedge14
  %.not7.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.y = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !80
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !83
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.an, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !84

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.r, ptr %i.p, align 8, !tbaa !81
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %.critedge14, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %bb.ag

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load <2 x ptr>, ptr %4, align 16, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !81 ; 8 uses
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !105
  %.not.i.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !80
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !106
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !106
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.s, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !84

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !81 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bj, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !80
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #24, !inline_history !107
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #24, !inline_history !107
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i16 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i16, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bm, %bb.w ], [ %i.bw, %bb.x ]
  %i.bx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bx, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #24
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !81  ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.by, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bz, align 8, !tbaa !77
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !80
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #24, !inline_history !85
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #24, !inline_history !85
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i18 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i18, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.ad:                                            ; preds = %bb.ab
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i20 = phi i32 [ %i.cc, %bb.ac ], [ %i.cm, %bb.ad ]
  %i.cn = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.cn, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.af:                                            ; preds = %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.ag ], [ %i.co, %bb.af ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ExtensionArrayC2ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114
  %.not = icmp eq i32 %i.e, 31
  br i1 %.not, label %.critedge29, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull @.str.2, i32 noundef 83, i32 noundef 3)
          to label %bb.c unwind label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA50_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(50) @.str.3)
          to label %.critedge unwind label %bb.aa ; 0 uses

.critedge:                                        ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !33
  br label %.critedge29

.critedge29:                                      ; preds = %bb.a, %.critedge
  %i.g = phi ptr [ %i.c, %bb.a ], [ %.pre, %.critedge ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.critedge29
  br i1 %i.n, label %.critedge32, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 3)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA99_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(99) @.str.4)
          to label %.critedge31 unwind label %bb.ad ; 0 uses

.critedge31:                                      ; preds = %bb.f
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.critedge32

.critedge32:                                      ; preds = %bb.d, %.critedge31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.p = load ptr, ptr %2, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26
          to label %bb.g unwind label %bb.af      ; 6 uses

bb.g:                                             ; preds = %.critedge32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !77, !noalias !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !80, !noalias !147
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !39, !noalias !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 8 dereferenceable(120) %i.r) #24, !noalias !147
  store ptr %i.t, ptr %i.s, align 8, !tbaa !81, !alias.scope !147
  store ptr %i.w, ptr %5, align 8, !tbaa !82, !alias.scope !147
  %i.x = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %i.x, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 4 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !81  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.ab, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ai, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !80
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #24, !inline_history !83
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #24, !inline_history !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.al, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !84

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !81
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  invoke void @_ZN5arrow14ExtensionArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !81  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ay, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !80
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !85
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !85
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.v ], [ %i.bl, %bb.w ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.y:                                             ; preds = %.critedge29
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.aa ], [ %i.bo, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ai

bb.ac:                                            ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn24 = phi { ptr, i32 } [ %i.br, %bb.ad ], [ %i.bq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ai

bb.af:                                            ; preds = %.critedge32
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn26 = phi { ptr, i32 } [ %i.bt, %bb.ag ], [ %i.bs, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ab, %bb.y
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ah ], [ %.pn24, %bb.ae ], [ %i.bn, %bb.y ], [ %.pn, %bb.ab ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
end_hunk_1
begin_hunk_2_@_ZN5arrow5Array7SetDataERKSt10shared_ptrINS_9ArrayDataEE:bb.a
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !155, !range !163, !noundef !164
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit

_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.l, align 8, !tbaa !165
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81   ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit
  %.not7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.w = phi ptr [ %i.q, %bb.e ], [ %i.q, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.x, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !80
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !168
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !168
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i9.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.l ], [ %i.ak, %bb.m ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !84

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !81
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret void
}

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.15") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.51") align 8 captures(none) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.127, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr @_ZN5arrow8internalL20CreateGlobalRegistryEv, ptr %1, align 8, !tbaa !105
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !105
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !105
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrowL20registry_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !105
  store ptr null, ptr %i.b, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d

_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !105
  store ptr null, ptr %i.b, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrowL10g_registryE, i64 8), align 8, !tbaa !81 ; 2 uses
  %i.f = load <2 x ptr>, ptr @_ZN5arrowL10g_registryE, align 16, !tbaa !105
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow21ExtensionTypeRegistryEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow21ExtensionTypeRegistryEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow21ExtensionTypeRegistryEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow21ExtensionTypeRegistryEEC2ERKS2_.exit: ; preds = %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internalL20CreateGlobalRegistryEv() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::vector.73", align 8    ; 12 uses
  %1 = alloca [3 x %"class.std::shared_ptr"], align 16 ; 19 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.std::shared_ptr.56", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %7 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26, !noalias !169 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !77, !noalias !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !80, !noalias !174
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !39, !noalias !174
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow25ExtensionTypeRegistryImplE, i64 16), ptr %i.d, align 8, !tbaa !39, !noalias !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false), !noalias !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.g, ptr %i.f, align 8, !tbaa !175, !noalias !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 1, ptr %i.h, align 8, !tbaa !183, !noalias !174
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !174
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !184, !noalias !174
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !174
  store ptr %i.d, ptr @_ZN5arrowL10g_registryE, align 16, !tbaa !185
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrowL10g_registryE, i64 8), align 8, !tbaa !81 ; 8 uses
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrowL10g_registryE, i64 8), align 8, !tbaa !81
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.m, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !80
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !187
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !187
  br label %_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24
  br label %_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN5arrow9extension5bool8Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1)
          to label %bb.h unwind label %bb.ba

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow25ExtensionTypeRegistryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %bb.i unwind label %bb.ba      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !105
  store <2 x ptr> %i.ag, ptr %2, align 16, !tbaa !105
  %.not.i.i.i46 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i47 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.i, %bb.k, %bb.l
  invoke void @_ZN5arrow9extension4jsonESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.ab, ptr noundef nonnull %2)
          to label %bb.m unwind label %bb.bb

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  invoke void @_ZN5arrow9extension4uuidEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.am)
          to label %bb.n unwind label %bb.bb

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.an = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc unwind label %.loopexit87.loopexit ; 7 uses

.noexc:                                           ; preds = %bb.n
  store ptr %i.an, ptr %0, align 8, !tbaa !188
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81 ; 2 uses
  %i.as = load <2 x ptr>, ptr %1, align 16, !tbaa !105
  store <2 x ptr> %i.as, ptr %i.an, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ab, align 16, !tbaa !105
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.t:                                             ; preds = %bb.r
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.t, %bb.s, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81 ; 3 uses
  %i.bk = load <2 x ptr>, ptr %i.am, align 16, !tbaa !105
  store <2 x ptr> %i.bk, ptr %i.bh, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i.i.i.2 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.2, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.thread, label %bb.u

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.thread: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !192
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.thread121

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.thread121: ; preds = %bb.u
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !3
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !192
  br label %bb.v

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2: ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow23UnregisterExtensionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !81   ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !80
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !223
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !223
  br label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24
  br label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.o:                                             ; preds = %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16GetExtensionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.127, align 8            ; 5 uses
  %3 = alloca %"class.std::shared_ptr.51", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !227
  store ptr @_ZN5arrow8internalL20CreateGlobalRegistryEv, ptr %2, align 8, !tbaa !105, !noalias !227
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !105, !noalias !227
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !105, !noalias !227
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrowL20registry_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d, !noalias !227 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
          to label %bb.c unwind label %bb.d, !noalias !227

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.ag, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !105, !noalias !227
  store ptr null, ptr %i.b, align 8, !tbaa !105, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !227
  br label %common.resume

_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !105, !noalias !227
  store ptr null, ptr %i.b, align 8, !tbaa !105, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !227
  %i.e = load ptr, ptr @_ZN5arrowL10g_registryE, align 16, !tbaa !197, !noalias !227 ; 3 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !197, !alias.scope !227
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrowL10g_registryE, i64 8), align 8, !tbaa !81, !noalias !227 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !81, !alias.scope !227
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !227
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !227
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !227
  br label %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit

bb.g:                                             ; preds = %bb.e
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !227 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !197
  br label %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit

_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit: ; preds = %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit.i, %bb.f, %bb.g
  %i.m = phi ptr [ %i.e, %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit.i ], [ %i.e, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !81   ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !80
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !223
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !223
  br label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24
  br label %_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.o:                                             ; preds = %_ZN5arrow21ExtensionTypeRegistry17GetGlobalRegistryEv.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow21ExtensionTypeRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13ExtensionTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5arrow13ExtensionTypeE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !193
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !193
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow8DataTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13ExtensionTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @_ZNK5arrow8DataType18ComputeFingerprintB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare void @_ZNK5arrow8DataType26ComputeMetadataFingerprintB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow13ExtensionType4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow13ExtensionType10storage_idEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5arrow13ExtensionType10byte_widthEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(72) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5arrow13ExtensionType9bit_widthEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(72) %i.b)
  ret i32 %i.f
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14ExtensionArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !107
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !107
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !80
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !230
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !230
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow5ArrayD2Ev.exit, !prof !84

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !231
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14ExtensionArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !232
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !232
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !233
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow14ExtensionArrayD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !80
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !234
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !234
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14ExtensionArrayD2Ev.exit, !prof !84

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !235
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

_ZN5arrow14ExtensionArrayD2Ev.exit:               ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #25
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow9ArrayDataEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !105
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !238
  store i64 %i.k, ptr %i.i, align 8, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  store i64 %i.n, ptr %i.l, align 8, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !255
  store i64 %i.q, ptr %i.o, align 8, !tbaa !255
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !151  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i9, label %.noexc10, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775792
  br i1 %i.z, label %.noexc.i.i18.invoke, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i, !prof !84

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc10 unwind label %bb.s

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ab = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %i.aa, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow9ArrayDataD2Ev:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !151 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.cf, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.bl, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i9 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i9, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !80
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #24, !inline_history !268
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #24, !inline_history !268
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i10, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i12 = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i12, 1
  br i1 %i.ce, label %bb.z, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !84

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11, %bb.v, %.lr.ph.i.i.i7
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.cf, %i.bn
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !269

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i14 = load ptr, ptr %i.bk, align 8, !tbaa !151
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.cg = phi ptr [ %.pr.i14, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bl, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i15 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !256
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !81 ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.co, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !80
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #24, !inline_history !193
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #24, !inline_history !193
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i17 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.af:                                            ; preds = %bb.ad
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i19 = phi i32 [ %i.cr, %bb.ae ], [ %i.db, %bb.af ]
  %i.dc = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.dc, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.ag
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !86
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !85
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !85
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !230
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !231
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

declare void @_ZN5arrow9extension5bool8Ev(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #3

declare void @_ZN5arrow9extension4jsonESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev() local_unnamed_addr #3

declare void @_ZN5arrow9extension4uuidEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(19) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA72_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(72) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = load ptr, ptr %1, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !188    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !80
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !270
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !270
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !196

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !188
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !191
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow25ExtensionTypeRegistryImplEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #24, !inline_history !271
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow25ExtensionTypeRegistryImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow25ExtensionTypeRegistryImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow25ExtensionTypeRegistryImplE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN5arrow13ExtensionTypeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183
  %i.g = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #25
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow25ExtensionTypeRegistryImplD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow25ExtensionTypeRegistryImplE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN5arrow13ExtensionTypeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #24, !inline_history !272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5arrow25ExtensionTypeRegistryImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183
  %i.g = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #25, !inline_history !272
  br label %_ZN5arrow25ExtensionTypeRegistryImplD2Ev.exit

_ZN5arrow25ExtensionTypeRegistryImplD2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow25ExtensionTypeRegistryImpl12RegisterTypeESt10shared_ptrINS_13ExtensionTypeEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = load ptr, ptr %2, align 8, !tbaa !206    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN5arrow13ExtensionTypeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit unwind label %bb.h

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit: ; preds = %bb.c
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !273
  invoke void @_ZN5arrow8internal12JoinToStringIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(28) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(17) @.str.14)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %3, align 8, !tbaa !41, !noalias !273 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5arrow6Status8KeyErrorIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !46, !noalias !273
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN5arrow6Status8KeyErrorIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEES0_DpOT_.exit

bb.f:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !41, !noalias !273 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !46, !noalias !273
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !273
  br label %.body

_ZN5arrow6Status8KeyErrorIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !273
  br label %bb.p

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.i, %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ] ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !41     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.z = load i64, ptr %i.x, align 8, !tbaa !46
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN5arrow13ExtensionTypeEEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit unwind label %bb.h ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load <2 x ptr>, ptr %2, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 8 uses
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !105
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.af, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !80
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !278
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !278
  br label %_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.m ], [ %i.as, %bb.n ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.o, label %_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit, !prof !84

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24
  br label %_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow13ExtensionTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  store ptr null, ptr %0, align 8, !tbaa !209, !alias.scope !279
  br label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6Status8KeyErrorIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEES0_DpOT_.exit, %_ZNSt10shared_ptrIN5arrow13ExtensionTypeEEaSEOS2_.exit
  %i.au = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.p
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !46
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  resume { ptr, i32 } %.pn
end_hunk_4
