inline.NumInlined: 1765
inline.NumDeleted: 766
begin_hunk_0_@_ZN6Assimp11DXFImporter13ParseEntitiesERNS_3DXF10LineReaderERNS1_8FileDataE:bb.a
  %i.al = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -88
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.ak, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4
  store i64 %i.as, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.at = getelementptr inbounds i8, ptr %i.l, i64 -72
  %i.au = getelementptr inbounds i8, ptr %i.l, i64 -64
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 6
  store i64 %i.ba, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJRA10_KcmRA16_S2_mRA29_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.al, ptr noundef nonnull align 1 dereferenceable(10) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(29) @.str.43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11DXFImporter11SkipSectionERNS_3DXF10LineReaderE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread

_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit:         ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.3, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.critedge, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread

_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread:  ; preds = %bb.b, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(108) ptr @_ZN6Assimp3DXF10LineReaderppEv(ptr noundef nonnull align 8 dereferenceable(108) %1) ; 0 uses
  %i.k = load i32, ptr %i.b, align 8
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.critedge, label %bb.b, !llvm.loop !9

.critedge:                                        ; preds = %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11DXFImporter11ParseHeaderERNS_3DXF10LineReaderERNS1_8FileDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread

_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit:         ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.3, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.critedge, label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread

_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread:  ; preds = %bb.b, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(108) ptr @_ZN6Assimp3DXF10LineReaderppEv(ptr noundef nonnull align 8 dereferenceable(108) %1) ; 0 uses
  %i.k = load i32, ptr %i.b, align 8
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.critedge, label %bb.b, !llvm.loop !10

.critedge:                                        ; preds = %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit.thread, %bb.a
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA14_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA14_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA14_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA14_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(108) ptr @_ZN6Assimp3DXF10LineReaderppEv(ptr noundef nonnull align 8 dereferenceable(108) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.ab [
    i32 0, label %bb.b
    i32 1, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = icmp eq i8 %i.h, 45
  switch i8 %i.h, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8
  %.pre.i = load i8, ptr %i.j, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i8 [ %i.h, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  %i.m = add i8 %i.k, -58
  %or.cond11.i.i = icmp ult i8 %i.m, -10
  br i1 %or.cond11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.n = phi i8 [ %i.s, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %.013.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.0812.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.l, %bb.d ]
  %i.o = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.n, -48
  %i.p = zext nneg i8 %narrow.i.i to i32
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = add i8 %i.s, -58
  %or.cond.i.i = icmp ult i8 %i.t, -10
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.q, %.lr.ph.i.i ] ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.u = add i32 %.0.lcssa.i.i, 2147483647
  %or.cond.i = icmp ult i32 %i.u, -2
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 0, %.0.lcssa.i.i
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(24) @.str.64, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(47) @.str.65)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.f, %._crit_edge.i.i, %.noexc
  %.0.i = phi i32 [ %i.v, %bb.f ], [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.0.lcssa.i.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.0.i, ptr %i.x, align 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit unwind label %bb.t ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit:                ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.z, ptr %1, align 8, !alias.scope !17
  %i.aa = load ptr, ptr %i.f, align 8, !noalias !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !17
  store i64 %i.ac, ptr %i.a, align 8, !noalias !17
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN6Assimp12LineSplitterppEi.exit
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.u   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i.i
  store ptr %i.ae, ptr %1, align 8, !alias.scope !17
  %i.af = load i64, ptr %i.a, align 8, !noalias !17
  store i64 %i.af, ptr %i.z, align 8, !alias.scope !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc13, %_ZN6Assimp12LineSplitterppEi.exit
  %i.ag = phi ptr [ %i.ae, %.noexc13 ], [ %i.z, %_ZN6Assimp12LineSplitterppEi.exit ] ; 2 uses
  switch i64 %i.ac, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1
  store i8 %i.ah, ptr %i.ag, align 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !noalias !17 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !17
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  %i.aq = load ptr, ptr %1, align 8               ; 5 uses
  %i.ar = icmp eq ptr %i.aq, %i.z                 ; 2 uses
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.k
  br i1 %i.ar, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.k
  br i1 %i.ar, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.aq, align 1
  store i8 %i.au, ptr %i.an, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.av = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  %.pre.i14 = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aq, ptr %i.am, align 8
  %i.ba = load <2 x i64>, ptr %i.aj, align 8
  store <2 x i64> %i.ba, ptr %i.az, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bb = load i64, ptr %i.ao, align 8
  store ptr %i.aq, ptr %i.am, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load <2 x i64>, ptr %i.aj, align 8
  store <2 x i64> %i.bd, ptr %i.bc, align 8
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.an, ptr %1, align 8
  store i64 %i.bb, ptr %i.z, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %2 = phi ptr [ %.pre.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.an, %bb.o ], [ %i.z, %bb.p ]
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %2, align 1
  %i.be = load ptr, ptr %1, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.z
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bg = load i64, ptr %i.z, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bi = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit16 unwind label %bb.t ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit16:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load i64, ptr %i.bj, align 8
  %.not7 = icmp eq i64 %i.bk, 0
  br i1 %.not7, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit16
  %i.bl = load ptr, ptr %i.am, align 8
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 123
  br i1 %i.bn, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8
  %i.bo = load i64, ptr %i.ab, align 8
  %.not823 = icmp eq i64 %i.bo, 0
  br i1 %.not823, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN6Assimp12LineSplitterppEi.exit20
  %i.bp = phi i64 [ %i.bt, %_ZN6Assimp12LineSplitterppEi.exit20 ], [ 0, %bb.r ]
  %i.bq = load ptr, ptr %i.f, align 8
  %i.br = load i8, ptr %i.bq, align 1
  %.not9 = icmp eq i8 %i.br, 125
  br i1 %.not9, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bs = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit20 unwind label %.loopexit ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit20:              ; preds = %bb.s
  %i.bt = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.c, align 8
  %i.bu = load i64, ptr %i.ab, align 8
  %.not8 = icmp eq i64 %i.bu, 0
  br i1 %.not8, label %.critedge, label %.lr.ph, !llvm.loop !20

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %.noexc, %bb.g
  %i.bv = landingpad { ptr, i32 }
          catch ptr @_ZTISt11logic_error
  br label %bb.w

bb.u:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.w

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.v

.loopexit.split-lp:                               ; preds = %_ZN6Assimp12LineSplitterppEi.exit22, %bb.z, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.v ], [ %i.bv, %bb.t ], [ %i.bw, %bb.u ] ; 3 uses
  %.05 = extractvalue { ptr, i32 } %.pn, 1
  %i.bx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt11logic_error) #26
  %i.by = icmp eq i32 %.05, %i.bx
  br i1 %i.by, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %.06 = extractvalue { ptr, i32 } %.pn, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %.06) #26 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.y

bb.y:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit16, %bb.q, %bb.aa, %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !21, !align !22 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = and i64 %i.ci, 4294967295
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %.sink.split, label %bb.ab

.critedge:                                        ; preds = %.lr.ph, %_ZN6Assimp12LineSplitterppEi.exit20, %bb.r
  %i.ck = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit22 unwind label %.loopexit.split-lp ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit22:              ; preds = %.critedge
  %i.cl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit22
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA34_KcRmRA8_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cl, ptr noundef nonnull align 1 dereferenceable(34) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.63)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

.sink.split:                                      ; preds = %bb.y, %bb.a
  %.sink = phi i32 [ 2, %bb.a ], [ 1, %bb.y ]
  store i32 %.sink, ptr %i.d, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y, %bb.a
  ret ptr %0

bb.ac:                                            ; preds = %bb.w
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11DXFImporter13ConvertMeshesEP7aiSceneRNS_3DXF8FileDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::map", align 8          ; 12 uses
  %4 = alloca %"class.std::map.44", align 8       ; 11 uses
  %5 = alloca %"class.std::vector.49", align 8    ; 17 uses
  %6 = alloca %"class.std::shared_ptr.20", align 8 ; 8 uses
  %7 = alloca %"class.std::vector.55", align 8    ; 10 uses
  %i.c = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not238278 = icmp eq ptr %i.d, %i.f
  br i1 %.not238278, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %._crit_edge, %bb.b
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugIJRA30_KcRjRA19_S2_S5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.l

.lr.ph281:                                        ; preds = %bb.b, %._crit_edge
  %.sroa.0231.0279 = phi ptr [ %i.k, %._crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.0231.0279, align 8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0231.0279, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not239276 = icmp eq ptr %i.h, %i.j
  br i1 %.not239276, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph281
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0231.0279, i64 96 ; 2 uses
  %.not238 = icmp eq ptr %i.k, %i.f
  br i1 %.not238, label %._crit_edge282, label %.lr.ph281

.lr.ph:                                           ; preds = %.lr.ph281, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0227.0277 = phi ptr [ %i.bd, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.h, %.lr.ph281 ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.0227.0277, align 8  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0227.0277, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4
end_hunk_0
