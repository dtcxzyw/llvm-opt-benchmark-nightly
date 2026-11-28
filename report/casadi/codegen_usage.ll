Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/codegen_usage?download=true
inline.NumInlined: 627
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z7usage_cv:bb.a
  store double 5.000000e+00, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void %i.m()
  store ptr %i.e, ptr %i.cb, align 16, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.f, ptr %i.ci, align 8, !tbaa !18
  store ptr %i.g, ptr %i.cd, align 16, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !18
  %i.ck = call noundef i32 %i.s()                 ; 2 uses
  %i.cl = call noundef i32 %i.bx(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ch, i32 noundef %i.ck)
  %.not87 = icmp eq i32 %i.cl, 0
  br i1 %.not87, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void %i.v(i32 noundef %i.ck)
  %i.cm = load double, ptr %i.g, align 8, !tbaa !15
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %i.cm) ; 0 uses
  %i.co = load double, ptr %i.h, align 16, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cs = load double, ptr %i.cr, align 16, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !15
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %i.co, double noundef %i.cq, double noundef %i.cs, double noundef %i.cu) ; 0 uses
  call void %i.p()
  %i.cw = call i32 @dlclose(ptr noundef nonnull %i.i) #27 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.2 = phi i32 [ 0, %bb.aa ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.stackrestore.p0(ptr %i.ca)
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.q, %bb.ab, %bb.y, %bb.r, %bb.p
  %.7 = phi i32 [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.y ], [ %.2, %bb.ab ], [ 1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %bb.l, %.critedge, %bb.b
  %.10 = phi i32 [ 1, %bb.b ], [ 1, %bb.k ], [ %.7, %.critedge ], [ 1, %bb.l ]
  ret i32 %.10
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !23
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !25
  %i.g = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !27
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z15usage_cplusplusv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.casadi::Function", align 8  ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::map", align 8          ; 12 uses
  %3 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %4 = alloca %"class.std::vector.12", align 8    ; 13 uses
  %5 = alloca [2 x %"class.casadi::Matrix"], align 8 ; 15 uses
  %6 = alloca %"class.casadi::Matrix", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.12", align 8    ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @str.5, i64 noundef 3) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 6 uses
  %.not.i.i.i69 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i69, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !103
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.34, i64 noundef 22) ; 0 uses
  %i.s = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97   ; 6 uses
  %.not.i.i.i70 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i70, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !103
  %.not.i1.i.i72 = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10), !inline_history !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74: ; preds = %bb.f, %bb.g
  %.0.i.i.i73 = phi i8 [ %i.ab, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i73)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 0 uses
  %i.ai = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i75 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i75, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !103
  %.not.i1.i.i77 = icmp eq i8 %i.ap, 0
  br i1 %.not.i1.i.i77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  br label %bb.k

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10), !inline_history !82
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0.i.i.i78 = phi i8 [ %i.ar, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i78)
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.ay, ptr %1, align 8, !tbaa !21
  store i8 102, ptr %i.ay, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.ba, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !42
  invoke void @_ZN6casadi8externalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS5_NS_11GenericTypeESt4lessIS5_ESaISt4pairIS6_S9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.l unwind label %bb.ar

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bg)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bj = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !26
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.p unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.bn, ptr %3, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) @__const._Z16usage_c_with_memv.x_val, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6casadi6MatrixIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6casadi6MatrixIdE7reshapeERKS1_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef 2, i64 noundef 2)
          to label %_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit unwind label %.thread148

.thread148:                                       ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #27
  br label %.loopexit.sink.split

_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit:       ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  invoke void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, double noundef 5.000000e+00)
          to label %bb.r unwind label %.preheader.preheader

bb.r:                                             ; preds = %_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bx = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31
          to label %.noexc81 unwind label %bb.x   ; 7 uses

.noexc81:                                         ; preds = %bb.r
  store ptr %i.bx, ptr %4, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !50
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.s

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc81
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.s

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.z

bb.s:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc81
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.bx, %.noexc81 ], [ %i.ca, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.cg) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixIdEEEvT_S4_(ptr noundef nonnull %i.bx, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_rethrow() #28
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body82 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #30
  unreachable

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %bb.u, %bb.x
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.ci, %bb.u ]
  %i.cm = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %.body28, label %bb.y

bb.y:                                             ; preds = %.body82
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #29
  br label %.body28

bb.z:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.ce to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cw) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.z, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 48
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #30
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1, label %bb.ab

bb.ab:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1

_ZNSt6vectorIdSaIdEED2Ev.exit.i.1:                ; preds = %bb.ab, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %_ZN6casadi6MatrixIdED2Ev.exit.1 unwind label %bb.aa

_ZN6casadi6MatrixIdED2Ev.exit.1:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31, label %bb.ac

bb.ac:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i31

_ZNSt6vectorIdSaIdEED2Ev.exit.i31:                ; preds = %bb.ac, %_ZN6casadi6MatrixIdED2Ev.exit.1
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %_ZN6casadi6MatrixIdED2Ev.exit32 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i31
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #30
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit32:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixIdEESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit32
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.dv = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.not, label %.invoke150, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNK6casadi6MatrixIdE4dispERSob(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit unwind label %bb.at

_ZN6casadilsERSoRKNS_6MatrixIdEE.exit:            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit
  %i.dw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !34
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i84, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !103
  %.not.i1.i.i86 = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i86, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
          to label %.noexc89 unwind label %bb.at

.noexc89:                                         ; preds = %bb.ag
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
end_hunk_0
begin_hunk_1_@_Z15usage_cplusplusv:bb.a
.invoke:                                          ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43, %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %bb.at

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZN6casadilsERSoRKNS_6MatrixIdEE.exit43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !103
  %.not.i1.i.i96 = icmp eq i8 %i.fd, 0
  br i1 %.not.i1.i.i96, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 67
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fb)
          to label %.noexc100 unwind label %bb.at

.noexc100:                                        ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !34
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef signext i8 %i.fi(ptr noundef nonnull align 8 dereferenceable(570) %i.fb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97 unwind label %bb.at, !inline_history !82

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97: ; preds = %.noexc100, %bb.ai
  %.0.i.i.i98 = phi i8 [ %i.ff, %bb.ai ], [ %i.fj, %.noexc100 ]
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i98)
          to label %.noexc102 unwind label %bb.at

.noexc102:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %_ZNSolsEPFRSoS_E.exit45 unwind label %bb.at ; 0 uses

_ZNSolsEPFRSoS_E.exit45:                          ; preds = %.noexc102
  %i.fm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit45, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i ], [ %i.fm, %_ZNSolsEPFRSoS_E.exit45 ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.fy, %i.fn
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit45
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fm, %_ZNSolsEPFRSoS_E.exit45 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.gf = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.gg = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i48 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not4.i.i.i48, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.05.i.i.i50 = phi ptr [ %i.gr, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 ], [ %i.gf, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i.i51, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i49
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52:        ; preds = %bb.an, %.lr.ph.i.i.i49
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i52
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 40 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gr, %i.gg
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, label %.lr.ph.i.i.i49, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i.i53
  %.pr.i56 = load ptr, ptr %4, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit
  %i.gs = phi ptr [ %.pr.i56, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i55 ], [ %i.gf, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i58 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i1.i58, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57
  %i.gt = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #29
  br label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit.i57, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.gx = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60
  %i.gy = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit60, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.ar:                                            ; preds = %bb.k
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hd = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ay
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ar
  %i.hf = load i64, ptr %i.ay, align 8, !tbaa !26
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.ax

.thread:                                          ; preds = %bb.p
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

.body28:                                          ; preds = %.body82, %bb.y
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.hi) #27
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #27
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #27
  br label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %_ZN6casadi7reshapeERKNS_6MatrixIdEExx.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #27
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %.thread, %.body28, %.thread148
  %.pn19.pn111.ph = phi { ptr, i32 } [ %i.bv, %.thread148 ], [ %eh.lpad-body83, %.body28 ], [ %i.hh, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit.sink.split
  %.pn19.pn111 = phi { ptr, i32 } [ %.pn19.pn111.ph, %.loopexit.sink.split ], [ %i.hj, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.av

bb.as:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit32
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %.invoke150, %.invoke, %.noexc102, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97, %.noexc100, %bb.aj, %.noexc91, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc89, %bb.ag, %bb.ah, %_ZNSolsEPFRSoS_E.exit, %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE2atEm.exit, %bb.ae
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn22 = phi { ptr, i32 } [ %i.hl, %bb.at ], [ %i.hk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.loopexit
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.au ], [ %.pn19.pn111, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.hm = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hn = load ptr, ptr %i.bt, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split

_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split:       ; preds = %bb.aw, %bb.o
  %.sink156 = phi ptr [ %i.br, %bb.o ], [ %i.hn, %bb.aw ]
  %.sink155 = phi ptr [ %i.bp, %bb.o ], [ %i.hm, %bb.aw ] ; 2 uses
  %.pn22.pn.pn.ph = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %.pn22.pn, %bb.aw ]
  %i.ho = ptrtoint ptr %.sink156 to i64
  %i.hp = ptrtoint ptr %.sink155 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sink155, i64 noundef %i.hq) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68

_ZNSt6vectorIdSaIdEED2Ev.exit68:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split, %bb.n, %bb.av
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %.pn22.pn, %bb.av ], [ %.pn22.pn.pn.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit68.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit68 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

declare void @_ZN6casadi8externalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS5_NS_11GenericTypeESt4lessIS5_ESaISt4pairIS6_S9_EEE(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN6casadi6MatrixIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40), double noundef) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  ret void
}

declare void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixIdEESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::vector.12") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #30
  unreachable

_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i:  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6casadi6MatrixIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #29
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixIdEES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z16usage_c_with_memv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.e = tail call ptr @dlopen(ptr noundef nonnull @.str.38, i32 noundef 1) #27 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_1
begin_hunk_2_@_Z16usage_c_with_memv:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108  ; 2 uses
  %.not33.i.i = icmp eq ptr %i.p, null
  br i1 %.not33.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i64 %i.p(), !inline_history !105
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre.i.i = phi i64 [ %i.q, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i64 %.pre.i.i, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 2 uses
  %.not34.i.i = icmp eq ptr %i.t, null
  br i1 %.not34.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call noundef i64 %i.t(), !inline_history !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi i64 [ %i.u, %bb.j ], [ 1, %bb.i ]    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 %i.v, ptr %i.w, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 %.pre.i.i, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 %i.v, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.ab, null
  br i1 %.not35.i.i, label %casadi_alloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ad = tail call noundef i32 %i.ab(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac), !inline_history !105 ; 0 uses
  br label %casadi_alloc.exit

casadi_alloc.exit:                                ; preds = %bb.k, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = tail call noundef i32 %i.af(), !inline_history !105
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ak = tail call i32 @casadi_alloc_arrays(ptr noundef nonnull %i.m) ; 0 uses
  tail call void @casadi_init_arrays(ptr noundef nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const._Z16usage_c_with_memv.x_val, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store double 5.000000e+00, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 3 uses
  store ptr %i.a, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.b, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64 ; 3 uses
  store ptr %i.c, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.d, ptr %i.ap, align 8, !tbaa !18
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !112
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = load i32, ptr %i.ah, align 8, !tbaa !62
  %i.ay = call noundef i32 %i.as(ptr noundef nonnull %i.al, ptr noundef nonnull %i.ao, ptr noundef %i.au, ptr noundef %i.aw, i32 noundef %i.ax), !inline_history !106 ; 0 uses
  %i.az = load double, ptr %i.c, align 8, !tbaa !15
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %i.az) ; 0 uses
  %i.bb = load double, ptr %i.d, align 16, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bf = load double, ptr %i.be, align 16, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !15
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %i.bb, double noundef %i.bd, double noundef %i.bf, double noundef %i.bh) ; 0 uses
  call void @casadi_free(ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.m

bb.m:                                             ; preds = %casadi_alloc.exit, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %casadi_alloc.exit ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @casadi_free(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %.not17.i = icmp eq ptr %i.d, null
  br i1 %.not17.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not18.i = icmp eq ptr %i.f, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not19.i = icmp eq ptr %i.h, null
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.not20.i = icmp eq ptr %i.j, null
  br i1 %.not20.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %.not21.i = icmp eq ptr %i.l, null
  br i1 %.not21.i, label %casadi_free_arrays.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.l) #27
  br label %casadi_free_arrays.exit

casadi_free_arrays.exit:                          ; preds = %bb.k, %bb.l
  %i.m = load ptr, ptr %0, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62
  tail call void %i.o(i32 noundef %i.q), !inline_history !113
  %i.r = load ptr, ptr %0, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115  ; 2 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %casadi_deinit.exit, label %bb.m

bb.m:                                             ; preds = %casadi_free_arrays.exit
  tail call void %i.t(), !inline_history !113
  br label %casadi_deinit.exit

casadi_deinit.exit:                               ; preds = %casadi_free_arrays.exit, %bb.m
  tail call void @free(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define noundef i32 @main() local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %3 = alloca %"class.casadi::Matrix.21", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.casadi::Matrix.21", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.casadi::Function", align 8  ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca [2 x %"class.casadi::Matrix.21"], align 8 ; 17 uses
  %10 = alloca [2 x %"class.casadi::Matrix.21"], align 8 ; 19 uses
  %11 = alloca %"class.casadi::Matrix.21", align 8 ; 12 uses
  %12 = alloca %"class.casadi::Matrix.21", align 8 ; 11 uses
  %13 = alloca %"class.casadi::Matrix.21", align 8 ; 10 uses
  %14 = alloca %"class.std::map", align 8         ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::map", align 8         ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %28 = alloca %"class.std::vector", align 8      ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %38 = alloca %"class.std::vector", align 8      ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::map", align 8         ; 14 uses
  %42 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %54 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %55 = alloca %"class.std::vector", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !21
  store i8 120, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !130
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %2, i64 noundef 2, i64 noundef 2)
          to label %.noexc148 unwind label %bb.an, !noalias !130

.noexc148:                                        ; preds = %bb.a
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.c

_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc148
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

bb.c:                                             ; preds = %.noexc148
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !130
  br label %.body

bb.e:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !130
  %i.l = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.d, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !21
  store i8 121, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.r, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !131
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %1, i64 noundef 1, i64 noundef 1)
          to label %.noexc155 unwind label %bb.ao, !noalias !131

.noexc155:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix.21") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i154 unwind label %bb.g

_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i154: ; preds = %.noexc155
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i154
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

bb.g:                                             ; preds = %.noexc155
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i153 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #30
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i153: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !131
  br label %.body156

bb.i:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !131
  %i.x = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.i
  %i.z = load i64, ptr %i.p, align 8, !tbaa !26
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ab, ptr %8, align 8, !tbaa !21
  store i8 102, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.ad, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit438

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 40
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.k unwind label %.loopexit438.loopexit442

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE5unaryExRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix.21") align 8 %11, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZN6casadi4sqrtERKNS_6MatrixINS_6SXElemEEE.exit unwind label %.thread385

_ZN6casadi4sqrtERKNS_6MatrixINS_6SXElemEEE.exit:  ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %12, double noundef 1.000000e+00)
          to label %bb.l unwind label %.thread391

bb.l:                                             ; preds = %_ZN6casadi4sqrtERKNS_6MatrixINS_6SXElemEEE.exit
end_hunk_2
begin_hunk_3_@main:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i209.1

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i209.1: ; preds = %bb.z, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i207.1
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit210.1 unwind label %bb.y

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit210.1:     ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i209.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ef = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ab
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit210.1
  %i.eh = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i212: ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit210.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ej, ptr %16, align 8, !tbaa !21
  store i8 102, ptr %i.ej, align 8, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.ek, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.el, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !40
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.em, ptr %i.ep, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 0, ptr %i.eq, align 8, !tbaa !42
  invoke void @_ZNK6casadi8Function8generateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SA_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.aa unwind label %bb.au

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i212
  %i.er = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.aa
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !26
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !43
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.ew)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit221 unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.ez = load ptr, ptr %16, align 8, !tbaa !25   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ej
  br i1 %i.fa, label %.noexc.i226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit221
  %i.fb = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #29
  br label %.noexc.i226

.noexc.i226:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  store ptr %i.fd, ptr %18, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 33, ptr %i.b, align 8, !tbaa !23
  %i.fe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.ac unwind label %bb.av     ; 3 uses

bb.ac:                                            ; preds = %.noexc.i226
  store ptr %i.fe, ptr %18, align 8, !tbaa !25
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !23  ; 3 uses
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.fe, ptr noundef nonnull align 1 dereferenceable(33) @.str.42, i64 33, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff
  store i8 0, ptr %i.fh, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.fi = load ptr, ptr %18, align 8, !tbaa !25
  %i.fj = invoke i32 @system(ptr noundef %i.fi)
          to label %bb.ad unwind label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.be, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.44)
          to label %bb.ah unwind label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.ai unwind label %bb.ay

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.aj unwind label %bb.az

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !alias.scope !132
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.ak unwind label %bb.ba

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.al unwind label %bb.bb

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.am unwind label %bb.bc

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #28
          to label %bb.du unwind label %bb.bc

bb.an:                                            ; preds = %bb.a
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.fm, %bb.an ], [ %i.i, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.fn = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.d
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %.body
  %i.fp = load i64, ptr %i.d, align 8, !tbaa !26
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.dt

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.body156:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i153, %bb.ao
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.fr, %bb.ao ], [ %i.u, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i153 ]
  %i.fs = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.p
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %.body156
  %i.fu = load i64, ptr %i.p, align 8, !tbaa !26
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %.body156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ds

.loopexit438.loopexit442:                         ; preds = %bb.j
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #27
  br label %.loopexit438

.thread385:                                       ; preds = %bb.k
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit439.sink.split

.thread391:                                       ; preds = %_ZN6casadi4sqrtERKNS_6MatrixINS_6SXElemEEE.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #27
  br label %.loopexit439.sink.split

bb.ap:                                            ; preds = %bb.l
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %_ZN6casadimiERKNS_6MatrixINS_6SXElemEEES4_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZN6casadi3sinERKNS_6MatrixINS_6SXElemEEE.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit440

.loopexit440.loopexit:                            ; preds = %_ZN6casadimiERKNS_6MatrixINS_6SXElemEEES4_.exit170
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gd) #27
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #27
  br label %.loopexit440

.loopexit440:                                     ; preds = %.loopexit440.loopexit, %bb.ar
  %i.ge = phi i1 [ false, %bb.ar ], [ true, %.loopexit440.loopexit ]
  %.pn100 = phi { ptr, i32 } [ %i.gb, %bb.ar ], [ %i.gc, %.loopexit440.loopexit ]
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #27
  br label %bb.as

bb.as:                                            ; preds = %.loopexit440, %bb.aq
  %.189 = phi i1 [ %i.ge, %.loopexit440 ], [ false, %bb.aq ]
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %.loopexit440 ], [ %i.ga, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.as
  %.093 = phi ptr [ %i.ag, %bb.as ], [ %10, %bb.ap ] ; 2 uses
  %.290 = phi i1 [ %.189, %bb.as ], [ false, %bb.ap ]
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %bb.as ], [ %i.fz, %bb.ap ] ; 2 uses
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.gf = icmp eq ptr %10, %.093
  %or.cond = select i1 %.290, i1 true, i1 %i.gf
  br i1 %or.cond, label %.loopexit439, label %.preheader

.preheader:                                       ; preds = %bb.at, %.preheader
  %i.gg = phi ptr [ %i.gh, %.preheader ], [ %.093, %bb.at ]
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -40 ; 3 uses
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gh) #27
  %i.gi = icmp eq ptr %i.gh, %10
  br i1 %i.gi, label %.loopexit439, label %.preheader

.loopexit439.sink.split:                          ; preds = %.thread385, %.thread391
  %.pn100.pn.pn.pn.pn390.ph = phi { ptr, i32 } [ %i.fy, %.thread391 ], [ %i.fx, %.thread385 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit439

.loopexit439:                                     ; preds = %.preheader, %.loopexit439.sink.split, %bb.at
  %.pn100.pn.pn.pn.pn390 = phi { ptr, i32 } [ %.pn100.pn.pn, %bb.at ], [ %.pn100.pn.pn.pn.pn390.ph, %.loopexit439.sink.split ], [ %.pn100.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gj) #27
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #27
  br label %.loopexit438

.loopexit438:                                     ; preds = %.loopexit438.loopexit442, %.loopexit439, %.thread
  %.pn100.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn390, %.loopexit439 ], [ %i.ae, %.thread ], [ %i.fw, %.loopexit438.loopexit442 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gk = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ab
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %.loopexit438
  %i.gm = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %.loopexit438, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.dr

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i212
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.gp = load ptr, ptr %16, align 8, !tbaa !25   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.ej
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.au
  %i.gr = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.dq

bb.av:                                            ; preds = %.noexc.i226
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.aw:                                            ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %bb.bw, %bb.be, %bb.ac
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.thread: ; preds = %bb.ae
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ag
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.ay:                                            ; preds = %bb.ah
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

bb.az:                                            ; preds = %bb.ai
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

bb.ba:                                            ; preds = %bb.aj
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.bb:                                            ; preds = %bb.ak
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.bc:                                            ; preds = %bb.am, %bb.al
  %.080 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %19, align 8, !tbaa !25   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.bc
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %bb.bb
  %.181 = phi i1 [ true, %bb.bb ], [ %.080, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %.080, %bb.bc ] ; 2 uses
  %.pn110 = phi { ptr, i32 } [ %i.ha, %bb.bb ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %i.hb, %bb.bc ] ; 2 uses
  %i.hh = load ptr, ptr %24, align 8, !tbaa !25   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !26
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.ba
  %.282 = phi i1 [ true, %bb.ba ], [ %.181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %.181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ] ; 2 uses
  %.pn110.pn = phi { ptr, i32 } [ %i.gz, %bb.ba ], [ %.pn110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.hm = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !26
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247, %bb.az
  %.383 = phi i1 [ true, %bb.az ], [ %.282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %.282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ] ; 2 uses
  %.pn110.pn.pn = phi { ptr, i32 } [ %i.gy, %bb.az ], [ %.pn110.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ] ; 2 uses
  %i.hr = load ptr, ptr %26, align 8, !tbaa !25   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !26
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.ay
  %.484 = phi i1 [ true, %bb.ay ], [ %.383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ] ; 2 uses
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.ay ], [ %.pn110.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.hw = load ptr, ptr %20, align 8, !tbaa !25   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !26
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.ax
  %.585 = phi i1 [ true, %bb.ax ], [ %.484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %.484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ] ; 2 uses
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.ax ], [ %.pn110.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %.pn110.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ] ; 4 uses
  %i.ib = load ptr, ptr %21, align 8, !tbaa !25   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !26
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  %i.ig = load ptr, ptr %22, align 8, !tbaa !25   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.thread: ; preds = %bb.af
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %22, align 8, !tbaa !25   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.thread
  %i.in = load i64, ptr %i.il, align 8, !tbaa !26
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.ip = load i64, ptr %i.ih, align 8, !tbaa !26
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.iq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br i1 %.585, label %bb.bd, label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
end_hunk_3
