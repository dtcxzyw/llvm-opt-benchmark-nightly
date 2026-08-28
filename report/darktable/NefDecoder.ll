Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NefDecoder?download=true
inline.NumInlined: 1271
inline.NumDeleted: 569
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK8rawspeed10NefDecoder7getModeB5cxx11Ev:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #28
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bn) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

.body:                                            ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i, %bb.h, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %i.w, %bb.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.au, %bb.o ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10NefDecoder15getExtendedModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = invoke noundef ptr @_ZNK8rawspeed7TiffIFD13getIFDWithTagENS_7TiffTagEj(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -32114, i32 noundef 0)
          to label %bb.b unwind label %bb.j       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext 256)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef 0)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext 257)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef 0)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.h = zext i32 %i.e to i64
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.h)
          to label %_ZNSolsEj.exit unwind label %bb.l ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %bb.f
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.k = zext i32 %i.g to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit11 unwind label %bb.l ; 2 uses

_ZNSolsEj.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.33, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEj.exit11
  %i.n = load ptr, ptr %2, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !28, !alias.scope !264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !11, !alias.scope !264
  store i8 0, ptr %i.r, align 8, !tbaa !18, !alias.scope !264
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !253, !noalias !264 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !264 ; 2 uses
  %i.x = icmp ugt ptr %i.u, %i.w
  %.08.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.w ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !257, !noalias !264 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !264 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !264
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %.body

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !52
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !18
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZNSolsEj.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEj.exit, %bb.f, %bb.e, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %i.az, %bb.k ], [ %i.ba, %bb.l ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ae, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZNK8rawspeed14CameraMetaData9hasCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK8rawspeed10NefDecoder15getBitPerSampleEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8rawspeed19AbstractTiffDecoder22getIFDWithLargestImageENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext -32114)
  %i.b = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext 258)
  %i.c = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 0)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10NefDecoder17parseWhiteBalanceEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.3 = alloca i32, align 4                  ; 8 uses
  %.sroa.10 = alloca i16, align 2                 ; 6 uses
  %.sroa.13 = alloca i32, align 4                 ; 8 uses
  %.sroa.20 = alloca i16, align 2                 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 12) #29 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0)
  %i.h = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 2) ; 2 uses
  %i.i = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 1)
  %i.j = fcmp ugt float %i.h, 0.000000e+00
  %.sroa.5247.0 = select i1 %i.j, float %i.h, float 1.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store float %i.g, ptr %i.m, align 8
  %.sroa.0243.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  store float %.sroa.5247.0, ptr %.sroa.0243.sroa.4.0..sroa_idx, align 4
  %.sroa.0243.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store float %i.i, ptr %.sroa.0243.sroa.5.0..sroa_idx, align 8
  %.sroa.0243.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 268
  store float 0.000000e+00, ptr %.sroa.0243.sroa.6.0..sroa_idx, align 4
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  store i8 1, ptr %.sroa.4244.0..sroa_idx, align 8
  br label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 151) #29 ; 17 uses
  %.not262 = icmp eq ptr %i.n, null
  br i1 %.not262, label %bb.ay, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %.preheader.preheader, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.preheader.preheader:                             ; preds = %bb.e
  %i.r = tail call noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 0) ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = add i8 %i.r, -58
  %or.cond = icmp ult i8 %i.t, -10
  br i1 %or.cond, label %bb.f, label %.preheader.1

bb.f:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi i32 [ %i.s, %.preheader.preheader ], [ %i.v, %.preheader.1 ], [ %i.y, %.preheader.2 ], [ %i.ab, %.preheader.3 ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10NefDecoder17parseWhiteBalanceEv, i32 noundef %.lcssa) #22
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.u = tail call noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 1) ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = add i8 %i.u, -58
  %or.cond.1 = icmp ult i8 %i.w, -10
  br i1 %or.cond.1, label %bb.f, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.x = tail call noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 2) ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = add i8 %i.x, -58
  %or.cond.2 = icmp ult i8 %i.z, -10
  br i1 %or.cond.2, label %bb.f, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.aa = tail call noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 3) ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add i8 %i.aa, -58
  %or.cond.3 = icmp ult i8 %i.ac, -10
  br i1 %or.cond.3, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.preheader.3
  %i.ad = shl nuw nsw i32 %i.s, 4
  %i.ae = add nuw nsw i32 %i.ad, 16776400
  %i.af = add nuw nsw i32 %i.ae, %i.v
  %i.ag = shl nuw nsw i32 %i.af, 4
  %i.ah = add nuw nsw i32 %i.ag, 268435408
  %i.ai = add nuw nsw i32 %i.ah, %i.y
  %i.aj = shl i32 %i.ai, 4
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = add nsw i32 %i.ak, %i.ab
  switch i32 %i.al, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit [
    i32 256, label %bb.h
    i32 259, label %bb.k
    i32 516, label %bb.n
    i32 517, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.o, align 4, !tbaa !37
  %i.an = icmp ugt i32 %i.am, 79
  br i1 %i.an, label %bb.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !203
  %i.aq = icmp eq i8 %i.ap, 7
  br i1 %i.aq, label %bb.j, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 36)
  %i.as = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 37)
  %i.at = uitofp i16 %i.as to float
  %i.au = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 38)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.ay = insertelement <2 x i16> poison, i16 %i.ar, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.au, i64 1
  %i.ba = uitofp <2 x i16> %i.az to <2 x float>
  store <2 x float> %i.ba, ptr %i.ax, align 8
  %.sroa.0236.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  store float %i.at, ptr %.sroa.0236.sroa.5.0..sroa_idx, align 8
  %.sroa.0236.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 268
  store float 0.000000e+00, ptr %.sroa.0236.sroa.6.0..sroa_idx, align 4
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  store i8 1, ptr %.sroa.4237.0..sroa_idx, align 8
  br label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.k:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.o, align 4, !tbaa !37
  %i.bc = icmp ugt i32 %i.bb, 25
  br i1 %i.bc, label %bb.l, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !203
  %i.bf = icmp eq i8 %i.be, 7
  br i1 %i.bf, label %bb.m, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 10)
  %i.bh = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 11)
  %i.bi = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 12)
  %i.bj = uitofp i16 %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  %i.bn = insertelement <2 x i16> poison, i16 %i.bg, i64 0
  %i.bo = insertelement <2 x i16> %i.bn, i16 %i.bh, i64 1
  %i.bp = uitofp <2 x i16> %i.bo to <2 x float>
  store <2 x float> %i.bp, ptr %i.bm, align 8
  %.sroa.0229.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 264
  store float %i.bj, ptr %.sroa.0229.sroa.5.0..sroa_idx, align 8
  %.sroa.0229.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 268
  store float 0.000000e+00, ptr %.sroa.0229.sroa.6.0..sroa_idx, align 4
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  store i8 1, ptr %.sroa.4230.0..sroa_idx, align 8
  br label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.n:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %i.o, align 4, !tbaa !37
  %i.br = icmp ugt i32 %i.bq, 563
  br i1 %i.br, label %bb.p, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.o:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !37
  %i.bt = icmp ugt i32 %i.bs, 283
  br i1 %i.bt, label %bb.p, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 3 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bw = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, i16 noundef zeroext 29) #29 ; 2 uses
  %.not264 = icmp eq ptr %i.bw, null
  br i1 %.not264, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, i16 noundef zeroext 167) #29
  %.not265 = icmp eq ptr %i.bx, null
  br i1 %.not265, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 7 uses
  %i.ca = icmp ugt i64 %i.bz, 9
  br i1 %i.ca, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10NefDecoder17parseWhiteBalanceEv, i64 noundef %i.bz) #22
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.v:                                             ; preds = %bb.r
end_hunk_0
