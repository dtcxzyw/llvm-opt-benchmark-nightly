Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/catch_amalgamated?download=true
inline.NumInlined: 20608
inline.NumDeleted: 6906
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5Catch10makeStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.y:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIA23_cEERS0_RKT_.exit.i.i, %bb.s
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.t, %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.aa:                                            ; preds = %bb.u
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !188, !noalias !1657 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !187, !noalias !1657
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #64, !noalias !1657
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.dt, %bb.z ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.du, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63, !noalias !1657
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.y
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ds, %bb.y ]
  call void @_ZN5Catch20ReusableStringStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #63, !noalias !1657
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.ab ], [ %i.dr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63, !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63, !noalias !1657
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ac ], [ %i.dq, %bb.w ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.cr) #63, !noalias !1657
  br label %.body.i37

bb.ae:                                            ; preds = %bb.n
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i37

.body.i37:                                        ; preds = %bb.ae, %bb.ad
  %eh.lpad-body.i38 = phi { ptr, i32 } [ %i.ea, %bb.ae ], [ %.pn.pn.pn.pn.i.i, %bb.ad ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 520) #64, !noalias !1657
  br label %common.resume

_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit: ; preds = %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !465, !noalias !1657
  %i.ed = or i32 %i.ec, 8192
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !466, !noalias !1657
  store ptr %i.cq, ptr %0, align 8, !tbaa !439
  br label %bb.af

bb.af:                                            ; preds = %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110FileStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit36, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CerrStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_114DebugOutStreamEED2Ev.exit, %_ZN5Catch6Detail10unique_ptrINS0_12_GLOBAL__N_110CoutStreamEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch14makeColourImplENS_10ColourModeEPNS_7IStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Catch::Detail::unique_ptr.80") align 8 captures(none) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.Catch::ReusableStringStream", align 8 ; 6 uses
  switch i8 %1, label %bb.c [
    i8 1, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit
    i8 3, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !1658
  br i1 %i.d, label %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26

_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit: ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #66    ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162
  %i.g = tail call i32 @isatty(i32 noundef 1) #63
  %.not = icmp eq i32 %i.g, 0
  store i32 %i.f, ptr %i.e, align 4, !tbaa !162
  br i1 %.not, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26, label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit

_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26: ; preds = %bb.a, %bb.b, %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit
  br label %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @_ZN5Catch20ReusableStringStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202  ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.191, i64 noundef 43)
          to label %_ZN5Catch20ReusableStringStreamlsIA44_cEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN5Catch20ReusableStringStreamlsIA44_cEERS0_RKT_.exit: ; preds = %bb.c
  %i.k = zext i8 %1 to i32
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.k)
          to label %_ZN5Catch20ReusableStringStreamlsIiEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN5Catch20ReusableStringStreamlsIiEERS0_RKT_.exit: ; preds = %_ZN5Catch20ReusableStringStreamlsIA44_cEERS0_RKT_.exit
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIiEERS0_RKT_.exit
  invoke void @_ZN5Catch18throw_domain_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #61
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c, %_ZN5Catch20ReusableStringStreamlsIA44_cEERS0_RKT_.exit, %_ZN5Catch20ReusableStringStreamlsIiEERS0_RKT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !188    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8, !tbaa !187
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn = phi { ptr, i32 } [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  call void @_ZN5Catch20ReusableStringStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  resume { ptr, i32 } %.pn.pn

_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_114ANSIColourImplEED2Ev.exit: ; preds = %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit, %bb.a, %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26
  %.sink33 = phi ptr [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_112NoColourImplE, i64 16), %_ZN5Catch6Detail10unique_ptrINS_12_GLOBAL__N_112NoColourImplEED2Ev.exit26 ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_114ANSIColourImplE, i64 16), %bb.a ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_114ANSIColourImplE, i64 16), %_ZN5Catch12_GLOBAL__N_114ANSIColourImpl26useImplementationForStreamERKNS_7IStreamE.exit ]
  %i.t = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #62, !noalias !343 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !441, !noalias !343
  store ptr %.sink33, ptr %i.t, align 8, !tbaa !150, !noalias !343
  store ptr %i.t, ptr %0, align 8, !tbaa !469
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5Catch10ColourImpl11guardColourENS_6Colour4CodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Catch::ColourImpl::ColourGuard") align 8 captures(none) initializes((0, 13)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #16 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !472
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !473
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !474
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #25

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #26

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.Catch::TextFlow::Column::const_iterator", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  call void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !188, !noalias !1664
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !186, !noalias !1664
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226  ; 2 uses
  %i.h = icmp ne ptr %i.g, %i.e
  %i.i = load ptr, ptr %2, align 8, !nonnull !343, !align !390
  %i.j = icmp ne ptr %i.i, %1
  %.not3.i13 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %.not3.i13, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %.sroa.2.0.copyload.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !226, !noalias !1665
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(57) %2, ptr poison, ptr %i.g, ptr poison, ptr %.sroa.2.0.copyload.i.peel)
  %.pre16 = load i64, ptr %i.k, align 8, !tbaa !186
  %.pre = load ptr, ptr %3, align 8, !tbaa !188
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre, i64 noundef %.pre16)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8, !tbaa !188    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.p = load i64, ptr %i.l, align 8, !tbaa !187
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  %i.r = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %2) ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !226  ; 2 uses
  %i.t = icmp ne ptr %i.s, %i.e
  %i.u = load ptr, ptr %2, align 8, !nonnull !343, !align !390
  %i.v = icmp ne ptr %i.u, %1
  %.not3.i.peel = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i.peel, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret ptr %0

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.w = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !226, !noalias !1665
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(57) %2, ptr poison, ptr %i.w, ptr poison, ptr %.sroa.2.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !187
  %i.x = load ptr, ptr %0, align 8, !tbaa !150
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !215
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %.peel.next
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !187
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = load ptr, ptr %3, align 8, !tbaa !188
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !186
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aj, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.am = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.l
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !187
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  %i.aq = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %2) ; 0 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !226 ; 2 uses
  %i.as = icmp ne ptr %i.ar, %i.e
  %i.at = load ptr, ptr %2, align 8, !nonnull !343, !align !390
  %i.au = icmp ne ptr %i.at, %1
  %.not3.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %.not3.i, label %.peel.next, label %._crit_edge, !llvm.loop !1663
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch21makeCommandLineParserERNS_10ConfigDataE(ptr dead_on_unwind noalias writable sret(%"class.Catch::Clara::Parser") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::Clara::Parser", align 8 ; 13 uses
  %3 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %4 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %5 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %6 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %7 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %8 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %9 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %10 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %11 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %12 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %13 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %14 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %15 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %16 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %17 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %18 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %19 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %20 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %21 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %22 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %23 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %24 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %25 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %26 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %27 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %28 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %29 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %30 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %31 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %32 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %33 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %34 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %35 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %36 = alloca %"class.Catch::Clara::Parser", align 8 ; 14 uses
  %37 = alloca %"class.Catch::Clara::ExeName", align 8 ; 9 uses
  %38 = alloca %"struct.Catch::Clara::Help", align 8 ; 11 uses
  %39 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %40 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %41 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %42 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %43 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %44 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %45 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %46 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %47 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %48 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %49 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %50 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %51 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %52 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %53 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %54 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %55 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %56 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %57 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %58 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %59 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %60 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %61 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %62 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %63 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %64 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %65 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %66 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %67 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %68 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %69 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %70 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %71 = alloca %"class.Catch::Clara::Opt", align 8 ; 18 uses
  %72 = alloca %"class.Catch::Clara::Opt", align 8 ; 19 uses
  %73 = alloca %"class.Catch::Clara::Arg", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #63
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_ZN5Catch5Clara7ExeNameC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #63
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 7
  invoke void @_ZN5Catch5Clara4HelpC2ERb(ptr noundef nonnull align 8 dereferenceable(88) %38, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
end_hunk_0
begin_hunk_1_@_ZN5Catch15ConsoleReporter18benchmarkPreparingENS_9StringRefE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  store ptr %i.u, ptr %4, align 8, !tbaa !188
  %i.z = load i64, ptr %i.h, align 8, !tbaa !187
  store i64 %i.z, ptr %i.t, align 8, !tbaa !187
  %.pr = load i64, ptr %i.q, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.h
  %i.aa = phi ptr [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.t, %bb.h ] ; 3 uses
  %i.ab = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.w, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !186
  store ptr %i.h, ptr %5, align 8, !tbaa !188
  store i64 0, ptr %i.q, align 8, !tbaa !186
  store i8 0, ptr %i.h, align 8, !tbaa !187
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !767
  %.not3254.i.i = icmp samesign eq i64 %i.ab, 0
  br i1 %.not3254.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.k
  %i.ae = phi i64 [ %i.bh, %bb.k ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %i.af = phi ptr [ %i.bi, %bb.k ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.sroa.022.055.i.i = phi ptr [ %.sroa.022.4.i.i, %bb.k ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 3 uses
  %.not3341.i.i = icmp eq ptr %.sroa.022.055.i.i, %i.ag
  br i1 %.not3341.i.i, label %.critedge.i.i, label %.lr.ph43.i.preheader.i

.lr.ph43.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.ah = load i8, ptr %.sroa.022.055.i.i, align 1, !tbaa !187
  %i.ai = icmp ne i8 %i.ah, 27
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.022.055.i.i, i64 1 ; 2 uses
  %.not34.i.i36 = icmp eq ptr %i.aj, %i.ag
  %or.cond = select i1 %i.ai, i1 true, i1 %.not34.i.i36
  br i1 %or.cond, label %.critedge.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph43.i.preheader.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !187
  %i.al = icmp eq i8 %i.ak, 91
  br i1 %i.al, label %.lr.ph113, label %.critedge.i.i

.lr.ph43.i.i:                                     ; preds = %.critedge6.i.i
  %i.am = load i8, ptr %i.bd, align 1, !tbaa !187
  %i.an = icmp ne i8 %i.am, 27
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 2 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.ao, %i.bg
  %or.cond62 = select i1 %i.an, i1 true, i1 %.not34.i.i
  br i1 %or.cond62, label %.critedge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph43.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !187
  %i.aq = icmp eq i8 %i.ap, 91
  br i1 %i.aq, label %.lr.ph113, label %.critedge.i.i

.lr.ph113:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.022.142.i4.i37111 = phi ptr [ %i.bd, %.lr.ph ], [ %.sroa.022.055.i.i, %.lr.ph.preheader ] ; 5 uses
  %i.ar = phi ptr [ %i.bg, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ] ; 4 uses
  %i.as = phi ptr [ %i.be, %.lr.ph ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.at = phi i64 [ %i.bf, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.022.142.i4.i37111, i64 2 ; 3 uses
  %.not3537.i.i = icmp eq ptr %i.au, %i.ar
  br i1 %.not3537.i.i, label %.critedge2.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph113
  %i.av = ptrtoaddr ptr %i.ar to i64
  %.sroa.022.14256.i5.i38112 = ptrtoaddr ptr %.sroa.022.142.i4.i37111 to i64
  %i.aw = sub i64 %i.av, %.sroa.022.14256.i5.i38112
  %scevgep.i.i = getelementptr i8, ptr %.sroa.022.142.i4.i37111, i64 %i.aw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge4.i.i, %.lr.ph.preheader.i.i
  %.sroa.09.038.i.i = phi ptr [ %i.ba, %.critedge4.i.i ], [ %i.au, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ax = load i8, ptr %.sroa.09.038.i.i, align 1, !tbaa !187 ; 2 uses
  %i.ay = sext i8 %i.ax to i32
  %isdigittmp.i.i = add nsw i32 %i.ay, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  %i.az = icmp eq i8 %i.ax, 59
  %or.cond.i.i32 = or i1 %i.az, %isdigit.i.i
  br i1 %or.cond.i.i32, label %.critedge4.i.i, label %.critedge2.i.i

.critedge4.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.09.038.i.i, i64 1 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.ba, %i.ar
  br i1 %.not35.i.i, label %.critedge2.i.i, label %.lr.ph.i.i, !llvm.loop !44

.critedge2.i.i:                                   ; preds = %.critedge4.i.i, %.lr.ph.i.i, %.lr.ph113
  %.sroa.09.0.lcssa.i.i = phi ptr [ %i.au, %.lr.ph113 ], [ %.sroa.09.038.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %.critedge4.i.i ] ; 5 uses
  %i.bb = icmp eq ptr %.sroa.09.0.lcssa.i.i, %i.ar
  br i1 %i.bb, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.bc = load i8, ptr %.sroa.09.0.lcssa.i.i, align 1, !tbaa !187
  %.not.i.i = icmp eq i8 %i.bc, 109
  br i1 %.not.i.i, label %.critedge6.i.i, label %.critedge.i.i

.critedge6.i.i:                                   ; preds = %bb.i
  store i8 -1, ptr %.sroa.09.0.lcssa.i.i, align 1, !tbaa !187
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 1 ; 6 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !188   ; 5 uses
  %i.bf = load i64, ptr %i.ac, align 8, !tbaa !186 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf ; 3 uses
  %.not33.i.i = icmp eq ptr %i.bd, %i.bg
  br i1 %.not33.i.i, label %.critedge.i.i, label %.lr.ph43.i.i

.critedge.i.i:                                    ; preds = %.critedge6.i.i, %bb.i, %.critedge2.i.i, %.lr.ph, %.lr.ph43.i.i, %.lr.ph.preheader, %.lr.ph43.i.preheader.i, %.preheader.i.i
  %i.bh = phi i64 [ %i.ae, %.preheader.i.i ], [ %i.ae, %.lr.ph43.i.preheader.i ], [ %i.ae, %.lr.ph.preheader ], [ %i.bf, %.lr.ph43.i.i ], [ %i.bf, %.critedge6.i.i ], [ %i.bf, %.lr.ph ], [ %i.at, %.critedge2.i.i ], [ %i.at, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.af, %.preheader.i.i ], [ %i.af, %.lr.ph43.i.preheader.i ], [ %i.af, %.lr.ph.preheader ], [ %i.be, %.lr.ph43.i.i ], [ %i.be, %.critedge6.i.i ], [ %i.be, %.lr.ph ], [ %i.as, %.critedge2.i.i ], [ %i.as, %bb.i ] ; 3 uses
  %.sroa.022.1.lcssa.i.i = phi ptr [ %.sroa.022.055.i.i, %.preheader.i.i ], [ %.sroa.022.055.i.i, %.lr.ph43.i.preheader.i ], [ %.sroa.022.055.i.i, %.lr.ph.preheader ], [ %i.bd, %.lr.ph43.i.i ], [ %i.bd, %.critedge6.i.i ], [ %i.bd, %.lr.ph ], [ %.sroa.022.142.i4.i37111, %.critedge2.i.i ], [ %.sroa.022.142.i4.i37111, %bb.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh ; 2 uses
  %.not36.i.i = icmp eq ptr %.sroa.022.1.lcssa.i.i, %i.bj
  br i1 %.not36.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bk = load i64, ptr %i.ad, align 8, !tbaa !767
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ad, align 8, !tbaa !767
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.022.1.lcssa.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i.i
  %.sroa.022.4.i.i = phi ptr [ %i.bm, %bb.j ], [ %.sroa.022.1.lcssa.i.i, %.critedge.i.i ] ; 2 uses
  %.not32.i.i = icmp eq ptr %.sroa.022.4.i.i, %i.bj
  br i1 %.not32.i.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !45

.loopexit:                                        ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bn = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.bh, %bb.k ] ; 3 uses
  %i.bo = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.bq, align 8, !tbaa !448
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 -1, ptr %i.br, align 8, !tbaa !447
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1042
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1027
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1023
  %i.by = add i64 %i.bx, -2
  store i64 %i.by, ptr %i.bp, align 8, !tbaa !446
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !183
  %i.ca = icmp eq ptr %i.bo, %i.t
  br i1 %i.ca, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %.loopexit
  %i.cb = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.cc, i1 false)
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit
  store ptr %i.bo, ptr %3, align 8, !tbaa !188
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !187
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !187
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.ce, align 8, !tbaa !186
  store ptr %i.t, ptr %4, align 8, !tbaa !188
  store i64 0, ptr %i.ac, align 8, !tbaa !186
  store i8 0, ptr %i.t, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = load i64, ptr %i.ad, align 8, !tbaa !767
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !767
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.ci = load ptr, ptr %5, align 8, !tbaa !188   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.h
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.ck = load i64, ptr %i.h, align 8, !tbaa !187
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.cm = load ptr, ptr %3, align 8, !tbaa !188, !noalias !3247 ; 2 uses
  %i.cn = load i64, ptr %i.ce, align 8, !tbaa !186, !noalias !3247
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !226 ; 2 uses
  %i.cr = icmp ne ptr %i.cq, %i.co
  %i.cs = load ptr, ptr %6, align 8, !nonnull !343, !align !390
  %i.ct = icmp ne ptr %i.cs, %3
  %.not3.i57 = select i1 %i.cr, i1 true, i1 %i.ct
  br i1 %.not3.i57, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  %.sroa.2.0.copyload.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !226, !noalias !3248
  invoke void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.cq, ptr poison, ptr %.sroa.2.0.copyload.i.peel)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph59
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !1042 ; 2 uses
  %.pre74 = load i64, ptr %i.cu, align 8, !tbaa !186
  %.pre73 = load ptr, ptr %7, align 8, !tbaa !188
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !202
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre72, ptr noundef %.pre73, i64 noundef %.pre74)
          to label %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit.peel unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit.peel: ; preds = %bb.m
  %i.cx = invoke fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %.pre)
          to label %bb.n unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit.peel
  %i.cy = load ptr, ptr %7, align 8, !tbaa !188   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cv
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.peel: ; preds = %bb.n
  %i.da = load i64, ptr %i.cv, align 8, !tbaa !187
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  %i.dc = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.dd = load ptr, ptr %i.cp, align 8, !tbaa !226 ; 2 uses
  %i.de = icmp ne ptr %i.dd, %i.co
  %i.df = load ptr, ptr %6, align 8, !nonnull !343, !align !390
  %i.dg = icmp ne ptr %i.df, %3
  %.not3.i.peel = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %.not3.i.peel, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel
  %.pre76 = load ptr, ptr %3, align 8, !tbaa !188
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.dh = phi ptr [ %.pre76, %._crit_edge.loopexit ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  %i.di = icmp eq ptr %i.dh, %i.bz
  br i1 %i.di, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %._crit_edge
  %i.dj = load i64, ptr %i.bz, align 8, !tbaa !187
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #64
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit18

_ZN5Catch8TextFlow6ColumnD2Ev.exit18:             ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.dl = phi ptr [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !226, !noalias !3248
  invoke void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.dl, ptr poison, ptr %.sroa.2.0.copyload.i)
          to label %_ZNK5Catch8TextFlow6Column14const_iteratordeB5cxx11Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Catch8TextFlow6Column14const_iteratordeB5cxx11Ev.exit: ; preds = %.peel.next
  %i.dm = load ptr, ptr %i.bs, align 8, !tbaa !1042 ; 3 uses
  %i.dn = invoke fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dm)
          to label %bb.o unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %_ZNK5Catch8TextFlow6Column14const_iteratordeB5cxx11Ev.exit
  %i.do = invoke fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dm)
          to label %bb.p unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.dp = invoke fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dm)
          to label %._crit_edge75 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph59
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge75, %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit, %bb.p, %bb.o, %_ZNK5Catch8TextFlow6Column14const_iteratordeB5cxx11Ev.exit, %bb.m, %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit.peel
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %7, align 8, !tbaa !188   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cv
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp
  %i.ds = load i64, ptr %i.cv, align 8, !tbaa !187
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

._crit_edge75:                                    ; preds = %bb.p
  %i.du = load ptr, ptr %i.bs, align 8, !tbaa !1042 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !202
  %i.dx = load ptr, ptr %7, align 8, !tbaa !188
  %i.dy = load i64, ptr %i.cu, align 8, !tbaa !186
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit: ; preds = %._crit_edge75
  %i.ea = invoke fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.du)
          to label %bb.q unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %_ZN5CatchlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_12TablePrinterES8_RKT_.exit
  %i.eb = load ptr, ptr %7, align 8, !tbaa !188   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cv
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.q
  %i.ed = load i64, ptr %i.cv, align 8, !tbaa !187
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  %i.ef = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.eg = load ptr, ptr %i.cp, align 8, !tbaa !226 ; 2 uses
  %i.eh = icmp ne ptr %i.eg, %i.co
  %i.ei = load ptr, ptr %6, align 8, !nonnull !343, !align !390
  %i.ej = icmp ne ptr %i.ei, %3
  %.not3.i = select i1 %i.eh, i1 true, i1 %i.ej
  br i1 %.not3.i, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !3245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  %i.ek = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.bz
  br i1 %i.el, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.em = load i64, ptr %i.bz, align 8, !tbaa !187
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #64
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit30

_ZN5Catch8TextFlow6ColumnD2Ev.exit30:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1034, !range !342, !noundef !343
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Catch15ConsoleReporter16lazyPrintRunInfoEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1033, !range !342, !noundef !343
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Catch15ConsoleReporter29printTestCaseAndSectionHeaderEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  store i8 1, ptr %i.d, align 8, !tbaa !1033
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull returned align 8 dereferenceable(53) %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.Catch::ColumnInfo", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202, !noalias !3255 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !183, !alias.scope !3258
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !186, !alias.scope !3258
  store i8 0, ptr %i.g, align 8, !tbaa !187, !alias.scope !3258
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !206, !noalias !3259 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !3259 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !207, !noalias !3259 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !188, !alias.scope !3258 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.g, align 8, !tbaa !187, !alias.scope !3258
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #64
end_hunk_1
