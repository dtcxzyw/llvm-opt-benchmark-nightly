Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4i18n12phonenumbers8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers8StrToIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !37
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !37
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.r, ptr %i.a, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.z = and i32 %i.l, 5
  %.not = icmp eq i32 %i.z, 0
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #28
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !37
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ah) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.not

bb.c:                                             ; preds = %bb.a, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers8IntToStrEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %0)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !37
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !37
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8, !tbaa !37
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.o, ptr %i.a, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = and i32 %i.i, 5
  %.not = icmp eq i32 %i.w, 0
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #28
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !37
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.not

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.af
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers13ParsePrefixesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4absl7debian39btree_mapIiS6_St4lessIiESaISt4pairIKiS6_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.88", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef %i.g, ptr noundef nonnull %i.h)
  br label %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit

_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.i, align 8, !tbaa !56
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %1, align 8, !tbaa !56
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = tail call noalias ptr @fopen(ptr noundef %i.j, ptr noundef nonnull @.str.3) ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN4i18n12phonenumbers10AutoCloserI8_IO_FILEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit
  %i.l = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #31
          to label %bb.d unwind label %bb.i       ; 14 uses

bb.d:                                             ; preds = %bb.c
  %7 = ptrtoaddr ptr %i.l to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %i.l, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !29
  store i8 0, ptr %i.n, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.r = call ptr @fgets(ptr noundef nonnull %i.l, i32 noundef 2048, ptr noundef nonnull %i.k)
  %.not22176 = icmp eq ptr %i.r, null
  br i1 %.not22176, label %._crit_edge, label %.lr.ph.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.preheader.lr.ph:                     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = xor i64 %7, -1
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.x
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader.lr.ph
  %.052.i.i.i = phi i64 [ 512, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.052.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.sroa.032.051.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 9 uses
  %i.y = load i8, ptr %.sroa.032.051.i.i.i, align 1, !tbaa !26
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit237, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit235, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit233, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ak = add nsw i64 %.052.i.i.i, -1
  %i.al = icmp samesign ugt i64 %.052.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.backedge, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.thread

.lr.ph.i.i.i.backedge:                            ; preds = %bb.h, %.backedge
  %.052.i.i.i.be = phi i64 [ %i.ak, %bb.h ], [ 512, %.backedge ]
  %.sroa.032.051.i.i.i.be = phi ptr [ %i.aj, %bb.h ], [ %i.l, %.backedge ]
  br label %.lr.ph.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit233: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit235: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit237: ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit237, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit235, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit233
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %i.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit235 ], [ %i.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit237 ], [ %i.am, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.split.loop.exit233 ], [ %.sroa.032.051.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.l
  br i1 %i.ap, label %.backedge, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4i18n12phonenumbers10AutoCloserI8_IO_FILEED2Ev.exit98

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.thread: ; preds = %bb.h, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit
  %.sroa.08.0.in.sroa.speculated.i.i.i144 = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit ], [ %i.m, %bb.h ] ; 3 uses
  %.sroa.08.0.in.sroa.speculated.i.i.i144185 = ptrtoaddr ptr %.sroa.08.0.in.sroa.speculated.i.i.i144 to i64 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i144, i64 -1 ; 5 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !26
  %.not23 = icmp eq i8 %i.at, 10
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.thread
  %i.au = call i32 @feof(ptr noundef nonnull %i.k) #28
  %.not24 = icmp eq i32 %i.au, 0
  br i1 %.not24, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit.thread
  %.not145164 = icmp eq ptr %i.l, %i.as
  br i1 %.not145164, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %scevgep186.a = getelementptr i8, ptr %scevgep, i64 %.sroa.08.0.in.sroa.speculated.i.i.i144185
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.sroa.0119.0165 = phi ptr [ %i.ay, %bb.m ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %i.av = load i8, ptr %.sroa.0119.0165, align 1, !tbaa !26
  %i.aw = sext i8 %i.av to i32
  %i.ax = call i32 @isspace(i32 noundef %i.aw) #32
  %.not25 = icmp eq i32 %i.ax, 0
  br i1 %.not25, label %.critedge.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0119.0165, i64 1 ; 2 uses
  %.not145 = icmp eq ptr %i.ay, %i.as
  br i1 %.not145, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !154

.critedge.loopexit:                               ; preds = %bb.m, %.lr.ph
  %.sroa.0119.0.lcssa.ph = phi ptr [ %.sroa.0119.0165, %.lr.ph ], [ %scevgep186.a, %bb.m ] ; 2 uses
  %.pre = ptrtoaddr ptr %.sroa.0119.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
  %.sroa.0119.0.lcssa187.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %7, %bb.l ]
  %.sroa.0119.0.lcssa = phi ptr [ %.sroa.0119.0.lcssa.ph, %.critedge.loopexit ], [ %i.l, %bb.l ] ; 14 uses
  %i.az = sub i64 %.sroa.0119.0.lcssa187.pre-phi, %.sroa.08.0.in.sroa.speculated.i.i.i144185
  %scevgep188 = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i144, i64 %i.az ; 2 uses
  %.not146257 = icmp eq ptr %i.as, %.sroa.0119.0.lcssa
  br i1 %.not146257, label %.critedge2, label %.lr.ph259

bb.n:                                             ; preds = %.lr.ph259
  %.not146 = icmp eq ptr %i.ba, %.sroa.0119.0.lcssa
  br i1 %.not146, label %.critedge2, label %.lr.ph259, !llvm.loop !155

.lr.ph259:                                        ; preds = %.critedge, %bb.n
  %.sroa.0110.0258 = phi ptr [ %i.ba, %bb.n ], [ %i.as, %.critedge ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0110.0258, i64 -1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !26
  %i.bc = sext i8 %i.bb to i32
  %i.bd = call i32 @isspace(i32 noundef %i.bc) #32
  %.not26 = icmp eq i32 %i.bd, 0
  br i1 %.not26, label %..critedge2_crit_edge260, label %bb.n, !llvm.loop !155

..critedge2_crit_edge260:                         ; preds = %.lr.ph259
  br label %.critedge2, !llvm.loop !155

.critedge2:                                       ; preds = %bb.n, %..critedge2_crit_edge260, %.critedge
  %.sroa.0110.0.lcssa = phi ptr [ %scevgep188, %.critedge ], [ %.sroa.0110.0258, %..critedge2_crit_edge260 ], [ %scevgep188, %bb.n ] ; 6 uses
  %i.be = icmp eq ptr %.sroa.0119.0.lcssa, %.sroa.0110.0.lcssa
  br i1 %i.be, label %.backedge, label %bb.o

bb.o:                                             ; preds = %.critedge2
  %i.bf = load i8, ptr %.sroa.0119.0.lcssa, align 1, !tbaa !26
  %i.bg = icmp eq i8 %i.bf, 35
  br i1 %i.bg, label %.backedge, label %bb.p

.backedge:                                        ; preds = %._crit_edge.i.i.i30, %.critedge2, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50
  %i.bh = call ptr @fgets(ptr noundef nonnull %i.l, i32 noundef 2048, ptr noundef nonnull %i.k)
  %.not22 = icmp eq ptr %i.bh, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph.i.i.i.backedge

bb.p:                                             ; preds = %bb.o
  %i.bi = ptrtoint ptr %.sroa.0110.0.lcssa to i64 ; 5 uses
  %i.bj = ptrtoint ptr %.sroa.0119.0.lcssa to i64 ; 4 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr i64 %i.bk, 2                       ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i41, label %._crit_edge.i.i.i30

.lr.ph.i.i.i41:                                   ; preds = %bb.p
  %i.bn = and i64 %i.bk, -4
  %scevgep.i.i.i42 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %i.bn ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i41
  %.052.i.i.i43 = phi i64 [ %i.bl, %.lr.ph.i.i.i41 ], [ %i.ca, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i44 = phi ptr [ %.sroa.0119.0.lcssa, %.lr.ph.i.i.i41 ], [ %i.bz, %bb.u ] ; 9 uses
  %i.bo = load i8, ptr %.sroa.032.051.i.i.i44, align 1, !tbaa !26
  %i.bp = icmp eq i8 %i.bo, 124
  br i1 %i.bp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26
  %i.bs = icmp eq i8 %i.br, 124
  br i1 %i.bs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %i.bv = icmp eq i8 %i.bu, 124
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !26
  %i.by = icmp eq i8 %i.bx, 124
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 4
  %i.ca = add nsw i64 %.052.i.i.i43, -1
  %i.cb = icmp sgt i64 %.052.i.i.i43, 1
  br i1 %i.cb, label %bb.q, label %._crit_edge.loopexit.i.i.i45, !llvm.loop !156

._crit_edge.loopexit.i.i.i45:                     ; preds = %bb.u
  %.pre59.i.i.i46 = ptrtoint ptr %scevgep.i.i.i42 to i64
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %._crit_edge.loopexit.i.i.i45, %bb.p
  %.pre-phi.i.i.i31 = phi i64 [ %.pre59.i.i.i46, %._crit_edge.loopexit.i.i.i45 ], [ %i.bj, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i32 = phi ptr [ %scevgep.i.i.i42, %._crit_edge.loopexit.i.i.i45 ], [ %.sroa.0119.0.lcssa, %bb.p ] ; 5 uses
  %i.cc = sub i64 %i.bi, %.pre-phi.i.i.i31
  switch i64 %i.cc, label %.backedge [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i38
    i64 1, label %._crit_edge._crit_edge57.i.i.i33
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i30
  %i.cd = load i8, ptr %.sroa.032.0.lcssa.i.i.i32, align 1, !tbaa !26
  %i.ce = icmp eq i8 %i.cd, 124
  br i1 %i.ce, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i32, i64 1
  br label %._crit_edge._crit_edge.i.i.i38

._crit_edge._crit_edge.i.i.i38:                   ; preds = %._crit_edge.i.i.i30, %bb.w
  %.sroa.032.1.i.i.i40 = phi ptr [ %i.cf, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i32, %._crit_edge.i.i.i30 ] ; 3 uses
  %i.cg = load i8, ptr %.sroa.032.1.i.i.i40, align 1, !tbaa !26
  %i.ch = icmp eq i8 %i.cg, 124
  br i1 %i.ch, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i38
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i40, i64 1
  br label %._crit_edge._crit_edge57.i.i.i33

._crit_edge._crit_edge57.i.i.i33:                 ; preds = %._crit_edge.i.i.i30, %bb.x
  %.sroa.032.2.i.i.i35 = phi ptr [ %i.ci, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i32, %._crit_edge.i.i.i30 ] ; 2 uses
  %i.cj = load i8, ptr %.sroa.032.2.i.i.i35, align 1, !tbaa !26
  %i.ck = icmp eq i8 %i.cj, 124
  %spec.select.i.i.i36 = select i1 %i.ck, ptr %.sroa.032.2.i.i.i35, ptr %.sroa.0110.0.lcssa
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit: ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241: ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243, %._crit_edge._crit_edge57.i.i.i33, %._crit_edge._crit_edge.i.i.i38, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i37 = phi ptr [ %.sroa.032.1.i.i.i40, %._crit_edge._crit_edge.i.i.i38 ], [ %spec.select.i.i.i36, %._crit_edge._crit_edge57.i.i.i33 ], [ %.sroa.032.0.lcssa.i.i.i32, %bb.v ], [ %i.cl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit ], [ %i.cn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243 ], [ %i.cm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241 ], [ %.sroa.032.051.i.i.i44, %bb.q ] ; 5 uses
  %i.co = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i37, %.sroa.0110.0.lcssa
  br i1 %i.co, label %.backedge, label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.s, ptr %5, align 8, !tbaa !30
  store i64 0, ptr %i.t, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cp = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i37 to i64 ; 4 uses
  %i.cq = sub i64 %i.cp, %i.bj                    ; 10 uses
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !31
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cs, ptr %5, align 8, !tbaa !25
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  store i64 %i.ct, ptr %i.s, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.y
  %i.cu = phi i64 [ %i.ct, %.noexc ], [ %i.cq, %bb.y ]
  %i.cv = phi ptr [ %i.cs, %.noexc ], [ %i.s, %bb.y ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.0119.0.lcssa, %.sroa.08.0.in.sroa.speculated.i.i.i37
  br i1 %.not5.i.i.i, label %bb.z, label %iter.check291

iter.check291:                                    ; preds = %._crit_edge.i.i
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %min.iters.check275 = icmp ult i64 %i.cq, 8
  %i.cx = sub i64 %i.bj, %i.cw
  %diff.check277 = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check275, i1 true, i1 %diff.check277
  br i1 %or.cond, label %.lr.ph.i.i.i51.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %iter.check291
  %min.iters.check279 = icmp ult i64 %i.cq, 32
  br i1 %min.iters.check279, label %vec.epilog.ph295, label %vector.ph280

vector.ph280:                                     ; preds = %vector.main.loop.iter.check278
  %i.cy = and i64 %i.cq, 24
  %n.vec281 = and i64 %i.cq, -32                  ; 5 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 %n.vec281
  %i.da = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %n.vec281
  br label %vector.body282

vector.body282:                                   ; preds = %vector.ph280, %vector.body282
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 3 uses
  %next.gep284.a = getelementptr i8, ptr %i.cv, i64 %index283 ; 2 uses
  %next.gep285 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %index283 ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286.a = load <16 x i8>, ptr %next.gep285, align 1, !tbaa !26
  %wide.load287 = load <16 x i8>, ptr %i.db, align 1, !tbaa !26
  %i.dc = getelementptr i8, ptr %next.gep284.a, i64 16
  store <16 x i8> %wide.load286.a, ptr %next.gep284.a, align 1, !tbaa !26
  store <16 x i8> %wide.load287, ptr %i.dc, align 1, !tbaa !26
  %index.next288 = add nuw i64 %index283, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.dd, label %middle.block289, label %vector.body282, !llvm.loop !157

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.cq, %n.vec281
  br i1 %cmp.n290, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check292

vec.epilog.iter.check292:                         ; preds = %middle.block289
  %min.epilog.iters.check294 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check294, label %.lr.ph.i.i.i51.preheader, label %vec.epilog.ph295, !prof !59

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check278, %vec.epilog.iter.check292
  %vec.epilog.resume.val296 = phi i64 [ %n.vec281, %vec.epilog.iter.check292 ], [ 0, %vector.main.loop.iter.check278 ]
  %n.vec297 = and i64 %i.cq, -8                   ; 4 uses
  %i.de = getelementptr i8, ptr %i.cv, i64 %n.vec297
  %i.df = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %n.vec297
  br label %vec.epilog.vector.body298

vec.epilog.vector.body298:                        ; preds = %vec.epilog.vector.body298, %vec.epilog.ph295
  %index299 = phi i64 [ %vec.epilog.resume.val296, %vec.epilog.ph295 ], [ %index.next303, %vec.epilog.vector.body298 ] ; 3 uses
  %next.gep300.a = getelementptr i8, ptr %i.cv, i64 %index299
  %next.gep301 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %index299
  %wide.load302 = load <8 x i8>, ptr %next.gep301, align 1, !tbaa !26
  store <8 x i8> %wide.load302, ptr %next.gep300.a, align 1, !tbaa !26
  %index.next303 = add nuw i64 %index299, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next303, %n.vec297
  br i1 %i.dg, label %vec.epilog.middle.block304, label %vec.epilog.vector.body298, !llvm.loop !158

vec.epilog.middle.block304:                       ; preds = %vec.epilog.vector.body298
  %cmp.n305 = icmp eq i64 %i.cq, %n.vec297
  br i1 %cmp.n305, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %iter.check291, %vec.epilog.iter.check292, %vec.epilog.middle.block304
  %.07.i.i.i.ph = phi ptr [ %i.cv, %iter.check291 ], [ %i.cz, %vec.epilog.iter.check292 ], [ %i.de, %vec.epilog.middle.block304 ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %.sroa.0119.0.lcssa, %iter.check291 ], [ %i.da, %vec.epilog.iter.check292 ], [ %i.df, %vec.epilog.middle.block304 ] ; 3 uses
  %.sroa.02.06.i.i.i.ph313 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.dh = sub i64 %i.cp, %.sroa.02.06.i.i.i.ph313
  %xtraiter = and i64 %i.dh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i51.prol

.lr.ph.i.i.i51.prol:                              ; preds = %.lr.ph.i.i.i51.preheader, %.lr.ph.i.i.i51.prol
  %.07.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i.i51.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i51.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i51.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i51.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i51.prol ], [ 0, %.lr.ph.i.i.i51.preheader ]
  %i.di = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !26
  store i8 %i.di, ptr %.07.i.i.i.prol, align 1, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i51.prol, !llvm.loop !159

.lr.ph.i.i.i51.prol.loopexit:                     ; preds = %.lr.ph.i.i.i51.prol, %.lr.ph.i.i.i51.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i51.preheader ], [ %i.dk, %.lr.ph.i.i.i51.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i51.preheader ], [ %i.dj, %.lr.ph.i.i.i51.prol ]
  %i.dl = sub i64 %.sroa.02.06.i.i.i.ph313, %i.cp
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51
  %.07.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i51 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i51.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i51 ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i51.prol.loopexit ] ; 9 uses
  %i.dn = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !26
  store i8 %i.dn, ptr %.07.i.i.i, align 1, !tbaa !26
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !26
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !26
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !26
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !26
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !26
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !26
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.ee = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !26
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !26
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !26
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !26
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.ej, %.sroa.08.0.in.sroa.speculated.i.i.i37
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51, !llvm.loop !160

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51, %vec.epilog.middle.block304, %middle.block289
  %.pre16.i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %.pre17.i.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.el = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.cv, %._crit_edge.i.i ]
  %i.em = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.cu, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.em, ptr %i.t, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.eo = load ptr, ptr %3, align 8, !tbaa !25    ; 6 uses
  %i.ep = icmp eq ptr %i.eo, %i.n
  %i.eq = load ptr, ptr %5, align 8, !tbaa !25    ; 5 uses
  %i.er = icmp eq ptr %i.eq, %i.s                 ; 2 uses
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  br i1 %i.er, label %bb.aa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.z
  br i1 %i.er, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.es = load i64, ptr %i.t, align 8, !tbaa !29  ; 3 uses
  %i.et = icmp ult i64 %i.es, 16
  call void @llvm.assume(i1 %i.et)
  switch i64 %i.es, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !26
  store i8 %i.eu, ptr %i.eo, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.eq, i64 %i.es, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ev = load i64, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  store i64 %i.ev, ptr %i.o, align 8, !tbaa !29
  %i.ew = load ptr, ptr %3, align 8, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.eq, ptr %3, align 8, !tbaa !25
  %i.ey = load <2 x i64>, ptr %i.t, align 8, !tbaa !26
  store <2 x i64> %i.ey, ptr %i.o, align 8, !tbaa !26
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ez = load i64, ptr %i.n, align 8, !tbaa !26
  store ptr %i.eq, ptr %3, align 8, !tbaa !25
  %i.fa = load <2 x i64>, ptr %i.t, align 8, !tbaa !26
  store <2 x i64> %i.fa, ptr %i.o, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.eo, ptr %5, align 8, !tbaa !25
  store i64 %i.ez, ptr %i.s, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %i.fb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.eo, %bb.ad ], [ %i.s, %bb.ae ]
  store i64 0, ptr %i.t, align 8, !tbaa !29
  store i8 0, ptr %i.fb, align 1, !tbaa !26
  %i.fc = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.s
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fe = load i64, ptr %i.s, align 8, !tbaa !26
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.fg = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers8StrToIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.c)
          to label %bb.af unwind label %bb.j

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.fg, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %.noexc.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i37, i64 1 ; 8 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !30
  store i64 0, ptr %i.v, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.bi, %i.fj                    ; 10 uses
  store i64 %i.fk, ptr %i.a, align 8, !tbaa !31
  %i.fl = icmp ugt i64 %i.fk, 15
  br i1 %i.fl, label %.noexc.i61, label %._crit_edge.i.i52

.noexc.i61:                                       ; preds = %bb.ah
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %bb.av  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i61
  store ptr %i.fm, ptr %6, align 8, !tbaa !25
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  store i64 %i.fn, ptr %i.u, align 8, !tbaa !26
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc62, %bb.ah
  %i.fo = phi i64 [ %i.fn, %.noexc62 ], [ %i.fk, %bb.ah ]
  %i.fp = phi ptr [ %i.fm, %.noexc62 ], [ %i.u, %bb.ah ] ; 8 uses
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %.not5.i.i.i53 = icmp eq ptr %i.fi, %.sroa.0110.0.lcssa
  br i1 %.not5.i.i.i53, label %bb.ai, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i52
  %min.iters.check = icmp ult i64 %i.fk, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i54.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fr = sub i64 %i.fq, %i.cp
end_hunk_0
begin_hunk_1_@_ZN4i18n12phonenumbers21WriteCountryLanguagesERKSt3mapIiSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EES9_IiESaISt4pairIKiSC_EEEP8_IO_FILE:bb.a

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %._crit_edge162
  %.not117 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ true, %._crit_edge162 ]
  %i.eg = load ptr, ptr %3, align 8, !tbaa !108   ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eg, %i.ei
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.eg, %bb.r ] ; 3 uses
  %i.ej = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !26
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eo, %i.ei
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.r
  %i.ep = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.eg, %bb.r ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !106
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ev = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i71 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not4.i.i.i71, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i79, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75
  %.05.i.i.i73 = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75 ], [ %i.ev, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i73, align 8, !tbaa !25 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i73, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %.lr.ph.i.i.i72
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !26
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75: ; preds = %.lr.ph.i.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i73, i64 32 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.fd, %i.ex
  br i1 %.not.i.i.i76, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i77, label %.lr.ph.i.i.i72, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i77: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i75
  %.pr.i78 = load ptr, ptr %2, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i79

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i79: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i77, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.fe = phi ptr [ %.pr.i78, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i77 ], [ %i.ev, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i80 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i1.i80, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit82, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i79
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !106
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit82

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit82: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i79, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.not117
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers10ReplaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !30
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !31
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.k, ptr %i.e, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !26
  store i8 %i.m, ptr %i.l, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !29
  %i.p = load ptr, ptr %0, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit59

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.r, align 8, !tbaa !29
  store i8 0, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %1, align 8, !tbaa !25     ; 3 uses
  %4 = ptrtoint ptr %i.s to i64                   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !25
  %i.u = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.t, i64 noundef 0, i64 noundef %i.c) #28 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit, %bb.e
  %.sroa.056.0.lcssa = phi ptr [ %i.s, %bb.e ], [ %i.cm, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  %.lcssa = phi i64 [ %4, %bb.e ], [ %i.co, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  %i.x = load ptr, ptr %1, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.lcssa                  ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %.loopexit59

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %i.as, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %i.ac, %._crit_edge ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %.sroa.056.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ae = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !26
  %i.af = load i64, ptr %i.r, align 8, !tbaa !29  ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.e
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.f, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.an = phi ptr [ %.pre.i.i.i.i.i.i.i, %.noexc ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 %i.ae, ptr %i.ao, align 1, !tbaa !26
  store i64 %i.ag, ptr %i.r, align 8, !tbaa !29
  %i.ap = load ptr, ptr %0, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i8 0, ptr %i.aq, align 1, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.as = add nsw i64 %.07.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %.loopexit59, !llvm.loop !240

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.i, %bb.h
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit
  %i.aw = phi i64 [ %i.u, %.lr.ph ], [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  %5 = phi i64 [ %4, %.lr.ph ], [ %i.co, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  %.sroa.056.067 = phi ptr [ %i.s, %.lr.ph ], [ %i.cm, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  %i.ax = load ptr, ptr %1, align 8, !tbaa !25
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aw ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %5                       ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit43

.lr.ph.i.i.i.i.i34:                               ; preds = %bb.g, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39
  %.07.i.i.i.i.i35 = phi i64 [ %i.bq, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39 ], [ %i.ba, %bb.g ] ; 2 uses
  %.056.i.i.i.i.i36 = phi ptr [ %i.bp, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39 ], [ %.sroa.056.067, %bb.g ] ; 2 uses
  %i.bc = load i8, ptr %.056.i.i.i.i.i36, align 1, !tbaa !26
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !29  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.e
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i41: ; preds = %.lr.ph.i.i.i.i.i34
  %i.bh = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i34
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i41
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i41 ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i40 = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39: ; preds = %.noexc42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38
  %i.bl = phi ptr [ %.pre.i.i.i.i.i.i.i40, %.noexc42 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i38 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 %i.bc, ptr %i.bm, align 1, !tbaa !26
  store i64 %i.be, ptr %i.r, align 8, !tbaa !29
  %i.bn = load ptr, ptr %0, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i36, i64 1
  %i.bq = add nsw i64 %.07.i.i.i.i.i35, -1
  %i.br = icmp sgt i64 %.07.i.i.i.i.i35, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit43, !llvm.loop !240

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit43: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i39, %bb.g
  %i.bs = load i64, ptr %i.w, align 8, !tbaa !29  ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit43
  %i.bu = load ptr, ptr %3, align 8, !tbaa !25
  br label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49
  %.07.i.i.i.i.i45 = phi i64 [ %i.cj, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49 ], [ %i.bs, %.lr.ph.i.i.i.i.i44.preheader ] ; 2 uses
  %.056.i.i.i.i.i46 = phi ptr [ %i.ci, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49 ], [ %i.bu, %.lr.ph.i.i.i.i.i44.preheader ] ; 2 uses
  %i.bv = load i8, ptr %.056.i.i.i.i.i46, align 1, !tbaa !26
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !29  ; 4 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.e
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i.i.i.i.i44
  %i.ca = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i44
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i51
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i47 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i51 ]
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i50 = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49: ; preds = %.noexc52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48
  %i.ce = phi ptr [ %.pre.i.i.i.i.i.i.i50, %.noexc52 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i48 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i8 %i.bv, ptr %i.cf, align 1, !tbaa !26
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !29
  %i.cg = load ptr, ptr %0, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx
  store i8 0, ptr %i.ch, align 1, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i46, i64 1
  %i.cj = add nsw i64 %.07.i.i.i.i.i45, -1
  %i.ck = icmp sgt i64 %.07.i.i.i.i.i45, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit, !llvm.loop !240

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i49, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit43
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ay, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %1, align 8, !tbaa !25
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = load ptr, ptr %2, align 8, !tbaa !25
  %i.cs = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cr, i64 noundef %i.cq, i64 noundef %i.cl) #28 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %._crit_edge, label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !26
  %i.cv = add i64 %i.cu, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp89

.loopexit59:                                      ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers25WriteAccessorsDefinitionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8_IO_FILE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 670, ptr %i.a, align 8, !tbaa !31
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(670) %i.c, ptr noundef nonnull align 1 dereferenceable(670) @.str.39, i64 670, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !30
  store i64 2627966271080263716, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !26
  invoke void @_ZN4i18n12phonenumbers10ReplaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.g, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !25
  %fputs = call i32 @fputs(ptr %i.n, ptr %1)      ; 0 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.t = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.v = load i64, ptr %i.b, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.b
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ac = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers11WriteSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_P8_IO_FILE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple", align 8        ; 4 uses
  %5 = alloca %"class.std::tuple.93", align 1     ; 3 uses
  %6 = alloca %"class.std::tuple.127", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.93", align 1     ; 3 uses
  %8 = alloca %"struct.std::pair.122", align 8    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 37 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.absl::debian3::btree_map.30", align 8 ; 10 uses
  %11 = alloca %"class.std::map", align 8         ; 12 uses
  %12 = alloca %"class.std::vector", align 8      ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::vector", align 8      ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.absl::debian3::btree_map", align 16 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @_ZN4i18n12phonenumbersL8kLicenseE, i64 673, i64 1, ptr %3) ; 0 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !25
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %i.d) #28 ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  %fwrite.i88 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %3) ; 0 uses
  %fputc6.i = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @_ZN4i18n12phonenumbersL7kI18NNSE) #28 ; 0 uses
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @_ZN4i18n12phonenumbersL15kPhoneNumbersNSE) #28 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.41, i64 13, i64 1, ptr %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %10, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.h, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !281
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.o = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_8DirEntryESaISA_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %12)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !114
  %fwrite59 = call i64 @fwrite(ptr nonnull @.str.42, i64 32, i64 1, ptr %i.p) #34 ; 0 uses
  br label %.loopexit309

bb.d:                                             ; preds = %bb.bs, %._crit_edge, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

end_hunk_1
