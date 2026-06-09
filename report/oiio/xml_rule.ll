inline.NumInlined: 424
inline.NumDeleted: 209
begin_hunk_0_@_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_M_realloc_insertIJNS1_11DataScannerEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(100) %2)
          to label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit unwind label %bb.d

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit: ; preds = %bb.c, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit

_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -168
  ret ptr %i.x

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io11DataScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.y
}

declare void @_ZN22photos_editing_formats8image_io11DataScanner27CreateThroughLiteralScannerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule21AddWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.photos_editing_formats::image_io::DataScanner", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN22photos_editing_formats8image_io11DataScanner23CreateWhitespaceScannerEv(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN22photos_editing_formats8image_io11DataScannerC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(100) %1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 0, ptr %i.h, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store ptr %i.j, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_M_realloc_insertIJNS1_11DataScannerEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(100) %1)
          to label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit unwind label %bb.d

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit: ; preds = %bb.c, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit

_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -168
  ret ptr %i.x

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io11DataScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.y
}

declare void @_ZN22photos_editing_formats8image_io11DataScanner23CreateWhitespaceScannerEv(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.photos_editing_formats::image_io::DataScanner", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN22photos_editing_formats8image_io11DataScanner31CreateOptionalWhitespaceScannerEv(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN22photos_editing_formats8image_io11DataScannerC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(100) %1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 0, ptr %i.h, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store ptr %i.j, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_M_realloc_insertIJNS1_11DataScannerEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(100) %1)
          to label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit unwind label %bb.d

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit: ; preds = %bb.c, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12emplace_backIJNS1_11DataScannerEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit

_ZN22photos_editing_formats8image_io11DataScannerD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -168
  ret ptr %i.x

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io11DataScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.y
}

declare void @_ZN22photos_editing_formats8image_io11DataScanner31CreateOptionalWhitespaceScannerEv(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK22photos_editing_formats8image_io7XmlRule24GetTerminalIndexFromNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8, !tbaa !24
  %.pre15 = ptrtoint ptr %.pre to i64
  %.pre16 = ptrtoint ptr %.pre14 to i64
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 168
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %.0611 = phi i64 [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [168 x i8], ptr %i.g, i64 %.0611 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp eq i64 %i.n, %i.b
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.q = load ptr, ptr %1, align 8, !tbaa !13
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !13
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.b)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = add nuw i64 %.0611, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, %..loopexit_crit_edge, %.preheader
  %.pre-phi17 = phi i64 [ %.pre16, %..loopexit_crit_edge ], [ %i.h, %.preheader ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ]
  %.pre-phi = phi i64 [ %.pre15, %..loopexit_crit_edge ], [ %i.h, %.preheader ], [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ]
  %i.u = sub i64 %.pre-phi, %.pre-phi17
  %i.v = sdiv exact i64 %i.u, 168
  br label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.loopexit
  %.1 = phi i64 [ %i.v, %.loopexit ], [ %.0611, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((72, 80)) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN22photos_editing_formats8image_io7XmlRule18GetCurrentTerminalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 168
  %i.k = icmp ult i64 %i.b, %i.j
  %i.l = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %i.b
  %spec.select = select i1 %i.k, ptr %i.l, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN22photos_editing_formats8image_io7XmlRule11GetTerminalEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %i.i = icmp ult i64 %1, %i.h
  %i.j = getelementptr inbounds nuw [168 x i8], ptr %i.d, i64 %1
  %spec.select = select i1 %i.i, ptr %i.j, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io7XmlRule21ResetTerminalScannersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN22photos_editing_formats8image_io11DataScanner5ResetEv(ptr noundef nonnull align 8 dereferenceable(100) %.sroa.04.08)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN22photos_editing_formats8image_io11DataScanner5ResetEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 15 uses
  %5 = alloca %"class.photos_editing_formats::image_io::XmlActionContext", align 8 ; 9 uses
  %6 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 0, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  store i8 0, ptr %i.h, align 4, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.i, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !50   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !52   ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %2, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp uge i64 %i.o, %i.k
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = and i1 %.not.i.i, %i.p
  br i1 %i.q, label %bb.c, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !nonnull !64, !align !65 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit: ; preds = %bb.c
  %.not.i1.i = icmp uge i64 %i.k, %i.t
  %i.x = icmp ule i64 %i.m, %i.v
  %spec.select.i.i = and i1 %.not.i1.i, %i.x
  br i1 %spec.select.i.i, label %_ZNK22photos_editing_formats8image_io11DataContext17GetBytesAvailableEv.exit, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread: ; preds = %bb.c, %bb.a, %bb.b, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  store i32 -1, ptr %i.g, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext35GetInvalidLocationAndRangeErrorTextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.y = invoke noundef nonnull align 8 dereferenceable(54) ptr @_ZN22photos_editing_formats8image_io15DataMatchResult10SetMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(54) %0, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.critedge

bb.f:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.au

_ZNK22photos_editing_formats8image_io11DataContext17GetBytesAvailableEv.exit: ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  %i.al = sub i64 %i.m, %i.o
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 168
  %i.aw = icmp ult i64 %i.an, %i.av
  br i1 %i.aw, label %bb.h, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit

bb.h:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext17GetBytesAvailableEv.exit
  %i.ax = getelementptr inbounds nuw [168 x i8], ptr %i.ar, i64 %i.an ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52 ; 3 uses
  %i.be = icmp ult i64 %i.bb, %i.bd
  %i.bf = icmp ugt i64 %i.k, %i.bd
  %or.cond.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i, label %bb.j, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = sub nuw i64 %i.k, %i.bd
  %i.bh = invoke noundef i64 @_ZN22photos_editing_formats8image_io11DataScanner17ExtendTokenLengthEm(ptr noundef nonnull align 8 dereferenceable(100) %i.ax, i64 noundef %i.bg)
          to label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit: ; preds = %bb.i, %bb.h, %bb.j, %_ZNK22photos_editing_formats8image_io11DataContext17GetBytesAvailableEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit84
  %.021101 = phi i64 [ %i.an, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit ], [ %.1, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit84 ] ; 10 uses
  %.022100 = phi i64 [ %i.al, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit ], [ %i.ef, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit84 ] ; 2 uses
  %i.cb = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 168
  %i.ch = icmp ult i64 %.021101, %i.cg
  %i.ci = icmp ne i64 %.022100, 0
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i64 %.021101, ptr %i.am, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw [168 x i8], ptr %i.cc, i64 %.021101 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner4ScanERKNS0_11DataContextE(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(100) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69
  %.not.i.i53.not = icmp ne ptr %i.cm, null
  %.pre103 = load i32, ptr %i.bj, align 8, !tbaa !47 ; 2 uses
  %i.cn = and i32 %.pre103, -2
  %switch = icmp eq i32 %i.cn, 2
  %or.cond148 = select i1 %.not.i.i53.not, i1 %switch, i1 false
  br i1 %or.cond148, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN22photos_editing_formats8image_io16XmlActionContextC2ERKNS0_17XmlHandlerContextEPNS0_11XmlTerminalERKNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(54) %4)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !69, !noalias !71
  %.not.i.i54 = icmp eq ptr %i.co, null
  br i1 %.not.i.i54, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !74, !noalias !71
  invoke void %i.cq(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_.exit unwind label %.loopexit, !inline_history !76

_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_.exit: ; preds = %bb.r
  %i.cr = load i64, ptr %6, align 8
  store i64 %i.cr, ptr %4, align 8
  %i.cs = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 5 uses
  %i.cv = icmp eq ptr %i.cu, %i.bn                ; 2 uses
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_.exit
  br i1 %i.cv, label %bb.s, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_.exit
  br i1 %i.cv, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cw = load i64, ptr %i.bo, align 8, !tbaa !16 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  switch i64 %i.cw, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !18
  store i8 %i.cy, ptr %i.cs, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.cz = load i64, ptr %i.bo, align 8, !tbaa !16 ; 2 uses
  store i64 %i.cz, ptr %i.bp, align 8, !tbaa !16
  %i.da = load ptr, ptr %i.bk, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !18
  %.pre.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !13
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.cu, ptr %i.bk, align 8, !tbaa !13
  %i.dc = load <2 x i64>, ptr %i.bo, align 8, !tbaa !18
  store <2 x i64> %i.dc, ptr %i.bp, align 8, !tbaa !18
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dd = load i64, ptr %i.bm, align 8, !tbaa !18
  store ptr %i.cu, ptr %i.bk, align 8, !tbaa !13
  %i.de = load <2 x i64>, ptr %i.bo, align 8, !tbaa !18
  store <2 x i64> %i.de, ptr %i.bp, align 8, !tbaa !18
  %.not.i.i.i57 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !13
  store i64 %i.dd, ptr %i.bn, align 8, !tbaa !18
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !13
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit

_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.v, %bb.w
  %i.df = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.cs, %bb.v ], [ %i.bn, %bb.w ]
  store i64 0, ptr %i.bo, align 8, !tbaa !16
  store i8 0, ptr %i.df, align 1, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bq, ptr noundef nonnull align 8 dereferenceable(14) %i.br, i64 14, i1 false)
  %i.dg = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bn
  br i1 %i.dh, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit
  %i.di = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bt
  br i1 %i.dl, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit
  %i.dm = load i64, ptr %i.bt, align 8, !tbaa !18
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i: ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.do = load ptr, ptr %i.bu, align 8, !tbaa !77 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.do, %i.bu
  br i1 %.not8.i.i.i.i, label %_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.do, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i ] ; 4 uses
  %i.dp = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !18
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #23
  %.not.i.i.i.i = icmp eq ptr %i.dp, %i.bu
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre = load i32, ptr %i.bj, align 8, !tbaa !47
  br label %bb.ac

bb.x:                                             ; preds = %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit87

bb.y:                                             ; preds = %bb.ao, %bb.am, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.z:                                             ; preds = %bb.o
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn38 = phi { ptr, i32 } [ %lpad.phi, %bb.aa ], [ %i.dy, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.at

bb.ac:                                            ; preds = %_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev.exit, %bb.n
  %i.dz = phi i32 [ %.pre103, %bb.n ], [ %.pre, %_ZN22photos_editing_formats8image_io16XmlActionContextD2Ev.exit ] ; 2 uses
  store i32 %i.dz, ptr %i.g, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_M_realloc_insertIJNS1_11DataScannerEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !13, !alias.scope !104, !noalias !107
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !18, !alias.scope !104, !noalias !107
  %.phi.trans.insert8.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144
  %.pre9.i.i.i.i42 = load i64, ptr %.phi.trans.insert8.i.i.i.i41, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40, %bb.k
  %i.dr = phi i64 [ %i.dn, %bb.k ], [ %.pre9.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 144
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !16, !alias.scope !104, !noalias !107
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !13, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.ds, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.dk, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 168 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 168 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.du, %i.b
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, label %.lr.ph.i.i.i27, !llvm.loop !103

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i45 = phi ptr [ %i.bv, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dv, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !22
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dz) #23
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, %bb.l
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i45, ptr %i.a, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw [168 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !22
  ret void

bb.m:                                             ; preds = %bb.n
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  %i.ee = tail call ptr @__cxa_begin_catch(ptr %i.ed) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.eb

bb.p:                                             ; preds = %bb.m
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #25
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io11DataScannerC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.f, ptr %i.b, align 8, !tbaa !17
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !13
  %i.i = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.i, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !17
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.w, ptr %i.p, align 8, !tbaa !13
  %i.x = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.x, ptr %i.r, align 8, !tbaa !18
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.z = load i8, ptr %i.s, align 1, !tbaa !18
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, ptr noundef nonnull align 8 dereferenceable(36) %i.af, i64 36, i1 false)
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ag
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN22photos_editing_formats8image_io11XmlTerminalE", !12, i64 0}
!22 = !{!20, !21, i64 16}
!23 = !{!21, !21, i64 0}
!24 = !{!20, !21, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !15, i64 72}
!28 = !{!"_ZTSN22photos_editing_formats8image_io7XmlRuleE", !14, i64 8, !29, i64 40, !32, i64 64, !15, i64 72}
!29 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_Vector_implE", !20, i64 0}
!32 = !{!"_ZTSSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EE", !33, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_ELb1ELb1EE", !34, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EE", !35, i64 0}
!35 = !{!"_ZTSSt5tupleIJPN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EEE", !36, i64 0}
!36 = !{!"_ZTSSt11_Tuple_implILm0EJPN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EEE", !37, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EPN22photos_editing_formats8image_io7XmlRuleELb0EE", !38, i64 0}
!38 = !{!"p1 _ZTSN22photos_editing_formats8image_io7XmlRuleE", !12, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN22photos_editing_formats8image_io7MessageE", !41, i64 0, !4, i64 4, !14, i64 8}
!41 = !{!"_ZTSN22photos_editing_formats8image_io7Message4TypeE", !5, i64 0}
!42 = !{!40, !4, i64 4}
!43 = !{!44, !15, i64 40}
!44 = !{!"_ZTSN22photos_editing_formats8image_io15DataMatchResultE", !40, i64 0, !15, i64 40, !45, i64 48, !46, i64 52, !46, i64 53}
!45 = !{!"_ZTSN22photos_editing_formats8image_io15DataMatchResult4TypeE", !5, i64 0}
!46 = !{!"bool", !5, i64 0}
!47 = !{!44, !45, i64 48}
!48 = !{!44, !46, i64 52}
!49 = !{!44, !46, i64 53}
!50 = !{!51, !15, i64 0}
!51 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !15, i64 0, !15, i64 8}
!52 = !{!51, !15, i64 8}
!53 = !{!54, !15, i64 0}
!54 = !{!"_ZTSN22photos_editing_formats8image_io11DataContextE", !15, i64 0, !51, i64 8, !55, i64 24, !56, i64 32, !57, i64 40}
!55 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataSegmentE", !12, i64 0}
!56 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataLineMapE", !12, i64 0}
!57 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !58, i64 0}
!58 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !59, i64 0}
!59 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !60, i64 0}
!60 = !{!"_ZTSNSt8__detail17_List_node_headerE", !61, i64 0, !15, i64 16}
!61 = !{!"_ZTSNSt8__detail15_List_node_baseE", !62, i64 0, !62, i64 8}
!62 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!63 = !{!54, !55, i64 24}
!64 = !{}
!65 = !{i64 8}
!66 = !{!67, !15, i64 88}
!67 = !{!"_ZTSN22photos_editing_formats8image_io11DataScannerE", !14, i64 0, !14, i64 32, !51, i64 64, !15, i64 80, !15, i64 88, !68, i64 96}
!68 = !{!"_ZTSN22photos_editing_formats8image_io11DataScanner4TypeE", !5, i64 0}
!69 = !{!70, !12, i64 16}
!70 = !{!"_ZTSSt14_Function_base", !5, i64 0, !12, i64 16}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_: argument 0"}
!73 = distinct !{!73, !"_ZNKSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEclES5_"}
!74 = !{!75, !12, i64 24}
!75 = !{!"_ZTSSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEE", !70, i64 0, !12, i64 24}
!76 = distinct !{null}
!77 = !{!61, !62, i64 0}
!78 = distinct !{!78, !26}
!79 = !{i8 0, i8 2}
!80 = !{!38, !38, i64 0}
!81 = distinct !{!81, !26}
!82 = !{!61, !62, i64 8}
!83 = !{!60, !15, i64 16}
!84 = distinct !{!84, !26}
!85 = !{!86, !87, i64 64}
!86 = !{!"_ZTSN22photos_editing_formats8image_io17XmlHandlerContextE", !54, i64 0, !87, i64 64}
!87 = !{!"p1 _ZTSN22photos_editing_formats8image_io10XmlHandlerE", !12, i64 0}
!88 = !{!89, !21, i64 72}
!89 = !{!"_ZTSN22photos_editing_formats8image_io16XmlActionContextE", !86, i64 0, !21, i64 72, !44, i64 80}
!90 = distinct !{null, null, null, null, null}
!91 = distinct !{null, null}
!92 = distinct !{ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, null, null}
!93 = !{ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev}
!94 = !{!58, !15, i64 16}
!95 = distinct !{!95, !26}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!97, !100}
!102 = !{i64 0, i64 16, !18}
!103 = distinct !{!103, !26}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!106 = distinct !{!106, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!109 = !{!105, !108}
end_hunk_1
