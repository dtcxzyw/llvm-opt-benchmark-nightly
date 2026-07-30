inline.NumInlined: 1104
inline.NumDeleted: 587
begin_hunk_0_@_ZN2v88internal6torque13QualifiedName5ParseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cy = add nuw i64 %i.cm, 1                    ; 2 uses
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !10

.noexc6.i:                                        ; preds = %bb.aa
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc36 unwind label %bb.af

.noexc36:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aa
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #25
          to label %.noexc37 unwind label %bb.af  ; 2 uses

.noexc37:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.da, ptr %6, align 8
  store i64 %i.cm, ptr %i.cu, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.db = phi ptr [ %i.da, %.noexc37 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread ] ; 3 uses
  switch i64 %i.cm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.dc = load i8, ptr %i.cv, align 1
  store i8 %i.dc, ptr %i.db, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr align 1 %i.cv, i64 %i.cm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.cm, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cm
  store i8 0, ptr %i.de, align 1
  store ptr %i.cn, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ct, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.di, ptr %i.dh, align 8
  %i.dj = load ptr, ptr %6, align 8               ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cu
  br i1 %i.dk, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load i64, ptr %i.dd, align 8            ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ad
  store ptr %i.dj, ptr %i.dh, align 8
  %i.do = load i64, ptr %i.cu, align 8
  store i64 %i.do, ptr %i.di, align 8
  %.pre110 = load i64, ptr %i.dd, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit53

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit53: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %i.dp = phi i64 [ %i.dl, %bb.ae ], [ %.pre110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dp, ptr %i.dq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.y, %bb.af
  %.pn13 = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %lpad.phi64, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !14

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKNS1_13QualifiedNameE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.h)
  ret ptr %i.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.010 = phi ptr [ %i.o, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.07.010, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.j, i64 noundef %i.l)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str, i64 noundef 2) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKNS1_8CallableE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(448) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 15 uses
  %4 = alloca %"class.std::vector.15", align 8    ; 13 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 9) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.c, i64 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i64, ptr %i.h, align 8              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.m, 3                     ; 6 uses
  %i.n = icmp ugt i64 %.idx, 9223372036854775800
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #24
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.h

_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #25
          to label %.noexc5.i unwind label %bb.f  ; 4 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.r, ptr %i.s, align 8
  %i.t = icmp samesign ugt i64 %.idx, 8
  br i1 %i.t, label %bb.d, label %5, !prof !15

bb.d:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.l, i64 %.idx, i1 false)
  br label %bb.h

5:                                                ; preds = %.noexc5.i
  %6 = icmp eq i64 %i.m, 1
  br i1 %6, label %bb.e, label %bb.h

bb.e:                                             ; preds = %5
  %i.u = load ptr, ptr %i.l, align 8
  store ptr %i.u, ptr %i.q, align 8
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i6.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %.body

bb.h:                                             ; preds = %bb.e, %5, %bb.d, %.thread.i.i
  %7 = phi ptr [ %i.r, %bb.d ], [ %i.r, %5 ], [ %i.r, %bb.e ], [ %i.o, %.thread.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %7, ptr %i.ac, align 8
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKSt6vectorIPKNS1_4TypeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = load i64, ptr %i.h, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 7 uses
  %i.an = icmp ugt i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.j, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i27

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #24
          to label %.noexc.i34 unwind label %bb.n

.noexc.i34:                                       ; preds = %bb.j
  unreachable

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i.i.i28 = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i28, label %.thread.i.i33, label %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i29

.thread.i.i33:                                    ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i27
  %i.ao = getelementptr inbounds nuw i8, ptr null, i64 %i.am ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  br label %bb.o

_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i29: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i27
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc5.i32 unwind label %bb.n ; 4 uses

.noexc5.i32:                                      ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i29
  store ptr %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = icmp samesign ugt i64 %i.am, 8
  br i1 %i.at, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %.noexc5.i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.ah, i64 %i.am, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %.noexc5.i32
  %i.au = icmp eq i64 %i.am, 8
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.ah, align 8
  store ptr %i.av, ptr %i.aq, align 8
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i29, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread.i.i33
  %i.ax = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %i.ar, %bb.m ], [ %i.ao, %.thread.i.i33 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKSt6vectorIPKNS1_4TypeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.p unwind label %bb.t       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bg = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit42, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #26
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit42

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit42: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.i, %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i43, label %.body35, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #26
  br label %.body35

.body35:                                          ; preds = %bb.n, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.bn, %bb.u ], [ %i.bn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.v:                                             ; preds = %.body35, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body35 ], [ %i.bm, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i46, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #26
  br label %.body

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.w, %bb.v, %bb.g, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.pn, %bb.w ], [ %i.v, %bb.g ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.x:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKNS1_14ParameterTypesE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.ca) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit42
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ce = load ptr, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK2v88internal6torque4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %i.ce)
  %i.cf = load ptr, ptr %2, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.y
  %i.cj = load ptr, ptr %2, align 8               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN2v88internal6torquelsERSoRKNS1_4TypeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #26
  br label %_ZN2v88internal6torquelsERSoRKNS1_4TypeE.exit

bb.z:                                             ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %2, align 8               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.z
  %i.cs = load i64, ptr %i.cq, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
end_hunk_0
