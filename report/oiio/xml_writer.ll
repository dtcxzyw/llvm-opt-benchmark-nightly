inline.NumInlined: 233
inline.NumDeleted: 110
begin_hunk_0_@_ZN22photos_editing_formats8image_io9XmlWriter10WriteXmlnsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  invoke void @_ZN22photos_editing_formats8image_io9XmlWriter18WriteAttributeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(73) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %3)
          to label %.noexc12 unwind label %bb.e

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlWriter19WriteAttributeValueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull readonly align 8 dereferenceable(73) %0, i1 noundef zeroext true, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %_ZN22photos_editing_formats8image_io9XmlWriter26WriteAttributeNameAndValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b.exit unwind label %bb.e

_ZN22photos_editing_formats8image_io9XmlWriter26WriteAttributeNameAndValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b.exit: ; preds = %.noexc12
  %i.y = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN22photos_editing_formats8image_io9XmlWriter26WriteAttributeNameAndValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b.exit
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN22photos_editing_formats8image_io9XmlWriter26WriteAttributeNameAndValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.af = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.e:                                             ; preds = %.noexc12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.e
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn7 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ah, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter26WriteAttributeNameAndValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN22photos_editing_formats8image_io9XmlWriter18WriteAttributeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN22photos_editing_formats8image_io9XmlWriter19WriteAttributeValueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -230584300921369395, 230584300921369396) i64 @_ZN22photos_editing_formats8image_io9XmlWriter19StartWritingElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext true) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 14 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -6
  store i8 1, ptr %i.g, align 2, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !10
  %i.k = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.m, ptr %i.a, align 8, !tbaa !34
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(35) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !27
  %i.p = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.p, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN22photos_editing_formats8image_io9XmlWriter11ElementDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !16
  store i8 %i.r, ptr %i.q, align 1, !tbaa !16
  br label %_ZN22photos_editing_formats8image_io9XmlWriter11ElementDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZN22photos_editing_formats8image_io9XmlWriter11ElementDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN22photos_editing_formats8image_io9XmlWriter11ElementDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  store i8 0, ptr %i.x, align 1, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  store i8 0, ptr %i.y, align 2, !tbaa !30
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit: ; preds = %_ZN22photos_editing_formats8image_io9XmlWriter11ElementDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad, i64 noundef %i.af) ; 2 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ai, i64 noundef %i.ak) ; 0 uses
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.an = and i64 %i.am, -2
  %i.ao = icmp eq i64 %i.an, 4611686018427387902
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit
  %i.ap = ptrtoint ptr %i.e to i64
  %i.aq = ptrtoint ptr %i.f to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 40
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !40
  ret i64 %i.as
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds i8, ptr %i.d, i64 -7
  %3 = load i8, ptr %2, align 1, !tbaa !36, !range !42, !noundef !38
  %4 = trunc nuw i8 %3 to i1
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -6
  %i.g = load i8, ptr %i.f, align 2, !range !42
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %4, i1 true, i1 %i.h
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  br i1 %1, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.u, %bb.f ], [ %i.y, %bb.g ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.c, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter20FinishWritingElementEv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.h, -2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.j, i8 noundef signext 0)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 5 uses
  %1 = getelementptr inbounds i8, ptr %i.k, i64 -40
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -7
  %2 = load i8, ptr %i.l, align 1, !tbaa !36, !range !42, !noundef !38
  %3 = trunc nuw i8 %2 to i1                      ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -6
  %i.n = load i8, ptr %i.m, align 2, !range !42
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %3, i1 true, i1 %i.o
  br i1 %or.cond, label %4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !35, !range !42, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.u = load i64, ptr %i.g, align 8, !tbaa !13
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.u) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 4 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.ah, %bb.i ], [ %i.al, %bb.j ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i)
  br label %bb.o

4:                                                ; preds = %bb.d
  br i1 %3, label %.thread, label %bb.k

bb.k:                                             ; preds = %4
  %i.an = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !13
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao, i64 noundef %i.ap) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %4
  %i.ar = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !27
  %i.au = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.at, i64 noundef %i.av) ; 4 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !43
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i7, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.l:                                             ; preds = %.thread
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !59
  %.not.i1.i.i9 = icmp eq i8 %i.bf, 0
  br i1 %.not.i1.i.i9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 67
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bd)
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.bd, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.m, %bb.n
  %.0.i.i.i10 = phi i8 [ %i.bh, %bb.m ], [ %i.bl, %bb.n ]
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i10)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.bm, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.am, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -40 ; 2 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !28
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -24 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #15
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE8pop_backEv.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter28FinishWritingElementsToDepthEm(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40                  ; 2 uses
  %i.j = icmp ugt i64 %i.i, %1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03 = phi i64 [ %i.k, %.lr.ph ], [ %i.i, %bb.b ]
  tail call void @_ZN22photos_editing_formats8image_io9XmlWriter20FinishWritingElementEv(ptr noundef nonnull align 8 dereferenceable(73) %0)
  %i.k = add i64 %.03, -1                         ; 2 uses
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -230584300921369395, 230584300921369396) i64 @_ZN22photos_editing_formats8image_io9XmlWriter20StartWritingElementsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.e = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not8 = icmp eq ptr %i.e, %i.g
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40
  ret i64 %i.k

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = tail call noundef i64 @_ZN22photos_editing_formats8image_io9XmlWriter19StartWritingElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter22WriteElementAndContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN22photos_editing_formats8image_io9XmlWriter19StartWritingElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN22photos_editing_formats8image_io9XmlWriter12WriteContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds i8, ptr %i.e, i64 -7
  %4 = load i8, ptr %3, align 1, !tbaa !36, !range !42, !noundef !38
  %5 = trunc nuw i8 %4 to i1
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -6
  %i.h = load i8, ptr %i.g, align 2, !range !42
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %5, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.i, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.i

_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.i: ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %.pre3.i = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %i.l = icmp eq ptr %.pre.i, %.pre3.i
  br i1 %i.l, label %_ZN22photos_editing_formats8image_io9XmlWriter12WriteContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.i

_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.i: ; preds = %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.i, %bb.b
  %6 = phi ptr [ %.pre3.i, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.i ], [ %i.e, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %6, i64 -7
  store i8 1, ptr %i.m, align 1, !tbaa !36
  %i.n = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.o = load ptr, ptr %2, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.o, i64 noundef %i.q) ; 0 uses
  br label %_ZN22photos_editing_formats8image_io9XmlWriter12WriteContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN22photos_editing_formats8image_io9XmlWriter12WriteContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.i, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.i
  tail call void @_ZN22photos_editing_formats8image_io9XmlWriter20FinishWritingElementEv(ptr noundef nonnull align 8 dereferenceable(73) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter12WriteContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds i8, ptr %i.d, i64 -7
  %3 = load i8, ptr %2, align 1, !tbaa !36, !range !42, !noundef !38
  %4 = trunc nuw i8 %3 to i1
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -6
  %i.g = load i8, ptr %i.f, align 2, !range !42
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %4, i1 true, i1 %i.h
  br i1 %or.cond.i, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.a, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit

_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  %.pre3 = load ptr, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre3
  br i1 %i.k, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread7, label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.a

_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.a: ; preds = %bb.b, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit
  %5 = phi ptr [ %.pre3, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit ], [ %i.d, %bb.b ]
  %i.l = getelementptr inbounds i8, ptr %5, i64 -7
  store i8 1, ptr %i.l, align 1, !tbaa !36
  %i.m = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.n = load ptr, ptr %1, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.n, i64 noundef %i.p) ; 0 uses
  br label %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread7

_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread7: ; preds = %bb.a, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit.thread.a, %_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter18WriteAttributeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.x, i64 noundef %i.z)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i64 noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  store i8 1, ptr %i.ah, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter19WriteAttributeValueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i8, ptr %i.i, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.j, ptr %i.b, align 1, !tbaa !16
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext %i.j) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.t = load ptr, ptr %2, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v) ; 0 uses
  br i1 %3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i8, ptr %i.y, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.z, ptr %i.a, align 1, !tbaa !16
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !70
  %.not.i3 = icmp eq i64 %i.af, 0
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5

bb.i:                                             ; preds = %bb.g
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %i.z) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter12WriteCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext true) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.6, i64 noundef 5) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k) ; 4 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

end_hunk_0
