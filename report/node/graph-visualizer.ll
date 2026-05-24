inline.NumInlined: 621
inline.NumDeleted: 342
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit: ; preds = %switch.lookup, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.014.0.insert.insert.i, %bb.c ], [ %.sroa.021.0.insert.insert.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0.0.copyload.i3, %bb.f ], [ %.sroa.0.0.copyload26, %bb.a ], [ %.sroa.015.0.insert.insert.i, %bb.g ], [ %spec.select.i4, %bb.h ], [ %spec.select.i5, %bb.i ], [ %switch.load, %switch.lookup ], [ %.sroa.013.0.insert.insert.i, %bb.j ], [ %.sroa.09.0.insert.insert.i, %bb.k ], [ %.sroa.015.0.insert.insert.i9, %bb.l ], [ 282383, %bb.m ], [ %.sroa.07.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i13, %bb.o ], [ %.sroa.07.0.insert.insert.i19, %bb.p ], [ %.sroa.07.0.insert.insert.i25, %bb.q ], [ 487263, %bb.b ]
  ret i32 %.sroa.0.1
}

declare void @_ZNK2v88internal8compiler15NodeOriginTable13GetNodeOriginEj(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::NodeOrigin") align 8, ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_16NodeOriginAsJSONE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_20SourcePositionAsJSONE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoRKNS2_5Block4KindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoRKNS2_21TurboshaftGraphAsJSONE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::JSONTurboshaftGraphWriter", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %0, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 11) #17 ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintNodesEv(ptr noundef nonnull readonly align 8 dereferenceable(32) %2)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 13) #17 ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv(ptr noundef nonnull readonly align 8 dereferenceable(32) %2)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 14) #17 ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter11PrintBlocksEv(ptr noundef nonnull readonly align 8 dereferenceable(32) %2)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 3) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft37PrintTurboshaftCustomDataPerOperationERSt14basic_ofstreamIcSt11char_traitsIcEEPKcRKNS2_5GraphESt8functionIFbRSoSC_NS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 31 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 9) #17 ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h) #17
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.i) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 72) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !35
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !35
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.n, %i.q
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %.not28 = icmp eq i32 %i.s, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 353
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 4) #17 ; 0 uses
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.030 = phi i1 [ true, %.lr.ph ], [ %.1, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %.sroa.021.029 = phi i32 [ 0, %.lr.ph ], [ %i.dj, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.t) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8
  store ptr null, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 8
  store i8 0, ptr %i.w, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store ptr %i.y, ptr %5, align 8
  %i.bd = load i64, ptr %i.aa, align 8
  %i.be = getelementptr inbounds i8, ptr %5, i64 %i.bd
  store ptr %i.z, ptr %i.be, align 8
  store i64 0, ptr %i.ab, align 8
  %i.bf = load ptr, ptr %5, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %5, i64 %i.bh
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bi, ptr noundef null) #17
  store ptr %i.ad, ptr %i.ac, align 8
  %i.bj = load i64, ptr %i.af, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.ac, i64 %i.bj
  store ptr %i.ae, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.ac, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.ac, i64 %i.bn
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bo, ptr noundef null) #17
  %i.bp = load i64, ptr %i.ai, align 8
  %i.bq = getelementptr inbounds i8, ptr %5, i64 %i.bp
  store ptr %i.ah, ptr %i.bq, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.t, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #17
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8
  store i32 24, ptr %i.am, align 8
  store ptr %i.ao, ptr %i.an, align 8
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.ao, align 8
  %i.br = load ptr, ptr %5, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %5, i64 %i.bt
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bu, ptr noundef nonnull %i.aj) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %.sroa.021.029, ptr %4, align 4
  %i.bv = load ptr, ptr %i.aq, align 8
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_7OpIndexEEEclES0_S7_S8_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_7OpIndexEEEclES0_S7_S8_.exit: ; preds = %bb.d
  %i.bw = load ptr, ptr %i.ar, align 8
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #17, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.bx, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_7OpIndexEEEclES0_S7_S8_.exit
  %i.by = select i1 %.030, ptr @.str.23, ptr @.str.4
  %i.bz = select i1 %.030, i64 1, i64 2
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.by, i64 noundef %i.bz) #17 ; 0 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 7) #17 ; 0 uses
  %i.cc = lshr i32 %.sroa.021.029, 4
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.cd) #17 ; 2 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.25, i64 noundef 11) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  store ptr %i.as, ptr %6, align 8, !alias.scope !45
  store i64 0, ptr %i.at, align 8, !alias.scope !45
  store i8 0, ptr %i.as, align 8, !alias.scope !45
  %i.cg = load ptr, ptr %i.au, align 8, !noalias !45 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cg, null
  %7 = load ptr, ptr %i.av, align 8, !noalias !45 ; 2 uses
  %8 = icmp ugt ptr %i.cg, %7
  %.08.i.i.i = select i1 %8, ptr %i.cg, ptr %7    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i18 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = load ptr, ptr %i.aw, align 8, !noalias !45 ; 2 uses
  %i.ci = ptrtoint ptr %.08.i.i.i to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ch, i64 noundef %i.ck) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.h
  %i.cm = load ptr, ptr %6, align 8
  %i.cn = load i64, ptr %i.at, align 8
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cm, i64 noundef %i.cn) #17
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.26, i64 noundef 2) #17 ; 0 uses
  %i.cq = load ptr, ptr %6, align 8               ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.as
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cs = load i64, ptr %i.as, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_7OpIndexEEEclES0_S7_S8_.exit
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.030, %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_7OpIndexEEEclES0_S7_S8_.exit ]
  store ptr %i.ax, ptr %5, align 8
  %i.cu = load i64, ptr %i.az, align 8
  %i.cv = getelementptr inbounds i8, ptr %5, i64 %i.cu
  store ptr %i.ay, ptr %i.cv, align 8
  store ptr %i.ba, ptr %i.ac, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8
  %i.cw = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ao
  br i1 %i.cx, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cy = load i64, ptr %i.ao, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #17
  store ptr %i.y, ptr %5, align 8
  %i.da = load i64, ptr %i.aa, align 8
  %i.db = getelementptr inbounds i8, ptr %5, i64 %i.da
  store ptr %i.z, ptr %i.db, align 8
  store i64 0, ptr %i.ab, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.t) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.dc = load ptr, ptr %i.bb, align 8
  %i.dd = lshr i32 %.sroa.021.029, 4
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = zext i16 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 3
  %i.dj = add i32 %i.di, %.sroa.021.029           ; 2 uses
  %.not = icmp eq i32 %i.dj, %i.s
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft33PrintTurboshaftCustomDataPerBlockERSt14basic_ofstreamIcSt11char_traitsIcEEPKcRKNS2_5GraphESt8functionIFbRSoSC_NS2_10BlockIndexEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 31 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 9) #17 ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h) #17
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.i) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 68) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 353
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -24      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 4) #17 ; 0 uses
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.019 = phi i1 [ true, %.lr.ph ], [ %.1, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %.sroa.014.018 = phi ptr [ %i.m, %.lr.ph ], [ %i.cz, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.014.018, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8
  store ptr null, ptr %i.r, align 8
  store i8 0, ptr %i.s, align 8
  store i8 0, ptr %i.t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  store ptr %i.v, ptr %5, align 8
  %i.ba = load i64, ptr %i.x, align 8
  %i.bb = getelementptr inbounds i8, ptr %5, i64 %i.ba
  store ptr %i.w, ptr %i.bb, align 8
  store i64 0, ptr %i.y, align 8
  %i.bc = load ptr, ptr %5, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.be
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, ptr noundef null) #17
  store ptr %i.aa, ptr %i.z, align 8
  %i.bg = load i64, ptr %i.ac, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.z, i64 %i.bg
  store ptr %i.ab, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.z, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.z, i64 %i.bk
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef null) #17
  %i.bm = load i64, ptr %i.af, align 8
  %i.bn = getelementptr inbounds i8, ptr %5, i64 %i.bm
  store ptr %i.ae, ptr %i.bn, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.q, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #17
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  store i32 24, ptr %i.aj, align 8
  store ptr %i.al, ptr %i.ak, align 8
  store i64 0, ptr %i.am, align 8
  store i8 0, ptr %i.al, align 8
  %i.bo = load ptr, ptr %5, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %5, i64 %i.bq
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.br, ptr noundef nonnull %i.ag) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.bs, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %.sroa.0.0.copyload.i10, ptr %4, align 4
  %i.bt = load ptr, ptr %i.an, align 8
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_10BlockIndexEEEclES0_S7_S8_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_10BlockIndexEEEclES0_S7_S8_.exit: ; preds = %bb.d
  %i.bu = load ptr, ptr %i.ao, align 8
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #17, !inline_history !46
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.bv, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_10BlockIndexEEEclES0_S7_S8_.exit
  %i.bw = select i1 %.019, ptr @.str.23, ptr @.str.4
  %i.bx = select i1 %.019, i64 1, i64 2
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bw, i64 noundef %i.bx) #17 ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 7) #17 ; 0 uses
  %i.ca = zext i32 %.sroa.0.0.copyload.i10 to i64
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ca) #17 ; 2 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.25, i64 noundef 11) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  store ptr %i.ap, ptr %6, align 8, !alias.scope !53
  store i64 0, ptr %i.aq, align 8, !alias.scope !53
  store i8 0, ptr %i.ap, align 8, !alias.scope !53
  %i.cd = load ptr, ptr %i.ar, align 8, !noalias !53 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cd, null
  %7 = load ptr, ptr %i.as, align 8, !noalias !53 ; 2 uses
  %8 = icmp ugt ptr %i.cd, %7
  %.08.i.i.i = select i1 %8, ptr %i.cd, ptr %7    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i12 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load ptr, ptr %i.at, align 8, !noalias !53 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.h
  %i.cj = load ptr, ptr %6, align 8
  %i.ck = load i64, ptr %i.aq, align 8
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cj, i64 noundef %i.ck) #17
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.26, i64 noundef 2) #17 ; 0 uses
  %i.cn = load ptr, ptr %6, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ap
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cp = load i64, ptr %i.ap, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_10BlockIndexEEEclES0_S7_S8_.exit
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.019, %_ZNKSt8functionIFbRSoRKN2v88internal8compiler10turboshaft5GraphENS4_10BlockIndexEEEclES0_S7_S8_.exit ]
  store ptr %i.au, ptr %5, align 8
  %i.cr = load i64, ptr %i.aw, align 8
  %i.cs = getelementptr inbounds i8, ptr %5, i64 %i.cr
  store ptr %i.av, ptr %i.cs, align 8
  store ptr %i.ax, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ct = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.al
  br i1 %i.cu, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cv = load i64, ptr %i.al, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #17
  store ptr %i.v, ptr %5, align 8
  %i.cx = load i64, ptr %i.x, align 8
  %i.cy = getelementptr inbounds i8, ptr %5, i64 %i.cx
  store ptr %i.w, ptr %i.cy, align 8
  store i64 0, ptr %i.y, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.o
  br i1 %i.da, label %._crit_edge, label %bb.d
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
end_hunk_0
