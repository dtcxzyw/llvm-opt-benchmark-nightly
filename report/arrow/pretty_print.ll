inline.NumInlined: 4037
inline.NumDeleted: 1046
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE:bb.a
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.1, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.o, %bb.m
  %.pn25 = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.ae, %bb.o ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ag

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call fastcc void @_ZN5arrow16VisitArrayInlineINS_12_GLOBAL__N_112ArrayPrinterEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
  %i.br = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.val) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !99
  br label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %bb.ae
  ret void

bb.ag:                                            ; preds = %bb.l, %bb.ad
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %.pn25, %bb.ad ]
  resume { ptr, i32 } %.pn25.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !45
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !45
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #19
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_5ArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.arrow::(anonymous namespace)::ArrayPrinter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %2, ptr %4, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %2, align 8, !tbaa !54
  store i32 %i.b, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !60
  call fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_5ArrayERKNS_18PrettyPrintOptionsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef captures(address) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::(anonymous namespace)::ArrayPrinter", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !103
  store ptr %2, ptr %4, align 8, !tbaa !55, !noalias !103
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %2, align 8, !tbaa !54, !noalias !103
  store i32 %i.b, ptr %i.a, align 8, !tbaa !57, !noalias !103
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.c, align 8, !tbaa !60, !noalias !103
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b, !inline_history !106

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !103
  %i.d = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit16, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !43, !alias.scope !113
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.h, align 8, !tbaa !44, !alias.scope !113
  store i8 0, ptr %i.g, align 8, !tbaa !45, !alias.scope !113
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114, !noalias !113 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %9 = load ptr, ptr %8, align 8, !noalias !113   ; 2 uses
  %10 = icmp ugt ptr %i.j, %9
  %.08.i.i.i = select i1 %10, ptr %i.j, ptr %9
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118, !noalias !113 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %7, align 8, !tbaa !102, !alias.scope !113 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.g, align 8, !tbaa !45, !alias.scope !113
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #19
  br label %.body

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %3, align 8, !tbaa !102    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %7, align 8, !tbaa !102    ; 6 uses
  %i.aa = icmp eq ptr %i.z, %i.g                  ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aa, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aa, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !44  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq ptr %7, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !73

bb.g:                                             ; preds = %bb.f
  switch i64 %i.ab, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !45
  store i8 %i.ad, ptr %i.w, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !44
  %i.ag = load ptr, ptr %3, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.z, ptr %3, align 8, !tbaa !102
  %i.aj = load <2 x i64>, ptr %i.h, align 8, !tbaa !45
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !45
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !45
  store ptr %i.z, ptr %3, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load <2 x i64>, ptr %i.h, align 8, !tbaa !45
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !45
  %.not.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %7, align 8, !tbaa !102
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %7, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.an = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.j ], [ %i.g, %bb.k ], [ %i.z, %bb.f ]
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.an, align 1, !tbaa !45
  %i.ao = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !119
  br label %.critedge

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.l

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !70
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %5, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ax, align 8, !tbaa !70
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.q, %.body ], [ %i.f, %bb.b ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::PrettyPrintOptions", align 8 ; 11 uses
  %5 = alloca %"class.arrow::(anonymous namespace)::ArrayPrinter", align 8 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = load ptr, ptr %1, align 8, !tbaa !125
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = load i32, ptr %2, align 8, !tbaa !54     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !126, !range !97, !noundef !98
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !130
  %i.s = icmp ne i32 %i.r, 26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ] ; 3 uses
  %i.u = icmp sgt i32 %i.i, 0                     ; 3 uses
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_0
begin_hunk_1_@_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPSo:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aj, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.bf

_ZN5arrow6StatusD2Ev.exit81:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bg = add nuw nsw i32 %.06490, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge85, %bb.j, %_ZN5arrow6StatusD2Ev.exit81
  %i.bh = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit81 ], [ %i.aj, %bb.j ], [ %i.aj, %._crit_edge85 ]
  %.165 = phi i32 [ %i.bg, %_ZN5arrow6StatusD2Ev.exit81 ], [ %i.af, %bb.j ], [ %i.af, %._crit_edge85 ] ; 2 uses
  %.not75 = icmp slt i32 %.165, %i.h
  br i1 %.not75, label %bb.f, label %.critedge77, !llvm.loop !149

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %i.bd, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

.critedge77:                                      ; preds = %bb.m, %bb.e
  %i.bi = load i8, ptr %i.l, align 8, !tbaa !126, !range !97, !noundef !98
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge77
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge77
  br i1 %i.u, label %.lr.ph95, label %._crit_edge96

._crit_edge96:                                    ; preds = %.lr.ph95, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !44
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bm, i64 noundef %i.bo) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !150
  br label %bb.p

.lr.ph95:                                         ; preds = %bb.o, %.lr.ph95
  %.093 = phi i32 [ %i.br, %.lr.ph95 ], [ 0, %bb.o ]
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.br = add nuw nsw i32 %.093, 1                ; 2 uses
  %exitcond103.not = icmp eq i32 %i.br, %i.i
  br i1 %exitcond103.not, label %._crit_edge96, label %.lr.ph95, !llvm.loop !153

bb.p:                                             ; preds = %.critedge, %._crit_edge96
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow18PrettyPrintOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !43
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !73

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !102
  store i64 %i.f, ptr %i.c, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !45
  store i8 %i.m, ptr %i.l, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow21PrettyPrintDelimitersC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZN5arrow21PrettyPrintDelimitersC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow21PrettyPrintDelimitersD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.s) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.w, %bb.h ]
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.c
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !45
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef captures(address) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow11PrettyPrintERKNS_12ChunkedArrayERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit16, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !43, !alias.scope !160
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.e, align 8, !tbaa !44, !alias.scope !160
  store i8 0, ptr %i.d, align 8, !tbaa !45, !alias.scope !160
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114, !noalias !160 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %8 = load ptr, ptr %7, align 8, !noalias !160   ; 2 uses
  %9 = icmp ugt ptr %i.g, %8
  %.08.i.i.i = select i1 %9, ptr %i.g, ptr %8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118, !noalias !160 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !102, !alias.scope !160 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8, !tbaa !45, !alias.scope !160
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %.body

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.t = load ptr, ptr %3, align 8, !tbaa !102    ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = load ptr, ptr %6, align 8, !tbaa !102    ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.d                   ; 2 uses
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.x, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = load i64, ptr %i.e, align 8, !tbaa !44   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %.not21.i = icmp eq ptr %6, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !73

bb.g:                                             ; preds = %bb.f
  switch i64 %i.y, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load ptr, ptr %3, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %3, align 8, !tbaa !102
  %i.ag = load <2 x i64>, ptr %i.e, align 8, !tbaa !45
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !45
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !45
  store ptr %i.w, ptr %3, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load <2 x i64>, ptr %i.e, align 8, !tbaa !45
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !45
  %.not.i17 = icmp eq ptr %i.t, null
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.t, ptr %6, align 8, !tbaa !102
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %6, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ak = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.t, %bb.j ], [ %i.d, %bb.k ], [ %i.w, %bb.f ]
  store i64 0, ptr %i.e, align 8, !tbaa !44
  store i8 0, ptr %i.ak, align 1, !tbaa !45
  %i.al = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.d, align 8, !tbaa !45
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !161
  br label %.critedge

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !70
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %4, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #18
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.l:                                             ; preds = %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.n, %.body ], [ %i.c, %bb.b ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_11RecordBatchEiPSo(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %5 = alloca %"class.std::shared_ptr.27", align 8 ; 11 uses
  %.promoted = load ptr, ptr %0, align 8
  %i.a = tail call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = add nsw i32 %2, 2                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow11RecordBatch11column_nameB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f, i64 noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.k = load ptr, ptr %1, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0)
  %i.n = load ptr, ptr %5, align 8, !tbaa !84
  invoke void @_ZN5arrow11PrettyPrintERKNS_5ArrayEiPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %i.c, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit.peel unwind label %.loopexit.split-lp

_ZN5arrow6StatusD2Ev.exit.peel:                   ; preds = %.lr.ph
  %i.o = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !74
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !66   ; 8 uses
  %.not.i.i.peel = icmp eq ptr %i.p, null
  br i1 %.not.i.i.peel, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.peel
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.c
end_hunk_1
begin_hunk_2_@_ZN5arrow11PrettyPrintERKNS_6SchemaERKNS_18PrettyPrintOptionsEPSo:bb.a
  br i1 %i.p, label %.lr.ph.i.i.preheader, label %_ZN5arrow6StatusD2Ev.exit.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !187
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str, i64 noundef 1), !noalias !187 ; 0 uses
  %i.s = add nuw nsw i32 %.02.i.i, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.o
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !195

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = load i32, ptr %i.a, align 8, !tbaa !57, !noalias !187 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i19.i.preheader, label %_ZN5arrow6StatusD2Ev.exit.i

.lr.ph.i19.i.preheader:                           ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !187
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %.lr.ph.i19.i
  %.02.i20.i = phi i32 [ %i.x, %.lr.ph.i19.i ], [ 0, %.lr.ph.i19.i.preheader ]
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str, i64 noundef 1), !noalias !187 ; 0 uses
  %i.x = add nuw nsw i32 %.02.i20.i, 1            ; 2 uses
  %exitcond7.not = icmp eq i32 %i.x, %i.t
  br i1 %exitcond7.not, label %_ZN5arrow6StatusD2Ev.exit.i, label %.lr.ph.i19.i, !llvm.loop !195

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.lr.ph.i.i, %.lr.ph.i19.i, %bb.e, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !187
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef %.01435.i), !noalias !187
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !178, !noalias !187
  call fastcc void @_ZN5arrow12_GLOBAL__N_113SchemaPrinter10PrintFieldERKNS_5FieldE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(96) %i.z), !noalias !187
  %i.aa = load ptr, ptr %4, align 8, !tbaa !74, !noalias !187 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !187
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.b, label %_ZN5arrow12_GLOBAL__N_113SchemaPrinter5PrintEv.exit

._crit_edge.i.loopexit:                           ; preds = %bb.b
  store ptr null, ptr %0, align 8
  %.pre = load ptr, ptr %6, align 8, !tbaa !194, !noalias !187
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
  %i.ac = phi ptr [ %i.h, %._crit_edge.i.loopexit ], [ %1, %bb.a ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %._crit_edge.i.loopexit ], [ %2, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 51
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !196, !range !97, !noalias !187, !noundef !98
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge.i
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac), !noalias !187
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197, !noalias !187
  %.not.i26.i = icmp eq ptr %i.ai, null
  br i1 %.not.i26.i, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !187
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = tail call noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #21, !noalias !187 ; 5 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !102, !noalias !187
  store i64 21, ptr %i.aj, align 8, !tbaa !45, !noalias !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ak, ptr noundef nonnull align 1 dereferenceable(21) @.str.43, i64 21, i1 false), !noalias !187
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 21, ptr %i.al, align 8, !tbaa !44, !noalias !187
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 21
  store i8 0, ptr %i.am, align 1, !tbaa !45, !noalias !187
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.g unwind label %bb.i, !noalias !187

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !197, !noalias !187
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113SchemaPrinter13PrintMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16KeyValueMetadataE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %bb.h unwind label %bb.i, !noalias !187

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 22) #19, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !187
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 22) #19, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !187
  resume { ptr, i32 } %i.ap

bb.j:                                             ; preds = %bb.h, %bb.f, %._crit_edge.i
  %.val18.i = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !187
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.val18.i), !noalias !187 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113SchemaPrinter5PrintEv.exit

_ZN5arrow12_GLOBAL__N_113SchemaPrinter5PrintEv.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.j
  %storemerge = phi ptr [ null, %bb.j ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i ]
  store ptr %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !166
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !166
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10DebugPrintERKNS_5ArrayEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN5arrow11PrettyPrintERKNS_5ArrayEiPSo(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull @_ZSt4cerr)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11PrettyPrintERKNS_6SchemaERKNS_18PrettyPrintOptionsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef captures(address) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow11PrettyPrintERKNS_6SchemaERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit16, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !43, !alias.scope !206
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.e, align 8, !tbaa !44, !alias.scope !206
  store i8 0, ptr %i.d, align 8, !tbaa !45, !alias.scope !206
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114, !noalias !206 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %8 = load ptr, ptr %7, align 8, !noalias !206   ; 2 uses
  %9 = icmp ugt ptr %i.g, %8
  %.08.i.i.i = select i1 %9, ptr %i.g, ptr %8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118, !noalias !206 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !102, !alias.scope !206 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8, !tbaa !45, !alias.scope !206
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %.body

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.t = load ptr, ptr %3, align 8, !tbaa !102    ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = load ptr, ptr %6, align 8, !tbaa !102    ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.d                   ; 2 uses
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.x, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = load i64, ptr %i.e, align 8, !tbaa !44   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %.not21.i = icmp eq ptr %6, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !73

bb.g:                                             ; preds = %bb.f
  switch i64 %i.y, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load ptr, ptr %3, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %3, align 8, !tbaa !102
  %i.ag = load <2 x i64>, ptr %i.e, align 8, !tbaa !45
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !45
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !45
  store ptr %i.w, ptr %3, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load <2 x i64>, ptr %i.e, align 8, !tbaa !45
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !45
  %.not.i17 = icmp eq ptr %i.t, null
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.t, ptr %6, align 8, !tbaa !102
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %6, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ak = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.t, %bb.j ], [ %i.d, %bb.k ], [ %i.w, %bb.f ]
  store i64 0, ptr %i.e, align 8, !tbaa !44
  store i8 0, ptr %i.ak, align 1, !tbaa !45
  %i.al = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.d, align 8, !tbaa !45
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !207
  br label %.critedge

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !70
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %4, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #18
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.l:                                             ; preds = %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.n, %.body ], [ %i.c, %bb.b ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn11
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow21PrettyPrintDelimitersD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter19WriteValidityBitmapERKNS_5ArrayE:bb.a
_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16: ; preds = %bb.z, %bb.aa
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !1055
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16, %_ZN5arrow5ArrayD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !834
  %i.d = load ptr, ptr %0, align 8, !tbaa !836    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !830
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 4 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit, %bb.d
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #19
  br label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !836
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !830
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1
  store ptr %i.r, ptr %i.b, align 8, !tbaa !834
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

declare void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.27") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter13PrintChildrenERKSt6vectorIPKNS_5ArrayESaIS5_EEll(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::(anonymous namespace)::ArrayPrinter", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"struct.arrow::PrettyPrintOptions", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !830
  %i.c = load ptr, ptr %2, align 8, !tbaa !836
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.02497 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !98, !align !192
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.ah = icmp ne i32 %i.af, 0
  %.sroa.speculated.i.i.i = zext i1 %i.ah to i64
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.1, i64 noundef %.sroa.speculated.i.i.i) ; 0 uses
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.c, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.17, i64 noundef 6) ; 0 uses
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef 1)
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.18, i64 noundef 15) ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !57
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit

.lr.ph.i:                                         ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.as = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.at = load i32, ptr %i.e, align 8, !tbaa !57
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit: ; preds = %.lr.ph.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.34, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.02497)
          to label %_ZNSolsEm.exit unwind label %bb.i ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.35, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ay = load ptr, ptr %2, align 8, !tbaa !836
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.02497
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !835
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !127 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.bh = load ptr, ptr %5, align 8, !tbaa !102
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !44
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bl = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.h
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !45
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  store ptr %i.i, ptr %6, align 8, !tbaa !43, !alias.scope !1064
  store i64 0, ptr %i.j, align 8, !tbaa !44, !alias.scope !1064
  store i8 0, ptr %i.i, align 8, !tbaa !45, !alias.scope !1064
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !114, !noalias !1064 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %9 = load ptr, ptr %i.l, align 8, !noalias !1064 ; 2 uses
  %10 = icmp ugt ptr %i.bp, %9
  %.08.i.i.i = select i1 %10, ptr %i.bp, ptr %9
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1064 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !102, !alias.scope !1064 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.by = load ptr, ptr %6, align 8, !tbaa !102
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !44  ; 3 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !98, !align !192
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.ce = sext i32 %i.cc to i64                   ; 3 uses
  %.sroa.speculated.i.i.i50 = call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.ce)
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.by, i64 noundef %.sroa.speculated.i.i.i50)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cg = icmp ugt i64 %i.bz, %i.ce
  br i1 %i.cg, label %bb.h, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54

bb.h:                                             ; preds = %.noexc
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc51 unwind label %bb.l   ; 0 uses

.noexc51:                                         ; preds = %bb.h
  %i.cj = sub nuw i64 %i.bz, %i.ce
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i64 noundef %i.cj)
          to label %.noexc52 unwind label %bb.l

.noexc52:                                         ; preds = %.noexc51
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54 unwind label %bb.l ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54: ; preds = %.noexc, %.noexc52
  %i.cm = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.i
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54
  %i.co = load i64, ptr %i.i, align 8, !tbaa !45
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cq = load ptr, ptr %2, align 8, !tbaa !836
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.02497
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !835
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.ct = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1065, !nonnull !98, !align !192
  invoke void @_ZN5arrow18PrettyPrintOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %i.ct)
          to label %bb.m unwind label %bb.n

bb.i:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.h
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !45
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.j ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.cw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.q

bb.l:                                             ; preds = %.noexc52, %.noexc51, %bb.h, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.i
  br i1 %i.dd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.f
  %.sink = phi ptr [ %i.bw, %bb.f ], [ %i.dc, %bb.l ]
  %.pn41.ph = phi { ptr, i32 } [ %i.bv, %bb.f ], [ %i.db, %bb.l ]
  %i.de = load i64, ptr %i.i, align 8, !tbaa !45
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.df) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.f
  %.pn41 = phi { ptr, i32 } [ %i.bv, %bb.f ], [ %i.db, %bb.l ], [ %.pn41.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dg = load i32, ptr %i.e, align 8, !noalias !1065
  %i.dh = load i32, ptr %i.o, align 4, !alias.scope !1065
  %storemerge.i = add nsw i32 %i.dh, %i.dg        ; 2 uses
  store i32 %storemerge.i, ptr %8, align 8, !tbaa !54, !alias.scope !1065
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1068
  store ptr %8, ptr %3, align 8, !tbaa !55, !noalias !1068
  store i32 %storemerge.i, ptr %i.p, align 8, !tbaa !57, !noalias !1068
  store ptr %i.di, ptr %i.q, align 8, !tbaa !60, !noalias !1068
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o, !inline_history !106

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1068
  %i.dj = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !74
  store ptr null, ptr %7, align 8, !tbaa !74
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.dk = icmp eq ptr %i.dj, null
  store ptr %i.r, ptr %4, align 8, !tbaa !70
  %i.dl = load i64, ptr %i.t, align 8
  %i.dm = getelementptr inbounds i8, ptr %4, i64 %i.dl
  store ptr %i.s, ptr %i.dm, align 8, !tbaa !70
  store ptr %i.u, ptr %i.f, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !70
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !102 ; 3 uses
  %i.do = icmp eq ptr %i.dn, %i.w                 ; 2 uses
  br i1 %i.dk, label %_ZN5arrow6StatusD2Ev.exit69, label %.critedge47

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %8) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn43.pn = phi { ptr, i32 } [ %i.dq, %bb.o ], [ %i.dp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.q

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %i.do, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit69
  %i.dr = load i64, ptr %i.w, align 8, !tbaa !45
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !70
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #18
  store ptr %i.y, ptr %4, align 8, !tbaa !70
  %i.dt = load i64, ptr %i.aa, align 8
  %i.du = getelementptr inbounds i8, ptr %4, i64 %i.dt
  store ptr %i.z, ptr %i.du, align 8, !tbaa !70
  store i64 0, ptr %i.ab, align 8, !tbaa !1071
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.dv = add nuw i64 %.02497, 1                  ; 2 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !830
  %i.dx = load ptr, ptr %2, align 8, !tbaa !836
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %bb.b, label %._crit_edge, !llvm.loop !1073

bb.q:                                             ; preds = %bb.p, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.i
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.p ], [ %.pn41, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.cu, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #18
end_hunk_3
begin_hunk_4_@_ZN5arrow12_GLOBAL__N_113SchemaPrinter10PrintFieldERKNS_5FieldE:bb.a
  %i.v = sext i32 %i.t to i64                     ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef %.sroa.speculated.i.i.i19) ; 0 uses
  %i.x = icmp ult i32 %i.t, 2
  br i1 %i.x, label %bb.c, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit20

bb.c:                                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.17, i64 noundef 6) ; 0 uses
  %i.aa = sub nuw nsw i64 2, %i.v
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.aa)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.18, i64 noundef 15) ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit20

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit20: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !127 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !1114, !range !97, !noundef !98
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1117
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !70, !noalias !1117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1117
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i1 noundef zeroext false), !noalias !1117, !inline_history !1120
  %i.al = load ptr, ptr %3, align 8, !tbaa !102, !noalias !1117
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44, !noalias !1117 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1117, !nonnull !98, !align !192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47, !noalias !1117
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !1117
  %i.as = sext i32 %i.aq to i64                   ; 3 uses
  %.sroa.speculated.i.i.i74 = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.as)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i74)
          to label %.noexc75.a unwind label %bb.g ; 0 uses

.noexc75.a:                                       ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit20
  %i.au = icmp ugt i64 %i.an, %i.as
  br i1 %i.au, label %bb.d, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit79

bb.d:                                             ; preds = %.noexc75.a
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !1117 ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc76.a unwind label %bb.g ; 0 uses

.noexc76.a:                                       ; preds = %bb.d
  %i.ax = sub nuw i64 %i.an, %i.as
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 noundef %i.ax)
          to label %.noexc77 unwind label %bb.g

.noexc77:                                         ; preds = %.noexc76.a
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit79 unwind label %bb.g ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit79: ; preds = %.noexc75.a, %.noexc77
  %i.ba = load ptr, ptr %3, align 8, !tbaa !102, !noalias !1117 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit79
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !45, !noalias !1117
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #19, !noalias !1117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1117
  br i1 %i.ah, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit70, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.bf = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1117, !nonnull !98, !align !192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !47, !noalias !1117 ; 2 uses
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !1117
  %i.bj = sext i32 %i.bh to i64                   ; 2 uses
  %.sroa.speculated.i.i.i69 = call i64 @llvm.umin.i64(i64 %i.bj, i64 9)
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.45, i64 noundef %.sroa.speculated.i.i.i69), !noalias !1117 ; 0 uses
  %i.bl = icmp ult i32 %i.bh, 9
  br i1 %i.bl, label %bb.f, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit70

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !1117 ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.17, i64 noundef 6), !noalias !1117 ; 0 uses
  %i.bo = sub nuw nsw i64 9, %i.bj
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %i.bo), !noalias !1117
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.18, i64 noundef 15), !noalias !1117 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit70

bb.g:                                             ; preds = %.noexc77, %.noexc76.a, %bb.d, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit20
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %3, align 8, !tbaa !102, !noalias !1117 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.g
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !45, !noalias !1117
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #19, !noalias !1117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1117
  br label %common.resume

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit70: ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1121
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !1122
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = lshr exact i64 %i.cd, 4
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %.loopexit151

.lr.ph:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit70
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24    ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 -24    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41 ] ; 3 uses
  %.val.i = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1117
  %i.db = getelementptr i8, ptr %.val.i, i64 48
  %.val.val.i = load i8, ptr %i.db, align 8, !tbaa !126, !range !97, !noundef !98
  %i.dc = trunc nuw i8 %.val.val.i to i1
  br i1 %i.dc, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val32.i = load ptr, ptr %i.h, align 8, !noalias !1117
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val32.i, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit

_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit: ; preds = %bb.h, %bb.i
  %i.de = load i32, ptr %i.ch, align 8, !tbaa !57
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit

.lr.ph.i:                                         ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.di, %.lr.ph.i ], [ 0, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit ]
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.di = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.dj = load i32, ptr %i.ch, align 8, !tbaa !57
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit: ; preds = %.lr.ph.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1117
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !inline_history !1120
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.46, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef %i.dm)
          to label %bb.j unwind label %bb.o, !inline_history !1120

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.47, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.dp = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1117, !nonnull !98, !align !192
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = load i32, ptr %i.ch, align 8, !tbaa !57, !noalias !1117
  %i.dt = add nsw i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %i.ch, align 8, !tbaa !57, !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !1117
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  store ptr %i.cj, ptr %5, align 8, !tbaa !43, !alias.scope !1129
  store i64 0, ptr %i.ck, align 8, !tbaa !44, !alias.scope !1129
  store i8 0, ptr %i.cj, align 8, !tbaa !45, !alias.scope !1129
  %i.du = load ptr, ptr %i.cl, align 8, !tbaa !114, !noalias !1129 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.du, null
  br i1 %.not5.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %9 = load ptr, ptr %i.cm, align 8, !noalias !1129 ; 2 uses
  %10 = icmp ugt ptr %i.du, %9
  %.08.i.i.i = select i1 %10, ptr %i.du, ptr %9
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !118, !noalias !1129 ; 2 uses
  %i.dw = ptrtoint ptr %.08.i.i.i to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.dv, i64 noundef %i.dy)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %5, align 8, !tbaa !102, !alias.scope !1129 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cj
  br i1 %i.ec, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.ed = load ptr, ptr %5, align 8, !tbaa !102
  %i.ee = load i64, ptr %i.ck, align 8, !tbaa !44 ; 3 uses
  %i.ef = load i32, ptr %i.ch, align 8, !tbaa !57
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %.noexc55
  %.02.i.i = phi i32 [ %i.ej, %.noexc55 ], [ 0, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit ; 0 uses

.noexc55:                                         ; preds = %.lr.ph.i.i
  %i.ej = add nuw nsw i32 %.02.i.i, 1             ; 2 uses
  %i.ek = load i32, ptr %i.ch, align 8, !tbaa !57
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph.i.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i: ; preds = %.noexc55, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.em = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !98, !align !192
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 52
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %i.ep = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.eq = sext i32 %i.eo to i64                   ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.eq)
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.ed, i64 noundef %.sroa.speculated.i.i.i54)
          to label %.noexc56 unwind label %.loopexit.split-lp ; 0 uses

.noexc56:                                         ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i
  %i.es = icmp ugt i64 %i.ee, %i.eq
  br i1 %i.es, label %bb.n, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter13WriteIndentedESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %.noexc56
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc57 unwind label %.loopexit.split-lp ; 0 uses

.noexc57:                                         ; preds = %bb.n
  %i.ev = sub nuw i64 %i.ee, %i.eq
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i64 noundef %i.ev)
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %.noexc57
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter13WriteIndentedESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter13WriteIndentedESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.noexc56, %.noexc58
  %i.ey = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cj
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter13WriteIndentedESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.fa = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter13WriteIndentedESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !1117
  %i.fc = load ptr, ptr %i.bx, align 8, !tbaa !1122
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !178
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113SchemaPrinter10PrintFieldERKNS_5FieldE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.fe)
          to label %_ZN5arrow6StatusD2Ev.exit50 unwind label %bb.q, !inline_history !1120

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ff = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1117
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN5arrow6StatusD2Ev.exit43, label %.critedge31.i

bb.o:                                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i, %bb.n, %.noexc57, %.noexc58
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fi = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.cj
  br i1 %i.fj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.eb, %bb.l ], [ %i.fi, %bb.p ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.ea, %bb.l ], [ %lpad.phi, %bb.p ]
  %i.fk = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fl) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ea, %bb.l ], [ %lpad.phi, %bb.p ], [ %.pn.i.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1117
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1117
  br label %bb.r

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.fn = load ptr, ptr %1, align 8, !tbaa !194, !noalias !1117, !nonnull !98, !align !192
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33
  %i.fq = load i32, ptr %i.ch, align 8, !tbaa !57, !noalias !1117
  %i.fr = sub nsw i32 %i.fq, %i.fp
  store i32 %i.fr, ptr %i.ch, align 8, !tbaa !57, !noalias !1117
  store ptr %i.cp, ptr %4, align 8, !tbaa !70
  %i.fs = load i64, ptr %i.cr, align 8
  %i.ft = getelementptr inbounds i8, ptr %4, i64 %i.fs
  store ptr %i.cq, ptr %i.ft, align 8, !tbaa !70
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !70
  %i.fu = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.cu
  br i1 %i.fv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %_ZN5arrow6StatusD2Ev.exit43
  %i.fw = load i64, ptr %i.cu, align 8, !tbaa !45
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41: ; preds = %_ZN5arrow6StatusD2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ct, align 8, !tbaa !70
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cv) #18
  store ptr %i.cw, ptr %4, align 8, !tbaa !70
  %i.fy = load i64, ptr %i.cy, align 8
  %i.fz = getelementptr inbounds i8, ptr %4, i64 %i.fy
  store ptr %i.cx, ptr %i.fz, align 8, !tbaa !70
  store i64 0, ptr %i.cz, align 8, !tbaa !1071
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load ptr, ptr %i.by, align 8, !tbaa !1121
  %i.gb = load ptr, ptr %i.bx, align 8, !tbaa !1122
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %sext = shl i64 %i.ge, 28
  %i.gf = ashr i64 %sext, 32
  %i.gg = icmp slt i64 %indvars.iv.next, %i.gf
  br i1 %i.gg, label %bb.h, label %.loopexit151, !llvm.loop !1130

bb.r:                                             ; preds = %bb.q, %.body, %bb.o
  %.pn27.pn.i = phi { ptr, i32 } [ %i.fm, %bb.q ], [ %.pn.i, %.body ], [ %i.fh, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #18, !inline_history !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1117
  br label %common.resume

.critedge31.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit50
  store ptr %i.cp, ptr %4, align 8, !tbaa !70
  %i.gh = load i64, ptr %i.cr, align 8
  %i.gi = getelementptr inbounds i8, ptr %4, i64 %i.gh
  store ptr %i.cq, ptr %i.gi, align 8, !tbaa !70
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !70
  %i.gj = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cu
  br i1 %i.gk, label %_ZN5arrow6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge31.i
  %i.gl = load i64, ptr %i.cu, align 8, !tbaa !45
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #19
  br label %_ZN5arrow6StatusD2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn27.pn.i, %bb.r ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
end_hunk_4
