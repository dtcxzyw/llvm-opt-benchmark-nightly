inline.NumInlined: 804
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit113

_ZNSt6vectorIcSaIcEED2Ev.exit113:                 ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit113, %bb.y, %bb.x
  %.pn70 = phi { ptr, i32 } [ %i.bf, %bb.x ], [ %i.bg, %bb.y ], [ %.pn67.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit113 ]
  %i.hi = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIcSaIcEED2Ev.exit115, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit115

_ZNSt6vectorIcSaIcEED2Ev.exit115:                 ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit115, %bb.w
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNSt6vectorIcSaIcEED2Ev.exit115 ], [ %i.be, %bb.w ]
  %i.ho = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i116, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hp = load ptr, ptr %i.z, align 8
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #20
  br label %bb.cl

.thread152:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120: ; preds = %bb.cl, %bb.k, %bb.j, %.thread152
  %.pn74.pn150 = phi { ptr, i32 } [ %i.ht, %.thread152 ], [ %.pn70.pn, %bb.cl ], [ %i.s, %bb.j ], [ %i.t, %bb.k ]
  %i.hu = load ptr, ptr %i.h, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19, !inline_history !11
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121: ; preds = %bb.d, %bb.e, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120, %bb.c
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %.pn74.pn150, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120 ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.hx = load ptr, ptr %4, align 8               ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.a
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121
  %i.hz = load i64, ptr %i.a, align 8
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn74.pn.pn

bb.cm:                                            ; preds = %bb.ax, %bb.v, %bb.i, %bb.b
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA21_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA6_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_KcERA6_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.b = load i64, ptr %i.a, align 8
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp ult i64 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  br i1 %.not, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a, %2
  %4 = phi i64 [ 0, %2 ], [ %i.g, %bb.a ]
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %4, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %i.a, align 8
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.o, i64 noundef 1, i64 noundef %i.p), !inline_history !13 ; 4 uses
  %.not21.a = icmp eq i64 %i.t, 0
  br i1 %.not21.a, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread: ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = load i64, ptr %5, align 8
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  store i64 %i.y, ptr %5, align 8
  store i64 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread, %2
  %i.ac = phi i64 [ %i.y, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.g, %2 ]
  %i.ad = phi i64 [ %i.w, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.e, %2 ]
  %i.ae = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.d, %2 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  %i.ai = load i8, ptr %i.ah, align 1
  switch i8 %i.ai, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.j
  %i.ak = phi ptr [ %i.ag, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.bj, %bb.j ]
  %i.al = phi i64 [ %i.ac, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.bl, %bb.j ] ; 2 uses
  %i.am = phi i64 [ %i.ad, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.bm, %bb.j ] ; 2 uses
  %i.an = phi i64 [ %i.ae, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.bk, %bb.j ]
  %i.ao = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.c, align 8
  %i.ap = icmp eq i64 %i.ao, %i.am
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.al, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.av = load ptr, ptr %0, align 8               ; 2 uses
  %i.aw = load ptr, ptr %i.af, align 8
  %i.ax = load i64, ptr %i.a, align 8
  %i.ay = load ptr, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.aw, i64 noundef 1, i64 noundef %i.ax), !inline_history !13 ; 4 uses
  %.not22 = icmp eq i64 %i.bb, 0
  br i1 %.not22, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a

bb.i:                                             ; preds = %bb.h
  store i64 %i.bb, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a: ; preds = %bb.h, %bb.i
  %i.be = phi i64 [ %i.bb, %bb.i ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bf = load i64, ptr %6, align 8
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  store i64 %i.bg, ptr %6, align 8
  store i64 0, ptr %i.c, align 8
  %i.bh = load i64, ptr %i.aj, align 8
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.aj, align 8
  %.pre = load ptr, ptr %i.af, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a, %bb.f
  %i.bj = phi ptr [ %.pre, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a ], [ %i.ak, %bb.f ] ; 3 uses
  %i.bk = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a ], [ %i.ao, %bb.f ] ; 3 uses
  %i.bl = phi i64 [ %i.bg, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a ], [ %i.al, %bb.f ]
  %i.bm = phi i64 [ %i.be, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread.a ], [ %i.am, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1
  %.not14 = icmp eq i8 %i.bo, 10
  br i1 %.not14, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, label %bb.f, !llvm.loop !14

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.j, %bb.e
  %i.bp = phi ptr [ %i.ag, %bb.e ], [ %i.bj, %bb.j ]
  %i.bq = phi i64 [ %i.ae, %bb.e ], [ %i.bk, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread
  %i.bt = phi ptr [ %i.bp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.pre28, %bb.q ]
  %i.bu = phi i64 [ %i.bq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %i.df, %bb.q ]
  %.0 = phi i64 [ 0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %i.cb, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.bx = load ptr, ptr %1, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0 ; 2 uses
  switch i8 %i.bw, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19 [
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit19:               ; preds = %bb.k
  store i8 %i.bw, ptr %i.by, align 1
  %i.bz = load i64, ptr %i.c, align 8
  %i.ca = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.c, align 8
  %i.cb = add i64 %.0, 1                          ; 3 uses
  %i.cc = load ptr, ptr %i.br, align 8
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp eq i64 %i.cb, %i.cg
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.ci = shl i64 %i.cb, 1
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ci)
  %.pre29 = load i64, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.cj = phi i64 [ %.pre29, %bb.l ], [ %i.ca, %_ZN6Assimp9IsLineEndIcEEbT_.exit19 ] ; 2 uses
  %i.ck = load i64, ptr %i.a, align 8
  %.not15 = icmp ult i64 %i.cj, %i.ck
  br i1 %.not15, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %0, align 8               ; 2 uses
  %i.cm = load i64, ptr %7, align 8
  %i.cn = load ptr, ptr %i.cl, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i64 noundef %i.cm, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.cr = load ptr, ptr %0, align 8               ; 2 uses
  %i.cs = load ptr, ptr %i.af, align 8
  %i.ct = load i64, ptr %i.a, align 8
  %i.cu = load ptr, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %i.cs, i64 noundef 1, i64 noundef %i.ct), !inline_history !13 ; 4 uses
  %.not23 = icmp eq i64 %i.cx, 0
  br i1 %.not23, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cz = icmp ult i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.p, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

bb.p:                                             ; preds = %bb.o
  store i64 %i.cx, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread: ; preds = %bb.o, %bb.p
  %i.da = phi i64 [ %i.cx, %bb.p ], [ %i.cy, %bb.o ]
  %i.db = load i64, ptr %7, align 8
  %i.dc = add i64 %i.db, %i.da
  store i64 %i.dc, ptr %7, align 8
  store i64 0, ptr %i.c, align 8
  %i.dd = load i64, ptr %i.bs, align 8
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.bs, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread, %bb.m
  %i.df = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread ], [ %i.cj, %bb.m ]
  %.pre28 = load ptr, ptr %i.af, align 8
  br label %bb.k, !llvm.loop !15

bb.r:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  store i8 10, ptr %i.by, align 1
  %i.dg = load i64, ptr %i.c, align 8             ; 5 uses
  %i.dh = load i64, ptr %i.a, align 8             ; 2 uses
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.af, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp eq i8 %i.dl, 13
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = add nuw i64 %i.dg, 1                    ; 2 uses
  store i64 %i.dn, ptr %i.c, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.do = phi i64 [ %i.dn, %bb.t ], [ %i.dg, %bb.s ], [ %i.dg, %bb.r ] ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.dh
  br i1 %i.dp, label %bb.v, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.af, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 10
  br i1 %i.dt, label %bb.w, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

bb.w:                                             ; preds = %bb.v
  %i.du = add nuw i64 %i.do, 1
  store i64 %i.du, ptr %i.c, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %bb.g, %bb.n, %bb.b, %bb.w, %bb.v, %bb.u
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.n ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

declare noundef zeroext i1 @_ZN6Assimp3PLY3DOM13ParseInstanceERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6Assimp3PLY3DOM19ParseInstanceBinaryERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [3 x [4 x i32]], align 16         ; 19 uses
  %i.d = alloca [3 x [4 x i32]], align 16         ; 19 uses
  %4 = alloca %class.aiColor4t, align 4           ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.aiColor3D, align 8          ; 9 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.aiString, align 4           ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 -1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.not283296 = icmp eq ptr %i.o, %i.q
  br i1 %.not283296, label %.thread275, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %i.r = phi ptr [ %i.cr, %bb.s ], [ %i.n, %bb.a ] ; 2 uses
  %.048298 = phi i32 [ %i.ct, %bb.s ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0160.0297 = phi ptr [ %i.cs, %bb.s ], [ %i.o, %bb.a ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0160.0297, i64 24
  %i.t = load i32, ptr %i.s, align 8
  switch i32 %i.t, label %bb.s [
    i32 4, label %bb.b
    i32 5, label %bb.r
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = zext i32 %.048298 to i64
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load ptr, ptr %.sroa.0160.0297, align 8  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0160.0297, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not284303 = icmp eq ptr %i.y, %i.aa
  br i1 %.not284303, label %bb.t, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph311, %.thread270
  %i.ax = phi i32 [ 0, %.lr.ph311 ], [ %i.cc, %.thread270 ] ; 15 uses
  %.047309368 = phi i32 [ -1, %.lr.ph311 ], [ %.047309369, %.thread270 ] ; 15 uses
  %i.ay = phi i32 [ 0, %.lr.ph311 ], [ %i.cd, %.thread270 ] ; 15 uses
  %.047309363 = phi i32 [ -1, %.lr.ph311 ], [ %.047309364, %.thread270 ] ; 15 uses
  %i.az = phi i32 [ 0, %.lr.ph311 ], [ %i.ce, %.thread270 ] ; 15 uses
  %.047309358 = phi i32 [ -1, %.lr.ph311 ], [ %.047309359, %.thread270 ] ; 15 uses
  %i.ba = phi i32 [ 0, %.lr.ph311 ], [ %i.cf, %.thread270 ] ; 15 uses
  %.047309353 = phi i32 [ -1, %.lr.ph311 ], [ %.047309354, %.thread270 ] ; 15 uses
  %i.bb = phi i32 [ 0, %.lr.ph311 ], [ %i.cg, %.thread270 ] ; 15 uses
  %.047309348 = phi i32 [ -1, %.lr.ph311 ], [ %.047309349, %.thread270 ] ; 15 uses
  %i.bc = phi i32 [ 0, %.lr.ph311 ], [ %i.ch, %.thread270 ] ; 15 uses
  %.047309343 = phi i32 [ -1, %.lr.ph311 ], [ %.047309344, %.thread270 ] ; 15 uses
end_hunk_0
