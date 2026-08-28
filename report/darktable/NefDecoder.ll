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
  %i.cc = load ptr, ptr %1, align 8, !tbaa !17    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed10NefDecoder17parseWhiteBalanceEv:bb.a
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076270.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0226.0269.epil.init = phi ptr [ %i.cc, %.lr.ph.preheader ], [ %i.do, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod302 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod302)
  %i.cf = load i8, ptr %.sroa.0226.0269.epil.init, align 1, !tbaa !18 ; 3 uses
  %i.cg = add i8 %i.cf, -48
  %or.cond5.epil = icmp ult i8 %i.cg, 10
  br i1 %or.cond5.epil, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = mul i32 %.076270.epil.init, 10
  %i.ci = urem i8 %i.cf, 10
  %.zext.epil = zext nneg i8 %i.ci to i32
  %i.cj = add i32 %i.ch, %.zext.epil
  br label %._crit_edge.loopexit

bb.x:                                             ; preds = %.lr.ph.epil.preheader
  %i.ck = zext nneg i8 %i.cf to i32
  %i.cl = mul i32 %.076270.epil.init, 10
  %i.cm = add i32 %i.cl, -48
  %i.cn = add i32 %i.cm, %i.ck
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.w, %bb.x, %._crit_edge.loopexit.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.cn, %bb.x ], [ %i.cj, %bb.w ]
  %i.co = and i32 %.1.lcssa, 255
  %i.cp = zext nneg i32 %i.co to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %.076.lcssa = phi i64 [ 0, %bb.v ], [ %i.cp, %._crit_edge.loopexit ]
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cr = call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.cq, i16 noundef zeroext 167) #29 ; 3 uses
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.5213.0.copyload = load i32, ptr %.sroa.5213.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %.sroa.6215.0.copyload = load i32, ptr %.sroa.6215.0..sroa_idx, align 8 ; 2 uses
  %i.cs = zext i32 %.sroa.6215.0.copyload to i64  ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 4
  %i.cu = zext i32 %.sroa.5213.0.copyload to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.ct, %i.cu
  br i1 %.not.i.i.i, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #22
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.y
  unreachable

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph.preheader.new
  %.076270 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.ad ] ; 2 uses
  %.sroa.0226.0269 = phi ptr [ %i.cc, %.lr.ph.preheader.new ], [ %i.do, %bb.ad ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.ad ]
  %i.cv = load i8, ptr %.sroa.0226.0269, align 1, !tbaa !18 ; 3 uses
  %i.cw = add i8 %i.cv, -48
  %or.cond5 = icmp ult i8 %i.cw, 10
  br i1 %or.cond5, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  %i.cx = zext nneg i8 %i.cv to i32
  %i.cy = mul i32 %.076270, 10
  %i.cz = add i32 %i.cy, -48
  %i.da = add i32 %i.cz, %i.cx
  br label %.lr.ph.1

bb.aa:                                            ; preds = %.lr.ph
  %i.db = mul i32 %.076270, 10
  %i.dc = urem i8 %i.cv, 10
  %.zext = zext nneg i8 %i.dc to i32
  %i.dd = add i32 %i.db, %.zext
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.aa, %bb.z
  %.1 = phi i32 [ %i.da, %bb.z ], [ %i.dd, %bb.aa ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0226.0269, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18  ; 3 uses
  %i.dg = add i8 %i.df, -48
  %or.cond5.1 = icmp ult i8 %i.dg, 10
  br i1 %or.cond5.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.1
  %i.dh = mul i32 %.1, 10
  %i.di = urem i8 %i.df, 10
  %.zext.1 = zext nneg i8 %i.di to i32
  %i.dj = add i32 %i.dh, %.zext.1
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.1
  %i.dk = zext nneg i8 %i.df to i32
  %i.dl = mul i32 %.1, 10
  %i.dm = add i32 %i.dl, -48
  %i.dn = add i32 %i.dm, %i.dk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1.1 = phi i32 [ %i.dn, %bb.ac ], [ %i.dj, %bb.ab ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0226.0269, i64 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ae:                                            ; preds = %._crit_edge
  %i.dp = icmp sgt i32 %.sroa.5213.0.copyload, -1
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i32 %.sroa.6215.0.copyload, 4
  %i.dr = icmp samesign ule i32 %i.dq, %.sroa.5213.0.copyload
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZN8rawspeed10NefDecoder9serialmapE, i64 %.076.lcssa
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18  ; 16 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.0205.0.copyload = load ptr, ptr %i.du, align 8 ; 12 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5206.0.copyload = load i32, ptr %.sroa.5206.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.7209.0.copyload = load i32, ptr %.sroa.7209.0..sroa_idx, align 8 ; 2 uses
  %i.dv = select i1 %i.bu, i32 284, i32 4         ; 2 uses
  %i.dw = zext i32 %.sroa.7209.0.copyload to i64
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = add nuw nsw i64 %i.dw, %i.dx
  %i.dz = zext i32 %.sroa.5206.0.copyload to i64
  %.not.i.i = icmp samesign ugt i64 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #22
          to label %.noexc101 unwind label %bb.ai

.noexc101:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.0212.0.copyload = load ptr, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0212.0.copyload, i64 %i.cs ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.ef = xor i8 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !18
  %i.ei = xor i8 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18
  %i.el = xor i8 %i.ei, %i.ek
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @_ZN8rawspeed10NefDecoder6keymapE, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = icmp sgt i32 %.sroa.5206.0.copyload, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i32 %.sroa.7209.0.copyload, %i.dv ; 4 uses
  %i.er = icmp samesign ule i32 %i.eq, %.sroa.5206.0.copyload
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %i.es = zext nneg i32 %i.eq to i64              ; 12 uses
  %i.et = sub nsw i32 %.sroa.5206.0.copyload, %i.eq ; 12 uses
  %exitcond.not = icmp eq i32 %.sroa.5206.0.copyload, %i.eq
  %i.eu = freeze i1 %exitcond.not
  %i.ev = add i32 %i.et, -1
  %i.ew = icmp ult i32 %i.ev, 6
  %or.cond300 = select i1 %i.eu, i1 true, i1 %i.ew
  br i1 %or.cond300, label %bb.aj, label %bb.ak

bb.ah:                                            ; preds = %bb.y
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ai:                                            ; preds = %bb.af
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aj:                                            ; preds = %bb.at, %bb.an, %bb.ag, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #22
          to label %.noexc102 unwind label %bb.aw

.noexc102:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  %.0.copyload.i.i.i.i.i.i.6 = load i8, ptr %i.fa, align 1
  %i.fb = insertelement <8 x i8> poison, i8 %i.dt, i64 0
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eo, i64 1
  %i.fd = shufflevector <8 x i8> %i.fc, <8 x i8> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1>
  %i.fe = mul <8 x i8> %i.fd, <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 1>
  %i.ff = call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.fe) ; 2 uses
  %i.fg = xor i8 %.0.copyload.i.i.i.i.i.i.6, %i.ff
  store i8 %i.fg, ptr %.sroa.3, align 4, !tbaa !18
  %exitcond.7.not = icmp eq i32 %i.et, 7
  br i1 %exitcond.7.not, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 7
  %.0.copyload.i.i.i.i.i.i.7 = load i8, ptr %i.fi, align 1
  %i.fj = mul i8 %i.dt, 103
  %i.fk = add i8 %i.fj, %i.ff                     ; 2 uses
  %i.fl = xor i8 %.0.copyload.i.i.i.i.i.i.7, %i.fk
  %.sroa.3.1..073.ptr275.7.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 1
  store i8 %i.fl, ptr %.sroa.3.1..073.ptr275.7.sroa_idx, align 1, !tbaa !18
  %exitcond.8.not = icmp eq i32 %i.et, 8
  br i1 %exitcond.8.not, label %bb.aj, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.0.copyload.i.i.i.i.i.i.8 = load i8, ptr %i.fn, align 1
  %i.fo = mul i8 %i.dt, 104
  %i.fp = add i8 %i.fo, %i.fk                     ; 2 uses
  %i.fq = xor i8 %.0.copyload.i.i.i.i.i.i.8, %i.fp
  %.sroa.3.2..073.ptr275.8.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 2
  store i8 %i.fq, ptr %.sroa.3.2..073.ptr275.8.sroa_idx, align 2, !tbaa !18
  %exitcond.9.not = icmp eq i32 %i.et, 9
  br i1 %exitcond.9.not, label %bb.aj, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 9
  %.0.copyload.i.i.i.i.i.i.9 = load i8, ptr %i.fs, align 1
  %i.ft = mul i8 %i.dt, 105
  %i.fu = add i8 %i.ft, %i.fp                     ; 2 uses
  %i.fv = xor i8 %.0.copyload.i.i.i.i.i.i.9, %i.fu
  %.sroa.3.3..073.ptr275.9.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 3
  store i8 %i.fv, ptr %.sroa.3.3..073.ptr275.9.sroa_idx, align 1, !tbaa !18
  %.off = add i32 %i.et, -10
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.aj, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = mul i8 %i.dt, 107
  %i.fx = mul i8 %i.dt, 106
  %i.fy = add i8 %i.fx, %i.fu
  %i.fz = add i8 %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %.0.copyload.i.i.i.i.i.i.12 = load i8, ptr %i.gb, align 1
  %i.gc = mul i8 %i.dt, 108
  %i.gd = add i8 %i.gc, %i.fz                     ; 2 uses
  %i.ge = xor i8 %.0.copyload.i.i.i.i.i.i.12, %i.gd
  store i8 %i.ge, ptr %.sroa.10, align 2, !tbaa !18
  %exitcond.13.not = icmp eq i32 %i.et, 13
  br i1 %exitcond.13.not, label %bb.aj, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 13
  %.0.copyload.i.i.i.i.i.i.13 = load i8, ptr %i.gg, align 1
  %i.gh = mul i8 %i.dt, 109
  %i.gi = add i8 %i.gh, %i.gd                     ; 2 uses
  %i.gj = xor i8 %.0.copyload.i.i.i.i.i.i.13, %i.gi
  %.sroa.10.1..073.ptr275.13.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 1
  store i8 %i.gj, ptr %.sroa.10.1..073.ptr275.13.sroa_idx, align 1, !tbaa !18
  %exitcond.14.not = icmp eq i32 %i.et, 14
  br i1 %exitcond.14.not, label %bb.aj, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 14
  %.0.copyload.i.i.i.i.i.i.14 = load i8, ptr %i.gl, align 1
  %i.gm = mul i8 %i.dt, 110
  %i.gn = add i8 %i.gm, %i.gi                     ; 2 uses
  %i.go = xor i8 %.0.copyload.i.i.i.i.i.i.14, %i.gn
  store i8 %i.go, ptr %.sroa.13, align 4, !tbaa !18
  %exitcond.15.not = icmp eq i32 %i.et, 15
  br i1 %exitcond.15.not, label %bb.aj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 15
  %.0.copyload.i.i.i.i.i.i.15 = load i8, ptr %i.gq, align 1
  %i.gr = mul i8 %i.dt, 111
  %i.gs = add i8 %i.gr, %i.gn                     ; 2 uses
  %i.gt = xor i8 %.0.copyload.i.i.i.i.i.i.15, %i.gs
  %.sroa.13.1..073.ptr275.15.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13, i64 1
  store i8 %i.gt, ptr %.sroa.13.1..073.ptr275.15.sroa_idx, align 1, !tbaa !18
  %exitcond.16.not = icmp eq i32 %i.et, 16
  br i1 %exitcond.16.not, label %bb.aj, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.0.copyload.i.i.i.i.i.i.16 = load i8, ptr %i.gv, align 1
  %i.gw = mul i8 %i.dt, 112
  %i.gx = add i8 %i.gw, %i.gs                     ; 2 uses
  %i.gy = xor i8 %.0.copyload.i.i.i.i.i.i.16, %i.gx
  %.sroa.13.2..073.ptr275.16.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13, i64 2
  store i8 %i.gy, ptr %.sroa.13.2..073.ptr275.16.sroa_idx, align 2, !tbaa !18
  %exitcond.17.not = icmp eq i32 %i.et, 17
  br i1 %exitcond.17.not, label %bb.aj, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 17
  %.0.copyload.i.i.i.i.i.i.17 = load i8, ptr %i.ha, align 1
  %i.hb = mul i8 %i.dt, 113
  %i.hc = add i8 %i.hb, %i.gx                     ; 2 uses
  %i.hd = xor i8 %.0.copyload.i.i.i.i.i.i.17, %i.hc
  %.sroa.13.3..073.ptr275.17.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13, i64 3
  store i8 %i.hd, ptr %.sroa.13.3..073.ptr275.17.sroa_idx, align 1, !tbaa !18
  %.off305 = add i32 %i.et, -18
  %switch306 = icmp ult i32 %.off305, 3
  br i1 %switch306, label %bb.aj, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.he = mul i8 %i.dt, 115
  %i.hf = mul i8 %i.dt, 114
  %i.hg = add i8 %i.hf, %i.hc
  %i.hh = add i8 %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  %.0.copyload.i.i.i.i.i.i.20 = load i8, ptr %i.hj, align 1
  %i.hk = mul i8 %i.dt, 116
  %i.hl = add i8 %i.hk, %i.hh                     ; 2 uses
  %i.hm = xor i8 %.0.copyload.i.i.i.i.i.i.20, %i.hl
  store i8 %i.hm, ptr %.sroa.20, align 2, !tbaa !18
  %exitcond.21.not = icmp eq i32 %i.et, 21
  br i1 %exitcond.21.not, label %bb.aj, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 %i.es
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 21
  %.0.copyload.i.i.i.i.i.i.21 = load i8, ptr %i.ho, align 1
  %i.hp = mul i8 %i.dt, 117
  %i.hq = add i8 %i.hp, %i.hl
  %i.hr = xor i8 %.0.copyload.i.i.i.i.i.i.21, %i.hq
  %.sroa.20.1..073.ptr275.21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.20, i64 1
  store i8 %i.hr, ptr %.sroa.20.1..073.ptr275.21.sroa_idx, align 1, !tbaa !18
  %.sroa.10.val = load i16, ptr %.sroa.10, align 2
  %.sroa.20.val = load i16, ptr %.sroa.20, align 2
  %.0.copyload.i.i.i104 = select i1 %i.bu, i16 %.sroa.10.val, i16 %.sroa.20.val
  %i.hs = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i104)
  %i.ht = uitofp i16 %i.hs to float
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !45 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 256
  %.sroa.3.val = load <2 x i16>, ptr %.sroa.3, align 4
  %.sroa.13.val = load <2 x i16>, ptr %.sroa.13, align 4
  %i.hx = select i1 %i.bu, <2 x i16> %.sroa.3.val, <2 x i16> %.sroa.13.val
  %i.hy = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.hx)
  %i.hz = uitofp <2 x i16> %i.hy to <2 x float>
  store <2 x float> %i.hz, ptr %i.hw, align 8
  %.sroa.0198.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 264
  store float %i.ht, ptr %.sroa.0198.sroa.5.0..sroa_idx, align 8
  %.sroa.0198.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 268
  store float 0.000000e+00, ptr %.sroa.0198.sroa.6.0..sroa_idx, align 4
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 272
  store i8 1, ptr %.sroa.4199.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.cc, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.aw:                                            ; preds = %bb.aj
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.id = load i64, ptr %i.ia, align 8, !tbaa !18
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.ax:                                            ; preds = %bb.ah, %bb.aw, %bb.ai, %bb.u
  %.pn95 = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.ex, %bb.ah ], [ %i.ey, %bb.ai ], [ %i.ic, %bb.aw ]
  %i.if = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ax
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !18
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn95

bb.ay:                                            ; preds = %bb.d
  %i.ik = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 20) #29 ; 6 uses
  %.not263 = icmp eq ptr %i.ik, null
  br i1 %.not263, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %.sroa.0164.0.copyload = load ptr, ptr %i.il, align 8 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 14 uses
  %.sroa.31188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %.sroa.31188.0.copyload = load i32, ptr %.sroa.31188.0..sroa_idx, align 8 ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.in = load i32, ptr %i.im, align 4, !tbaa !37 ; 3 uses
  %i.io = icmp eq i32 %i.in, 2560
  br i1 %i.io, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 42
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !203
  %i.ir = icmp eq i8 %i.iq, 7
  br i1 %i.ir, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.is = zext i32 %.sroa.31188.0.copyload to i64
  %i.it = add nuw nsw i64 %i.is, 1248
  %i.iu = zext i32 %.sroa.11.0.copyload to i64    ; 3 uses
  %.not.i.i108 = icmp samesign ugt i64 %i.it, %i.iu
  br i1 %.not.i.i108, label %bb.bc, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit109

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #22
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit109:     ; preds = %bb.bb
  %i.iv = icmp sgt i32 %.sroa.11.0.copyload, -1
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = add nuw nsw i32 %.sroa.31188.0.copyload, 1248 ; 2 uses
  %i.ix = icmp samesign ule i32 %i.iw, %.sroa.11.0.copyload
  tail call void @llvm.assume(i1 %i.ix)
  %i.iy = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iz = add nuw nsw i64 %i.iy, 2
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.iz, %i.iu
  br i1 %.not.i.i.i.i.i.i, label %bb.bd, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.bd:                                            ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit109
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #22
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit109
  %i.ja = add nuw nsw i32 %.sroa.31188.0.copyload, 1250 ; 2 uses
  %i.jb = icmp samesign ule i32 %i.ja, %.sroa.11.0.copyload
  tail call void @llvm.assume(i1 %i.jb)
  %i.jc = zext nneg i32 %i.ja to i64              ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 2
  %.not.i.i.i.i.i.i111 = icmp samesign ugt i64 %i.jd, %i.iu
  br i1 %.not.i.i.i.i.i.i111, label %bb.be, label %_ZN8rawspeed10ByteStream6getU16Ev.exit114

bb.be:                                            ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #22
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit114:        ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0164.0.copyload, i64 %i.iy
  %.0.copyload.i.i.i.i.i.i110 = load i16, ptr %i.je, align 1
  %i.jf = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i110)
  %i.jg = uitofp i16 %i.jf to float
  %i.jh = fmul nnan float %i.jg, 3.906250e-03
  %i.ji = add nuw nsw i32 %.sroa.31188.0.copyload, 1252
  %i.jj = icmp samesign ule i32 %i.ji, %.sroa.11.0.copyload
  tail call void @llvm.assume(i1 %i.jj)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0.copyload, i64 %i.jc
  %.0.copyload.i.i.i.i.i.i112 = load i16, ptr %i.jk, align 1
  %i.jl = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i112)
  %i.jm = uitofp i16 %i.jl to float
  %i.jn = fmul nnan float %i.jm, 3.906250e-03
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !45 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 256
  store float %i.jh, ptr %i.jq, align 8
  %.sroa.0159.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 260
  store float 1.000000e+00, ptr %.sroa.0159.sroa.4.0..sroa_idx, align 4
  %.sroa.0159.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 264
  store float %i.jn, ptr %.sroa.0159.sroa.5.0..sroa_idx, align 8
  %.sroa.0159.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 268
  store float 0.000000e+00, ptr %.sroa.0159.sroa.6.0..sroa_idx, align 4
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 272
  store i8 1, ptr %.sroa.4160.0..sroa_idx, align 8
  br label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.bf:                                            ; preds = %bb.ba, %bb.az
  %i.jr = zext i32 %.sroa.31188.0.copyload to i64 ; 3 uses
  %i.js = add nuw nsw i64 %i.jr, 4
  %i.jt = zext i32 %.sroa.11.0.copyload to i64    ; 7 uses
  %.not.i = icmp samesign ugt i64 %i.js, %i.jt
  br i1 %.not.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i:       ; preds = %bb.bf
  %i.ju = icmp sgt i32 %.sroa.11.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = add i32 %.sroa.31188.0.copyload, 4      ; 2 uses
  %i.jw = icmp samesign ule i32 %i.jv, %.sroa.11.0.copyload
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0164.0.copyload, i64 %i.jr ; 4 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !18
  %i.jz = icmp eq i8 %i.jy, 78
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i.1, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i
  %.0810.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  %i.ka = load i8, ptr %.0810.i.i.i.i.i.ptr.1, align 1, !tbaa !18
  %i.kb = icmp eq i8 %i.ka, 82
  br i1 %i.kb, label %.lr.ph.i.i.i.i.i.2, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %.0810.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.kc = load i8, ptr %.0810.i.i.i.i.i.ptr.2, align 1, !tbaa !18
  %i.kd = icmp eq i8 %i.kc, 87
  br i1 %i.kd, label %.lr.ph.i.i.i.i.i.3, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %.0810.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.ke = load i8, ptr %.0810.i.i.i.i.i.ptr.3, align 1, !tbaa !18
  %i.kf = icmp eq i8 %i.ke, 32
  br i1 %i.kf, label %bb.bg, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.3
  %i.kg = zext nneg i32 %i.jv to i64              ; 2 uses
  %i.kh = add nuw nsw i64 %i.kg, 4
  %.not.i115 = icmp samesign ugt i64 %i.kh, %i.jt
  br i1 %.not.i115, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit123, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i116

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i116:    ; preds = %bb.bg
  %i.ki = add i32 %.sroa.31188.0.copyload, 8
  %i.kj = icmp samesign ule i32 %i.ki, %.sroa.11.0.copyload
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0.copyload, i64 %i.kg ; 4 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !18
  %i.km = icmp eq i8 %i.kl, 48
  br i1 %i.km, label %.lr.ph.i.i.i.i.i118.1, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit123

.lr.ph.i.i.i.i.i118.1:                            ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i116
  %.0810.i.i.i.i.i120.ptr.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.kn = load i8, ptr %.0810.i.i.i.i.i120.ptr.1, align 1, !tbaa !18
  %i.ko = icmp eq i8 %i.kn, 49
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i118.2, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit123
end_hunk_1
