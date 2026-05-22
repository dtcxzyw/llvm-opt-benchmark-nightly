inline.NumInlined: 484
inline.NumDeleted: 230
begin_hunk_0_@_ZN22photos_editing_formats8image_io9XmlReader11FinishParseEv:bb.a
bb.ac:                                            ; preds = %.noexc.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bs
  br i1 %i.eg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ac, %bb.u
  %.sink = phi ptr [ %i.cg, %bb.u ], [ %i.ef, %bb.ac ]
  %.pn19.ph = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ee, %bb.ac ]
  %i.eh = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ei) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ac, %bb.u
  %.pn19 = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ee, %bb.ac ], [ %.pn19.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45

bb.ad:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !44 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cl
  br i1 %i.el, label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.ad
  %i.em = load i64, ptr %i.cl, align 8, !tbaa !40
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #15
  br label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45

_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %.body
  %.pn21 = phi { ptr, i32 } [ %.pn19, %.body ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ %i.ej, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45, %bb.n
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit45 ], [ %i.ax, %bb.n ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ay, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.m
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.ae ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ah

bb.ag:                                            ; preds = %bb.b, %bb.e, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.0 = phi i1 [ false, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ true, %bb.e ], [ true, %bb.b ]
  %i.eo = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.e
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ag
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !40
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.f
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.af ], [ %i.v, %bb.f ]
  %i.es = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.e
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.ah
  %i.eu = load i64, ptr %i.e, align 8, !tbaa !40
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %.pn21.pn.pn.pn

bb.ai:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef ptr @_ZN22photos_editing_formats8image_io7XmlRule18GetCurrentTerminalEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZNK22photos_editing_formats8image_io11DataScanner14GetDescriptionB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlReader5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  %i.e = add i64 %i.d, %i.b
  store i64 %i.b, ptr %2, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN22photos_editing_formats8image_io11DataSegment6CreateERKNS0_9DataRangeEPKhNS1_23BufferDispositionPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.g, i32 noundef 1)
  %i.h = load ptr, ptr %3, align 8, !tbaa !74
  %i.i = invoke noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlReader5ParseEmRKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(90) %0, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.h)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !82
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14, !inline_history !83
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14, !inline_history !83
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %i.i

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.aa
}

declare void @_ZN22photos_editing_formats8image_io11DataSegment6CreateERKNS0_9DataRangeEPKhNS1_23BufferDispositionPolicyE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlReader5ParseEmRKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(90) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.photos_editing_formats::image_io::XmlHandlerContext", align 8 ; 27 uses
  %5 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 16 uses
  %10 = alloca %"class.photos_editing_formats::image_io::XmlHandlerContext", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator.7", align 1 ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::allocator.7", align 1 ; 4 uses
  %18 = alloca %"class.photos_editing_formats::image_io::Message", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.bx, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = load ptr, ptr %0, align 8, !tbaa !86
  store i64 %1, ptr %4, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !95
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.e, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !98
  store ptr %i.j, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 0, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.f, ptr %i.m, align 8, !tbaa !101
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.g, align 8, !tbaa !71   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !73   ; 3 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %4, align 8, !tbaa !87     ; 2 uses
  %.not.i.i = icmp uge i64 %i.r, %i.n
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = and i1 %.not.i.i, %i.s
  br i1 %i.t, label %bb.e, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !103, !nonnull !55, !align !104 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit: ; preds = %bb.e
  %.not.i1.i = icmp uge i64 %i.n, %i.v
  %i.z = icmp ule i64 %i.p, %i.x
  %spec.select.i.i = and i1 %.not.i1.i, %i.z
  br i1 %spec.select.i.i, label %bb.n, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !38
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 0, ptr %i.af, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i8 0, ptr %i.ag, align 4, !tbaa !109
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 53
  store i8 1, ptr %i.ah, align 1, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext35GetInvalidLocationAndRangeErrorTextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.ai = invoke noundef nonnull align 8 dereferenceable(54) ptr @_ZN22photos_editing_formats8image_io15DataMatchResult10SetMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(54) %5, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_15DataMatchResultERKNS0_11DataContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %5, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ac
  br i1 %i.ap, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.loopexit192

bb.i:                                             ; preds = %bb.u, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.j:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.k:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.k
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !40
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.au, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn48 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ac
  br i1 %i.bc, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77: ; preds = %bb.m
  %i.bd = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit79

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit79: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.bw

bb.n:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i32 0, ptr %7, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.bn, align 8, !tbaa !38
  store i8 0, ptr %i.bm, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bo, align 8, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 0, ptr %i.bp, align 8, !tbaa !108
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i8 0, ptr %i.bq, align 4, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 53
  store i8 1, ptr %i.br, align 1, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bs, ptr %8, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 12, ptr %i.bt, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 0, ptr %i.bu, align 4, !tbaa !40
  %i.bv = invoke noundef nonnull align 8 dereferenceable(54) ptr @_ZN22photos_editing_formats8image_io15DataMatchResult10SetMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(54) %7, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bw = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bs
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.o
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_15DataMatchResultERKNS0_11DataContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %7, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bm
  br i1 %i.cb, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i83: ; preds = %bb.p
  %i.cc = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit85

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit85: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit192

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bs
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.q
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn68 = phi { ptr, i32 } [ %i.cj, %bb.r ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  %i.ck = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bm
  br i1 %i.cl, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89: ; preds = %bb.s
  %i.cm = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit91

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit91: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.bw

bb.t:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.u, label %19

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN22photos_editing_formats8image_io11DataLineMap13FindDataLinesERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(25) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %19 unwind label %bb.i

19:                                               ; preds = %bb.u, %bb.t
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !73
  %22 = sub i64 %21, %1                           ; 2 uses
  %.not220 = icmp eq i64 %22, 0
  br i1 %.not220, label %.critedge73.loopexit, label %bb.v

bb.v:                                             ; preds = %19
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124
  %.020221 = phi i64 [ %22, %bb.v ], [ %.222, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124 ] ; 4 uses
  %i.de = load ptr, ptr %i.bf, align 8, !tbaa !56
  %i.df = load ptr, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df                ; 2 uses
  %i.dh = load i8, ptr %i.a, align 8, !range !54
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond = select i1 %i.dg, i1 true, i1 %i.di
  br i1 %or.cond, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 5 uses
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull %4)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 40, i1 false)
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !98
  store ptr %i.cr, ptr %i.cr, align 8, !tbaa !99
  store i64 0, ptr %i.ct, align 8, !tbaa !100
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !99  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dl, %i.j
  br i1 %.not4.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.noexc.i.i.i
  %.sroa.01.05.i.i.i.i = phi ptr [ %i.dn, %.noexc.i.i.i ], [ %i.dl, %bb.y ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %.noexc.i.i.i unwind label %bb.z

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.dn = load ptr, ptr %.sroa.01.05.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, %i.j
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !111

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cr) #14
  br label %.body

.loopexit:                                        ; preds = %.noexc.i.i.i, %bb.y
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !101
  store ptr %i.dp, ptr %i.cu, align 8, !tbaa !101
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull %10)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %.loopexit
  %i.dt = load ptr, ptr %i.cr, align 8, !tbaa !99 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.dt, %i.cr
  br i1 %.not8.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dt, %bb.aa ] ; 4 uses
  %i.du = load ptr, ptr %.09.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !40
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #15
  %.not.i.i.i = icmp eq ptr %i.du, %i.cr
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !112

_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.aa
  %i.eb = load i32, ptr %i.cv, align 8, !tbaa !108
  switch i32 %i.eb, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121 [
    i32 -1, label %bb.af
    i32 0, label %bb.af
    i32 1, label %bb.ag
    i32 2, label %bb.at
    i32 3, label %bb.av
  ]

bb.ab:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ac:                                            ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ad:                                            ; preds = %.loopexit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io11DataContextD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #14
  br label %.body

.loopexit186:                                     ; preds = %bb.af, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108, %bb.ai, %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ae:                                            ; preds = %bb.at
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.af:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_15DataMatchResultERKNS0_11DataContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121 unwind label %.loopexit186

bb.ag:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.eg = load i8, ptr %i.cw, align 4, !tbaa !109, !range !54, !noundef !55
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ah, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ei = load ptr, ptr %i.cx, align 8, !tbaa !50 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i92, label %.noexc93, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc93 unwind label %.loopexit186

.noexc93:                                         ; preds = %bb.ai, %bb.ah
  %i.ej = load i32, ptr %9, align 8, !tbaa !45    ; 2 uses
  switch i32 %i.ej, label %bb.aj [
    i32 8, label %.thread.i.i
    i32 6, label %.thread.i.i
  ]

.thread.i.i:                                      ; preds = %.noexc93, %.noexc93
  store i8 1, ptr %i.a, align 8, !tbaa !51
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc93
  %spec.select.i.i.i = icmp ugt i32 %i.ej, 1
  br i1 %spec.select.i.i.i, label %bb.ak, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

bb.ak:                                            ; preds = %bb.aj, %.thread.i.i
  store i8 1, ptr %i.cy, align 1, !tbaa !52
  br label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit: ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.ek = load i64, ptr %i.cz, align 8, !tbaa !105 ; 3 uses
  %i.el = load i64, ptr %i.da, align 8, !tbaa !7
  %i.em = add i64 %i.el, %i.ek
  store i64 %i.em, ptr %i.da, align 8, !tbaa !7
  %i.en = sub i64 %.020221, %i.ek                 ; 2 uses
  %i.eo = load i64, ptr %4, align 8, !tbaa !87
  %i.ep = add i64 %i.eo, %i.ek
  store i64 %i.ep, ptr %4, align 8, !tbaa !87
  %i.eq = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.er = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %bb.al unwind label %.loopexit186

bb.al:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit
  br i1 %i.er, label %bb.am, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.es = load ptr, ptr %i.dj, align 8, !tbaa !28
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule15ReleaseNextRuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %i.es)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 6 uses
  %i.eu = load ptr, ptr %i.db, align 8, !tbaa !53
  %.not.i.i94 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i.i94, label %bb.ao, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.an
  %i.ev = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !28
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ew, ptr %i.bh, align 8, !tbaa !27
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit

bb.ao:                                            ; preds = %bb.an
  %i.ex = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 10 uses
  %i.ey = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ap, label %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #16
          to label %.noexc160 unwind label %.loopexit.split-lp188.a

.noexc160:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ao
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i157 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i157)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #17
          to label %.noexc161 unwind label %.loopexit187.a ; 10 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  %i.fk = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !28
  store ptr null, ptr %11, align 8, !tbaa !28
  %.not10.i.i.i.i = icmp eq ptr %i.ex, %i.et
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i158.preheader

.lr.ph.i.i.i.i158.preheader:                      ; preds = %.noexc161
  %i.fl = add i64 %i.ey, -8
  %i.fm = sub i64 %i.fl, %i.ez                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fm, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i158.preheader380, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i158.preheader
  %scevgep = getelementptr i8, ptr %i.fi, i64 8
  %i.fp = add i64 %i.ey, -8
  %i.fq = sub i64 %i.fp, %i.ez
  %i.fr = and i64 %i.fq, -8                       ; 2 uses
  %scevgep350 = getelementptr i8, ptr %scevgep, i64 %i.fr
  %scevgep351 = getelementptr i8, ptr %i.ex, i64 8
  %scevgep352 = getelementptr i8, ptr %scevgep351, i64 %i.fr
  %bound0 = icmp ult ptr %i.fi, %scevgep352
  %bound1 = icmp ult ptr %i.ex, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i158.preheader380, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fo, 4611686018427387900     ; 3 uses
  %i.fs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fi, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ex, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fi, i64 %i.fv ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.ex, i64 %i.fv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.fw = getelementptr i8, ptr %next.gep353, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep353, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %wide.load354 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %i.fx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !28, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load354, ptr %i.fx, align 8, !tbaa !28, !alias.scope !121, !noalias !118
  %i.fy = getelementptr i8, ptr %next.gep353, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep353, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  store <2 x ptr> splat (ptr null), ptr %i.fy, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i158.preheader380

.lr.ph.i.i.i.i158.preheader380:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i158.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fi, %vector.memcheck ], [ %i.fi, %.lr.ph.i.i.i.i158.preheader ], [ %i.ft, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ex, %vector.memcheck ], [ %i.ex, %.lr.ph.i.i.i.i158.preheader ], [ %i.fu, %middle.block ]
  br label %.lr.ph.i.i.i.i158

.lr.ph.i.i.i.i158:                                ; preds = %.lr.ph.i.i.i.i158.preheader380, %.lr.ph.i.i.i.i158
  %.012.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i158 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i158.preheader380 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i158 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i158.preheader380 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ga = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !28, !alias.scope !116, !noalias !113
  store i64 %i.ga, ptr %.012.i.i.i.i, align 8, !tbaa !28, !alias.scope !113, !noalias !116
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !28, !alias.scope !116, !noalias !113
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.gb, %i.et
  br i1 %.not.i.i.i.i159, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i158, !llvm.loop !126

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i158, %middle.block, %.noexc161
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fi, %.noexc161 ], [ %i.ft, %middle.block ], [ %i.gc, %.lr.ph.i.i.i.i158 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #15
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.aq
  store ptr %i.fi, ptr %i.bf, align 8, !tbaa !26
  store ptr %i.gd, ptr %i.bh, align 8, !tbaa !27
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.ge, ptr %i.db, align 8, !tbaa !53
  %.pr = load ptr, ptr %11, align 8, !tbaa !28    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.gf = load ptr, ptr %.pr, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #14, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121

bb.ar:                                            ; preds = %bb.am
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98

.loopexit187.a:                                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit189.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp188.a:                          ; preds = %bb.ap
  %lpad.loopexit.split-lp190.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp188.a, %.loopexit187.a
  %lpad.phi191.a = phi { ptr, i32 } [ %lpad.loopexit189.a, %.loopexit187.a ], [ %lpad.loopexit.split-lp190.a, %.loopexit.split-lp188.a ] ; 2 uses
  %i.gj = load ptr, ptr %11, align 8, !tbaa !28   ; 3 uses
  %.not.i96 = icmp eq ptr %i.gj, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i97: ; preds = %bb.as
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !30
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gj) #14, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i97, %bb.as, %bb.ar
  %.pn53 = phi { ptr, i32 } [ %i.gi, %bb.ar ], [ %lpad.phi191.a, %bb.as ], [ %lpad.phi191.a, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bj

bb.at:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %bb.au unwind label %bb.ae

bb.au:                                            ; preds = %bb.at
  %23 = load i64, ptr %i.cz, align 8, !tbaa !105
  %24 = load i64, ptr %i.da, align 8, !tbaa !7
  %25 = add i64 %24, %23
  store i64 %25, ptr %i.da, align 8, !tbaa !7
  %i.gn = load ptr, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.gn, %i.dd
  br i1 %.not.i.i99, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit103

_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit103: ; preds = %bb.au
  %i.go = load i64, ptr %i.dd, align 8, !tbaa !40
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gp) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103: ; preds = %bb.au, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %.loopexit192

bb.av:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.gq = load i8, ptr %i.cw, align 4, !tbaa !109, !range !54, !noundef !55
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.aw, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108

bb.aw:                                            ; preds = %bb.av
  %i.gs = load ptr, ptr %i.cx, align 8, !tbaa !50 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i104, label %.noexc107, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc107 unwind label %.loopexit186

.noexc107:                                        ; preds = %bb.ax, %bb.aw
  %i.gt = load i32, ptr %9, align 8, !tbaa !45    ; 2 uses
  switch i32 %i.gt, label %bb.ay [
    i32 8, label %.thread.i.i105
    i32 6, label %.thread.i.i105
  ]

.thread.i.i105:                                   ; preds = %.noexc107, %.noexc107
  store i8 1, ptr %i.a, align 8, !tbaa !51
  br label %bb.az

bb.ay:                                            ; preds = %.noexc107
  %spec.select.i.i.i106 = icmp ugt i32 %i.gt, 1
  br i1 %spec.select.i.i.i106, label %bb.az, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108

bb.az:                                            ; preds = %bb.ay, %.thread.i.i105
  store i8 1, ptr %i.cy, align 1, !tbaa !52
  br label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108

_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108: ; preds = %bb.az, %bb.ay, %bb.av
  %i.gu = load i64, ptr %i.cz, align 8, !tbaa !105 ; 3 uses
  %i.gv = load i64, ptr %i.da, align 8, !tbaa !7
  %i.gw = add i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.da, align 8, !tbaa !7
  %i.gx = sub i64 %.020221, %i.gu                 ; 3 uses
  %i.gy = load i64, ptr %4, align 8, !tbaa !87
  %i.gz = add i64 %i.gy, %i.gu
  store i64 %i.gz, ptr %4, align 8, !tbaa !87
  %i.ha = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.hb = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ha)
          to label %bb.ba unwind label %.loopexit186

bb.ba:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit108
  br i1 %i.hb, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.hc = load ptr, ptr %i.dj, align 8, !tbaa !28
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule15ReleaseNextRuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.hc)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.hd = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -8 ; 3 uses
  store ptr %i.he, ptr %i.bh, align 8, !tbaa !27
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !28 ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i109, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i: ; preds = %bb.bc
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hf) #14, !inline_history !128
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !27
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit: ; preds = %bb.bc, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i
  %i.hj = phi ptr [ %i.he, %bb.bc ], [ %.pre, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i ] ; 6 uses
  %i.hk = load ptr, ptr %i.db, align 8, !tbaa !53
  %.not.i.i110 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i.i110, label %bb.bd, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112.thread

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit
  %i.hl = load i64, ptr %12, align 8, !tbaa !28
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !28
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hm, ptr %i.bh, align 8, !tbaa !27
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115

bb.bd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit
  %i.hn = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 10 uses
  %i.ho = ptrtoint ptr %i.hj to i64               ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64               ; 3 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 4 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775800
  br i1 %i.hr, label %bb.be, label %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i162

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #16
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i162: ; preds = %bb.bd
  %i.hs = ashr exact i64 %i.hq, 3                 ; 3 uses
  %.sroa.speculated.i.i163 = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i163, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 1152921504606846975)
  %i.hw = select i1 %i.hu, i64 1152921504606846975, i64 %i.hv ; 3 uses
  %.not.i.i164 = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i164)
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #17
          to label %.noexc181 unwind label %.loopexit186.a ; 10 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i162
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hq
  %i.ia = load i64, ptr %12, align 8, !tbaa !28
  store i64 %i.ia, ptr %i.hz, align 8, !tbaa !28
  store ptr null, ptr %12, align 8, !tbaa !28
  %.not10.i.i.i.i165 = icmp eq ptr %i.hn, %i.hj
  br i1 %.not10.i.i.i.i165, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177, label %.lr.ph.i.i.i.i166.preheader

.lr.ph.i.i.i.i166.preheader:                      ; preds = %.noexc181
  %i.ib = add i64 %i.ho, -8
  %i.ic = sub i64 %i.ib, %i.hp                    ; 2 uses
  %i.id = lshr i64 %i.ic, 3
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check365 = icmp ult i64 %i.ic, 56
  br i1 %min.iters.check365, label %.lr.ph.i.i.i.i166.preheader381, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.i.i.i.i166.preheader
  %scevgep357 = getelementptr i8, ptr %i.hy, i64 8
  %i.if = add i64 %i.ho, -8
  %i.ig = sub i64 %i.if, %i.hp
  %i.ih = and i64 %i.ig, -8                       ; 2 uses
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.ih
  %scevgep359 = getelementptr i8, ptr %i.hn, i64 8
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.ih
  %bound0361 = icmp ult ptr %i.hy, %scevgep360
  %bound1362 = icmp ult ptr %i.hn, %scevgep358
  %found.conflict363 = and i1 %bound0361, %bound1362
  br i1 %found.conflict363, label %.lr.ph.i.i.i.i166.preheader381, label %vector.ph366

vector.ph366:                                     ; preds = %vector.memcheck356
  %n.vec368 = and i64 %i.ie, 4611686018427387900  ; 3 uses
  %i.ii = shl i64 %n.vec368, 3                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.ii  ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hn, i64 %i.ii
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph366
  %index370 = phi i64 [ 0, %vector.ph366 ], [ %index.next375, %vector.body369 ] ; 2 uses
  %i.il = shl i64 %index370, 3                    ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.hy, i64 %i.il ; 2 uses
  %next.gep372 = getelementptr i8, ptr %i.hn, i64 %i.il ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.im = getelementptr i8, ptr %next.gep372, i64 16
  %wide.load373 = load <2 x i64>, ptr %next.gep372, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %wide.load374 = load <2 x i64>, ptr %i.im, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %i.in = getelementptr i8, ptr %next.gep371, i64 16
  store <2 x i64> %wide.load373, ptr %next.gep371, align 8, !tbaa !28, !alias.scope !137, !noalias !134
  store <2 x i64> %wide.load374, ptr %i.in, align 8, !tbaa !28, !alias.scope !137, !noalias !134
  %i.io = getelementptr i8, ptr %next.gep372, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep372, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  store <2 x ptr> splat (ptr null), ptr %i.io, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %index.next375 = add nuw i64 %index370, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next375, %n.vec368
  br i1 %i.ip, label %middle.block376, label %vector.body369, !llvm.loop !139

middle.block376:                                  ; preds = %vector.body369
  %cmp.n377 = icmp eq i64 %i.ie, %n.vec368
  br i1 %cmp.n377, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177, label %.lr.ph.i.i.i.i166.preheader381

.lr.ph.i.i.i.i166.preheader381:                   ; preds = %vector.memcheck356, %.lr.ph.i.i.i.i166.preheader, %middle.block376
  %.012.i.i.i.i167.ph = phi ptr [ %i.hy, %vector.memcheck356 ], [ %i.hy, %.lr.ph.i.i.i.i166.preheader ], [ %i.ij, %middle.block376 ]
  %.0911.i.i.i.i168.ph = phi ptr [ %i.hn, %vector.memcheck356 ], [ %i.hn, %.lr.ph.i.i.i.i166.preheader ], [ %i.ik, %middle.block376 ]
  br label %.lr.ph.i.i.i.i166

.lr.ph.i.i.i.i166:                                ; preds = %.lr.ph.i.i.i.i166.preheader381, %.lr.ph.i.i.i.i166
  %.012.i.i.i.i167 = phi ptr [ %i.is, %.lr.ph.i.i.i.i166 ], [ %.012.i.i.i.i167.ph, %.lr.ph.i.i.i.i166.preheader381 ] ; 2 uses
  %.0911.i.i.i.i168 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i166 ], [ %.0911.i.i.i.i168.ph, %.lr.ph.i.i.i.i166.preheader381 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.iq = load i64, ptr %.0911.i.i.i.i168, align 8, !tbaa !28, !alias.scope !132, !noalias !129
  store i64 %i.iq, ptr %.012.i.i.i.i167, align 8, !tbaa !28, !alias.scope !129, !noalias !132
  store ptr null, ptr %.0911.i.i.i.i168, align 8, !tbaa !28, !alias.scope !132, !noalias !129
  %i.ir = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i168, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i167, i64 8 ; 2 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.ir, %i.hj
  br i1 %.not.i.i.i.i169, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177, label %.lr.ph.i.i.i.i166, !llvm.loop !140

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177: ; preds = %.lr.ph.i.i.i.i166, %middle.block376, %.noexc181
  %.0.lcssa.i.i.i.i171 = phi ptr [ %i.hy, %.noexc181 ], [ %i.ij, %middle.block376 ], [ %i.is, %.lr.ph.i.i.i.i166 ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i171, i64 8
  %.not.i23.i179 = icmp eq ptr %i.hn, null
  br i1 %.not.i23.i179, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hq) #15
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i177, %bb.bf
  store ptr %i.hy, ptr %i.bf, align 8, !tbaa !26
  store ptr %i.it, ptr %i.bh, align 8, !tbaa !27
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.iu, ptr %i.db, align 8, !tbaa !53
  %.pr184 = load ptr, ptr %12, align 8, !tbaa !28 ; 3 uses
  %.not.i113 = icmp eq ptr %.pr184, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i114

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i114: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112
  %i.iv = load ptr, ptr %.pr184, align 8, !tbaa !30
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr184) #14, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112.thread, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit112, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121

bb.bg:                                            ; preds = %bb.bb
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118

.loopexit186.a:                                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i162
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp, %.loopexit186.a
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.a, %.loopexit186.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.iz = load ptr, ptr %12, align 8, !tbaa !28   ; 3 uses
  %.not.i116 = icmp eq ptr %i.iz, null
  br i1 %.not.i116, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i117

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i117: ; preds = %bb.bh
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.iz) #14, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i117, %bb.bh, %bb.bg
  %.pn51 = phi { ptr, i32 } [ %i.iy, %bb.bg ], [ %lpad.phi, %bb.bh ], [ %lpad.phi, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ba
  %i.jd = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8 ; 2 uses
  store ptr %i.je, ptr %i.bh, align 8, !tbaa !27
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !28 ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i119, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120: ; preds = %bb.bi
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jf) #14, !inline_history !128
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120, %bb.bi, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %bb.af, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit, %bb.al, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115
  %.222 = phi i64 [ %i.gx, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit115 ], [ %.020221, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit ], [ %.020221, %bb.af ], [ %i.en, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit ], [ %i.en, %bb.al ], [ %i.gx, %bb.bi ], [ %i.gx, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i120 ] ; 2 uses
  %i.jj = load ptr, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.dd
  br i1 %i.jk, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i122: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121
  %i.jl = load i64, ptr %i.dd, align 8, !tbaa !40
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #15
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not = icmp eq i64 %.222, 0
  br i1 %.not, label %.critedge73.loopexit, label %bb.w, !llvm.loop !141

bb.bj:                                            ; preds = %.loopexit186, %bb.ae, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98
  %.pn55 = phi { ptr, i32 } [ %.pn51, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit118 ], [ %.pn53, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit98 ], [ %lpad.loopexit, %.loopexit186 ], [ %i.ef, %bb.ae ] ; 2 uses
  %i.jn = load ptr, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.dd
  br i1 %i.jo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i125: ; preds = %bb.bj
  %i.jp = load i64, ptr %i.dd, align 8, !tbaa !40
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #15
  br label %.body

.body:                                            ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i125, %bb.z, %bb.ad
  %.pn55.pn = phi { ptr, i32 } [ %i.do, %bb.z ], [ %i.ee, %bb.ad ], [ %.pn55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i125 ], [ %.pn55, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bw

.critedge:                                        ; preds = %bb.w
  br i1 %i.dg, label %bb.bk, label %.critedge73.loopexit

bb.bk:                                            ; preds = %.critedge
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull %4)
          to label %bb.bl unwind label %bb.ab

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.bo unwind label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.jr = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.bo
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !40
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.jw = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !40
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  invoke void @_ZN22photos_editing_formats8image_io7MessageC2ENS1_4TypeEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !44 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bq
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !40
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #15
  br label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit

_ZN22photos_editing_formats8image_io7MessageD2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.kh = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !40
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.loopexit192

bb.br:                                            ; preds = %bb.bl
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.bs:                                            ; preds = %bb.bm
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.bt:                                            ; preds = %bb.bn
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.bt
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !40
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.bs
  %.pn59 = phi { ptr, i32 } [ %i.kn, %bb.bs ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.ko, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.ku = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !40
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.br
  %.pn59.pn = phi { ptr, i32 } [ %i.km, %bb.br ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145

bb.bv:                                            ; preds = %bb.bp
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !44 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.bv
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !40
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #15
  br label %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145

_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143, %bb.bu
  %.pn62 = phi { ptr, i32 } [ %i.kz, %bb.bu ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ], [ %i.la, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.lh = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !40
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %.pn62.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn62, %_ZN22photos_editing_formats8image_io7MessageD2Ev.exit145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.bw

.critedge73.loopexit:                             ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit124, %19, %.critedge
  %.pre229 = load i8, ptr %i.a, align 8, !tbaa !51, !range !54, !noundef !55
  %.pre230 = trunc nuw i8 %.pre229 to i1
  %26 = xor i1 %.pre230, true
  br label %.loopexit192

.loopexit192:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %.critedge73.loopexit, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit85, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit
  %.3 = phi i1 [ false, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit85 ], [ false, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %26, %.critedge73.loopexit ], [ true, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit103 ]
  %i.lm = load ptr, ptr %i.j, align 8, !tbaa !99  ; 2 uses
  %.not8.i.i.i149 = icmp eq ptr %i.lm, %i.j
  br i1 %.not8.i.i.i149, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %.loopexit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153
  %.09.i.i.i151 = phi ptr [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153 ], [ %i.lm, %.loopexit192 ] ; 4 uses
  %i.ln = load ptr, ptr %.09.i.i.i151, align 8, !tbaa !99 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.09.i.i.i151, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !44 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.09.i.i.i151, i64 32 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %.lr.ph.i.i.i150
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !40
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153: ; preds = %.lr.ph.i.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i151, i64 noundef 48) #15
  %.not.i.i.i154 = icmp eq ptr %i.ln, %i.j
  br i1 %.not.i.i.i154, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156, label %.lr.ph.i.i.i150, !llvm.loop !112

_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i153, %.loopexit192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.bx

bb.bw:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %.body, %bb.ac, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit91, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit79, %bb.i
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit91 ], [ %.pn48, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit79 ], [ %i.as, %bb.i ], [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.ec, %bb.ab ], [ %.pn55.pn, %.body ], [ %i.ed, %bb.ac ]
  call void @_ZN22photos_editing_formats8image_io11DataContextD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn68.pn.pn

bb.bx:                                            ; preds = %bb.a, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156
  %.4 = phi i1 [ %.3, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit156 ], [ false, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !142
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !142
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(90) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !98
  store ptr %2, ptr %2, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !100
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.d, %i.a
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.f, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !111

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn6, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !99    ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ] ; 4 uses
  %i.h = load ptr, ptr %.09.i.i, align 8, !tbaa !99 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i8
  %i.m = load i64, ptr %i.k, align 8, !tbaa !40
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #15
  %.not.i.i9 = icmp eq ptr %i.h, %2
  br i1 %.not.i.i9, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i8, !llvm.loop !112

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  store ptr %2, ptr %i.b, align 8, !tbaa !98
  store ptr %2, ptr %2, align 8, !tbaa !99
  store i64 0, ptr %i.c, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_111kReaderNameE, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.p, align 1, !tbaa !40
  %i.q = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.t, ptr noundef nonnull align 8 dereferenceable(10) %i.o, i64 10, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 9, ptr %i.u, align 8, !tbaa !38
  store ptr %i.o, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.r, align 8, !tbaa !38
  store i8 0, ptr %i.o, align 8, !tbaa !40
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  %i.v = load i64, ptr %i.c, align 8, !tbaa !143
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !143
  %i.x = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.o, align 8, !tbaa !40
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
end_hunk_0
